<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
 <!-- Start Banner Area -->
    <section class="banner-area organic-breadcrumb">
        <div class="container">
            <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                <div class="col-first">
                    <h1>Checkout</h1>
                    <nav class="d-flex align-items-center">
                        <a href="index.html">Home<span class="lnr lnr-arrow-right"></span></a>
                        <a href="single-product.html">Checkout</a>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- End Banner Area -->

    <!--================Checkout Area =================-->
    <section class="cart_area">
        <div class="container">
            <div class="cart_inner">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
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
                                            class="input-text qty" readonly="readonly">
                                    </div>
                                </td>
                                <td>
                                    <h5 class="productTotal">${vo.price*vo.amount }원</h5>
                                </td>
                            </tr>
                            </c:forEach>
                         </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
    <section class="checkout_area section_gap">
        <div class="container">
            <div class="billing_details">
                <div class="row">
                    <div class="col-lg-8">
                        <h3>배송지 설정</h3>
                        <form class="row contact_form" action="#" method="post" novalidate="novalidate">
                            <div class="col-md-6 form-group p_star">
                                <input type="text" class="form-control" id="name" name="name">
                                <span class="placeholder" data-placeholder="이름"></span>
                            </div>
                            <div class="col-md-6 form-group p_star">
                                <input type="text" class="form-control" id="number" name="number">
                                <span class="placeholder" data-placeholder="휴대전화"></span>
                            </div>
                            <div class="col-md-6 form-group p_star">
                                <input type="text" class="form-control" id="email" name="compemailany">
                                <span class="placeholder" data-placeholder="Email 주소"></span>
                            </div>
                            <div class="col-md-12 form-group p_star">
                                <select class="country_select">
                                    <option value="1">Country</option>
                                    <option value="2">Country</option>
                                    <option value="4">Country</option>
                                </select>
                            </div>
                            <div class="col-md-12 form-group p_star">
                                <input type="text" class="form-control" id="add1" name="add1">
                                <span class="placeholder" data-placeholder="Address line 01"></span>
                            </div>
                            <div class="col-md-12 form-group p_star">
                                <input type="text" class="form-control" id="add2" name="add2">
                                <span class="placeholder" data-placeholder="Address line 02"></span>
                            </div>
                            <div class="col-md-12 form-group p_star">
                                <input type="text" class="form-control" id="city" name="city">
                                <span class="placeholder" data-placeholder="Town/City"></span>
                            </div>
                            <div class="col-md-12 form-group p_star">
                                <select class="country_select">
                                    <option value="1">District</option>
                                    <option value="2">District</option>
                                    <option value="4">District</option>
                                </select>
                            </div>
                            <div class="col-md-12 form-group">
                                <div class="creat_account">
                                    <h3>Shipping Details</h3>
                                    <input type="checkbox" id="f-option3" name="selector">
                                    <label for="f-option3">Ship to a different address?</label>
                                </div>
                                <textarea class="form-control" name="message" id="message" rows="1" placeholder="Order Notes"></textarea>
                            </div>
                        </form>
                    </div>
                    <div class="col-lg-4">
                        <div class="order_box">
                            <h2>주문 내역</h2>
                            <ul class="list list_2">
                                <li><a href="#">상품 합계 <span>${order.totalprice-order.ordershipcost} 원</span></a></li>
                                <li><a href="#">배송비 <span>${order.ordershipcost } 원</span></a></li>
                                <li><a href="#">주문 금액 <span>${order.totalprice } 원</span></a></li>
                            </ul>
                            <div class="payment_item">
                                <div class="radion_btn">
                                    <input type="radio" id="f-option5" name="selector">
                                    <label for="f-option5">Check payments</label>
                                    <div class="check"></div>
                                </div>
                                <p>Please send a check to Store Name, Store Street, Store Town, Store State / County,
                                    Store Postcode.</p>
                            </div>
                            <div class="payment_item active">
                                <div class="radion_btn">
                                    <input type="radio" id="f-option6" name="selector">
                                    <label for="f-option6">Paypal </label>
                                    <img src="img/product/card.jpg" alt="">
                                    <div class="check"></div>
                                </div>
                                <p>Pay via PayPal; you can pay with your credit card if you don’t have a PayPal
                                    account.</p>
                            </div>
                            <div class="creat_account">
                                <input type="checkbox" id="f-option4" name="selector">
                                <label for="f-option4">I’ve read and accept the </label>
                                <a href="#">terms & conditions*</a>
                            </div>
                            <a class="primary-btn" href="#">Proceed to Paypal</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- orderForm -->
	<form action="#" method="post" class="orderForm" id="orderForm">
		<input type="hidden" name=totalprice value="${order.totalprice }" />
		<input type="hidden" name="ordershipcost" value="${order.ordershipcost }" />
		<input type="hidden" name="chArr" id="chk" value="${chArr }" />
	</form>
	
    <!--================End Checkout Area =================-->

    <%@ include file="/WEB-INF/views/include/footer.jsp" %>