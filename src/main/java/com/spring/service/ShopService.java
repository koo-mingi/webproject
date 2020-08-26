package com.spring.service;

import java.util.List;

import com.spring.domain.PriceVO;
import com.spring.domain.ShopCartVO;
import com.spring.domain.ShopCommentPageVO;
import com.spring.domain.ShopCommentVO;
import com.spring.domain.ShopCriteria;
import com.spring.domain.ShopOrderDetailVO;
import com.spring.domain.ShopOrderVO;
import com.spring.domain.ShopProductVO;
import com.spring.domain.ShopReviewPageVO;
import com.spring.domain.ShopReviewVO;
import com.spring.domain.ShopShipVO;

public interface ShopService {
	public List<ShopProductVO> select(ShopCriteria cri);
	public int totalRows(ShopCriteria cri);
	public ShopProductVO get(int pid);
	
	public ShopCommentPageVO selectComment(int pid,int pageNum);
	public int insertComment(ShopCommentVO vo);
	public int insertCommentReply(ShopCommentVO vo);
	public int updateComment(ShopCommentVO vo);
	
	public int insertReview(ShopReviewVO vo);
	public ShopReviewPageVO selectReview(int pid,int pageNum);
	
	public int insertCart(ShopCartVO vo);
	public List<ShopCartVO> selectCart(String userid);
	public int deleteCart(int cartid);
	public List<ShopCartVO> getNewestCart(String userid);
	public ShopCartVO getCart(int cartid);
	
	public int insertShip(ShopShipVO vo);
	public List<ShopShipVO> selectShip(String userid);
	public ShopShipVO getShip(int shipid);
	public int insertNewestShip(ShopShipVO vo);
	public int updateNewestShip(ShopShipVO vo);
	public int countShip(String userid);
	public ShopShipVO getNewestShip(String userid);
	
	public int insertOrder(ShopOrderVO order);
	public ShopOrderVO getNewestOrder(String userid);
	public int insertOrderDetail(ShopOrderDetailVO vo);
	public List<ShopOrderDetailVO> selectOrderDetail(int orderid);
}
