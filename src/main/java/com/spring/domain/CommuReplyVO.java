package com.spring.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CommuReplyVO {
	private int rno; // 댓글 번호
	private int bno; // 게시글 원글 번호
	private String reply; // 댓글 내용
	private String replyer; // 댓글 작성자
	private Date replydate; // 작성일
	private int re_seq; // 댓글 순서
	private int re_lev; // 댓글 깊이
}
