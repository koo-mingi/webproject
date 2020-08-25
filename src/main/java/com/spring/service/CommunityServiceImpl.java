package com.spring.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.domain.CommuReplyPageVO;
import com.spring.domain.CommuReplyVO;
import com.spring.domain.CommunityVO;
import com.spring.domain.Criteria;
import com.spring.domain.ShopCommentPageVO;
import com.spring.mapper.CommunityMapper;

@Service
public class CommunityServiceImpl implements CommunityService {

	@Autowired
	private CommunityMapper mapper;

	@Override
	public List<CommunityVO> getList(Criteria cri) {
		return mapper.list(cri);
	}

	@Override
	public int totalRows(Criteria cri) {
		return mapper.total(cri);
	}

	@Override
	public boolean insertCommu(CommunityVO vo) {
		if(vo.getCategory().equals("none")) {
			
		}
		return mapper.create(vo)==1? true:false;
	}

	@Transactional
	@Override
	public CommunityVO readCommu(int bno) {
		
		if(mapper.read(bno) != null) {
			mapper.hitUpdate(bno);
			return mapper.read(bno);
		}
		return null;
	}

	@Override
	public boolean modifyCommu(CommunityVO vo) {
		return mapper.modify(vo)==1? true:false;
	}

	@Override
	public boolean deleteCommu(int bno) {
		return mapper.delete(bno)==1? true:false;
	}

	@Override
	public CommuReplyPageVO selectReply(int bno, int pageNum) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("bno", bno);
		map.put("pageNum", pageNum);
		
		CommuReplyPageVO vo = new CommuReplyPageVO();
		vo.setListRep(mapper.selectReply(map));
		vo.setTotalRep(mapper.totalReply(bno));
		
		return vo;
	}

	@Override
	public int insertReply(CommuReplyVO vo) {
		return mapper.insertReply(vo);
	}

	@Override
	public int insertReReply(CommuReplyVO vo) {
		return mapper.insertReReply(vo);
	}

	@Override
	public int updateReply(CommuReplyVO vo) {
		return mapper.updateReply(vo);
	}

}
