package com.spring.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class MemberVO {
	private String userid;
	private String password;
	private String new_password;
	private String email;
	private String name;
	private String phone;
	
	
	

}
