package com.spring.domain;

import java.util.List;

import lombok.Data;

@Data
public class ShopCommentPageVO {
	private int total;
	private List<ShopCommentVO> list;
}
