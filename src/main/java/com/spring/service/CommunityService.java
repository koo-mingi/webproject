package com.spring.service;

import java.util.List;

import com.spring.domain.CommuReplyPageVO;
import com.spring.domain.CommuReplyVO;
import com.spring.domain.CommunityVO;
import com.spring.domain.Criteria;

public interface CommunityService {
	// 커뮤니티 게시판 목록보기
	public List<CommunityVO> getList(Criteria cri);
	int totalRows(Criteria cri);
	// 커뮤니티 글쓰기
	public boolean insertCommu(CommunityVO vo);
	// 커뮤니티 글 읽기
	public CommunityVO readCommu(int bno);
	// 커뮤니티 글 수정
	public boolean modifyCommu(CommunityVO vo);
	// 커뮤니티 글 삭제
	public boolean deleteCommu(int bno);
	
	// 커뮤니티 댓글
	public CommuReplyPageVO selectReply(int bno,int pageNum);
	public int insertReply(CommuReplyVO vo);
	public int insertReReply(CommuReplyVO vo);
	public int updateReply(CommuReplyVO vo);
}
