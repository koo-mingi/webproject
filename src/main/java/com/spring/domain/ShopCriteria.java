package com.spring.domain;

import lombok.Data;

@Data
public class ShopCriteria {
	private int pageNum; // 현재 페이지
	private int amount;  // 페이지에 보여지는 수량
	private String criteria;  // 전체, 추천순, 가격순
	private float lower;  // 최소 가격
	private float upper;  // 최대 가격
	private String type; // 검색 조건
	
	public ShopCriteria() {
		this.amount=12;
		this.pageNum=1;
		this.criteria="";
		this.lower=1000;
		this.upper=100000;
		this.type="";
	}
}
