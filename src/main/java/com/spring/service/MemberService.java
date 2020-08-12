package com.spring.service;

import javax.servlet.http.HttpServletResponse;

import com.spring.domain.MemberVO;
import com.spring.domain.AuthVO;
import com.spring.domain.ChangeVO;
import com.spring.domain.LoginVO;

public interface MemberService {
	public AuthVO login(LoginVO login);
	
	public String getPwd(String userid);
	
	public boolean updatePwd(ChangeVO vo);
	
	public boolean delete(String userid);

	public void check_id(String id, HttpServletResponse response) throws Exception;

	public void check_email(String email, HttpServletResponse response) throws Exception;

	public void send_mail(MemberVO member, String div) throws Exception;

	public void find_pw(MemberVO member) throws Exception;

}
