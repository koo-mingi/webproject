package com.spring.service;

import java.util.List;

import com.spring.domain.ShopProductVO;

public interface ShopService {
	public List<ShopProductVO> select(float lower, float upper);
}
