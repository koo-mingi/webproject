package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.domain.Criteria;
import com.spring.domain.NoticeVO;
import com.spring.domain.PageVO;
import com.spring.service.NoticeBoardService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/menu")
public class MenuController {
	
	@GetMapping("/video")
	public void videoGet() {
		log.info("video 요청");
	}
	
	@GetMapping("/know-how")
	public void knowHowGet() {
		log.info("know-how 요청");
	}
	
	@GetMapping("/review")
	public void reviewGet() {
		log.info("review 요청");
	}
	
	@GetMapping("/hotplace")
	public void hotplaceGet() {
		log.info("hotplace 요청");
	}
	
	@GetMapping("/shop")
	public void shopGet() {
		log.info("shop 요청");
	}
	
	@GetMapping("/pricing")
	public void pricingGet() { 
		log.info("pricing 요청");
	}
	
}
