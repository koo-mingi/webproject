package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.PriceVO;
import com.spring.domain.ShopCriteria;
import com.spring.domain.ShopProductVO;
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
	
}
