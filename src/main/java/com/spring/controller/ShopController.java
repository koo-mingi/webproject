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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.domain.AuthVO;
import com.spring.domain.PriceVO;
import com.spring.domain.ShopCartVO;
import com.spring.domain.ShopCriteria;
import com.spring.domain.ShopOrderVO;
import com.spring.domain.ShopPageVO;
import com.spring.domain.ShopProductVO;
import com.spring.domain.ShopReviewVO;
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
			model.addAttribute("chArr",chArr);
			model.addAttribute("cartList", list);
			model.addAttribute("order", order);
		}
	}
	
}
