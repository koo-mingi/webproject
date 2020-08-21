package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
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

import com.spring.domain.cityVO;

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
//	@PreAuthorize("isAuthenticated()") // 인증된 사용자인 경우 true
	@GetMapping("/communityWrite")
	public void communityWriteGet() {
		log.info("community write form 요청");
	}
	
	// 커뮤니티 글 작성하기
//	@PreAuthorize("isAuthenticated()")
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
	
	@GetMapping("/hotplace")
	public void hotplaceGet() {
		log.info("hotplace 요청");
	}
	
	@PostMapping("/hotplace")
	public ResponseEntity<cityVO> hotplace_post(String city) {
		log.info("도시 "+city);
		//서비스
		
		
		//
		return new ResponseEntity<cityVO>(HttpStatus.OK);
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
