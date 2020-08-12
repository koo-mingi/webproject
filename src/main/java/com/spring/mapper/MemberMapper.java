package com.spring.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.spring.domain.AuthVO;
import com.spring.domain.ChangeVO;
import com.spring.domain.LoginVO;

public interface MemberMapper {
	public AuthVO login(LoginVO login);
	public String getpassword(String userid);
//	public int updatePwd(@Param("userid")String userid,@Param("new_password") String new_password);
	public int updatePwd(ChangeVO vo);
	public int deleteMember(String userid);
	// 아이디 중복 검사
	public int check_id(String id);				
	// 이메일 중복 검사
	public int check_email(String email);			
	// 비밀번호 변경			
	public int update_pw(Map<String, String> map);
			
			
}
