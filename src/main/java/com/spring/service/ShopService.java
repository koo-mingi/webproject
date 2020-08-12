package com.spring.service;

import java.util.List;

import com.spring.domain.PriceVO;
import com.spring.domain.ShopCriteria;
import com.spring.domain.ShopProductVO;

public interface ShopService {
	public List<ShopProductVO> select(ShopCriteria cri);
	public int totalRows(ShopCriteria cri);
	public ShopProductVO get(int pid);
}
