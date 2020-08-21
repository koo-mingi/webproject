package com.spring.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CommunityVO {

	private int bno;
	private String category;
	private String writer;
	private String title;
	private String content;
	private int readcount;
	private int replycnt;
	private Date regdate;
	
	
}
