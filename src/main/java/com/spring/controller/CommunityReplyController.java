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

import com.spring.domain.CommuReplyPageVO;
import com.spring.domain.CommuReplyVO;
import com.spring.service.CommunityService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/commuReply/*")
public class CommunityReplyController {
	
	@Autowired
	private CommunityService commuService;
	
	// 코멘트 목록 가져오기
	@GetMapping("/{bno}/{pageNum}")
	@ResponseBody
	public ResponseEntity<CommuReplyPageVO> getList(@PathVariable int bno,@PathVariable int pageNum) {
		log.info("Reply bno : "+bno+" pageNum : "+pageNum);

		return new ResponseEntity<CommuReplyPageVO>(commuService.selectReply(bno,pageNum),HttpStatus.OK);
	}
	
	@PostMapping("/new")
	public ResponseEntity<String> insert(CommuReplyVO vo){
		log.info("코멘트 추가하기 : vo = "+ vo);
		
		if((!vo.getReplyer().equals("") && !vo.getReply().equals(""))) {
			if(commuService.insertReply(vo)>0) {
				return new ResponseEntity<String>("success",HttpStatus.OK);
			}else {
				return new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
			}
		}else {
			return new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
		}
	}
	
	@PostMapping("/reReply")
	public ResponseEntity<String> reply(CommuReplyVO vo){
		log.info("코멘트 답글달기 추가 : "+ vo);
		
		if( (!vo.getReplyer().equals("") && !vo.getReply().equals(""))) {
			// 현재 원본글의 답글의 re_seq를 +1해주는 작업.
			commuService.updateReply(vo);
		
			vo.setRe_seq(vo.getRe_seq()+1);
			vo.setRe_lev(vo.getRe_lev()+1);
			
			if(commuService.insertReReply(vo)>0) {
				return new ResponseEntity<String>("success",HttpStatus.OK);
			}else {
				return new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
			}
		}else {
			return new ResponseEntity<String>("fail",HttpStatus.BAD_REQUEST);
		}
	}
	
}
