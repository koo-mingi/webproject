package com.spring.service;

import java.util.List;

import com.spring.domain.Criteria;
import com.spring.domain.NoticeVO;

public interface NoticeBoardService {
	// 공지사항 게시판 목록보기
	public List<NoticeVO> getList(Criteria cri);
	int totalRows(Criteria cri);
	// 공지사항 글쓰기
	public boolean insertNotice(NoticeVO vo);
	// 공지사항 글 읽기
	public NoticeVO readNotice(int bno);
	// 공지사항 글 수정
	public boolean modifyNotice(NoticeVO vo);
	// 공지사항 글 삭제
	public boolean deleteNotice(int bno);
}
