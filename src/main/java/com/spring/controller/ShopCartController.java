package com.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.domain.AuthVO;
import com.spring.domain.ShopCartVO;
import com.spring.mapper.ShopMapper;
import com.spring.service.ShopService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/shopcart/*")
public class ShopCartController {

	@Autowired
	private ShopService service;
	
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
		}
		
		return new ResponseEntity<String>("success",HttpStatus.OK);
	}
}
