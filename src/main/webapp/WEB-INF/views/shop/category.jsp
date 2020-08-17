<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<!-- Start Banner Area -->
	<section class="banner-area organic-breadcrumb">
		<div class="container">
			<div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
				<div class="col-first">
				<c:if test="${cri.mainCategory =='' }"><h1>전체 카테고리</h1></c:if>
				<c:if test="${cri.mainCategory =='1' }"><h1>식사대용 카테고리</h1></c:if>
				<c:if test="${cri.mainCategory =='2' }"><h1>건강간식 카테고리</h1></c:if>
				<c:if test="${cri.mainCategory =='3' }"><h1>보조식품 카테고리</h1></c:if>
				<c:if test="${cri.mainCategory =='4' }"><h1>운동용품 카테고리</h1></c:if>
					<nav class="d-flex align-items-center">
						<a href="/">Home<span class="lnr lnr-arrow-right"></span></a>
						<a href="category">Shop</a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->
	<div class="container">
		<div class="row">
			<div class="col-xl-3 col-lg-4 col-md-5">
				<div class="sidebar-categories">
					<div class="head"><b>카테고리</b></div>
					<ul class="main-categories">
						<li class="main-nav-list"><a href=""><b>전체 보기</b></a></li>
						<li class="main-nav-list"><a href="1"><b>식사대용</b></a></li>
						<li class="main-nav-list"><a href="2"><b>건강간식</b></a></li>
						<li class="main-nav-list"><a href="3"><b>보조식품</b></a></li>
						<li class="main-nav-list"><a href="4"><b>운동용품</b></a></li>
					</ul>
				</div>
				<div class="sidebar-filter mt-50">
					<div class="top-filter-head">상품 필터</div>
					<div class="common-filter">
						<div class="head">배송비</div>
						<form action="#">
							<ul class="ship-cost">
								<li class="filter-list"><input class="pixel-radio" type="radio" id="free" name="shipcost" value="0" <c:out value="${cri.shipCost == '0'?'checked':'' }"/>><label for="apple">무료</label></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="2500" name="shipcost" value="2500" <c:out value="${cri.shipCost == '2500'?'checked':'' }"/>><label for="asus">2500원</label></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="5000" name="shipcost" value="5000" <c:out value="${cri.shipCost == '5000'?'checked':'' }"/>><label for="gionee">5000원</label></li>
							</ul>
						</form>
					</div>
					<div class="common-filter">
						<div class="head">보관방법</div>
						<form action="#">
							<ul>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="black" name="storage" value="R" <c:out value="${cri.storage == 'R'?'checked':'' }"/>><label for="black">냉장보관</label></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="balckleather" name="storage" value="A" <c:out value="${cri.storage == 'A'?'checked':'' }"/>><label for="balckleather">상온보관</label></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="blackred" name="storage" value="I" <c:out value="${cri.storage == 'I'?'checked':'' }"/>><label for="blackred">냉동보관</label></li>
							</ul>
						</form>
					</div>
					<div class="common-filter">
						<div class="head">Price</div>
						<div class="price-range-area">
							<div id="price-range"></div>
							<div class="value-wrapper d-flex">
								<div class="price">Price:</div>
								<span>￦</span>
								<div id="lower-value"></div>
								<div class="to">to</div>
								<span>￦</span>
								<div id="upper-value"></div>
							</div>
							 	<a href="#" class="shop-price-btn genric-btn info radius">가격검색</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-9 col-lg-8 col-md-7">
				<!-- Start Filter Bar -->
				<div class="filter-bar d-flex flex-wrap align-items-center">
					<div class="sorting">
						<select class="shop-category">
							<option value="" <c:out value="${cri.type == ''?'selected':'' }"/>>최신순</option>
							<option value="R" <c:out value="${cri.type == 'R'?'selected':'' }"/>>추천순</option>
							<option value="P" <c:out value="${cri.type == 'P'?'selected':'' }"/>>가격 높은순</option>
						</select>
					</div>
					<div class="sorting mr-auto">
						<select class="shop-amount1">
							<option value="12" <c:out value="${cri.amount == '12'?'selected':'' }"/>>Show 12</option>
							<option value="21" <c:out value="${cri.amount == '21'?'selected':'' }"/>>Show 21</option>
							<option value="30" <c:out value="${cri.amount == '30'?'selected':'' }"/>>Show 30</option>
						</select>
					</div>
					<div class="pagination">
					<c:if test="${shopPageVO.prev }">
						<a href="${shopPageVO.startPage-1 }" class="prev-arrow1"><i class="fa fa-long-arrow-left" aria-hidden="true"></i></a>
					</c:if>
					<c:forEach var="idx" begin="${shopPageVO.startPage}" end="${shopPageVO.endPage}">
						<a href="${idx}" class="pagination_button1 ${shopPageVO.cri.pageNum == idx?'active':'' }">${idx}</a>
					</c:forEach>
					<c:if test="${shopPageVO.next }">
						<a href="${shopPageVO.endPage+1}" class="next-arrow1"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
					</c:if>
						
					</div>
				</div>
				<!-- End Filter Bar -->
				<!-- Start Best Seller -->
				<section class="lattest-product-area pb-40 category-list">
					<div class="row">
						<c:forEach var="vo" items="${list}">
							<!-- single product -->
							<div class="col-lg-4 col-md-6">
								<div class="single-product">
									<a href="/shop/single-product?pid=${vo.pid}"><img class="img-fluid" src="/resources/shop/img/product/p1.jpg" alt=""></a>
									<div class="product-details">
										<h6>${vo.pname }</h6>
										<div class="price">
											<h6>￦ ${vo.saleprice }</h6>
											<h6 class="l-through">￦ ${vo.price }</h6>
										</div>
											<a><i class="fa fa-star"> ${vo.gradeavg}</i></a>
										<div class="prd-bottom">
											<a href="" class="social-info">
												<span class="ti-bag"></span>
												<p class="hover-text">add to bag</p>
											</a>
											<a href="" class="social-info">
												<span class="lnr lnr-heart"></span>
												<p class="hover-text">Wishlist</p>
											</a>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</section>
				<!-- End Best Seller -->
				<!-- Start Filter Bar -->
				<div class="filter-bar d-flex flex-wrap align-items-center">
					<div class="sorting mr-auto">
						<select class="shop-amount2">
							<option value="12" <c:out value="${cri.amount == '12'?'selected':'' }"/>>Show 12</option>
							<option value="21" <c:out value="${cri.amount == '21'?'selected':'' }"/>>Show 21</option>
							<option value="30" <c:out value="${cri.amount == '30'?'selected':'' }"/>>Show 30</option>
						</select>
					</div>
					<div class="pagination">
					<c:if test="${shopPageVO.prev }">
						<a href="${shopPageVO.startPage-1 }" class="prev-arrow2"><i class="fa fa-long-arrow-left" aria-hidden="true"></i></a>
					</c:if>
					<c:forEach var="idx" begin="${shopPageVO.startPage}" end="${shopPageVO.endPage}">
						<a href="${idx}" class="pagination_button2 ${shopPageVO.cri.pageNum == idx?'active':'' }">${idx}</a>
					</c:forEach>
					<c:if test="${shopPageVO.next }">
						<a href="${shopPageVO.endPage+1}" class="next-arrow2"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
					</c:if>
						
					</div>
				</div>
				<!-- End Filter Bar -->
			</div>
		</div>
	</div>

	<!-- Start related-product Area -->
	<section class="related-product-area section_gap">
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
	<%--페이지 번호 및 개수를 누르면 동작하는 폼 --%>
	<form action="category" id="shopActionForm">
		<input type="hidden" name="pageNum" value="${cri.pageNum }" />
		<input type="hidden" name="amount" value="${cri.amount }" />
		<input type="hidden" name="lower" value="${cri.lower }" />
		<input type="hidden" name="upper" value="${cri.upper}" />
		<input type="hidden" name="type" value="${cri.type}" />
		<input type="hidden" name="mainCategory" value="${cri.mainCategory }" />
		<input type="hidden" name="shipCost" value="${cri.shipCost }" />
		<input type="hidden" name="storage" value="${cri.storage }" />
	</form>
	
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
