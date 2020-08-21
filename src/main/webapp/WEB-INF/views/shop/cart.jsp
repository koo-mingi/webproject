<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
 <!-- Start Banner Area -->
    <section class="banner-area organic-breadcrumb">
        <div class="container">
            <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                <div class="col-first">
                    <h1>Shopping Cart</h1>
                    <nav class="d-flex align-items-center">
                        <a href="index.html">Home<span class="lnr lnr-arrow-right"></span></a>
                        <a href="category.html">Cart</a>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- End Banner Area -->

    <!--================Cart Area =================-->
    <section class="cart_area">
        <div class="container">
            <div class="cart_inner">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                            	<th><input type="checkbox" class="allCheck" id="allCheck" checked /></th>
                                <th scope="col">Product</th>
                                <th scope="col">Price</th>
                                <th scope="col">Quantity</th>
                                <th scope="col">Total</th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="vo" items="${cartList }" varStatus="status">
                            <tr>
                            	<td>
                            		<input type="checkbox" class="chkbox" value="${vo.price*vo.amount }" data-cartid="${vo.cartid}"  data-index="${status.index }"/>
                            	</td>
                                <td>
                                    <div class="media">
                                        <div class="d-flex">
                                            <img src="/resources/shop/img/cart.jpg" alt="">
                                        </div>
                                        <div class="media-body">
                                            <p>${vo.pname }</p>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <h5 class="productPrice">${vo.price }원</h5>
                                </td>
                                <td>
                                    <div class="product_count">
                                        <input type="text" name="qty" id="sst${status.index}" maxlength="12" value="${vo.amount }" title="Quantity:"
                                            class="input-text qty">
                                        <button class="increase items-count" data-index="${status.index }" data-price="${vo.price }" type="button"><i class="lnr lnr-chevron-up"></i></button>
                                        <button class="reduced items-count" data-index="${status.index }" data-price="${vo.price }" type="button"><i class="lnr lnr-chevron-down"></i></button>
                                    </div>
                                </td>
                                <td>
                                    <h5 class="productTotal">${vo.price*vo.amount }원</h5>
                                </td>
                            </tr>
                            </c:forEach>
                            <tr class="bottom_button">
                                <td>
                                
                                </td>
                                <td>
									 <a class="gray_btn orderDelete-btn" href="#">선택된 상품 삭제</a>
                                </td>
                                <td>

                                <td>
                                <td>

                                <td>
                                    <div class="cupon_text d-flex align-items-center">
                                        <input type="text" placeholder="Coupon Code">
                                        <a class="genric-btn info radius" href="#">적용</a>
                                        <a class="genric-btn info radius" href="#">쿠폰 닫기</a>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                            	<td>

                                <td>
                                <td>

                                </td>
                                <td>
									<h5>상품 합계</h5>
                                </td>
                                <td>
                                    <h5 class="total_sum">0 원</h5>
                                </td>
                                <td>
                                    
                                </td>
                            </tr>
                            <tr class="shipping_area">
                            	<td>

                                <td>
                                <td>

                                </td>
                                <td>

                                </td>
                                <td>
                                    <h5>Shipping</h5>
                                </td>
                                <td>
                                    <div class="shipping_box">
                                        <ul class="list">
                                            <li><a href="#">Flat Rate: $5.00</a></li>
                                            <li><a href="#">Free Shipping</a></li>
                                            <li><a href="#">Flat Rate: $10.00</a></li>
                                            <li class="active"><a href="#">Local Delivery: $2.00</a></li>
                                        </ul>
                                        <h6>Calculate Shipping <i class="fa fa-caret-down" aria-hidden="true"></i></h6>
                                        <select class="shipping_select">
                                            <option value="1">Bangladesh</option>
                                            <option value="2">India</option>
                                            <option value="4">Pakistan</option>
                                        </select>
                                        <select class="shipping_select">
                                            <option value="1">Select a State</option>
                                            <option value="2">Select a State</option>
                                            <option value="4">Select a State</option>
                                        </select>
                                        <input type="text" placeholder="Postcode/Zipcode">
                                        <a class="gray_btn" href="#">상세 적용</a>
                                    </div>
                                </td>
                            </tr>
                            <tr class="out_button_area">
                            	<td>

                                <td>
                                <td>
                                </td>
                                <td>
                                </td>
                                <td>
                                </td>
                                <td>
                                    <div class="checkout_btn_inner d-flex align-items-center">
                                        <a class="gray_btn" href="#">쇼핑 계속하기</a>
                                        <a class="gray_btn" href="/shop/checkout">주문하기</a>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
    <!--================End Cart Area =================-->
    
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
	
	<!-- orderForm -->
	<form action="#" method="post" class="orderForm" id="orderForm">
		<input type="hidden" name="totalPrice" value="" />
		<input type="hidden" name="chk[]" id="chk" value="" />
	</form>

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

    <!-- 상점 템플릿 -->
    <!-- <script src="/resources/shop/js/vendor/jquery-2.2.4.min.js"></script> -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
	 crossorigin="anonymous"></script>
	<script src="/resources/shop/js/vendor/bootstrap.min.js"></script>
	<script src="/resources/shop/js/jquery.ajaxchimp.min.js"></script>
	<script src="/resources/shop/js/jquery.nice-select.min.js"></script>
	<script src="/resources/shop/js/jquery.sticky.js"></script>
	<script src="/resources/shop/js/nouislider.min.js"></script>
	<script src="/resources/shop/js/jquery.magnific-popup.min.js"></script>
	<script src="/resources/shop/js/owl.carousel.min.js"></script>
	<!--gmaps Js-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="/resources/shop/js/gmaps.min.js"></script>
	<script src="/resources/shop/js/main.js"></script>
	
	<script>
	$(function(){
		// 수량과 관련된 input 태그
		let qty = $(".qty");
		// 각 상품별 총 금액이 있는 태그
		let total = $(".productTotal");
		// 각 체크박스 영역 가져오기
		let chkbox = $(".chkbox");
		// 주문 폼 가져오기
		let orderForm = $(".orderForm");
		
			// 선택된 상품의 합계 금액 구하기
			function cartSum(){
				let str = "";
				let sum = 0;
				let count = $(".chkbox").length;
				
				for(var i=0;i<count;i++){
					if(chkbox[i].checked == true){
						sum += parseInt(chkbox[i].value);
					}
				}
				$(".total_sum").html(sum+'원');
				orderForm.find("input[name='totalPrice']").val(sum);
				console.log("폼 합계",orderForm.find("input[name='totalPrice']").val());
			}
		
			// 수량 증가 버튼 클릭
			$(".increase").click(function(){
				let idx = $(this).data("index");
				let amount = qty[idx].value;
				let price = $(this).data("price");
				
				amount++;
				qty[idx].value = amount;
		
				let result = parseInt(price*amount);
				chkbox[idx].value = result;
				total[idx].innerText=result+'원';
				cartSum();
			})
			
			// 수량 감소 버튼 클릭
			$(".reduced").click(function(){
				let idx = $(this).data("index");
				let amount = qty[idx].value;
				let price = $(this).data("price");
				
				if(amount >0){
					amount--;
				}

				qty[idx].value = amount;
				
				let result = parseInt(price*amount);
				chkbox[idx].value = result;
				total[idx].innerText=result+'원';
				cartSum();
			})
			
			// 상품의 체크박스 버튼 클릭
			$(".chkbox").click(function(){
				let idx = $(this).data("index");
				let totalprice = $(this).val();
				let cartid = $(this).data("cartid"); // data의 cartid는 소문자로 써야 됨. data-cartId => 인식 안됨
				console.log('수량',qty[idx].value);
				console.log('각 합계',totalprice);
				console.log('cartid',cartid);
				cartSum();
			})
			
			
			// 전체선택 체크박스 : 체크 시 나머지 체크박스 true
			$(".allCheck").click(function(){
				let chk = $(".allCheck").prop("checked");
				if(chk){
					chkbox.prop("checked",true);
				}else{
					chkbox.prop("checked",false);
				}
				cartSum();
			})
			
			// 페이지 들어오자마자 모두 체크 박스	
			let tt = "${cartList}";
			console.log(tt);
			if(tt == "[]" || tt == ""){
				$(".allCheck").prop("checked",false);
			}else{
				$(".allCheck").prop("checked",true);
				chkbox.prop("checked",true);
				cartSum();
			}
			
			// 선택된 상품 삭제하기
			$(".orderDelete-btn").click(function(e){
				
				e.preventDefault();
				
				var checkArr = new Array();
				$("input[class='chkbox']:checked").each(function(){
					checkArr.push($(this).data("cartid"));
				})
				console.log(checkArr);
				
				$("#chk").val(checkArr);
				
				if($("#chk").val() == []){
					alert("삭제할 상품이 없습니다.");
					return false;
				}
				
				if(confirm("선택된 상품을 삭제하시겠습니까?")){
					alert("삭제되었습니다.");
					orderForm.attr("action",'/shopcart/delete');
					orderForm.submit();
				}
				
				
				
			})// 상품 삭제하기 끝
			
	})
	
	
	</script>
</body>
</html>