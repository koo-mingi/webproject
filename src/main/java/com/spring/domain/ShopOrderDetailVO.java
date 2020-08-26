package com.spring.domain;

import lombok.Data;

@Data
public class ShopOrderDetailVO {
	private int order_detail_id;
	private int orderid;
	private int pid;
	private String pname;
	private int ordercount;
	private int orderprice;
}
