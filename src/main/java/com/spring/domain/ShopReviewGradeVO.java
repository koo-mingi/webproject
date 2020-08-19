package com.spring.domain;

import lombok.Data;

@Data
public class ShopReviewGradeVO {
	private int grade1;
	private int grade2;
	private int grade3;
	private int grade4;
	private int grade5;
	private double gradeAvg;
	private int reviewCount;
}
