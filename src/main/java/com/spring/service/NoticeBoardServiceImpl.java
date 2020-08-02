package com.spring.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spring.domain.NoticeVO;
import com.spring.mapper.NoticeBoardMapper;

@Service
public class NoticeBoardServiceImpl implements NoticeBoardService {

	private NoticeBoardMapper mapper;

	@Override
	public List<NoticeVO> getList() {
		return mapper.list();
	}

	@Override
	public int insertNotice(NoticeVO vo) {
		return mapper.create(vo);
	}

	@Override
	public NoticeVO readNotice(int bno) {
		return mapper.read(bno);
	}
}
