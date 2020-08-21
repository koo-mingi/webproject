package com.spring.mapper;

import java.util.List;

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
}
