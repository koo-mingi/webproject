package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.domain.HotplaceVO;

import com.spring.service.HotplaceService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/menu")
public class HotplaceController {
	
	@Autowired
	private HotplaceService service;
	
	@GetMapping("/hotplace")
	public void hotplaceGet() {
		log.info("hotplace 요청");
	}
	
	@PostMapping("/hotplace")
	public ResponseEntity<List<HotplaceVO>> hotplace_post(String city) {
		log.info("도시 "+city);
		//서비스
		List<HotplaceVO> sigunguList = service.sigungu(city);		
		
		return new ResponseEntity<List<HotplaceVO>>(sigunguList,HttpStatus.OK);
	}

}
