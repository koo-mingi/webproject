package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.domain.Criteria;
import com.spring.domain.NoticeVO;
import com.spring.service.NoticeBoardService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/menu")
public class MenuController {
	
	@Autowired
	private NoticeBoardService service;
	
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
	
	// 공지사항 글 읽기
	@GetMapping("/notice")
	public void noticeGet(Model model) {
		log.info("notice list 요청");
		List<NoticeVO> list = service.getList();
		// 현재 페이지에 보여줄 게시물
		model.addAttribute("list", list);
	}
	
	// 공지사항 글쓰기
//	@PreAuthorize("isAuthenticated()") // 인증된 사용자인 경우 true
	@GetMapping("/noticeWrite")
	public void noticeWriteGet() {
		log.info("write form 요청");
	}
	
	@GetMapping("/write")
	public void writeGet() {
		log.info("write form 요청");
	}
	
	// 공지사항 글 작성하기
//	@PreAuthorize("isAuthenticated()")
	@PostMapping("/noticeWrite")
	public String noticeWritePost(NoticeVO vo) {
		log.info("공지사항 글 작성 요청"+vo);
		
		if(service.insertNotice(vo)) {
			return "redirect:notice";
		}
		return "noticeWrite";
		
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
	
	// 공지사항 읽기
	@GetMapping("/noticeRead")
	public void noticeRead(int bno, @ModelAttribute("cri") Criteria cri, Model model) {
		log.info(bno+"번째 공지사항 Read 요청"+cri);
		
		NoticeVO vo = service.readNotice(bno);
		model.addAttribute("vo", vo);
	}
	
	// 공지사항 수정하기
	@GetMapping("/noticeModify")
	public void modifyGet(int bno) {
		log.info(bno+"번째 공지사항 수정하기");
		
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
