<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
    <!-- 합쳐지고 최소화된 최신 CSS -->
<%--
	custom Login page 작성 규칙
	1. method = "post", action="/login" 으로 주기
	2. csrf 토큰 값 무조건 포함
	3. 아이디를 입력받는 부분의 이름은 반드시 username으로 하기
	4. 비밀번호를 입력받는 부분의 이름은 반드시 password로 하기
	
 --%>
	<!-- Start Banner Area -->
	<!-- <section class="banner-area organic-breadcrumb">
		<div class="container">
			<div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
				<div class="col-first">
					<h1>로그인/회원가입</h1>
					<nav class="d-flex align-items-center">
						<a href="/">Home<span class="lnr lnr-arrow-right"></span></a>
						<a href="/register/step1">Register</a>
					</nav>
				</div>
			</div>
		</div>
	</section> -->
	<!-- End Banner Area -->

	<!--================Login Box Area =================-->
	<section class="login_box_area section_gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="login_box_img">
						<img class="img-fluid" src="/resources/shop/img/login.jpg" alt="">
						<div class="hover">
							<h4>우리 사이트에 처음 오셨습니까?</h4>
							<p>회원가입을 해주세요!</p>
							<p>더 많은 혜택과 정보를 얻을 수 있습니다!</p>
							<a class="genric-btn info radius" href="/register/step1">Create an Account</a>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="login_form_inner">
						<h3>로그인</h3>
						<form class="row login_form" action="/member/login" method="post" id="contactForm" novalidate="novalidate">
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="inputId" name="userid" placeholder="Username" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Username'">
							</div>
							<div class="col-md-12 form-group">
								<input type="password" class="form-control" id="inputPassword" name="password" placeholder="Password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'">
							</div>
							<div class="col-md-12 form-group">
								<div class="creat_account">
									<input type="checkbox" id="f-option2" name="selector">
									<label for="f-option2">Keep me logged in</label>
								</div>
							</div>
							<div class="col-md-12 form-group">
								<button type="submit" value="submit" class="genric-btn info radius">Log In</button>
								<a href="/member/find_pw_form">Forgot Password?</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Login Box Area =================-->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>

