package com.spring.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.domain.PriceVO;
import com.spring.domain.ShopProductVO;
import com.spring.service.ShopServiceImpl;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/shop/")
public class ShopController {
	
	@Autowired
	private ShopServiceImpl shopService;
	
	@GetMapping("/category")
	public void categoryGet(Model model,PriceVO vo) {
		log.info("상품 페이지");
		log.info("가격 : "+vo.getLower()+"최대 : "+vo.getUpper());
		float lower = Float.parseFloat(vo.getLower());
		float upper = Float.parseFloat(vo.getUpper());
		List<ShopProductVO> list = shopService.select(lower,upper);
		model.addAttribute("list", list);
	}
	
	@GetMapping("/cart")
	public void cart() {
		log.info("장바구니 페이지");
	}
	
	@GetMapping("/single-product")
	public void singleProductGet(){
		log.info("상품 상세페이지");
	}
	
	@GetMapping("/checkout")
	public void checkoutGet(){
		log.info("결제 상세페이지");
	}
	
	
}
