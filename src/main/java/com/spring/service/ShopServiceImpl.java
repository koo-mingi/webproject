package com.spring.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spring.domain.PriceVO;
import com.spring.domain.ShopCartVO;
import com.spring.domain.ShopCommentPageVO;
import com.spring.domain.ShopCommentVO;
import com.spring.domain.ShopCriteria;
import com.spring.domain.ShopProductVO;
import com.spring.domain.ShopReviewGradeVO;
import com.spring.domain.ShopReviewPageVO;
import com.spring.domain.ShopReviewVO;
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

	@Override
	public int insertReview(ShopReviewVO vo) {
		return mapper.insertReview(vo);
	}

	@Override
	public ShopReviewPageVO selectReview(int pid, int pageNum) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("pid", pid);
		map.put("pageNum", pageNum);
		
		ShopReviewGradeVO gradeVO = new ShopReviewGradeVO();
		gradeVO.setGrade1(mapper.grade1count(pid));
		gradeVO.setGrade2(mapper.grade2count(pid));
		gradeVO.setGrade3(mapper.grade3count(pid));
		gradeVO.setGrade4(mapper.grade4count(pid));
		gradeVO.setGrade5(mapper.grade5count(pid));
		if(mapper.gradeAvg(pid)!=null) {
			gradeVO.setGradeAvg(mapper.gradeAvg(pid));
		}
		gradeVO.setReviewCount(mapper.totalReview(pid));
		
		ShopReviewPageVO vo = new ShopReviewPageVO();
		vo.setTotal(mapper.totalReview(pid));
		vo.setList(mapper.selectReview(map));
		vo.setGradeVO(gradeVO);
		
		return vo;
	}

	@Override
	public int insertCart(ShopCartVO vo) {
		return mapper.insertCart(vo);
	}

	@Override
	public List<ShopCartVO> selectCart(String userid) {
		return mapper.selectCart(userid);
	}

	@Override
	public int deleteCart(int cartid) {
		return mapper.deleteCart(cartid);
	}

	@Override
	public List<ShopCartVO> getNewestCart(String userid) {
		return mapper.getNewestCart(userid);
	}

	@Override
	public ShopCartVO getCart(int cartid) {
		return mapper.getCart(cartid);
	}

}
