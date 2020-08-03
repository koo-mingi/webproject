<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- jstl라이브러리 -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- fmt라이브러리 : 등록일 생성 -->
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<!--     <meta charset="UTF-8">
    <meta name="description" content="Directing Template">
    <meta name="keywords" content="Directing, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge"> -->
    <title>Zogin</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <!-- <link rel="stylesheet" href="/resources/css/bootstrap.min.css" type="text/css"> -->
    <link rel="stylesheet" href="/resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/slicknav.min.css" type="text/css">
<!-- <link rel="stylesheet" href="/resources/css/style.css" type="text/css"> -->
      
	<!-- <link rel="stylesheet" href="/resources/board/bootstrap/css/bootstrap.css"> -->
	<link rel="stylesheet" href="/board/css/summernote/summernote-lite.css">
    
    <!-- include libraries(jQuery, bootstrap) -->
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
	<!-- include summernote css/js-->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css" rel="stylesheet">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
	<!-- include summernote-ko-KR -->
	<script src="/js/summernote/summernote-lite.js"></script>
	<script src="/js/summernote/lang/summernote-ko-KR.js"></script>
	
</head>

<style>
.gap-area{
	height : 50px;	
}
</style>
<!-- 
<style>

/* buttons */

.primary-btn {
	display: inline-block;
	font-size: 16px;
	padding: 16px 36px 14px;
	color: #ffffff;
	text-transform: uppercase;
	font-weight: 700;
	background: #5768AD;
	border-radius: 2px;
	letter-spacing: 2px;
}

.site-btn {
	font-size: 14px;
	color: #ffffff;
	font-weight: 700;
	text-transform: uppercase;
	display: inline-block;
	padding: 14px 50px;
	background: #5768AD;
	border: none;
	letter-spacing: 2px;
	border-radius: 2px;
}

/* ---------------------
  Header
----------------------- */

.header__logo {
	padding: 25px 0 25px;
}

.header__top__widget {
	text-align: right;
	padding: 28px 0 24px;
}

.header__top__widget ul {
	display: inline-block;
	margin-right: 65px;
}

.header__top__widget ul li {
	font-size: 12px;
	color: #263246;
	text-transform: uppercase;
	list-style: none;
	display: inline-block;
	position: relative;
	margin-right: 5px;
}

.header__top__widget ul li:last-child {
	margin-right: 0;
}

.header__top__widget ul li:last-child:after {
	display: none;
}

.header__top__widget ul li:after {
	position: absolute;
	right: -5px;
	top: 8px;
	height: 2px;
	width: 2px;
	background: #5768AD;
	content: "";
	border-radius: 50%;
}

.header__top__widget .primary-btn {
	display: inline-block;
}

.header__nav {
	background-color : #263246;
	position: relative;
	z-index: 9;
	padding-top: 10px;
	padding-bottom: 5px;
}

.header__menu {
	display: inline-block;
}

.header__menu ul li {
	list-style: none;
	display: inline-block;
	margin-right: 55px;
	position: relative;
}

.header__menu ul li:last-child {
	margin-right: 0;
}

.header__menu ul li:hover .dropdown {
	opacity: 1;
	top: 34px;
	visibility: visible;
}

.header__menu ul li:hover .dropdown li a:after {
	display: none;
}

.header__menu ul li:hover a:after {
	opacity: 1;
	width: 100%;
}

.header__menu ul li.active a:after {
	opacity: 1;
	width: 100%;
}

.header__menu ul li .dropdown {
	position: absolute;
	left: 0;
	top: 50px;
	width: 180px;
	background: #ffffff;
	text-align: left;
	-webkit-transition: all, 0.3s;
	-moz-transition: all, 0.3s;
	-ms-transition: all, 0.3s;
	-o-transition: all, 0.3s;
	transition: all, 0.3s;
	opacity: 0;
	visibility: hidden;
	padding: 5px 0;
	z-index: 9;
}

.header__menu ul li .dropdown li {
	margin-right: 0;
	display: block;
}

.header__menu ul li .dropdown li a {
	padding: 6px 15px;
	font-weight: 400;
	font-size: 15px;
	color: #222222;
	text-transform: capitalize;
	font-weight: 500;
}

.header__menu ul li a {
	font-size: 16px;
	color: #ffffff;
	font-weight: 700;
	padding: 5px 0;
	display: block;
	font-weight: 700;
	letter-spacing: 1px;
	text-transform: uppercase;
	position: relative;
}

.header__menu ul li a:after {
	position: absolute;
	left: 0;
	bottom: 0;
	height: 2px;
	width: 0%;
	background: #ffffff;
	content: "";
	opacity: 0;
	-webkit-transition: all, 0.3s;
	-moz-transition: all, 0.3s;
	-ms-transition: all, 0.3s;
	-o-transition: all, 0.3s;
	transition: all, 0.3s;
}

.header__social {
	text-align: right;
}

.header__social a {
	display: inline-block;
	font-size: 14px;
	color: #ffffff;
	margin-right: 25px;
	margin-top: 5px;
}

.header__social a:last-child {
	margin-right: 0;
}

.canvas__open {
	display: none;
}

.offcanvas-menu {
	display: none;
}


/* ---------------------
  Footer
----------------------- */

.footer {
	background: #263246;
	padding-top: 70px;
}

.footer__about {
	margin-bottom: 30px;
}

.footer__about ul {
	margin-bottom: 25px;
	margin-top: 20px;
}

.footer__about ul li {
	color: #9B9EA3;
	line-height: 37px;
	font-size: 16px;
	list-style: none;
}

.footer__about ul li i {
	font-size: 16px;
	color: #5768AD;
	margin-right: 5px;
}

.footer__about .subscribe-form {
	position: relative;
}

.footer__about .subscribe-form input {
	width: 100%;
	height: 50px;
	font-size: 14px;
	color: #999999;
	background: rgba(250, 250, 250, 0.1);
	border: none;
	border-radius: 2px;
	padding-left: 22px;
}

.footer__about .subscribe-form button {
	font-size: 20px;
	color: #ffffff;
	display: inline-block;
	background: #5768AD;
	padding: 0 15px;
	border: none;
	position: absolute;
	right: 0;
	top: 0;
	height: 100%;
}

.footer__widget {
	margin-bottom: 30px;
}

.footer__widget h5 {
	font-size: 20px;
	color: #ffffff;
	margin-bottom: 25px;
}

.footer__widget ul li {
	list-style: none;
}

.footer__widget ul li a {
	font-size: 16px;
	color: #9B9EA3;
	line-height: 37px;
}

.footer__widget .footer-address li {
	list-style: none;
	font-size: 16px;
	color: #9B9EA3;
	line-height: 37px;
}

.footer__widget .footer-address li i {
	margin-right: 8px;
}

.footer__copyright {
	border-top: 1px solid rgba(225, 225, 225, 0.1);
	overflow: hidden;
	padding: 15px 0;
	margin-top: 20px;
}

.footer__copyright__text p {
	font-size: 14px;
	color: #6e7580;
	margin-bottom: 0;
}

.footer__copyright__text i {
	color: #a11f1f;
}

.footer__copyright__text a {
	color: #5768AD;
}

.footer__copyright__social {
	text-align: right;
}

.footer__copyright__social a {
	display: inline-block;
	font-size: 15px;
	color: #ffffff;
	margin-right: 25px;
}

.footer__copyright__social a:last-child {
	margin-right: 0;
}
 */
</style>
 -->
<body>

    <!-- Page Preloder -->
   <!-- <div id="preloder">
        <div class="loader"></div>
    </div>
    
	Offcanvas Menu Begin
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
    Offcanvas Menu End

    Header Section Begin
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
                            <a href="/shop/cart" class="genric-btn cart radius">장바구니</a>
                        	<a href="/member/login" class="genric-btn info radius">LOGIN</a>
                            <a href="#" class="genric-btn info radius">JOIN US</a>	
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
                                <li><a href="/menu/review">후기</a></li>
                                <li><a href="/menu/hotplace">장소추천</a></li>
                                <li><a href="/menu/shop">SHOP</a>
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
    </header> -->
<!-- Header Section End -->

<section>
<title>글쓰기</title>
</head>
<body>
<div class="gap-area">
</div>
<h2 style="text-align: center;">Write</h2><br><br>

<div style="width: 60%; margin: auto;">
	<form method="post" action="/noticeWrite">
		<div class="mb-3">
			<label for="title" style="font-size: 18px;">제목</label>
			<input type="text" class="form-control" name="writer" placeholder="제목을 입력해주세요"/>
		</div>
		<br>
		<div class="mb-3">
			<label for="reg_id" style="font-size: 18px;">작성자</label>
			<input type="text" class="form-control" name="title" placeholder="작성자"/>
		</div>
		<br>
		<div class="mb-3">
			<label for="content" style="font-size: 18px;">내용</label>
			<textarea id="summernote" name="editordata"></textarea>
		</div>
		<br>
		<button class="btn btn-secondary" type="button" value="돌아가기" onclick="location.href='notice'">돌아가기</button>
		<button class="btn btn-warning" type="submit" value="글 작성" style="float: right;" onclick="goWrite(this.form)">글작성</button>
<!-- 		<input class="btn btn-xs pull-right btn-warning" id="subBtn" type="button" value="돌아가기" style="float: left;" onclick="goWrite(this.form)"/>
		<input class="btn btn-xs pull-right btn-warning" id="subBtn" type="button" value="글 작성" style="float: right;" onclick="goWrite(this.form)"/> -->
	</form>
	</div>
	<div class="gap-area">
	</div>
	</section>

	<script>
	$(document).ready(function() {
		
		//여기 아래 부분
		$('#summernote').summernote({
			  height: 300,                 // 에디터 높이
			  minHeight: null,             // 최소 높이
			  maxHeight: null,             // 최대 높이
			  focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
			  lang: "ko-KR",					// 한글 설정
			  placeholder: '최대 2048자까지 쓸 수 있습니다'	//placeholder 설정
	          
		});
		
		$('.summernote').summernote({
			  toolbar: [
				    // [groupName, [list of button]]
				    ['fontname', ['fontname']],
				    ['fontsize', ['fontsize']],
				    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
				    ['color', ['forecolor','color']],
				    ['table', ['table']],
				    ['para', ['ul', 'ol', 'paragraph']],
				    ['height', ['height']],
				    ['insert',['picture','link','video']],
				    ['view', ['fullscreen', 'help']]
				  ],
				fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
				fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
		  });
	});
	</script>
</body>
<%-- <%@ include file="/WEB-INF/views/include/footer.jsp" %> --%>