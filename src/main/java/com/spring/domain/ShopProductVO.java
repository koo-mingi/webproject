package com.spring.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ShopProductVO {
	private int pid;
	private String pname;
	private int price;
	private int saleprice;
	private int amount;
	private String category;
	private String description;
	private float gradeavg;
	private int volume;
	private int shipcost;
	private String storage;
	private Date expdate;
	private int imgid;
}
