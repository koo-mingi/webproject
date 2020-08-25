package com.spring.mapper;

import java.util.List;
import java.util.Map;

import com.spring.domain.CommuReplyVO;
import com.spring.domain.CommunityVO;
import com.spring.domain.Criteria;

public interface CommunityMapper {
	public List<CommunityVO> list(Criteria cri);
	public int total(Criteria cri);
	public int create(CommunityVO vo);
	public CommunityVO read(int bno);
	public int modify(CommunityVO vo);
	public int delete(int bno);
	public int hitUpdate(int bno);
	
	public List<CommuReplyVO> selectReply(Map<String,Integer> map);
	public int insertReply(CommuReplyVO vo);
	public int insertReReply(CommuReplyVO vo);
	public int updateReply(CommuReplyVO vo);
	public int totalReply(int bno);
	
}
