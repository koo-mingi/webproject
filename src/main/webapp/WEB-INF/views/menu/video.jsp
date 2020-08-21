<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@ include file="/WEB-INF/views/include/header.jsp" %> --%>
<!DOCTYPE html>
<html lang="zxx">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Directing Template">
    <meta name="keywords" content="Directing, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Zogin</title>

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
            <a href="/"><img src="img/logo.png" alt=""></a>
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
                <li class="active"><a href="/">Home</a></li>
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
                            <c:if test="${empty auth}">
	                            <a href="/shop/cart" class="genric-btn cart radius">장바구니</a>
	                        	<a href="/member/login" class="genric-btn info radius">LOGIN</a>
	                            <a href="/register/step1" class="genric-btn info radius">JOIN US</a>                           
                            </c:if>
                            <c:if test="${!empty auth}">
                            	 <a href="/shop/cart" class="genric-btn cart radius">장바구니</a>	                        	
	                            <sec:authorize access="isAuthenticated()">
		                        	<a href="/member/logout" id="logout" class="genric-btn info radius"> Logout</a>
		                        </sec:authorize>
	                            <a href="/member/know-how" class="genric-btn info radius">My page</a>
                            </c:if>
                        </div>
                    </div>
                </div>
                <div class="canvas__open">
                    <i class="fa fa-bars"></i>
                </div>
            </div>
        </div>
        <div class="header__nav">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9 col-md-9">
                        <nav class="header__menu">
                            <ul>
                                <li class="active"><a href="/menu/notice">공지사항</a></li>
                                <li><a href="/menu/video">동영상</a></li>
                                <li><a href="/menu/know-how">노하우</a></li>
                                <li><a href="/menu/community">커뮤니티</a></li>
                                <li><a href="/menu/hotplace">장소추천</a></li>
                                <!-- <li><a href="/menu/shop">SHOP</a> -->
                                <li><a href="#">SHOP</a>
                                    <ul class="dropdown">
                                        <li><a href="/shop/category">쇼핑 물품</a></li>
                                        <li><a href="/shop/cart">장바구니</a></li>
                                        <li><a href="/shop/checkout">결제</a></li>
                                        <li><a href="/shop/confirmation">확인</a></li>
                                        <li><a href="/shop/single-product">상품 상세</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <div class="col-lg-3 col-md-3">
                        <div class="header__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Header Section End -->
    
    <!-- Breadcrumb Begin -->
    <section class="breadcrumb-option set-bg" data-setbg="/resources/img/fitness0.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h2 style="-webkit-text-stroke: 1px #000; font-weight: bold;">Fitness Video</h2>
                        <div class="breadcrumb__widget">
                            <a href="/">Home</a>
                            <span style="color: #000;">Fitness Video</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb End -->

    <!-- Classes Section Begin -->
    <section class="classes spad">
        <div class="container">
            <div class="classes__filter">
                <div class="row">
                    <div class="col-lg-12">
                        <form action="#">
                            <div class="class__filter__select">
                                <p>Exercise area:</p>
                                <select id="fitArea">
                                    <option>전체보기</option>
                                    <option value="복부">복부</option>
                                    <option value="하체">하체</option>
                                    <option value="전신">전신</option>
                                </select>
                            </div>
                            <div class="class__filter__select">
                                <p>Style:</p>
                                <select id="fitStyle">
                                    <option value="운동">전체보기</option>
                                    <option value="유산소운동">유산소운동</option>
                                    <option value="근력운동">근력운동</option>
                                </select>
                            </div>
                            <div class="class__filter__select">
                                <p>YouTuber:</p>
                                <select id="fitYouTuber">
                                    <option>전체보기</option>
                                    <option value="비타민신지니">비타민신지니</option>
                                    <option value="심으뜸">심으뜸</option>
                                    <option value="땅끄부부">땅끄부부</option>
                                    <option value="말왕">말왕</option>
                                </select>
                            </div>
                            <div class="class__filter__select">
                                <p>Order by:</p>
                                <select id="orderBy">
                                    <option value="date">최신순</option>
                                    <option value="viewCount">조회순</option>
                                    <option value="rating">평가순</option>
                                </select>
                            </div>
                            <div class="class__filter__btn">
                                <button id="searchOp"><i class="fa fa-search"></i></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="row" id="searchReDiv">
                <div class="col-lg-4 col-md-6">
                    <div class="classes__item classes__item__page">
                        <div class="classes__item__pic set-bg" data-setbg="/resources/img/classes/classes-1.jpg">
                            <span>Beginer</span>
                        </div>
                        <div class="classes__item__text">
                            <ul>
                                <li><span class="icon_calendar"></span> Mon, Wed, Fri</li>
                                <li><span class="icon_clock_alt"></span> 18:30 - 19:30</li>
                            </ul>
                            <h4 id="title"><a href="#">100 Hour Yoga Course Rishikesh</a></h4>
                            <h6>Jordan Lawson <span>- channelTitle </span></h6>
                            <a href="#" class="class-btn">Go Go!!</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="classes__item classes__item__page">
                        <div class="classes__item__pic set-bg" data-setbg="/resources/img/classes/classes-2.jpg">
                            <span>All levels</span>
                        </div>
                        <div class="classes__item__text">
                            <ul>
                                <li><span class="icon_calendar"></span> Mon, Wed, Fri</li>
                                <li><span class="icon_clock_alt"></span> 18:30 - 19:30</li>
                            </ul>
                            <h4 id="title"><a href="#">200 Hour Yoga Course Rishikesh</a></h4>
                            <h6>Jordan Lawson <span>- channelTitle </span></h6>
                            <a href="#" class="class-btn">Go Go!!</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="classes__item classes__item__page">
                        <div class="classes__item__pic set-bg" data-setbg="/resources/img/classes/classes-3.jpg">
                            <span>Beginer</span>
                        </div>
                        <div class="classes__item__text">
                            <ul>
                                <li><span class="icon_calendar"></span> Mon, Wed, Fri</li>
                                <li><span class="icon_clock_alt"></span> 18:30 - 19:30</li>
                            </ul>
                            <h4 id="title"><a href="#">300 Hour Yoga Course Rishikesh</a></h4>
                            <h6>Jordan Lawson <span>- channelTitle </span></h6>
                            <a href="#" class="class-btn">Go Go!!</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="classes__item classes__item__page">
                        <div class="classes__item__pic set-bg" data-setbg="/resources/img/classes/classes-4.jpg">
                            <span>Beginer</span>
                        </div>
                        <div class="classes__item__text">
                            <ul>
                                <li><span class="icon_calendar"></span> Mon, Wed, Fri</li>
                                <li><span class="icon_clock_alt"></span> 18:30 - 19:30</li>
                            </ul>
                            <h4 id="title"><a href="#">100 Hour Yoga Course Rishikesh</a></h4>
                            <h6>Jordan Lawson <span>- channelTitle </span></h6>
                            <a href="#" class="class-btn">Go Go!!</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="classes__item classes__item__page">
                        <div class="classes__item__pic set-bg" data-setbg="/resources/img/classes/classes-5.jpg">
                            <span>All levels</span>
                        </div>
                        <div class="classes__item__text">
                            <ul>
                                <li><span class="icon_calendar"></span> Mon, Wed, Fri</li>
                                <li><span class="icon_clock_alt"></span> 18:30 - 19:30</li>
                            </ul>
                            <h4 id="title"><a href="#">200 Hour Yoga Course Rishikesh</a></h4>
                            <h6>Jordan Lawson <span>- channelTitle </span></h6>
                            <a href="#" class="class-btn">Go Go!!</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="classes__item classes__item__page">
                        <div class="classes__item__pic set-bg" data-setbg="/resources/img/classes/classes-6.jpg">
                            <span>Beginer</span>
                        </div>
                        <div class="classes__item__text">
                            <ul>
                                <li><span class="icon_calendar"></span> Mon, Wed, Fri</li>
                                <li><span class="icon_clock_alt"></span> 18:30 - 19:30</li>
                            </ul>
                            <h4 id="title"><a href="#">300 Hour Yoga Course Rishikesh</a></h4>
                            <h6>Jordan Lawson <span>- channelTitle </span></h6>
                            <a href="#" class="class-btn">Go Go!!</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="classes__item classes__item__page">
                        <div class="classes__item__pic set-bg" data-setbg="/resources/img/classes/classes-7.jpg">
                            <span>Beginer</span>
                        </div>
                        <div class="classes__item__text">
                            <ul>
                                <li><span class="icon_calendar"></span> Mon, Wed, Fri</li>
                                <li><span class="icon_clock_alt"></span> 18:30 - 19:30</li>
                            </ul>
                            <h4 id="title"><a href="#">100 Hour Yoga Course Rishikesh</a></h4>
                            <h6>Jordan Lawson <span>- channelTitle </span></h6>
                            <a href="#" class="class-btn">Go Go!!</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="classes__item classes__item__page">
                        <div class="classes__item__pic set-bg" data-setbg="/resources/img/classes/classes-8.jpg">
                            <span>All levels</span>
                        </div>
                        <div class="classes__item__text">
                            <ul>
                                <li><span class="icon_calendar"></span> Mon, Wed, Fri</li>
                                <li><span class="icon_clock_alt"></span> 18:30 - 19:30</li>
                            </ul>
                            <h4 id="title"><a href="#">200 Hour Yoga Course Rishikesh</a></h4>
                            <h6>Jordan Lawson <span>- channelTitle </span></h6>
                            <a href="#" class="class-btn">Go Go!!</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="classes__item classes__item__page">
                        <div class="classes__item__pic set-bg" data-setbg="/resources/img/classes/classes-9.jpg">
                            <span>Beginer</span>
                        </div>
                        <div class="classes__item__text">
                            <ul>
                                <li><span class="icon_calendar"></span> Mon, Wed, Fri</li>
                                <li><span class="icon_clock_alt"></span> 18:30 - 19:30</li>
                            </ul>
                            <h4 id="title"><a href="#">300 Hour Yoga Course Rishikesh</a></h4>
                            <h6>Jordan Lawson <span>- channelTitle </span></h6>
                            <a href="#" class="class-btn">Go Go!!</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <!-- <div class="classes__pagination">
                        <a href="#">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#">4</a>
                        <a href="#">5</a>
                        <a href="#"><span class="arrow_carrot-right"></span></a>
                    </div> -->
                </div>
            </div>
        </div>
    </section>
    <!-- Classes Section End -->

    <!-- Upcoming Classes Section Begin -->
    <!-- <section class="upcoming-classes top-classes spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title normal-title">
                        <h2>Top Classes</h2>
                        <p>The trainings are multi-style and you will learn and practice Hatha Vinyasa (flow)<br /> and
                            Yin Yoga.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="classes__item">
                        <div class="classes__item__pic set-bg" data-setbg="/resources/img/classes/classes-10.jpg">
                            <span>20 Jun 2019</span>
                        </div>
                        <div class="classes__item__text">
                            <p>14 Days | Start on 10th Every Month</p>
                            <h4><a href="#">100 Hour Yoga Course Rishikesh</a></h4>
                            <h6>Jordan Lawson <span>- Yoga Teacher</span></h6>
                            <a href="#" class="class-btn">JOIN NOW</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="classes__item">
                        <div class="classes__item__pic set-bg" data-setbg="/resources/img/classes/classes-11.jpg">
                            <span>20 Jun 2019</span>
                        </div>
                        <div class="classes__item__text">
                            <p>14 Days | Start on 10th Every Month</p>
                            <h4><a href="#">200 Hour Yoga Course Rishikesh</a></h4>
                            <h6>Jordan Lawson <span>- Yoga Teacher</span></h6>
                            <a href="#" class="class-btn">JOIN NOW</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="classes__item">
                        <div class="classes__item__pic set-bg" data-setbg="/resources/img/classes/classes-12.jpg">
                            <span>20 Jun 2019</span>
                        </div>
                        <div class="classes__item__text">
                            <p>14 Days | Start on 10th Every Month</p>
                            <h4><a href="#">300 Hour Yoga Course Rishikesh</a></h4>
                            <h6>Jordan Lawson <span>- Yoga Teacher</span></h6>
                            <a href="#" class="class-btn">JOIN NOW</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section> -->
    <!-- Upcoming Classes Section End -->


  <!-- Footer Section Begin -->
    <section class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <img src="/resources/img/footer-logo.png" alt="">
                        <ul>
                            <li><i class="fa fa-clock-o"></i> Mon - Fri: 6:30am - 07:45pm</li>
                            <li><i class="fa fa-clock-o"></i> Sat - Sun: 8:30am - 05:45pm</li>
                        </ul>
                        <form action="#" class="subscribe-form">
                            <input type="text" placeholder="Your Email">
                            <button type="submit"><i class="fa fa-send"></i></button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-2 offset-lg-1 col-md-3 col-sm-6">
                    <div class="footer__widget">
                        <h5>Inspiration</h5>
                        <ul>
                            <li><a href="#">Online Pilates</a></li>
                            <li><a href="#">Yoga for Beginners</a></li>
                            <li><a href="#">Online Pilates</a></li>
                            <li><a href="#">Online Yoga</a></li>
                            <li><a href="#">Conditioning</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-6">
                    <div class="footer__widget">
                        <h5>About Us</h5>
                        <ul>
                            <li><a href="#">Our Vision</a></li>
                            <li><a href="#">Our Mission</a></li>
                            <li><a href="#">Meet The Team</a></li>
                            <li><a href="#">Introduce</a></li>
                            <li><a href="#">Customer Service</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__widget">
                        <h5>Contact Us</h5>
                        <ul class="footer-address">
                            <li><i class="fa fa-phone"></i> (01) 436 8888</li>
                            <li><i class="fa fa-envelope"></i> hello@zogin.com</li>
                            <li><i class="fa fa-location-arrow"></i> 828 Granville Lights Suite 466</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="footer__copyright">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        <div class="footer__copyright__text">
                            <p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a></p>
                        </div>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="footer__copyright__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.js"></script>
    
    <!-- 메인 템플릿 -->
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/jquery.nice-select.min.js"></script>
    <script src="/resources/js/jquery.barfiller.js"></script>
    <script src="/resources/js/jquery.slicknav.js"></script>
    <script src="/resources/js/owl.carousel.min.js"></script>
    <script src="/resources/js/main.js"></script>
		
	<script>
	$(function(){
		$("#searchReDiv").hide();
		let apiKey = "AIzaSyA3Xu-As6IfKY2-q4qPLVx8XZLvPjY1Vvc";
		var dataList = new Array(2);
		function dataFunc(videoId){
			
			let url = "https://www.googleapis.com/youtube/v3/videos?key="+apiKey+"&part=contentDetails,statistics&id="+videoId;
			/* console.log(url); */
			
			$.ajax({
				url : url,
				type : "get",
				async: false,
				success : function(data){
					// 동영상 재생시간 추출
					let duration = data.items[0].contentDetails.duration;
										
					// 동영상 재생시간 HH:MM:SS 형태로 변환
					var hourRegex = new RegExp("[0-9]{1,2}H", "gi");
					var minRegex = new RegExp("[0-9]{1,2}M", "gi");
					var secRegex = new RegExp("[0-9]{1,2}S", "gi");
					
					var hour = hourRegex.exec(duration);
					var min = minRegex.exec(duration);
					var sec = secRegex.exec(duration);
					
					if(hour!==null){
					    hour = hour.toString().split("H")[0] + ":";
					}else{
					    hour = "";
					}
					if(min !==null){
						min = min.toString().split("M")[0];
					    if(min.length<2){
					    	min = "0"+min;
						}
					}else{
					    min = "00";
					}
					if(sec !==null){
					    sec = sec.toString().split("S")[0];
					    if(sec.length<2){
						    sec = "0"+sec;
						}
					}else{
					    sec = "00";
					}
					duration = hour+min+":"+sec;
					
					// 조회수 추출
					let viewCount = data.items[0].statistics.viewCount;
					
					if(viewCount.length > 5){
						var viewCnt = viewCount.slice(0,-4);
						viewCnt = viewCnt+"만회";
					}else if(viewCount.length == 5){
						var viewCnt = viewCount.slice(0,-3);
						var fc = viewCnt.slice(0,1);
						var lc = viewCnt.slice(1,2);
						viewCnt = fc+"."+lc+"만회";
					}else if(viewCount == 4){
						var viewCnt = viewCount.slice(0,-3);
						viewCnt = "0."+viewCnt+"만회";
					}else {
						var viewCnt = viewCount;
						viewCnt = viewCnt+"회";
					}
					/* console.log(viewCnt); */
					
					// 재생시간, 조회수 리스트에 담아서 리턴
					dataList = [duration, viewCnt];
				},
				error : function(xhr, textStatus, error){
					console.log(xhr.status);
				}
			
			})
			return dataList;
		} /* function dataFunc(videoId) end */
		
		$("#searchOp").click(function(){
			$("#searchReDiv").show();
			let url = "https://www.googleapis.com/youtube/v3/search?key="+apiKey+"&part=snippet&type=video&maxResults=9&videoEmbeddable=true&q=";
			// 사용자가 선택한 운동 가져오기
			url+=$("#fitArea").val()+$("#fitStyle").val()+$("#fitYouTuber").val();
			url+="&order="+$("#orderBy").val();
			console.log(url);
			
			let list = $("div.row > div > div.classes__item.classes__item__page");		
/* 			for(var i=0;i<list.length;i++){			
				let div = list[i];				
				//첫번째 img div
				childes1 = div.children[0];			   
			    console.log($(childes1).attr('data-setbg', view));
			} */
			
			// ajax로 데이터 요청하기
			$.ajax({
				url : url,
				type : "get",
				success : function(data){
					/* console.log(data); */
 					
					$.each(data.items, function(i, elt) {
						
						let div = list[i];				
						// 첫번째 img div
						childes1 = div.children[0];
						// img div의 span 영역
						durSpan = childes1.children[0];
						// 두번째 설명 div
						childes2 = div.children[1];
					    // 동영상 게시일 + 조회수 (div > ul > li)
 						childes2_ul = childes2.children[0];
 						childes2_li1 = childes2_ul.children[0];
 						childes2_li2 = childes2_ul.children[1];
					    // 동영상 제목 div > h4
 						childes2_1 = childes2.children[1];
					    // 유투브 채널명 div > h6
						childes2_2 = childes2.children[2];
					    // 링크연결 버튼
						childes2_3 = childes2.children[3];
						
					    // 썸네일 이미지 url
						let viewImg = elt.snippet.thumbnails.high.url;
						// img div에 속성값 썸네일 이미지 url로 변경 
						$(childes1).attr('data-setbg', viewImg);
						$(childes1).css('background-image',"url("+viewImg+")");
						
						// 동영상 게시일
						let publishTime = elt.snippet.publishTime;
						let publishDate = publishTime.split('T');
						let date = publishDate[0];
						$(childes2_li1).replaceWith("<li><span class='icon_calendar'></span>"+date+"</li>");
							
						// h4 내의 a태그 value 값 바꾸기
 						let title = elt.snippet.title;
						let linkUrl = "https://www.youtube.com/watch?v=";
 						let videoId = elt.id.videoId;
						$(childes2_1).attr('style', 'margin-right: 50px;');
						$(childes2_1).html("<a href="+linkUrl+videoId+">"+title+"</a>");

						// h6 태그 값 바꾸기
						let channelTitle = elt.snippet.channelTitle;
						/* $(childes2_2).html("<h6>"+channelTitle+"<span> - channelTitle </span></h6>"); */
						$(childes2_2).replaceWith("<h6>"+channelTitle+"<span> - channelTitle </span></h6>");
						
						// 링크연결 a 태그 값 변경
						$(childes2_3).attr('href', linkUrl+videoId);
						
						// 재생시간, 조회수 값 리턴받기
						var dat = dataFunc(videoId);
						
						// 재생시간
						let durationD = dat[0];
						$(durSpan).replaceWith("<span>"+durationD+"</span>");
						
						// 조회수
						let viewCntD = dat[1];
						$(childes2_li2).replaceWith("<li style='font-weight: bold; float: right; margin'>"+viewCntD+"</li>");
						
					})
				}
			}) /* ajax end */
			
		}) /* searchOp end */
		
	})
	</script>
	<!-- 운동 검색 스크립트 -->
</body>
</html>

<%-- <%@ include file="/WEB-INF/views/include/footer.jsp" %> --%>