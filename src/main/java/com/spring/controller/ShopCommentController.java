package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.domain.ShopCommentVO;
import com.spring.mapper.ShopMapper;
import com.spring.service.ShopService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/shopcomment/*")
public class ShopCommentController {
	
	@Autowired
	private ShopService shopservice;
	
	@GetMapping("/{pid}/{pageNum}")
	@ResponseBody
	public ResponseEntity<List<ShopCommentVO>> getList(@PathVariable int pid,@PathVariable int pageNum) {
		log.info("코멘트 pid : "+pid+" pageNum : "+pageNum);
		
		return new ResponseEntity<List<ShopCommentVO>>(shopservice.selectComment(pid,pageNum),HttpStatus.OK);
	}
	
	@PostMapping("/new")
	public ResponseEntity<String> insert(ShopCommentVO vo){
		log.info("코멘트 추가하기 : vo = "+ vo);
		
		if(shopservice.insertComment(vo)>0) {
			return new ResponseEntity<String>("success",HttpStatus.OK);
		}else {
			return new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
		}
	}
	
	@PostMapping("/reply")
	public ResponseEntity<String> reply(ShopCommentVO vo){
		log.info("코멘트 답글달기 추가 : "+ vo);
		
		// 현재 원본글의 답글의 re_seq를 +1해주는 작업.
		shopservice.updateComment(vo);
		
			vo.setRe_seq(vo.getRe_seq()+1);
			vo.setRe_lev(vo.getRe_lev()+1);
			
			if(shopservice.insertCommentReply(vo)>0) {
				return new ResponseEntity<String>("success",HttpStatus.OK);
			}else {
				return new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
			}
		
	}
	
	
	
	
}
