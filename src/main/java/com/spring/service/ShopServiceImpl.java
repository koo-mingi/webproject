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
import com.spring.domain.ShopOrderDetailVO;
import com.spring.domain.ShopOrderVO;
import com.spring.domain.ShopProductVO;
import com.spring.domain.ShopReviewGradeVO;
import com.spring.domain.ShopReviewPageVO;
import com.spring.domain.ShopReviewVO;
import com.spring.domain.ShopShipVO;
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

	@Override
	public int insertShip(ShopShipVO vo) {
		return mapper.insertShip(vo);
	}

	@Override
	public List<ShopShipVO> selectShip(String userid) {
		return mapper.selectShip(userid);
	}

	@Override
	public ShopShipVO getShip(int shipid) {
		return mapper.getShip(shipid);
	}

	@Override
	public int insertNewestShip(ShopShipVO vo) {
		return mapper.insertNewestShip(vo);
	}

	@Override
	public int updateNewestShip(ShopShipVO vo) {
		return mapper.updateNewestShip(vo);
	}

	@Override
	public int countShip(String userid) {
		return mapper.countShip(userid);
	}

	@Override
	public ShopShipVO getNewestShip(String userid) {
		return mapper.getNewestShip(userid);
	}

	@Override
	public int insertOrder(ShopOrderVO order) {
		return mapper.insertOrder(order);
	}

	@Override
	public ShopOrderVO getNewestOrder(String userid) {
		return mapper.getNewestOrder(userid);
	}

	@Override
	public int insertOrderDetail(ShopOrderDetailVO vo) {
		return mapper.insertOrderDetail(vo);
	}

	@Override
	public List<ShopOrderDetailVO> selectOrderDetail(int orderid) {
		return mapper.selectOrderDetail(orderid);
	}

}
