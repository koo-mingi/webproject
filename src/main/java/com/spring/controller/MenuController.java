package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
	
	// 공지사항 글쓰기
//	@PreAuthorize("isAuthenticated()") // 인증된 사용자인 경우 true
	@GetMapping("/noticeWrite")
	public void noticeWriteGet() {
		log.info("write form 요청");
	}
	
	// 공지사항 글 작성하기
//	@PreAuthorize("isAuthenticated()")
	@PostMapping("/noticeWrite")
	public void noticeWritePost() {
		log.info("공지사항 글 작성 요청");
//	public String noticePost(BoardVO vo, RedirectAttributes rttr) {
//		log.info("글 작성 요청"+vo);
//		
//		if(vo.getAttachList()!=null) {
//			vo.getAttachList().forEach(attach -> log.info(attach+""));
//		}
//		
//		if(service.insertBoard(vo)) {
//			rttr.addFlashAttribute("result", vo.getBno());
//			return "redirect:list";
//		}
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
