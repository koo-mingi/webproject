package com.spring.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ShopCommentVO {
	private int cid; // 코멘트 번호
	private int pid; // 상점 물품 번호
	private String userid; // 작성한 유저
	private String title;  // 글 제목
	private String content; // 글 내용
	private Date regdate;  // 작성 일자
	private int re_ref;  // 원본 글 번호
	private int re_seq;  // 댓글 순서
	private int re_lev;  // 댓글 깊이
}
