<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<!-- Start Banner Area -->
	<section class="banner-area organic-breadcrumb">
		<div class="container">
			<div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
				<div class="col-first">
					<h1>상품 상세 페이지</h1>
					<nav class="d-flex align-items-center">
						<a href="index.html">Home<span class="lnr lnr-arrow-right"></span></a>
						<a href="#">Shop<span class="lnr lnr-arrow-right"></span></a>
						<a href="single-product.html">product-details</a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->

	<!--================Single Product Area =================-->
	<div class="product_image_area">
		<div class="container">
			<div class="row s_product_inner">
				<div class="col-lg-6">
					<div class="s_Product_carousel">
						<div class="single-prd-item">
							<img class="img-fluid" src="/resources/shop/img/category/s-p1.jpg" alt="">
						</div>
						<div class="single-prd-item">
							<img class="img-fluid" src="/resources/shop/img/category/s-p1.jpg" alt="">
						</div>
						<div class="single-prd-item">
							<img class="img-fluid" src="/resources/shop/img/category/s-p1.jpg" alt="">
						</div>
					</div>
				</div>
				<div class="col-lg-5 offset-lg-1">
					<div class="s_product_text">
						<h3>${vo.pname }</h3>
						<h2>￦ ${vo.saleprice }</h2>
							<h6 class="l-through">￦ ${vo.price }</h6>
						<ul class="list">
							<li><a class="active" href="#"><span>카테고리</span>${vo.category }</a></li>
							<li><a href="#"><span>재고</span>${vo.amount } 개</a></li>
						</ul>
						<p>${vo.simpletext }</p>
						<div class="product_count">
							<label for="qty">수량:</label>
							<input type="text" name="qty" id="sst" maxlength="12" value="1" title="Quantity:" class="input-text qty">
							<button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;"
							 class="increase items-count" type="button"><i class="lnr lnr-chevron-up"></i></button>
							<button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 0 ) result.value--;return false;"
							 class="reduced items-count" type="button"><i class="lnr lnr-chevron-down"></i></button>
						</div>
						<div class="card_area d-flex align-items-center">
							<a class="genric-btn info radius" href="#">장바구니</a>
							<a class="genric-btn info radius" href="/shop/cart">구입하기</a>
							<a class="icon_btn" href="#"><i class="lnr lnr lnr-heart"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--================End Single Product Area =================-->

	<!--================Product Description Area =================-->
	<section class="product_description_area">
		<div class="container">
			<ul class="nav nav-tabs" id="myTab" role="tablist">
				<li class="nav-item">
					<a class="nav-link" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Description</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile"
					 aria-selected="false">Specification</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact"
					 aria-selected="false">Comments</a>
				</li>
				<li class="nav-item">
					<a class="nav-link active" id="review-tab" data-toggle="tab" href="#review" role="tab" aria-controls="review"
					 aria-selected="false">Reviews</a>
				</li>
			</ul>
			<div class="tab-content" id="myTabContent">
				<div class="tab-pane fade" id="home" role="tabpanel" aria-labelledby="home-tab">
					<p>${vo.description }</p>
				</div>
				<div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
					<div class="table-responsive">
						<table class="table">
							<tbody>
								<tr>
									<td>
										<h5>용량</h5>
									</td>
									<td>
										<h5>${vo.volume }</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>배송비</h5>
									</td>
									<td>
										<h5>${vo.shipcost }</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>보관방법</h5>
									</td>
									<td>
										<h5>${vo.storage }</h5>
									</td>
								</tr>
								<tr>
									<td>
										<h5>유통기한</h5>
									</td>
									<td>
										<h5><fmt:formatDate pattern="yyyy-MM-dd" value="${vo.expdate }" /></h5>
										
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<!-- 코멘트 영역 -->
				<div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
					<div class="row">
						<div class="col-lg-6">
							<div class="comment_list">
								<div class="review_item reply">
									<div class="media">
										<div class="d-flex">
											<img src="img/product/review-1.png" alt="">
										</div>
										<div class="media-body">
											<h4>Blake Ruiz</h4>
											<h4>Title</h4>
											<h5>12th Feb, 2018 at 05:56 pm</h5>
											<a class="reply_btn" href="#">Reply</a>
										</div>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
										dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
										commodo
									</p>
								</div>
							</div>
							<div class="comment pagination">
								
							</div>
						</div>
						<div class="col-lg-6">
							<div class="review_box">
								<h4>코멘트 및 답글 작성하기</h4>
								<form class="row contact_form" action="" method="post" id="comment-form">
									<div class="col-md-12">
										<div class="form-group">
											<input type="text" class="form-control" id="userid" name="userid" placeholder="Your Full name" readonly="readonly"
											value="${auth.userid }">
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<input type="text" class="form-control" id="title" name="title" placeholder="Title">
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<textarea class="form-control" name="content" id="content" rows="1" placeholder="Message"></textarea>
										</div>
									</div>
									<input type="hidden" name="pid" value="${vo.pid}" />
									<div class="col-md-12 text-right">
										<button type="submit" value="submit" class="comment-btn genric-btn info radius">Submit Now</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<!-- 리뷰 탭 -->
				<div class="tab-pane fade show active" id="review" role="tabpanel" aria-labelledby="review-tab">
					<div class="row">
						<div class="col-lg-6">
							<div class="row total_rate">
								<div class="col-6">
									<div class="box_total">
										<h5>Overall</h5>
										<h4>4.0</h4>
										<h6>(03 Reviews)</h6>
									</div>
								</div>
								<div class="col-6">
									<div class="rating_list">
										<h3>Based on 3 Reviews</h3>
										<ul class="list">
											<li><a href="#">5 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
													 class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
											<li><a href="#">4 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
													 class="fa fa-star"></i><i class="fa fa-star-o"></i> 01</a></li>
											<li><a href="#">3 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
													 class="fa fa-star-o"></i><i class="fa fa-star-o"></i> 01</a></li>
											<li><a href="#">2 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star-o"></i><i
													 class="fa fa-star-o"></i><i class="fa fa-star-o"></i> 01</a></li>
											<li><a href="#">1 Star <i class="fa fa-star"></i><i class="fa fa-star-o"></i><i class="fa fa-star-o"></i><i
													 class="fa fa-star-o"></i><i class="fa fa-star-o"></i> 01</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="review_list">
								<div class="review_item">
									<div class="media">
										<div class="d-flex">
											<img src="img/product/review-1.png" alt="">
										</div>
										<div class="media-body">
											<h4>Blake Ruiz</h4>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
										</div>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
										dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
										commodo</p>
								</div>
								<div class="review_item">
									<div class="media">
										<div class="d-flex">
											<img src="img/product/review-2.png" alt="">
										</div>
										<div class="media-body">
											<h4>Blake Ruiz</h4>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
										</div>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
										dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
										commodo</p>
								</div>
								<div class="review_item">
									<div class="media">
										<div class="d-flex">
											<img src="img/product/review-3.png" alt="">
										</div>
										<div class="media-body">
											<h4>Blake Ruiz</h4>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
										</div>
									</div>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
										dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
										commodo</p>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="review_box">
								<h4>Add a Review</h4>
								<p>Your Rating:</p>
								<ul class="list">
									<li><a href="#"><i class="fa fa-star"></i></a></li>
									<li><a href="#"><i class="fa fa-star"></i></a></li>
									<li><a href="#"><i class="fa fa-star"></i></a></li>
									<li><a href="#"><i class="fa fa-star"></i></a></li>
									<li><a href="#"><i class="fa fa-star"></i></a></li>
								</ul>
								<p>Outstanding</p>
								<form class="row contact_form" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">
									<div class="col-md-12">
										<div class="form-group">
											<input type="text" class="form-control" id="name" name="name" placeholder="Your Full name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Full name'">
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<input type="email" class="form-control" id="email" name="email" placeholder="Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email Address'">
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<input type="text" class="form-control" id="number" name="number" placeholder="Phone Number" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Phone Number'">
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<textarea class="form-control" name="message" id="message" rows="1" placeholder="Review" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Review'"></textarea></textarea>
										</div>
									</div>
									<div class="col-md-12 text-right">
										<button type="submit" value="submit" class="genric-btn info radius">Submit Now</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Product Description Area =================-->

	<!-- Start related-product Area -->
	<section class="related-product-area section_gap_bottom">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-6 text-center">
					<div class="section-title">
						<h1>Deals of the Week</h1>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore
							magna aliqua.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-9">
					<div class="row">
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r1.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r2.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r3.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r5.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r6.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r7.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r9.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r10.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6">
							<div class="single-related-product d-flex">
								<a href="#"><img src="img/r11.jpg" alt=""></a>
								<div class="desc">
									<a href="#" class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3">
					<div class="ctg-right">
						<a href="#" target="_blank">
							<img class="img-fluid d-block mx-auto" src="img/category/c5.jpg" alt="">
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End related-product Area -->
	
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

    <!-- 상점 템플릿 -->
	<script src="/resources/shop/js/vendor/jquery-2.2.4.min.js"></script>
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
	
	<!-- 상점 스크립트 -->
	<script>
	 // ----- ms 단위로 나온 시간 변경 -----//
	function displayTime(timeVal){
		let today = new Date();
		
		let gap = today.getTime()-timeVal;
		let dateObj = new Date(timeVal);
		
		if(gap < (1000 * 60 * 60 * 24)){
			let hh = dateObj.getHours();
			let mm = dateObj.getMinutes();
			let ss = dateObj.getSeconds();
			return[(hh > 9 ? '' : '0')+hh,':',(mm > 9 ? '':'0')+mm,':',(ss > 9 ? '':'0')+ss].join("");
		}else{
			let yy = dateObj.getFullYear();
			let mm2 = dateObj.getMonth() + 1;
			let dd = dateObj.getDate();
			return [yy,"/",(mm2 > 9 ? '':'0')+mm2,"/",(dd > 9 ? '':'0')+dd].join("");
		}
	} // 시간 변경 끝
   
   // ----- comment ------//
   $(function(){
			// 현재 상품의 상품번호 가져오기
			let pid = ${vo.pid};
			// 댓글 영역 가져오기
			let replyUl = $(".comment_list");
			// 댓글 페이지 나누기 담기
			let pageNum = 1;
			
			// 첫 페이지의 댓글 보여주기
			showList(1);
			
			// 댓글 리스트 요청하기
			function showList(page){
				$.ajax({
					url:'/shopcomment/'+pid+'/'+page,
					type:'get',
					success:function(data){
						console.log(data);
						let list = data.list;
						let total = data.total;
						
						if(list == null || list.length === 0){
							replyUl.html("");
							return;
						}
						
						let str = "";
						for(var i = 0,len = list.length||0;i<len;i++){
							
							let reply = list[i].re_seq > 0 ? 'reply':'';
							let replyButton = list[i].re_seq == 0 ? '<a class="reply_btn" data-seq="'+list[i].re_seq+'" data-ref="'+list[i].re_ref+'" data-lev="'+list[i].re_lev+'" href="#">Reply</a>':'';
							
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
			let comment_page = $(".pagination");
			
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
		})
	</script>
</body>
</html>
