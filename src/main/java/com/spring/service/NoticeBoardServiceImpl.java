package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.domain.Criteria;
import com.spring.domain.NoticeVO;
import com.spring.mapper.NoticeBoardMapper;

@Service
public class NoticeBoardServiceImpl implements NoticeBoardService {

	@Autowired
	private NoticeBoardMapper mapper;

	@Override
	public List<NoticeVO> getList(Criteria cri) {
		return mapper.list(cri);
	}

	@Override
	public int totalRows(Criteria cri) {
		return mapper.total(cri);
	}

	@Override
	public boolean insertNotice(NoticeVO vo) {
		return mapper.create(vo)==1? true:false;
	}

	@Transactional
	@Override
	public NoticeVO readNotice(int bno) {
		
		if(mapper.read(bno) != null) {
			mapper.hitUpdate(bno);
			return mapper.read(bno);
		}
		return null;
	}

	@Override
	public boolean modifyNotice(NoticeVO vo) {
		return mapper.modify(vo)==1? true:false;
	}

	@Override
	public boolean deleteNotice(int bno) {
		return mapper.delete(bno)==1? true:false;
	}

//	@Override
//	public boolean updateReadCnt(int bno) {
//		return mapper.hitUpdate(bno)==1? true:false;
//	}

}
