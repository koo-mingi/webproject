package com.spring.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.spring.domain.PriceVO;
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
	
	public int insetReview(ShopReviewVO vo);
	public List<ShopReviewVO> selectReview(Map<String,Integer> map);
}
