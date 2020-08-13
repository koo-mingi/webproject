package com.spring.controller;

import java.lang.ProcessBuilder.Redirect;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.domain.RegisterVO;
import com.spring.service.RegisterService;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller
@RequestMapping("/register/*")
public class RegisterController {
	
	
	 @Autowired private RegisterService service;
	
	
	@GetMapping("/step1")
	public void step1Get() {
		
		log.info("step1 가는중"); 
		
	}
	@PostMapping("/step2")
	public String step2Post(boolean agree, RedirectAttributes rttr) {
		log.info("step2 동의"+agree);
		
		if(!agree) {
			rttr.addFlashAttribute("msg", "false");
			return "redirect:step1";
		}
		return "/register/step2";
	}
	

	
	
	
	@PostMapping("/step3") public String step3(@ModelAttribute("vo") RegisterVO
	regist) { 
	log.info("step2 "); 
	log.info(""+regist);
	
	if(regist.isPasswordEqualToConfirmPassword()) { 
		
	if(service.regist(regist)) { 
		log.info("회원가입 성공"); 
		return "/register/step3"; 
		}else { 
			return "/register/step2"; 
			} 
	}else { 
		return "/register/step2"; 
		} 
	}
	
	
//	@GetMapping(value= {"/step2","/step3"}) 
//	public String handleStep2_3() { 
//		
//	
//	return "redirect:step1";
//	
//	}
	
	 
	@PostMapping("/checkId")
	@ResponseBody  //controller
	public String checkId(String userid) {
		log.info("userid : "+userid);
		if(service.dupId(userid)) {
			return "true";
		}else {
			return "false";
		}
	}
	
	@PostMapping("/checkEmail")
	@ResponseBody  //controller
	public String checkEmail(String email) {
		log.info("userid : "+email);
		if(service.dupEmail(email)) {
			return "true";
		}else {
			return "false";
		}
	}
	
	@GetMapping("/step3")
	public void step3Get() {
		log.info("step3");
	}
	
	
}
