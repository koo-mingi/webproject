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
	<div></div>
	<div class="container">
            <div class="classes__filter">
                <div class="row">
                    <div class="col-lg-12">
                        <form action="#">
                            <div class="class__filter__select">
                                <p>광역시/도:</p>
                                <select id="fitArea">
                                    <option>전체보기</option>
                                    <option value="서울특별시">서울특별시</option>
                                    <option value="부산광역시">부산광역시</option>
                                    <option value="대구광역시">대구광역시</option>
                                    <option value="">인천광역시</option>
                                    <option value="">광주광역시</option>
                                    <option value="">대전광역시</option>
                                    <option value="">울산광역시</option>
                                    <option value="">세종특별자치시</option>
                                    <option value="">경기도</option>
                                    <option value="">강원도</option>
                                    <option value="">충청북도</option>
                                    <option value="">충청남도</option>
                                    <option value="">전라북도</option>
                                    <option value="">전라남도</option>
                                    <option value="">경상북도</option>
                                    <option value="">경상남도</option>
                                    <option value="">제주특별자치도</option>
                                </select>
                            </div>
                            <div class="class__filter__select">
                                <p>시/군/구:</p>
                                <select id="sigungu" class="sigungu">
                                    <option value="">전체보기</option>                                                    
                                </select>
                            </div>                            
                            <div class="class__filter__select">
                                <p>운동시설:</p>
                                <select id="Exercise">
                                    <option value="헬스장">헬스장</option>
                                    <option value="산책로">산책로</option>
                                    <option value="공원">공원</option>
                                </select>
                            </div>
                            <div class="class__filter__btn">
                                <button id="searchOp"><i class="fa fa-search"></i></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
          </div>
	<!-- Classes Section End -->
    <!-- Map Begin -->
	<div id="map" style="width:100%;height:400px;top:5%;"></div>
		<div class="search" style="position:relative; z-index:1000; top:-320px; left:20px;">
			<input id="address" type="text" placeholder="검색할 주소" value="">
			<input id="submit" type="button" value="검색">
		</div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=66b90fddbb5bd06380fafaf7e938c2b2&libraries=services,clusterer,drawing"></script>
	<script>	
	// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
	var infowindow = new kakao.maps.InfoWindow({zIndex:1});

	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
	        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };  

	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 

	// 장소 검색 객체를 생성합니다
	var ps = new kakao.maps.services.Places(); 
	
	/* $(".class__filter__select").find("input[id='searchOp']").click(function(e){ */
	$("#searchOp").click(function(e){
		e.preventDefault();
		console.log('검색중');	
		
		 //선택 값져오기
		let city =  $(".list:first > .option.selected").text();
		let gu =  $(".list:eq(1) > .option.selected").text()
		let ex =  $(".list:last > .option.selected").text();
		
		
		
		/* /* let searchAddress = $(".class__filter__select").find("input[id='sigungu']").val(gu); */
		let searchAddress = gu;
		
		console.log(searchAddress);
		console.log(ex);
		ps.keywordSearch(searchAddress, placesSearchCB);
	})
	
	$(".search").find("input[id='submit']").click(function(e){
		e.preventDefault();
		console.log('검색');
		let searchAddress = $(".search").find("input[id='address']").val();
		
		// 키워드로 장소를 검색합니다
		ps.keywordSearch(searchAddress, placesSearchCB); 

	})
	
	// 키워드 검색 완료 시 호출되는 콜백함수 입니다
	function placesSearchCB (data, status, pagination) {
	    if (status === kakao.maps.services.Status.OK) {

	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
	        // LatLngBounds 객체에 좌표를 추가합니다
	        var bounds = new kakao.maps.LatLngBounds();

	        for (var i=0; i<data.length; i++) {
	            displayMarker(data[i]);    
	            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
	        }       

	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
	        map.setBounds(bounds);
	    } 
	}

	// 지도에 마커를 표시하는 함수입니다	
	function displayMarker(place) {
	    
	    // 마커를 생성하고 지도에 표시합니다
	    var marker = new kakao.maps.Marker({
	        map: map,
	        position: new kakao.maps.LatLng(place.y, place.x) 
	    });

	    // 마커에 클릭이벤트를 등록합니다
	    kakao.maps.event.addListener(marker, 'click', function() {
	        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
	        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
	        infowindow.open(map, marker);
	    });
	}
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
<!-- 도시 선택에 따른 구 설정 -->
<script>
$(function(){
	$("#fitArea").on("change",function(){
		console.log("도시 클릭");
		city = $(this).val();
		
		let sigungu = $(".sigungu ul");	
		
		$.ajax({
			url : "hotplace",
			type: 'post', 
			data : {city:city},
			success:function(data){
				let output="<li data-value='전체보기' class='option '>전체보기</option>";
				$(data).each(function(i, element){
					output += "<li data-value='"+element.sigungu+"' class='option '>"+element.sigungu+"</option>";									
				})
				console.log(output);
				sigungu.html(output);
			}
		})		
	})
})
</script>
<!--  -->
    <%@ include file="/WEB-INF/views/include/footer.jsp" %>