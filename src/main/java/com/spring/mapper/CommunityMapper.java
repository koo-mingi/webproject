package com.spring.mapper;

import java.util.List;
import java.util.Map;

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
	
	public List<CommunityVO> selectReply(Map<String,Integer> map);
	public int insertReply(CommunityVO vo);
	public int insertReReply(CommunityVO vo);
	public int updateReply(CommunityVO vo);
	public int totalReply(int bno);
	
}
