package com.spring.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.spring.domain.PriceVO;
import com.spring.domain.ShopCartVO;
import com.spring.domain.ShopCommentVO;
import com.spring.domain.ShopCriteria;
import com.spring.domain.ShopOrderDetailVO;
import com.spring.domain.ShopOrderVO;
import com.spring.domain.ShopProductVO;
import com.spring.domain.ShopReviewVO;
import com.spring.domain.ShopShipVO;

public interface ShopMapper {
	public List<ShopProductVO> select(ShopCriteria cri);
	public int total(ShopCriteria cri);
	public ShopProductVO get(int pid);
	
	// 코멘트
	public List<ShopCommentVO> selectComment(Map<String,Integer> map);
	public int insertComment(ShopCommentVO vo);
	public int insertCommentReply(ShopCommentVO vo);
	public int updateComment(ShopCommentVO vo);
	public int totalComment(int pid);
	
	// 후기
	public int insertReview(ShopReviewVO vo);
	public List<ShopReviewVO> selectReview(Map<String,Integer> map);
	public int totalReview(int pid);
	public int grade5count(int pid);
	public int grade4count(int pid);
	public int grade3count(int pid);
	public int grade2count(int pid);
	public int grade1count(int pid);
	public Double gradeAvg(int pid);
	
	// 장바구니
	public int insertCart(ShopCartVO vo);
	public List<ShopCartVO> selectCart(String userid);
	public int deleteCart(int cartid);
	public List<ShopCartVO> getNewestCart(String userid);
	public ShopCartVO getCart(int cartid);
	
	// 배송지
	public int insertShip(ShopShipVO vo);
	public List<ShopShipVO> selectShip(String userid);
	public ShopShipVO getShip(int shipid);
	public int insertNewestShip(ShopShipVO vo);
	public int updateNewestShip(ShopShipVO vo);
	public int countShip(String userid);
	public ShopShipVO getNewestShip(String userid);
	
	// 주문
	public int insertOrder(ShopOrderVO order);
	public ShopOrderVO getNewestOrder(String userid);
	public int insertOrderDetail(ShopOrderDetailVO vo);
	public List<ShopOrderDetailVO> selectOrderDetail(int orderid);
}
