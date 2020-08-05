package com.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spring.domain.ShopProductVO;

public interface ShopMapper {
	public List<ShopProductVO> select(@Param("lower") float lower,@Param("upper") float upper);
}
