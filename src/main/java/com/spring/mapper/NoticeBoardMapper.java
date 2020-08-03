package com.spring.mapper;

import java.util.List;

import com.spring.domain.NoticeVO;

public interface NoticeBoardMapper {
	public List<NoticeVO> list();
	public int create(NoticeVO vo);
	public NoticeVO read(int bno);
}
