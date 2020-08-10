package com.spring.mapper;

import java.util.List;

import com.spring.domain.Criteria;
import com.spring.domain.NoticeVO;

public interface NoticeBoardMapper {
	public List<NoticeVO> list(Criteria cri);
	public int total(Criteria cri);
	public int create(NoticeVO vo);
	public NoticeVO read(int bno);
	public int modify(NoticeVO vo);
	public int delete(int bno);
	public int hitUpdate(int bno);
}
