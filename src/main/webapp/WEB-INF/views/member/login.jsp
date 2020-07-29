<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 합쳐지고 최소화된 최신 CSS -->
<%--
	custom Login page 작성 규칙
	1. method = "post", action="/login" 으로 주기
	2. csrf 토큰 값 무조건 포함
	3. 아이디를 입력받는 부분의 이름은 반드시 username으로 하기
	4. 비밀번호를 입력받는 부분의 이름은 반드시 password로 하기
	
 --%>
<!DOCTYPE html>
<html lang="zxx">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Directing Template">
    <meta name="keywords" content="Directing, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Zogin | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
    
	<!-- Offcanvas Menu Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="offcanvas-menu">
        <div class="offcanvas__logo">
            <a href="./index.html"><img src="img/logo.png" alt=""></a>
        </div>
        <div id="mobile-menu-wrap"></div>
        <div class="offcanvas__widget">
            <ul>
                <li>CALL US: + 1 800-567-8990</li>
                <li>WRITE US: OFFICE@EXAMPLE.COM</li>
                <li>OPENING TIMES: MON - FRI: 9:00 - 19:00</li>
            </ul>
            <a href="#" class="primary-btn">JOIN US</a>
        </div>
        <nav class="header__menu">
            <ul class="mobile-menu">
                <li class="active"><a href="./index.html">Home</a></li>
                <li><a href="./about-us.html">About</a></li>
                <li><a href="./classes.html">Classes</a></li>
                <li><a href="#">Pages</a>
                    <ul class="dropdown">
                        <li><a href="./classes-details.html">Classes Details</a></li>
                        <li><a href="./blog-details.html">Blog Details</a></li>
                        <li><a href="./pricing.html">Pricing</a></li>
                        <li><a href="./faq.html">Faq</a></li>
                    </ul>
                </li>
                <li><a href="./blog.html">Blog</a></li>
                <li><a href="./contact.html">Contact</a></li>
            </ul>
        </nav>
        <div class="offcanvas__social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-instagram"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
        </div>
    </div>
    <!-- Offcanvas Menu End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-3">
                        <div class="header__logo">
                            <a href="/"><img src="/resources/img/logo.png" alt=""></a>
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-9">
                        <div class="header__top__widget">
                        	 <ul>
                                <li>Phone : 123-4567-7899</li>
                            </ul>
                        	<a href="/member/login" class="primary-btn">LOGIN</a>
                            <a href="#" class="primary-btn">JOIN US</a>	
                        </div>
                    </div>
                </div>
                <div class="canvas__open">
                    <i class="fa fa-bars"></i>
                </div>
            </div>
        </div>
    </header>
    <!-- Header Section End -->
    
    <!-- 로그인 상단 빈공간 영역 -->
    <div class="login-margin"></div>
    
	<!-- Appoinment Section Begin -->
    <section class="appointment">
        <div class="container">
            <div class="appointment__text">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-title">
                     		<img src="/resources/img/icon-white.png" alt="">
                            <h2>로그인</h2>
                        </div>
                    </div>
                </div>
                <form action="/member/login" method="post" class="appointment__form">
                    <div class="row">
                        <div class="col-lg-12 text-center" >
                            <input type="text" name="id" id="id" placeholder="ID">
                        </div>
                        <div class="col-lg-12 text-center">
                            <input type="password" name="password" id="password" placeholder="비밀번호">
                        </div>
                        <div class="col-lg-12 text-center">
                            <button type="submit">Login</button>
                        </div>
                        <div class="col-lg-12 text-center">.</div>
                        <div class="col-lg-12 text-center">
                            <button type="button" onclick="">페이스북</button>
                            <button type="button" onclick="">페이스북</button>
                            <button type="button" onclick="">페이스북</button>
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