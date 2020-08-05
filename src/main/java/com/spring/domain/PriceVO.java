package com.spring.domain;

import lombok.Data;

@Data
public class PriceVO {
	private String lower;
	private String upper;
	
	public PriceVO() {
		this.lower="1000";
		this.upper="100000";
	}
}
