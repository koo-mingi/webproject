package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/shop/")
public class ShopController {
	
	@GetMapping("/category")
	public void categoryGet() {
		log.info("상품 페이지");
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
