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
}
