<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<!-- Start Banner Area -->
	<section class="banner-area organic-breadcrumb">
		<div class="container">
			<div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
				<div class="col-first">
					<h1>Confirmation</h1>
					<nav class="d-flex align-items-center">
						<a href="index.html">Home<span class="lnr lnr-arrow-right"></span></a>
						<a href="category.html">Confirmation</a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->

	<!--================Order Details Area =================-->
	<section class="order_details section_gap">
		<div class="container">
			<h3 class="title_confirmation">감사합니다. 주문이 정상적으로 요청되었습니다.</h3>
			<div class="row order_d_inner">
				<div class="col-lg-5">
					<div class="details_item">
						<h4>Order Info</h4>
						<ul class="list">
							<li><a href="#"><span>Order number</span> : ${order.orderNum }</a></li>
							<li><a href="#"><span>Date</span> : ${order.orderdate} </a></li>
							<li><a href="#"><span>Total</span> : ${order.totalprice } 원</a></li>
							<li><a href="#"><span>Payment method</span> : ${order.payment }</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-5">
					<div class="details_item">
						<h4>receiver</h4>
						<ul class="list">
							<li><a href="#"><span>받는 사람</span> : ${order.name }</a></li>
							<li><a href="#"><span>휴대전화</span> : ${order.phone }</a></li>
							<li><a href="#"><span>email</span> : ${order.email }</a></li>
							<li><a href="#"><span>주문상태 </span> : ${order.orderstate }</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-5">
					<div class="details_item">
						<h4>Shipping Address</h4>
						<ul class="list">
							<li><a href="#"><span>우편번호</span> : ${ship.zipNo }</a></li>
							<li><a href="#"><span>도로명주소</span> : ${ship.roadAddrPart1 }</a></li>
							<li><a href="#"><span>상세주소1</span> : ${ship.addrDetail }</a></li>
							<li><a href="#"><span>상세주소2 </span> : ${ship.roadAddrPart2 }</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="order_details_table">
				<h2>Order Details</h2>
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th scope="col">Product</th>
								<th scope="col">Quantity</th>
								<th scope="col">Total</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach var="vo" items="${orderDetail}">
							<tr>
								<td>
									<p>${vo.pname}</p>
								</td>
								<td>
									<h5>${vo.ordercount}</h5>
								</td>
								<td>
									<p>${vo.orderprice*vo.ordercount }</p>
								</td>
							</tr>
						</c:forEach>
							<tr>
								<td>
									<h4>Subtotal</h4>
								</td>
								<td>
									<h5></h5>
								</td>
								<td>
									<p>${order.totalprice - order.ordershipcost} 원</p>
								</td>
							</tr>
							<tr>
								<td>
									<h4>Shipping</h4>
								</td>
								<td>
									<h5></h5>
								</td>
								<td>
									<p>${order.ordershipcost } 원</p>
								</td>
							</tr>
							<tr>
								<td>
									<h4>Total</h4>
								</td>
								<td>
									<h5></h5>
								</td>
								<td>
									<p>${order.totalprice } 원</p>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</section>
	<!--================End Order Details Area =================-->

<%@ include file="/WEB-INF/views/include/footer.jsp" %>
