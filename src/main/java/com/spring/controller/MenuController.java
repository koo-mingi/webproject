package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/menu")
public class MenuController {
	
	@GetMapping("/pricing")
	public void pricingGet() {
		log.info("pricing 요청");
	}
	
	@GetMapping("/hotplace")
	public void hotplaceGet() {
		log.info("hotplace 요청");
	}
	
	@GetMapping("/know-how")
	public void knowHowGet() {
		log.info("know-how 요청");
	}
	
	@GetMapping("/notice")
	public void noticeGet() {
		log.info("notice 요청");
	}
	
	@GetMapping("/review")
	public void reviewGet() {
		log.info("review 요청");
	}
	
	@GetMapping("/shop")
	public void shopGet() {
		log.info("shop 요청");
	}
	
	@GetMapping("/video")
	public void videoGet() {
		log.info("video 요청");
	}
}
