package com.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.domain.PriceVO;
import com.spring.domain.ShopCriteria;
import com.spring.domain.ShopProductVO;

public interface ShopMapper {
	public List<ShopProductVO> select(ShopCriteria cri);
	public int total(ShopCriteria cri);
	public ShopProductVO get(int pid);
}
