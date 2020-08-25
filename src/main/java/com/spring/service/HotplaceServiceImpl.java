package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.HotplaceVO;
import com.spring.mapper.HotplaceMapper;

@Service
public class HotplaceServiceImpl implements HotplaceService {
	
	@Autowired
	private HotplaceMapper mapper;

	@Override
	public List<HotplaceVO> sigungu(String city) {
		return mapper.sigungu(city);
	}

}
