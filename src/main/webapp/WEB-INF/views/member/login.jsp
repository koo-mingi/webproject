<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 합쳐지고 최소화된 최신 CSS -->
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<%--
	custom Login page 작성 규칙
	1. method = "post", action="/login" 으로 주기
	2. csrf 토큰 값 무조건 포함
	3. 아이디를 입력받는 부분의 이름은 반드시 username으로 하기
	4. 비밀번호를 입력받는 부분의 이름은 반드시 password로 하기
	
 --%>

	<!-- Appoinment Section Begin -->
    <section class="appointment">
        <div class="container">
            <div class="appointment__text">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-title">
                            <img src="img/icon-white.png" alt="">
                            <h2>로그인</h2>
                        </div>
                    </div>
                </div>
                <form action="#" class="appointment__form">
                    <div class="row">
                        <div class="col-lg-6">
                            <input type="text" placeholder="이름">
                        </div>
                        <div class="col-lg-6">
                            <input type="text" placeholder="비밀번호">
                        </div>
                        <div class="col-lg-12 text-center">
                            <button type="submit">Login</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <!-- 로그인 하단 빈공간 영역 -->
    <div class="login-margin"></div>
    <!-- Appoinment Section End -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>