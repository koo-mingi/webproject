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
    
    <!-- font awesome icons-->
	<script src="https://kit.fontawesome.com/928d317b8c.js" crossorigin="anonymous"></script>
    
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

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	
<style>
/* .commuArea {
	width : 75%;
	position : absolute;
} */
/* .commentarea::placeholder {
	color: gray;
} */
.title-sub > p {
	font-size: 18px;
}
#rep {
	font-size: 20px;
	vertical-align: middle;
}
a > span {
	text-align: right;
	display: flex;
	font-size: 15px;
	color: #666;
	line-height: 1;
}
.title-sub > div > div > li {
	display: inline-block;
}
.reply_form {
	display: flex;
}
.comment-write{
	margin-top: 12px;
	padding: 15px;
    border: 1px solid #ececec;
	background-color: #f9f9f9;
}
.commentarea{
	width: 100%;
    height: 80px;
    border: 1px solid #c8c8c8;
    color: #a2a2a2;
    margin-right: 10px;
}
/* #INDICATOR a:after {
	content: "/";
	display: inline-block;
	padding: 0px 6px;
} */
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
<section>
<br />
<br />
<div class="container">
	<div>
		<a href="community">
			<span>category</span>
		</a>
		<a href="community">
			<span>${commu.category}</span>
		</a>
		
	</div>
	<div class="gap-area">
	</div>
	<br />
	<div class="row">
		<div class="col-lg-12">
        	<div class="panel panel-default">
				<div class="panel-head">
					<div class="notice-title">
						<label style="font-size:39px; display: block; text-align: center;">${vo.title}</label>
					</div>
					<div class="gap-area">
					</div>
					<br />
					<br />
					<div class="title-sub">
						<div style="float: left;">
							<p style="margin-left: 15px; font-size: 18px;"><i class="far fa-smile" style="font-size: 18px;"></i> ${vo.writer}</p>
						</div>
						<div style="float: right;">
							<div>
								<li>
									<p style="font-size: 18px;"><i class="far fa-clock"></i><fmt:formatDate pattern=" yyyy.MM.dd HH:mm" value="${vo.regdate}" /></p>
								</li>
								<li>
									<p style="margin-left: 15px; font-size: 18px;"><i class="fas fa-eye"></i> ${vo.readcount}</p>
								</li>
								<li>
									<p style="margin: 0 15px; font-size: 18px;"><i class="fa fa-comment-o"></i> ${vo.replycnt}</p>
								</li>
							</div>
						</div>
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
<div class="gap-area">
</div>
<br/>
<div class="container">
	<div class="row">
		<div class="col-lg-12">
	       	<div class="panel-reply-main">
				<div class="panel-reply">
					<div style="display: flex;">
						<i class="fas fa-chevron-circle-right" style="color: #F0AD4E; font-size: 30px;"></i>
						<p id="rep" style="align-self: flex-end; margin-left: 5px;"> 댓글쓰기<p>
					</div>
				</div>
				<div class="comment-write">
					<form action="" method="post">
						<div class="reply_form">
							<textarea class="commentarea" placeholder="댓글을 입력해주세요"></textarea>
							<button type="button" class="btn btn-warning replyIn" style="font-size: 16px;">입력</button>
						</div>
						<div class="secret" style="height: 20px; margin-top: 5px;">
							<input type="checkbox"/>
							<label>비밀댓글</label>
						</div>
					</form>
				</div>
				<br/>
				<div class="comment-list">
					<ul>
						<div class="total-view" style="margin-top: 15px; border-bottom: 1.5px solid #eee;">
							<div style="display: inline-flex; margin-left: 10px;">
								<p>댓글
									<p style="color: darkorange; margin-left: 5px;">${vo.replycnt}</p>
								</p>
							</div>
						</div>
						<div class="main-view" style="border-bottom: 1.5px solid #eee; padding: 10px;">
							<div style="display: inline-flex; width: 100%; border-bottom: 1px dashed #999;">
								<div style="width: 65px; margin: 10px;">
									<!-- <i class="far fa-smile fa-10x" style="font-size: 18px;"></i> -->
									<img src="https://cdn3.iconfinder.com/data/icons/avatars-9/145/Avatar_Pig-512.png" alt="" />
									</div>
								<div class="replyDiv" style="width: 100%; margin-bottom: 10px;">
									<div class="replyHead">
										<strong style="font-size: 17px;">댓글러</strong>
										<small style="float: right; font-size: 15px; color:#333;">2020.08.25  08:00</small>
									</div>
									<p class="replyArea" style="margin-top: 15px;">내용내용내용</p>
									<a style="cursor:pointer;" class="btn-re">답글</a>
								</div>
							</div>
						</div>
					</ul>
				</div>
			</div>	
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
$(function(){
	
	// 현재 글의 글 번호 가져오기
	let bno = ${vo.bno};
	
	
})

// ----- 댓글 ------//
$(function(){
	// 현재 게시글 번호 가져오기
	let bno = ${vo.bno};
	// 댓글 영역 가져오기
	let replyDiv = $(".replyDiv");
	// 댓글 페이지 나누기 담기
	let pageNum = 1;
	
	// 첫 페이지의 댓글 보여주기
	showList(1);
	
	// 댓글 리스트 요청하기
	function showList(page){
		$.ajax({
			url:'/commuReply/'+bno+'/'+page,
			type:'get',
			success:function(data){
				console.log(data);
				let list = data.listRep;
				let total = data.totalRep;

				// 댓글이 없으면 댓글 표시X
				if(list == null || list.length === 0){
					/* replyDiv.html(""); */
					return;
				}
				// 댓글이 있으면 여기로 옴
				// 댓글 리스트 뿌리기..?
				let str = "";
				for(var i = 0,len = list.length||0;i<len;i++){
					let reply = list[i].re_seq > 0 ? 'reply':'';
					// (상점은)대댓글인 또 답글 못달도록
					/* let replyBtn = list[i].re_seq == 0 ? '<a class="replyIn" data-seq="'+list[i].re_seq+'" data-ref="'+list[i].re_ref+'" data-lev="'+list[i].re_lev+'" href="#">답글</a>':''; */
					
					str += '<div class="review_item '+reply+'" >';
					str += '<div class="media">';
					str += '<div class="media-body">';
					str += '<h4> 작성자 : '+list[i].userid+'</h4>';
					str += '<h4> 제목 : '+list[i].title+'</h4>';
					str += '<h5> 작성 시간 : '+ displayTime(list[i].regdate)+'</h5>';
					str += replyButton;
					str += '</div>';
					str += '</div>';
					str += '<p>'+list[i].content+'</p>';
					str += '------------------------------------------------------------------------------------------------------------------';
					str += '</div>';
				}
				replyUl.html(str);
				showReplyPage(total);
			}
		})
	} // 리스트 요청 끝
	
	// 글 작성 폼
	let commentForm = $("#comment-form");
	let userid = commentForm.find("input[name='userid']");
	let title = commentForm.find("input[name='title']");
	let content = commentForm.find("textarea");
	
	// 작성하기 버튼을 클릭했을 때
	$(".comment-btn").click(function(e){
		
		e.preventDefault();
	
		$.ajax({
			url:'/shopcomment/new',
			type:'post',
			data: commentForm.serializeArray(),
			success: function(data){
				title.val("");
				content.val("");
				
				showList(1);
				
			},
			error:function(xhr,status,err){
				alert("코멘트 추가 실패. 공백없이 작성해 주세요.");
			}
			
		})
	}) // 코멘트 작성 버튼 끝
	
	// 답글달기 버튼을 클릭했을 때
	$(".comment_list").on("click",".reply_btn",function(e){
		
		e.preventDefault();
		let re_ref = $(this).data("ref");
		let re_seq = $(this).data("seq");
		let re_lev = $(this).data("lev");
		console.log(re_ref);
		console.log(re_seq);
		console.log(re_lev);
		
		$.ajax({
			url:'/shopcomment/reply',
			type:'post',
			data: {
				pid : pid,
				userid : userid.val(),
				title : title.val(),
				content : content.val(),
				re_ref : re_ref,
				re_seq : re_seq,
				re_lev : re_lev
			},
			success:function(data){
				console.log(data)
				title.val("");
				content.val("");
				
				showList(1);
				
			},
			error:function(xhr,status,err){
				alert("코멘트 및 답글 작성하기에 공백 없이 입력해 주세요"); 
				title.focus();
			}
		})
	}) // 답글달기 버튼 끝
	
	
	// 코멘트 페이징 영역 가져오기
	let comment_page = $(".comment-page");
	
	// 코멘트 페이지 번호 만들기
	function showReplyPage(total){
		
		//페이지 당 답글 수
		let amount = 10;
		//마지막 페이지 계산
		let endPage = Math.ceil(pageNum/10.0)*5;
		//시작 페이지 계산
		let startPage = endPage - 4;
		//이전버튼
		let prev = startPage != 1;
		//다음버튼
		let next = false;
		//실제 마지막 페이지 계산
		let realEnd = Math.ceil(total/10.0);
		
		if(endPage * amount >= total){
			endPage = realEnd
		}
		if(endPage * amount < total){
			next = true;
		}
		
		// 코멘트 페이지 영역 만들기
		let str = "";
		if(prev){
			str += '<a href="'+(startPage - 1)+'" class="prev-arrow">';
			str += '<i class="fa fa-long-arrow-left" aria-hidden="true"></i></a>';
		}
		for(var i = startPage; i<= endPage;i++){
			let active = pageNum == i ? 'active':'';
			str += '<a href="'+i+'" class="pagination_button2 '+ active +'">'+i+'</a>';
		}	
		if(next){
			str += '<a href="'+(endPage + 1)+'" class="next-arrow">';
			str += '<i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>';
		}
		
		comment_page.html(str);

	}// 코멘트 페이지 번호 만들기 끝
	
	// 코멘트 페이지 번호를 누르면 실행되는 스크립트
	comment_page.on("click","a",function(e){
		
		e.preventDefault();
		pageNum = $(this).attr("href");
		showList(pageNum);
		
	}) // 코멘트 페이지 번호를 누르면 실행되는 스크립트 끝
}) //-- comment 끝--//
			

</script>
</section>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>