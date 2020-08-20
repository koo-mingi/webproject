<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/security/tags"  prefix="sec"%>
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
      
	<link rel="stylesheet" href="/resources/shop/css/main.css">
	<link rel="stylesheet" href="/resources/board/bootstrap/css/bootstrap.css">
</head>

<style>
.keyarea {
  height: 34px;
  padding: 6px 12px 5px 5px;
  font-size: 14px;
  line-height: 1.42857143;
  color: #555;
  background-color: #fff;
  background-image: none;
  border: 1px solid #ccc;
  border-radius: 4px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
  -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
       -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
          transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}
.keyarea:focus {
  border-color: #66afe9;
  outline: 0;
  -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, .6);
          box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, .6);
}
.header__nav {
	background-color : #263246;
	position: relative;
	z-index: 9;
	padding-top: 10px;
	padding-bottom: 5px;
}
.panel-head {
	border-bottom: 1px solid #eee;
}
.view_content{
	padding: 80px 50px 100px;
}
</style>

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
<section>
<div class="gap-area">
</div>
<br />
<br />
<div class="container">
	<div class="row">
		<div class="col-lg-12">
        	<div class="panel panel-default">
				<div class="panel-head">
					<div class="notice-title">
						<label style="font-size:39px; display: block; text-align: center;">${vo.title}</label>
					</div>
					<br />
					<br />
					<div>
						<p style="font-size:20px; display: block; text-align: center;"><fmt:formatDate pattern="yyyy.MM.dd" value="${vo.regdate}" /></p>
					</div>
					<br />
					<br />
				</div>
				<br />
	    		<div class="panel-body">
					<div class="view_content">
						${vo.content}
<%-- 						<sec:authentication property="principal" var="info"/>
						<sec:authorize access="isAuthenticated()">
							<c:if test="${info.username == vo.writer}">
								<button type="button" class="btn btn-default">Modify</button>     			
							</c:if>
						</sec:authorize> --%>
					</div>
				</div>
			</div>
			<button type="button" class="btn btn-secondary" onclick="location.href='community?pageNum=${cri.pageNum}&amount=${cri.amount}'">목록</button>          			
			<button type="button" class="btn btn-danger" style="float: right; margin-left: 5px;" onclick="remove_click()">삭제</button>  
			<button type="button" class="btn btn-warning" style="float: right;" onclick="location.href='communityModify?bno=${vo.bno}'">수정</button>
			<input type="hidden" name="bno" value="${vo.bno}" />
		</div> 
	</div>   
</div>
<br />
<br />
<div class="gap-area">
</div>
<%-- 페이지 나누기와 다른 작업들을 위해서 폼 작성 --%>
<form action="" id="myForm">
	<input type="hidden" name="bno" value="${vo.bno}" />
	<input type="hidden" name="writer" value="${vo.writer}" />
	<input type="hidden" name="pageNum" value="${cri.pageNum}" />
	<input type="hidden" name="amount" value="${cri.amount}" />
	<input type="hidden" name="type" value="${cri.type}" />
	<input type="hidden" name="keyword" value="${cri.keyword}" />
</form>
<script>
// 게시글 삭제하기
function remove_click() {
	let form = $("#myForm");
	
	$(".btn-danger").click(function(){
		form.attr('action','remove');
		form.attr('method','post');
		form.submit();
	})
}
</script>
</section>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>