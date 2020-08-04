package com.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("auth");
		
		return "redirect:/";
	}
	
	@GetMapping("/leave")
	public void leaveForm() {
		log.info("");
	}
	
	@DeleteMapping("/leave")
	@ResponseBody
	public ResponseEntity<String> leaveDelete(@RequestBody LoginVO vo, HttpSession session){
		log.info("loginVO"+vo);
		
		String password = service.getPwd(vo.getUserid());
		
		if(password.equals(vo.getPassword())) {
			
			if(service.delete(vo.getUserid())) {
				session.removeAttribute("auth");
				return new ResponseEntity<String>("success",HttpStatus.OK);
			}
		}
		return new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
	}
	// 비밀번호 찾기 폼
	@RequestMapping(value = "/find_pw_form.do")
	public String find_pw_form() throws Exception{
		return "/member/find_pw_form";
	}
	
}
















