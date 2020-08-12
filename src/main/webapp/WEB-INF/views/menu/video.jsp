<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                            <span>Fitness Video</span>
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
                                    <option value="비타민신지니">신지니</option>
                                    <option value="심으뜸">심으뜸</option>
                                    <option value="땅끄부부">땅끄부부</option>
                                    <option value="말왕">말왕</option>
                                </select>
                            </div>
                            <!-- <div class="class__filter__select">
                                <p>Teacher:</p>
                                <select>
                                    <option>All Teachers</option>
                                    <option>Option 1</option>
                                    <option>Option 2</option>
                                    <option>Option 3</option>
                                </select>
                            </div> -->
                            <div class="class__filter__btn">
                                <button id="searchOp"><i class="fa fa-search"></i></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="classes__item classes__item__page">
                        <div class="classes__item__pic set-bg" data-setbg="/resources/img/classes/classes-1.jpg">
                            <!-- <span>Beginer</span> -->
                        </div>
                        <div class="classes__item__text">
                            <ul>
                                <li><span class="icon_calendar"></span> Mon, Wed, Fri</li>
                                <li><span class="icon_clock_alt"></span> 18:30 - 19:30</li>
                            </ul>
                            <h4><a href="#">100 Hour Yoga Course Rishikesh</a></h4>
                            <h6>Jordan Lawson <span>- channelTitle </span></h6>
                            <a href="#" class="class-btn">JOIN NOW</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="classes__item classes__item__page">
                        <div class="classes__item__pic set-bg" data-setbg="/resources/img/classes/classes-2.jpg">
                            <!-- <span>All levels</span> -->
                        </div>
                        <div class="classes__item__text">
                            <ul>
                                <li><span class="icon_calendar"></span> Mon, Wed, Fri</li>
                                <li><span class="icon_clock_alt"></span> 18:30 - 19:30</li>
                            </ul>
                            <h4><a href="#">200 Hour Yoga Course Rishikesh</a></h4>
                            <h6>Jordan Lawson <span>- channelTitle </span></h6>
                            <a href="#" class="class-btn">JOIN NOW</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="classes__item classes__item__page">
                        <div class="classes__item__pic set-bg" data-setbg="/resources/img/classes/classes-3.jpg">
                            <!-- <span>Beginer</span> -->
                        </div>
                        <div class="classes__item__text">
                            <ul>
                                <li><span class="icon_calendar"></span> Mon, Wed, Fri</li>
                                <li><span class="icon_clock_alt"></span> 18:30 - 19:30</li>
                            </ul>
                            <h4><a href="#">300 Hour Yoga Course Rishikesh</a></h4>
                            <h6>Jordan Lawson <span>- channelTitle </span></h6>
                            <a href="#" class="class-btn">JOIN NOW</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="classes__item classes__item__page">
                        <div class="classes__item__pic set-bg" data-setbg="/resources/img/classes/classes-4.jpg">
                            <!-- <span>Beginer</span> -->
                        </div>
                        <div class="classes__item__text">
                            <ul>
                                <li><span class="icon_calendar"></span> Mon, Wed, Fri</li>
                                <li><span class="icon_clock_alt"></span> 18:30 - 19:30</li>
                            </ul>
                            <h4><a href="#">100 Hour Yoga Course Rishikesh</a></h4>
                            <h6>Jordan Lawson <span>- channelTitle </span></h6>
                            <a href="#" class="class-btn">JOIN NOW</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="classes__item classes__item__page">
                        <div class="classes__item__pic set-bg" data-setbg="/resources/img/classes/classes-5.jpg">
                            <!-- <span>All levels</span> -->
                        </div>
                        <div class="classes__item__text">
                            <ul>
                                <li><span class="icon_calendar"></span> Mon, Wed, Fri</li>
                                <li><span class="icon_clock_alt"></span> 18:30 - 19:30</li>
                            </ul>
                            <h4><a href="#">200 Hour Yoga Course Rishikesh</a></h4>
                            <h6>Jordan Lawson <span>- channelTitle </span></h6>
                            <a href="#" class="class-btn">JOIN NOW</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="classes__item classes__item__page">
                        <div class="classes__item__pic set-bg" data-setbg="/resources/img/classes/classes-6.jpg">
                            <!-- <span>Beginer</span> -->
                        </div>
                        <div class="classes__item__text">
                            <ul>
                                <li><span class="icon_calendar"></span> Mon, Wed, Fri</li>
                                <li><span class="icon_clock_alt"></span> 18:30 - 19:30</li>
                            </ul>
                            <h4><a href="#">300 Hour Yoga Course Rishikesh</a></h4>
                            <h6>Jordan Lawson <span>- channelTitle </span></h6>
                            <a href="#" class="class-btn">JOIN NOW</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="classes__item classes__item__page">
                        <div class="classes__item__pic set-bg" data-setbg="/resources/img/classes/classes-7.jpg">
                            <!-- <span>Beginer</span> -->
                        </div>
                        <div class="classes__item__text">
                            <ul>
                                <li><span class="icon_calendar"></span> Mon, Wed, Fri</li>
                                <li><span class="icon_clock_alt"></span> 18:30 - 19:30</li>
                            </ul>
                            <h4><a href="#">100 Hour Yoga Course Rishikesh</a></h4>
                            <h6>Jordan Lawson <span>- channelTitle </span></h6>
                            <a href="#" class="class-btn">JOIN NOW</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="classes__item classes__item__page">
                        <div class="classes__item__pic set-bg" data-setbg="/resources/img/classes/classes-8.jpg">
                            <!-- <span>All levels</span> -->
                        </div>
                        <div class="classes__item__text">
                            <ul>
                                <li><span class="icon_calendar"></span> Mon, Wed, Fri</li>
                                <li><span class="icon_clock_alt"></span> 18:30 - 19:30</li>
                            </ul>
                            <h4><a href="#">200 Hour Yoga Course Rishikesh</a></h4>
                            <h6>Jordan Lawson <span>- channelTitle </span></h6>
                            <a href="#" class="class-btn">JOIN NOW</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="classes__item classes__item__page">
                        <div class="classes__item__pic set-bg" data-setbg="/resources/img/classes/classes-9.jpg">
                            <!-- <span>Beginer</span> -->
                        </div>
                        <div class="classes__item__text">
                            <ul>
                                <li><span class="icon_calendar"></span> Mon, Wed, Fri</li>
                                <li><span class="icon_clock_alt"></span> 18:30 - 19:30</li>
                            </ul>
                            <h4><a href="#">300 Hour Yoga Course Rishikesh</a></h4>
                            <h6>Jordan Lawson <span>- channelTitle </span></h6>
                            <a href="#" class="class-btn">JOIN NOW</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="classes__pagination">
                        <a href="#">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#">4</a>
                        <a href="#">5</a>
                        <a href="#"><span class="arrow_carrot-right"></span></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Classes Section End -->

    <!-- Upcoming Classes Section Begin -->
    <section class="upcoming-classes top-classes spad">
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
    </section>
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
		
	<!-- 운동 검색 스크립트 -->
	<script>
	$(function(){
		$("#searchOp").click(function(){
			let url = "https://www.googleapis.com/youtube/v3/search?key=AIzaSyDKULjchbgQy69Uc62iDbcXGcg_CYnUHhU&part=snippet&type=video&maxResults=9&videoEmbeddable=true&q=";
			// 사용자가 선택한 운동 가져오기
			url+=$("#fitArea").val()+$("#fitStyle").val()+$("#fitYouTuber").val();
			/* console.log(url); */
			
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
					console.log(data);
 					
					$.each(data.items, function(i, elt) {
						
						let div = list[i];				
						// 첫번째 img div
						childes1 = div.children[0];			   
						// 두번째 설명 div
						childes2 = div.children[1];
					    console.log(childes2);
					    // 두번째 설명 div > h4
						childes2_1 = div.children[1].h4;
					    // 두번째 설명 div > h6
						childes2_2 = div.children[1].h6;
												
						let viewImg = elt.snippet.thumbnails.high.url;		
						let title = elt.snippet.title;
						let channelTitle = elt.snippet.channelTitle;
						
						/* $("#view1").attr('data-setbg', viewImg); */
						$(childes1).attr('data-setbg', viewImg);
						$(childes1).css('background-image',"url("+viewImg+")");
 						$(childes2_1).empty();
						$(childes2_1).attr('a', title);
						$(childes2).append('h6', channelTitle);
						
						
						
					})
				}
			}) /* ajax end */
		})
	})
	</script>
</body>
</html>

<%-- <%@ include file="/WEB-INF/views/include/footer.jsp" %> --%>