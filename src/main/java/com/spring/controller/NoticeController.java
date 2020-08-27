package com.spring.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.domain.AuthVO;
import com.spring.domain.Criteria;
import com.spring.domain.NoticeVO;
import com.spring.domain.PageVO;
import com.spring.service.NoticeBoardService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/menu")
public class NoticeController {
	
	@Autowired
	private NoticeBoardService service;
	
	// 공지사항 목록보기
	@GetMapping("/notice")
	public void noticeGet(Model model,@ModelAttribute("cri") Criteria cri) {
		log.info("notice list 요청");
		List<NoticeVO> list = service.getList(cri);
		// 현재 페이지에 보여줄 게시물
		model.addAttribute("list", list);
		// 하단의 페이지 나누기와 관련된 정보
		model.addAttribute("pageVO", new PageVO(cri, service.totalRows(cri)));
	}
	
	// 공지사항 글쓰기
	@PreAuthorize("isAuthenticated()") // 인증된 사용자인 경우 true
	@GetMapping("/noticeWrite")
	public void noticeWriteGet(HttpSession session) {
		AuthVO auth = (AuthVO) session.getAttribute("auth");
		log.info("write form 요청");
	}
	
	@GetMapping("/write")
	public void writeGet() {
		log.info("write form 요청");
	}
	
	// 공지사항 글 작성하기
	@PreAuthorize("isAuthenticated()")
	@PostMapping("/noticeWrite")
	public String noticeWritePost(NoticeVO vo, RedirectAttributes rttr) {
		log.info("공지사항 글 작성 요청"+vo);
		
		try {
			if(service.insertNotice(vo)) {
				rttr.addFlashAttribute("result", vo.getBno());
				return "redirect:notice";
			}
			return "noticeWrite";
		} catch (Exception e) {
			return "noticeWrite";
		}
	}
	
	// 공지사항 읽기
	@GetMapping("/noticeRead")
	public void noticeRead(int bno, @ModelAttribute("cri") Criteria cri, Model model) {
		log.info(bno+"번째 공지사항 Read 요청"+cri);
		
		NoticeVO vo = service.readNotice(bno);
		model.addAttribute("pageNum", cri.getPageNum());
		model.addAttribute("amount", cri.getAmount());
		model.addAttribute("vo", vo);
		log.info(""+cri.getPageNum());
		log.info(""+cri.getAmount());
	}
	
	// 공지사항 수정화면 Get
	@GetMapping("/noticeModify")
	public void modifyGet(int bno, @ModelAttribute("cri") Criteria cri, Model model) {
		log.info(bno+"번째 공지사항 Read 요청"+cri);

		NoticeVO vo = service.readNotice(bno);
		model.addAttribute("vo", vo);
	}
	
	// 공지사항 수정하기 Post
	@PostMapping("/noticeModify")
	public String modifyPost(NoticeVO vo, Criteria cri, RedirectAttributes rttr) {
		log.info("공지사항 수정 요청"+vo);
		
		if(service.modifyNotice(vo)) {
			rttr.addAttribute("bno", vo.getBno());
			rttr.addAttribute("pageNum", cri.getPageNum());
			rttr.addAttribute("amount", cri.getAmount());
			rttr.addAttribute("type", cri.getType());
			rttr.addAttribute("keyword", cri.getKeyword());
			return "redirect:noticeRead";
		}
		rttr.addAttribute("bno", vo.getBno());
		return "redirect:noticeModify";
	}
	
	// 공지사항 삭제하기
	@PreAuthorize("principal.username == #writer")
	@PostMapping("/remove")
	public String delete(int bno, String writer, Criteria cri, RedirectAttributes rttr) {
		log.info("삭제 요청"+bno);
		
		// 현재 글번호에 해당한는 첨부파일 목록을 서버에서 삭제하기 위해서
		// bno에 해당하는 첨부파일 리스트 가져오기
//		List<AttachFileVO> attachList=service.attachList(bno);
		
		if(service.deleteNotice(bno)) {
			rttr.addAttribute("pageNum", cri.getPageNum());
			rttr.addAttribute("amount", cri.getAmount());
			rttr.addAttribute("type", cri.getType());
			rttr.addAttribute("keyword", cri.getKeyword());
			rttr.addFlashAttribute("result", "success");
			return "redirect:notice";
		}else {
			rttr.addAttribute("bno", bno);
			return "redirect:noticeRead";
		}
	}
}
