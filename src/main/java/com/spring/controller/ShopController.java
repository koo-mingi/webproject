package com.spring.controller;


import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.domain.AuthVO;
import com.spring.domain.MemberVO;
import com.spring.domain.PriceVO;
import com.spring.domain.ShopCartVO;
import com.spring.domain.ShopCriteria;
import com.spring.domain.ShopOrderDetailVO;
import com.spring.domain.ShopOrderVO;
import com.spring.domain.ShopPageVO;
import com.spring.domain.ShopProductVO;
import com.spring.domain.ShopReviewVO;
import com.spring.domain.ShopShipVO;
import com.spring.service.ShopServiceImpl;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/shop/")
public class ShopController {
	
	@Autowired
	private ShopServiceImpl shopService;
	
	@GetMapping("/category")
	public void categoryGet(Model model,String lower,String upper,@ModelAttribute("cri") ShopCriteria cri) {
		log.info("상품 페이지");
		
		if(lower != null && upper !=null) {
			cri.setLower(Float.parseFloat(lower));
			cri.setUpper(Float.parseFloat(upper));
		}
		
		log.info("가격 : "+cri.getLower()+", 최대 : "+cri.getUpper());
		log.info("type : "+cri.getType());
		log.info("category : "+cri.getMainCategory());
		log.info("shipCost : "+cri.getShipCost());
		log.info("storage : "+cri.getStorage());
		
		model.addAttribute("shopPageVO", new ShopPageVO(cri, shopService.totalRows(cri)));
		List<ShopProductVO> list = shopService.select(cri);
		log.info("list : "+list);
		model.addAttribute("list", list);
	}
	
	@GetMapping("/cart")
	public void cart(HttpSession session,Model model) {
		
		log.info("장바구니 페이지");
		AuthVO auth = (AuthVO) session.getAttribute("auth");
		if(auth !=null) {
			String userid = auth.getUserid();
			List<ShopCartVO> list = shopService.selectCart(userid);
			model.addAttribute("cartList", list);
		}

	}
	
	@GetMapping("/single-product")
	public void singleProductGet(int pid,Model model){
		log.info("상품 상세페이지");
		log.info("pid : "+pid);
		
		model.addAttribute("vo", shopService.get(pid));
		
	}
	
	@GetMapping("/checkout")
	public void checkoutGet(HttpSession session,Model model){
		log.info("결제 상세페이지");
		AuthVO auth = (AuthVO) session.getAttribute("auth");
		if(auth !=null) {
			String userid = auth.getUserid();
			List<ShopCartVO> list = shopService.getNewestCart(userid);
			
			MemberVO member = new MemberVO();
			member.setName(list.get(0).getName());
			member.setEmail(list.get(0).getEmail());
			member.setPhone(list.get(0).getPhone());
			
			int price = list.get(0).getPrice();
			int amount = list.get(0).getAmount();
			int shipcost = list.get(0).getShipcost();
			List<Integer> chArr = new ArrayList<Integer>();
			chArr.add(list.get(0).getCartid());
					
			ShopOrderVO order = new ShopOrderVO();
			
			if(price * amount >20000) {
				order.setTotalprice(price* amount);
			}else {
				order.setTotalprice(price* amount + shipcost);
				order.setOrdershipcost(list.get(0).getShipcost());
			}
			model.addAttribute("member", member);
			model.addAttribute("chArr",chArr);
			model.addAttribute("cartList", list);
			model.addAttribute("order", order);
		}
	}
	
	@PostMapping("/ship")
	@ResponseBody
	public ResponseEntity<String> insertShip(HttpSession session, ShopShipVO vo) {
		log.info("배송지 추가 ");
		
		AuthVO auth = (AuthVO) session.getAttribute("auth");
		log.info("세션"+auth);
		if(auth !=null) {
			vo.setUserid(auth.getUserid());
			log.info("vo: "+vo);
			if(vo.getShiptitle().equals("최신배송지")) {
				return new ResponseEntity<String>("NewestShip",HttpStatus.BAD_REQUEST);
			}
			if(shopService.insertShip(vo)>0) {
				return new ResponseEntity<String>("success",HttpStatus.OK);
			}else {
				return new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
			}
		}
		return new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
	}
	
	@GetMapping("/ship")
	@ResponseBody
	public ResponseEntity<List<ShopShipVO>> selectShip(HttpSession session){
		AuthVO auth = (AuthVO) session.getAttribute("auth");
		List<ShopShipVO> list = null;
		if(auth !=null) {
			String userid = auth.getUserid();
			list = shopService.selectShip(userid);
		}
		return new ResponseEntity<List<ShopShipVO>>(list,HttpStatus.OK);
	}
	
	@GetMapping("/ship/{shipid}")
	@ResponseBody
	public ResponseEntity<ShopShipVO> getShip(@PathVariable int shipid){
		log.info("배송지 1개 가져오기.  shipid : "+shipid);
		
		return new ResponseEntity<ShopShipVO>(shopService.getShip(shipid),HttpStatus.OK);
	}
	
	@GetMapping("/Sample")
	public void SampleGet() {
		log.info("주소입력 페이지 요청");
	}
	
	@GetMapping("/jusoPopup")
	public void jugoPopupGet() {
		log.info("주소팝업창 페이지 요청");
	}
	
	@PostMapping("/jusoPopup")
	public void jugoPopupPost() {
		log.info("주소팝업창 post 요청");
	}
	
	@PostMapping("/order")
	public String orderPost(HttpSession session ,@RequestParam(value="chArr") List<String> chArr, ShopOrderVO order, ShopShipVO ship) {
		log.info("주문 chArr: "+chArr+order+ship);
		AuthVO auth = (AuthVO) session.getAttribute("auth");
		if(auth != null) {
			String userid = auth.getUserid();
			ship.setUserid(userid);
			
			// 최신배송지에 삽입 또는 업데이트
			if(shopService.countShip(userid)>0) {
				shopService.updateNewestShip(ship);
			}else {
				shopService.insertNewestShip(ship);
			}
			int shipid = shopService.getNewestShip(userid).getShipid();
			
			  //주문번호(orderNum) 생성을 위한 로직
			  Calendar cal = Calendar.getInstance();
			  int year = cal.get(Calendar.YEAR);
			  String ym = year + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
			  String ymd = ym +  new DecimalFormat("00").format(cal.get(Calendar.DATE));
			  String subNum = "";
			  
			  for(int i = 1; i <= 7; i ++) {
			   subNum += (int)(Math.random() * 10);
			  }
			  
			  String orderNum = ymd + "_" + subNum; //ex) 20200508_3730631
			  log.info("orderNum: "+orderNum);
			  order.setOrderNum(orderNum);
			  order.setUserid(userid);
			  order.setShipid(shipid);			  
			  shopService.insertOrder(order); // 주문 테이블에 삽입
			  
			  // 주문 상세 테이블에 삽입을 위한 로직
			  int orderid = shopService.getNewestOrder(userid).getOrderid(); // orderid 가져오기
			  for(String ch:chArr) {
				  int cartid = Integer.parseInt(ch);
				  ShopCartVO cart= shopService.getCart(cartid); // 장바구니에서 정보가져오기
				  ShopOrderDetailVO vo = new ShopOrderDetailVO();
				  vo.setOrderid(orderid);
				  vo.setPid(cart.getPid());
				  vo.setOrdercount(cart.getAmount());
				  vo.setOrderprice(cart.getPrice());
				  shopService.insertOrderDetail(vo); // 주문 상세 테이블에 삽입
				  shopService.deleteCart(cartid);  // 장바구니에서 삭제
			  }
			  return "redirect:/shop/confirmation";
		}
		
		return "redirect:/member/login";
	}
	
	@GetMapping("/confirmation")
	public void confirmationGet(HttpSession session,Model model) {
		log.info("확인 페이지 ");
		AuthVO auth = (AuthVO) session.getAttribute("auth");
		if(auth != null) {
			String userid = auth.getUserid();
			ShopOrderVO order = shopService.getNewestOrder(userid);
			int orderid = order.getOrderid(); // orderid 가져오기
			int shipid = order.getShipid(); // shipid 가져오기
			List<ShopOrderDetailVO> orderDetail = shopService.selectOrderDetail(orderid);
			ShopShipVO ship = shopService.getShip(shipid);
			
			model.addAttribute("order", order);
			model.addAttribute("orderDetail", orderDetail);
			model.addAttribute("ship", ship);
		}
	}
}
