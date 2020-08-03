package com.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.domain.AuthVO;
import com.spring.domain.LoginVO;
import com.spring.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/member/*")
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@GetMapping("/login")
	public void login() {
		log.info("로그인 요청"); 
	}
	@PostMapping("/login")
	public String loginPost(LoginVO login,HttpSession session) {
		
		log.info("로그인 "+login);
		
		AuthVO auth = service.login(login);
		if(auth!=null) {
			
			session.setAttribute("auth", auth);
			return "redirect:/";
		}else {
			return "/member/login";
		}
		
	}
}
