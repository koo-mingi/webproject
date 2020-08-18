package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.domain.ShopReviewVO;
import com.spring.mapper.ShopMapper;
import com.spring.service.ShopService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/shopreview/*")
public class ShopReviewController {
	
	@Autowired
	private ShopService service;
	
	@PostMapping("/new")
	@ResponseBody
	public ResponseEntity<String> insertReview(ShopReviewVO vo){
		log.info("리뷰 작성하기 : "+vo);
		
		if( (!vo.getUserid().isEmpty() && !vo.getTitle().isEmpty()) && !vo.getContent().isEmpty() ) {
			
			if(service.insetReview(vo)>0) {
				return new ResponseEntity<String>("success",HttpStatus.OK);
			}
		}else {
			return new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
		}
		
		return new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
	}
	
	@GetMapping("/{pid}/{pageNum}")
	@ResponseBody
	public ResponseEntity<List<ShopReviewVO>> selecReview(@PathVariable int pid, @PathVariable int pageNum){
		
		log.info("pid : "+pid+" pageNum : "+pageNum);
		
		return new ResponseEntity<List<ShopReviewVO>>(service.selectReview(pid, pageNum),HttpStatus.OK);
	}
}
