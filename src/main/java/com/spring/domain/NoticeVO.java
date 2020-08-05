package com.spring.domain;

import java.util.Date;

import lombok.Data;

@Data
public class NoticeVO {
	
	private int bno;
	private String writer;
	private String title;
	private String content;
	private int readcount;
	private Date regdate;
	
}
