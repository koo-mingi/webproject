package com.spring.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.spring.domain.PriceVO;
import com.spring.domain.ShopCartVO;
import com.spring.domain.ShopCommentVO;
import com.spring.domain.ShopCriteria;
import com.spring.domain.ShopProductVO;
import com.spring.domain.ShopReviewVO;

public interface ShopMapper {
	public List<ShopProductVO> select(ShopCriteria cri);
	public int total(ShopCriteria cri);
	public ShopProductVO get(int pid);
	
	public List<ShopCommentVO> selectComment(Map<String,Integer> map);
	public int insertComment(ShopCommentVO vo);
	public int insertCommentReply(ShopCommentVO vo);
	public int updateComment(ShopCommentVO vo);
	public int totalComment(int pid);
	
	public int insertReview(ShopReviewVO vo);
	public List<ShopReviewVO> selectReview(Map<String,Integer> map);
	public int totalReview(int pid);
	public int grade5count(int pid);
	public int grade4count(int pid);
	public int grade3count(int pid);
	public int grade2count(int pid);
	public int grade1count(int pid);
	public Double gradeAvg(int pid);
	
	public int insertCart(ShopCartVO vo);
	public List<ShopCartVO> selectCart(String userid);
	public int deleteCart(int cartid);
}
