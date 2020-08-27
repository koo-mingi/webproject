package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.domain.CommunityVO;
import com.spring.domain.Criteria;
import com.spring.domain.NoticeVO;
import com.spring.domain.PageVO;


import com.spring.service.CommunityService;

import com.spring.service.NoticeBoardService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/menu")
public class MenuController {
	
	@Autowired
	private CommunityService service;
	
	@GetMapping("/video")
	public void videoGet() {
		log.info("video 요청");
	}
	
	@GetMapping("/know-how")
	public void knowHowGet() {
		log.info("know-how 요청");
	}
	
	// 커뮤니티 목록보기
	@GetMapping("/community")
	public void communityGet(Model model,@ModelAttribute("cri") Criteria cri) {
		log.info("community 요청");
		List<CommunityVO> list = service.getList(cri);
		// 현재 페이지에 보여줄 게시물
		model.addAttribute("list", list);
		// 하단의 페이지 나누기와 관련된 정보
		model.addAttribute("pageVO", new PageVO(cri, service.totalRows(cri)));
	}
	
	// 커뮤니티 글쓰기 form
	@PreAuthorize("isAuthenticated()") // 인증된 사용자인 경우 true
	@GetMapping("/communityWrite")
	public void communityWriteGet() {
		log.info("community write form 요청");
	}
	
	// 커뮤니티 글 작성하기
	@PreAuthorize("isAuthenticated()")
	@PostMapping("/communityWrite")
	public String communityWritePost(CommunityVO vo, RedirectAttributes rttr) {
		log.info("커뮤니티 글 작성 요청"+vo);
		
		try {
			if(service.insertCommu(vo)) {
				rttr.addFlashAttribute("result", vo.getBno());
				return "redirect:community";
			}
			return "/menu/communityWrite";
		} catch (Exception e) {
			return "/menu/communityWrite";
		}
	}
	
	// 커뮤니티 읽기
	@GetMapping("/communityRead")
	public void communityRead(int bno, @ModelAttribute("cri") Criteria cri, Model model) {
		log.info(bno+"번째 공지사항 Read 요청"+cri);
		
		CommunityVO vo = service.readCommu(bno);
		model.addAttribute("pageNum", cri.getPageNum());
		model.addAttribute("amount", cri.getAmount());
		model.addAttribute("vo", vo);
		log.info(""+cri.getPageNum());
		log.info(""+cri.getAmount());
	}

	// 커뮤니티 수정화면 Get
	@GetMapping("/communityModify")
	public void modifyGet(int bno, @ModelAttribute("cri") Criteria cri, Model model) {
		log.info(bno+"번째 공지사항 Read 요청"+cri);

		CommunityVO vo = service.readCommu(bno);
		model.addAttribute("vo", vo);
	}
	
	// 공지사항 수정하기 Post
	@PostMapping("/communityModify")
	public String modifyPost(CommunityVO vo, Criteria cri, RedirectAttributes rttr) {
		log.info("공지사항 수정 요청"+vo);
		
		if(service.modifyCommu(vo)) {
			rttr.addAttribute("bno", vo.getBno());
			rttr.addAttribute("pageNum", cri.getPageNum());
			rttr.addAttribute("amount", cri.getAmount());
			rttr.addAttribute("type", cri.getType());
			rttr.addAttribute("keyword", cri.getKeyword());
			return "redirect:communityRead";
		}
		rttr.addAttribute("bno", vo.getBno());
		return "redirect:communityModify";
	}
	
	// 커뮤니티 삭제
	@PreAuthorize("principal.username == #writer")
	@PostMapping("/removeCommu")
	public String delete(int bno, String writer, Criteria cri, RedirectAttributes rttr) {
		log.info("삭제 요청"+bno);
		
		// 현재 글번호에 해당한는 첨부파일 목록을 서버에서 삭제하기 위해서
		// bno에 해당하는 첨부파일 리스트 가져오기
//		List<AttachFileVO> attachList=service.attachList(bno);
		
		if(service.deleteCommu(bno)) {
			rttr.addAttribute("pageNum", cri.getPageNum());
			rttr.addAttribute("amount", cri.getAmount());
			rttr.addAttribute("type", cri.getType());
			rttr.addAttribute("keyword", cri.getKeyword());
			rttr.addFlashAttribute("result", "success");
			return "redirect:community";
		}else {
			rttr.addAttribute("bno", bno);
			return "redirect:communityRead";
		}
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
