package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.NoticeVO;
import com.spring.mapper.NoticeBoardMapper;

@Service
public class NoticeBoardServiceImpl implements NoticeBoardService {

	@Autowired
	private NoticeBoardMapper mapper;

	@Override
	public List<NoticeVO> getList() {
		return mapper.list();
	}

	@Override
	public boolean insertNotice(NoticeVO vo) {
		return mapper.create(vo)==1? true:false;
	}

	@Override
	public NoticeVO readNotice(int bno) {
		return mapper.read(bno);
	}

	@Override
	public boolean modifyNotice(NoticeVO vo) {
		return mapper.modify(vo)==1? true:false;
	}

	@Override
	public boolean deleteNotice(int bno) {
		return mapper.delete(bno)==1? true:false;
	}
}
