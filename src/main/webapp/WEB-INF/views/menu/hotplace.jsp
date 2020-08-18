<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
        
    <!-- Breadcrumb Begin -->
    <section class="breadcrumb-option set-bg" data-setbg="/resources/img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h2>Contact Us</h2>
                        <div class="breadcrumb__widget">
                            <a href="/">Home</a>
                            <span>Contact Us</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb End -->
	<!-- Classes Section Begin -->
    
                
	<!-- Classes Section End -->
    <!-- Map Begin -->
	<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=k3ay6zftzj"></script>

	<div id="map" style="width:100%;height:400px;"></div>

	<script>
	var HOME_PATH = window.HOME_PATH || '.';

	var cityhall = new naver.maps.LatLng(37.5666805, 126.9784147),
	    map = new naver.maps.Map('map', {
	        center: cityhall.destinationPoint(0, 500),
	        zoom: 17
	    }),
	    marker = new naver.maps.Marker({
	        map: map,
	        position: cityhall
	    });

	var contentString = [
	        '<div class="iw_inner">',
	        '   <h3>서울특별시청</h3>',
	        '   <p>서울특별시 중구 태평로1가 31 | 서울특별시 중구 세종대로 110 서울특별시청<br />',
	        '       <img src="'+ HOME_PATH +'/img/example/hi-seoul.jpg" width="55" height="55" alt="서울시청" class="thumb" /><br />',
	        '       02-120 | 공공,사회기관 &gt; 특별,광역시청<br />',
	        '       <a href="http://www.seoul.go.kr" target="_blank">www.seoul.go.kr/</a>',
	        '   </p>',
	        '</div>'
	    ].join('');

	var infowindow = new naver.maps.InfoWindow({
	    content: contentString
	});

	naver.maps.Event.addListener(marker, "click", function(e) {
	    if (infowindow.getMap()) {
	        infowindow.close();
	    } else {
	        infowindow.open(map, marker);
	    }
	});

	infowindow.open(map, marker);
	</script>
    <!-- Map End -->

    <!-- Leave Comment Begin -->
    <div class="leave-comment comment-form spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="leave__comment__text">
                        <h2>Leave A Comment</h2>
                        <form action="#">
                            <div class="row">
                                <div class="col-lg-6 col-md-6">
                                    <input type="text" placeholder="Name*">
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <input type="text" placeholder="Email*">
                                </div>
                                <div class="col-lg-12 text-center">
                                    <textarea placeholder="Your Comment"></textarea>
                                    <button type="submit" class="site-btn">Submit</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Leave Comment End -->

    <%@ include file="/WEB-INF/views/include/footer.jsp" %>