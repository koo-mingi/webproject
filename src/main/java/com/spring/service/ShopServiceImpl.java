package com.spring.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.domain.PriceVO;
import com.spring.domain.ShopCommentPageVO;
import com.spring.domain.ShopCommentVO;
import com.spring.domain.ShopCriteria;
import com.spring.domain.ShopProductVO;
import com.spring.mapper.ShopMapper;

@Service
public class ShopServiceImpl implements ShopService {

	@Autowired
	private ShopMapper mapper;
	
	@Override
	public List<ShopProductVO> select(ShopCriteria cri) {
		
		return mapper.select(cri);
	}

	@Override
	public int totalRows(ShopCriteria cri) {
		return mapper.total(cri);
	}

	@Override
	public ShopProductVO get(int pid) {
		return mapper.get(pid);
	}

	@Override
	public ShopCommentPageVO selectComment(int pid,int pageNum) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("pid", pid);
		map.put("pageNum", pageNum);
		
		ShopCommentPageVO vo = new ShopCommentPageVO();
		vo.setList(mapper.selectComment(map));
		vo.setTotal(mapper.totalComment(pid));
		
		return vo;
	}

	@Override
	public int insertComment(ShopCommentVO vo) {
		return mapper.insertComment(vo);
	}
	
	@Override
	public int insertCommentReply(ShopCommentVO vo) {
		return mapper.insertCommentReply(vo);
	}

	@Override
	public int updateComment(ShopCommentVO vo) {
		return mapper.updateComment(vo);
	}
	
}
