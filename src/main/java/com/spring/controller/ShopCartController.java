package com.spring.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.domain.AuthVO;
import com.spring.domain.MemberVO;
import com.spring.domain.ShopCartVO;
import com.spring.domain.ShopOrderVO;
import com.spring.mapper.ShopMapper;
import com.spring.service.ShopService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/shopcart/*")
public class ShopCartController {

	@Autowired
	private ShopService service;
	
	
	// 장바구니에 상품 추가
	@PostMapping("/{pid}/{price}/{amount}")
	@ResponseBody
	public ResponseEntity<String> insertCart(HttpSession session,@PathVariable int pid, @PathVariable int price,
			@PathVariable int amount) {
		
		log.info("장바구니 삽입 : pid : "+pid+" price : "+price+" amount: "+amount);
		AuthVO auth = (AuthVO) session.getAttribute("auth");
		if(auth != null) {
			ShopCartVO vo = new ShopCartVO();
			vo.setUserid(auth.getUserid());
			vo.setPid(pid);
			vo.setPrice(price);
			vo.setAmount(amount);
			service.insertCart(vo);
			return new ResponseEntity<String>("success",HttpStatus.OK);
		}
		
		return new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
	}
	
	// 장바구니 상품 삭제
	@PostMapping("/delete")
	public String deleteCart(@RequestParam(value="chk[]") List<Integer> chArr) {
			
		log.info("삭제 리스트 chArr : "+chArr);
		
		for(int cartid:chArr) {
			if(service.deleteCart(cartid)>0) {
				log.info(cartid + "번 삭제 성공");
			}else {
				log.info(cartid + "번 삭제 실패");
			}
		}
		
		return "redirect:/shop/cart";
	}
	
	// 장바구니 상품 주문
	@PostMapping("/checkout")
	public String orderCart(@RequestParam(value="chk[]") List<Integer> chArr, 
							int shipCost, int totalOrder,Model model) {
		
		log.info("주문 리스트 : "+chArr);
		List<ShopCartVO> list = new ArrayList<ShopCartVO>();
		
		for(int cartid:chArr) {
			ShopCartVO vo = service.getCart(cartid);
			list.add(vo);
		}
		
		MemberVO member = new MemberVO();
		member.setName(list.get(0).getName());
		member.setEmail(list.get(0).getEmail());
		member.setPhone(list.get(0).getPhone());
		
		ShopOrderVO order = new ShopOrderVO();
		order.setOrdershipcost(shipCost);
		order.setTotalprice(totalOrder);
		
		
		model.addAttribute("member", member);
		model.addAttribute("chArr", chArr);
		model.addAttribute("cartList", list);
		model.addAttribute("order", order);
		
		return "/shop/checkout";
	}
	
	@GetMapping("/checkout")
	public String handleCheckout() {
		
		return "redirect:/";
	}
	
}
