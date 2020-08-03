<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    </header>
    <!-- Header Section End -->
<section>
<div class="gap-area">
</div>
<div class="container">
   <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">공지사항/이벤트</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <button id='regBtn' type='button' class='btn pull-right btn-warning' onclick="location.href='noticeWrite'">글쓰기</button>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>번 호</th>
                                        <th>제 목</th>
                                        <th>작성자</th>
                                        <th>작성일</th>
                                        <th>수정일</th>
                                    </tr>
                                </thead>
								<!-- 게시판 리스트 반복문 -->
								<c:forEach var="vo" items="${list}">
									<tr>
										<td>${vo.bno}</td>
										<td><a href="<c:out value='${vo.bno}'/>" class="move">${vo.title}</a><strong>[${vo.replycnt}]</strong></td>
										<td>${vo.writer}</td>
										<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${vo.regdate}" /></td>
										<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${vo.updatedate}" /></td>
									</tr>
								</c:forEach>
                            </table>
							<div class="row"> <!-- start search -->
                            	<div class="col-md-12">
                            	   <div class="col-md-8"><!--search Form-->
                            	  	  <form action="" id="searchForm">
                            	  	  	 <input type="hidden" name="pageNum" value="${cri.pageNum}"/>
                            	  	  	 <input type="hidden" name="amount" value="${cri.amount}"/>
                            	  	  	 <select name="type" id="">
                            	  	  	 	<option value="" <c:out value="${empty cri.type?'selected':''}"/>>------</option>
                            	  	  	 	<option value="T" <c:out value="${cri.type=='T'?'selected':''}"/>>제목</option>
                            	  	  	 	<option value="C" <c:out value="${cri.type=='C'?'selected':''}"/>>내용</option>
                            	  	  	 	<option value="W" <c:out value="${cri.type=='W'?'selected':''}"/>>작성자</option>
                            	  	  	 	<option value="TC" <c:out value="${cri.type=='TC'?'selected':''}"/>>제목 or 내용</option>
                            	  	  	 	<option value="TW" <c:out value="${cri.type=='TW'?'selected':''}"/>>제목 or 작성자</option>
                            	  	  	 	<option value="TCW" <c:out value="${cri.type=='TCW'?'selected':''}"/>>제목 or 내용 or 작성자</option>
                            	  	  	 </select>
                            	  	  	 <input type="text" class="keyarea" name="keyword" value="${cri.keyword}"/>
                            	  	  	 <button class="btn btn-default" type='button'>검색</button>
                            	  	  </form>
                            	   </div>
                            	   <div class="col-md-2 col-md-offset-2">
                            	   	<!--페이지 목록 갯수 지정하는 폼-->
                            	   	<select class="form-control" name="amount" id="amount">
                            	   		<option value="10" <c:out value="${cri.amount == 10?'selected':''}"/>>10</option>
                            	   		<option value="20" <c:out value="${cri.amount == 20?'selected':''}"/>>20</option>
                            	   		<option value="30" <c:out value="${cri.amount == 30?'selected':''}"/>>30</option>
                            	   		<option value="40" <c:out value="${cri.amount == 40?'selected':''}"/>>40</option>
                            	   	</select>
								  </div>
                             	 </div>                             	 
                      		 </div><!-- end search -->
                            <!-- start Pagination -->
                            <div class="text-center">
                            	<ul class="pagination">
                            	  <c:if test="${pageVO.prev}">
                            		<li class="paginate_button previous"><a href="${pageVO.startPage-1}">Previous</a></li>
                            	  </c:if>
                            	  <c:forEach var="idx" begin="${pageVO.startPage}" end="${pageVO.endPage}">
                            		<li class="paginate_button ${pageVO.cri.pageNum==idx?'active':''}"><a href="${idx}">${idx}</a></li>
                            	  </c:forEach>
                            	  <c:if test="${pageVO.next}">
                            		<li class="paginate_button next"><a href="${pageVO.endPage+1}">Next</a></li>
                            	  </c:if>
							</ul>
						</div>
                    <!-- end Pagination -->   
					</div>
                <!-- end panel-body -->
				</div>
            <!-- end panel -->
			</div>                   
		</div>   
	</div>
<div class="gap-area">
</div>
</section>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>