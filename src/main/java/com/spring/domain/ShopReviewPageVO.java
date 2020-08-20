package com.spring.domain;

import java.util.List;

import lombok.Data;

@Data
public class ShopReviewPageVO {
	private int total;
	private List<ShopReviewVO> list;
	private ShopReviewGradeVO gradeVO;
}
