<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<!-- Start Banner Area -->
	<section class="banner-area organic-breadcrumb">
		<div class="container">
			<div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
				<div class="col-first">
					<h1>상점 페이지</h1>
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
						<li class="main-nav-list"><a href="#fruitsVegetable" ><b>전체 보기</b></a></li>
						<li class="main-nav-list"><a href="#"><b>식사대용</b></a></li>
						<li class="main-nav-list"><a href="#"><b>건강간식</b></a></li>
						<li class="main-nav-list"><a href="#"><b>보조식품</b></a></li>
						<li class="main-nav-list"><a href="#"><b>운동용품</b></a></li>
					</ul>
				</div>
				<div class="sidebar-filter mt-50">
					<div class="top-filter-head">상품 필터</div>
					<div class="common-filter">
						<div class="head">배송비</div>
						<form action="#">
							<ul>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="apple" name="brand"><label for="apple">Apple<span>(29)</span></label></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="asus" name="brand"><label for="asus">Asus<span>(29)</span></label></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="gionee" name="brand"><label for="gionee">Gionee<span>(19)</span></label></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="micromax" name="brand"><label for="micromax">Micromax<span>(19)</span></label></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="samsung" name="brand"><label for="samsung">Samsung<span>(19)</span></label></li>
							</ul>
						</form>
					</div>
					<div class="common-filter">
						<div class="head">보관방법</div>
						<form action="#">
							<ul>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="black" name="color"><label for="black">Black<span>(29)</span></label></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="balckleather" name="color"><label for="balckleather">Black
										Leather<span>(29)</span></label></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="blackred" name="color"><label for="blackred">Black
										with red<span>(19)</span></label></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="gold" name="color"><label for="gold">Gold<span>(19)</span></label></li>
								<li class="filter-list"><input class="pixel-radio" type="radio" id="spacegrey" name="color"><label for="spacegrey">Spacegrey<span>(19)</span></label></li>
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
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-9 col-lg-8 col-md-7">
				<!-- Start Filter Bar -->
				<div class="filter-bar d-flex flex-wrap align-items-center">
					<div class="sorting">
						<select>
							<option value="">전체</option>
							<option value="R">추천순</option>
							<option value="P">가격 높은순</option>
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
						<a href="${shopPageVO.startPage-1 }" class="prev-arrow"><i class="fa fa-long-arrow-left" aria-hidden="true"></i></a>
					</c:if>
					<c:forEach var="idx" begin="${shopPageVO.startPage}" end="${shopPageVO.endPage}">
						<a href="${idx}" class="pagination_button1 ${shopPageVO.cri.pageNum == idx?'active':'' }">${idx}</a>
					</c:forEach>
					<c:if test="${shopPageVO.next }">
						<a href="${shopPageVO.endPage}+1" class="next-arrow"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
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
									<a href="/shop/single-product"><img class="img-fluid" src="/resources/shop/img/product/p1.jpg" alt=""></a>
									<div class="product-details">
										<h6>${vo.pname }</h6>
										<div class="price">
											<h6>${vo.saleprice }</h6>
											<h6 class="l-through">${vo.price }</h6>
										</div>
										<div class="prd-bottom">
											<a href="" class="social-info">
												<span class="ti-bag"></span>
												<p class="hover-text">add to bag</p>
											</a>
											<a href="" class="social-info">
												<span class="lnr lnr-heart"></span>
												<p class="hover-text">Wishlist</p>
											</a>
											<a href="" class="social-info">
												<span class="lnr lnr-sync"></span>
												<p class="hover-text">compare</p>
											</a>
											<a href="" class="social-info">
												<span class="lnr lnr-move"></span>
												<p class="hover-text">view more</p>
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
						<a href="${shopPageVO.startPage-1 }" class="prev-arrow"><i class="fa fa-long-arrow-left" aria-hidden="true"></i></a>
					</c:if>
					<c:forEach var="idx" begin="${shopPageVO.startPage}" end="${shopPageVO.endPage}">
						<a href="${idx}" class="pagination_button2 ${shopPageVO.cri.pageNum == idx?'active':'' }">${idx}</a>
					</c:forEach>
					<c:if test="${shopPageVO.next }">
						<a href="${shopPageVO.endPage}+1" class="next-arrow"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
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
	</form>
	
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
