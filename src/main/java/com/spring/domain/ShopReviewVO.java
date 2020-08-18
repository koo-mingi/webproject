package com.spring.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ShopReviewVO {
	private int rid;
	private int pid;
	private String userid;
	private String title;
	private String content;
	private int grade;
	private Date regdate;
	
}
