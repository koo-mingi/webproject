package com.spring.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ShopOrderVO {
	private int orderid;
	private String userid;
	private int totalprice;
	private int ordershipcost;
	private Date orderdate;
	private String payment;
	private String orderstate;
}
