package com.spring.service;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.MemberVO;
import com.spring.domain.AuthVO;
import com.spring.domain.ChangeVO;
import com.spring.domain.LoginVO;
import com.spring.mapper.MemberMapper;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class MemberServiceImpl implements MemberService {

	
	@Autowired	
	private MemberMapper mapper;
	
	@Override
	public AuthVO login(LoginVO login) {		
		return mapper.login(login);
	}

	@Override
	public String getPwd(String userid) {		
		return mapper.getpassword(userid);
	}

	@Override
	public boolean updatePwd(ChangeVO vo) {		
		return mapper.updatePwd(vo)==1 ? true:false;
	}

	@Override
	public boolean delete(String userid) {
		return mapper.deleteMember(userid) == 1? true:false;
	}
	
	

	// 아이디 중복 검사(AJAX)
	@Override
	public void check_id(String id, HttpServletResponse response) throws Exception {
		PrintWriter out = response.getWriter();
		out.println(mapper.check_id(id));
		out.close();
	}

	// 이메일 중복 검사(AJAX)
	@Override
	public void check_email(String email, HttpServletResponse response) throws Exception {
		PrintWriter out = response.getWriter();
		out.println(mapper.check_email(email));
		out.close();
	}

	
		// 이메일 발송
		@Override
		public void send_mail(MemberVO member, String div) throws Exception {
			// Mail Server 설정
			String charSet = "utf-8";
			String hostSMTP = "smtp.gmail.com";
			String hostSMTPid = "parkjw9585@gmail.com";
			String hostSMTPpwd = "a10223344*";

			// 보내는 사람 EMail, 제목, 내용
			String fromEmail = "parkjw9585@gmail.com";
			String fromName = "Spring Homepage";
			String subject = "";
			String msg = "";
			
			
			if(div.equals("find_pw")) {
				subject = "Spring Homepage 임시 비밀번호 입니다.";
				msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
				msg += "<h3 style='color: blue;'>";
				msg += member.getUserid() + "님의 임시 비밀번호 입니다. 비밀번호를 변경하여 사용하세요.</h3>";
				msg += "<p>임시 비밀번호 : ";
				msg += member.getPassword() + "</p></div>";
			}
			// 받는 사람 E-Mail 주소
			String mail = member.getEmail();
			try {
				HtmlEmail email = new HtmlEmail();
				email.setDebug(true);
				email.setCharset(charSet);
				email.setSSL(true);
				email.setHostName(hostSMTP);
				email.setSmtpPort(587);

				email.setAuthentication(hostSMTPid, hostSMTPpwd);
				email.setTLS(true);
				email.addTo(mail, charSet);
				email.setFrom(fromEmail, fromName, charSet);
				email.setSubject(subject);
				email.setHtmlMsg(msg);
				email.send();
			} catch (Exception e) {
				System.out.println("메일발송 실패 : " + e);
			}
		}
	
		
		private String tempPwd() {
			String uuid ="";
			for (int i = 0; i < 5; i++) {
		         uuid= UUID.randomUUID().toString().replaceAll("-", ""); // -를 제거해 주었다.
		        uuid = uuid.substring(0, 10); //uuid를 앞에서부터 10자리 잘라줌.		        
		     }
			return uuid;
		}

		@Override
		public void find_pw(MemberVO member) throws Exception {
			log.info("---service "+member);
			// 임시비밀번호
			String tempPwd = tempPwd();
			log.info("임시비밀번호"+tempPwd);
			Map<String, String> map = new HashMap<String, String>();
			map.put("userid", member.getUserid());
			map.put("password", tempPwd);
			map.put("email",member.getEmail());
			
			member.setPassword(tempPwd);
			//해당 사용자의 비밀번호 임시비밀번호 변경하기
			mapper.update_pw(map);
			
			//임시 비밀번호 이메일 전송하기
			try {
				send_mail(member, "find_pw");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}

}
