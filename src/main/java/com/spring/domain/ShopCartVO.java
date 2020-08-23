package com.spring.domain;

import lombok.Data;

@Data
public class ShopCartVO {
	private int cartid;
	private String userid;
	private String pname;
	private int pid;
	private int amount;
	private int price;
	private int shipcost;
	
	public ShopCartVO() {
		this.cartid = 0;
		this.userid = "";
		this.pname = "";
		this.pid = 0;
		this.amount = 1;
		this.price = 0;
		this.shipcost = 0;
	}
	
	
}
