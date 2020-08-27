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
                        <form class="row contact_form order-form" name="contact_form" action="#" method="post">
                            <div class="col-md-6 form-group p_star">
                                <input type="text" class="form-control" id="name" name="name" placeholder="받는 분 이름"  value="${member.name }" required="required">
                                <span class="placeholder" data-placeholder="이름"></span>
                            </div>
                            <div class="col-md-6 form-group p_star">
                                <input type="text" class="form-control" id="phone" name="phone" placeholder="받는 분 휴대전화" value="${member.phone }" required="required">
                                <span class="placeholder" data-placeholder="휴대전화"></span>
                            </div>
                            <div class="col-md-12 form-group p_star">
                                <input type="text" class="form-control" id="email" name="email" placeholder="받는 분 Email 주소" value="${member.email }" required="required">
                                <span class="placeholder" data-placeholder="Email 주소"></span>
                            </div>
                            <div class="col-md-6 form-group p_star">
                                <input type="hidden" class="form-control" id="confmKey" name="confmKey" >
							  	<input type="text" class="form-control" id="zipNo" name="zipNo" readonly placeholder="우편 번호" required="required">
                                <span class="placeholder" data-placeholder="우편 번호"></span>
                            </div>
                            <div class="col-md-6 form-group p_star">
						      	<input type="button" class="form-control genric-btn info radius" value="주소검색" onclick="goPopup();">
                            </div>
                            <div class="col-md-12 form-group p_star">
								<input type="text" class="form-control" id="roadAddrPart1" name="roadAddrPart1" placeholder="도로명 주소" required="required">
								<span class="placeholder" data-placeholder="도로명 주소"></span>
                            </div>
                            <div class="col-md-12 form-group p_star">
                               	<input type="text" class="form-control" id="addrDetail" name="addrDetail" placeholder="상세 주소1" required="required">
                                <span class="placeholder" data-placeholder="상세 주소1"></span>
                            </div>
                            <div class="col-md-12 form-group p_star">
								<input type="text" class="form-control" id="roadAddrPart2" name="roadAddrPart2" placeholder="상세 주소2" required="required">
                                <span class="placeholder" data-placeholder="상세 주소2"></span>
                            </div>
                            <div class="col-md-6 form-group p_star">
						      	<input type="button" class="form-control genric-btn info radius addr-btn" value="배송지목록에 추가" >
                            </div>
							 <div class="col-md-6 form-group p_star">
						      	<input type="button" class="form-control genric-btn info radius addrList-btn" value="배송지목록 가져오기" >
                            </div>
                            <div class="col-md-12 form-group p_star" id="addrMainTitle" style="display: none;">
						      	<h3>배송지 목록에 추가하기</h3>
                            </div>
                            <div class="col-md-6 form-group p_star" id="addrTitle" style="display: none;">
						      	<input type="text" class="form-control" id="shiptitle" name="shiptitle" placeholder="배송지 제목">
                                <span class="placeholder" data-placeholder="배송지 제목 "></span>
                            </div>
                            <div class="col-md-4 form-group p_star" id="addrTitleAdd" style="display: none;">
						      	<input type="button" class="form-control genric-btn info radius addrTitleAdd" value="추가" >
                            </div>   
                            <div class="col-md-12 form-group p_star" id="addrList" style="display: block;">
        						<h3>배송지 목록</h3>
								<ul class="addrList">
									
								</ul>
								<div class="col-md-4 form-group p_star">
						      		<input type="button" class="form-control genric-btn info radius addrListSelect-btn" value="선택" >
                            	</div> 
                            </div>

                            <div class="col-md-12 form-group">
                                <div class="creat_account">
                                    <h3>Shipping Details</h3>
                                    <input type="checkbox" id="f-option3" name="selector">
                                    <label for="f-option3">Ship to a different address?</label>
                                </div>
                                <textarea class="form-control" name="message" id="message" rows="1" placeholder="Order Notes"></textarea>
                            </div>
                            <input type="hidden" name=payment value="" />
                            <input type="hidden" name=totalprice value="${order.totalprice }" />
							<input type="hidden" name="ordershipcost" value="${order.ordershipcost }" />
							<input type="hidden" name="chArr" id="chk" value="${chArr }" />
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
                                    <input type="radio" id="f-option5" name="payMethod" value="카드결제" checked="checked">
                                    <label for="f-option5">카드결제</label>
                                    <div class="check"></div>
                                </div>
                                <p>Please send a check to Store Name, Store Street, Store Town, Store State / County,
                                    Store Postcode.</p>
                            </div>
                            <div class="payment_item active">
                                <div class="radion_btn">
                                    <input type="radio" id="f-option6" name="payMethod" value="페이팔">
                                    <label for="f-option6">페이팔</label>
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
                            <a class="primary-btn pay-btn" href="#">결제 진행</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!--================End Checkout Area =================-->
	
	<script language="javascript">
		// opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("팝업API 호출 소스"도 동일하게 적용시켜야 합니다.)
		//document.domain = "abc.go.kr";
		
		function goPopup(){
			// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
		    var pop = window.open("/shop/jusoPopup","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
		    
			// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
		    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
		}
		/** API 서비스 제공항목 확대 (2017.02) **/
		function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn
								, detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo){
			// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
			document.contact_form.roadAddrPart1.value = roadAddrPart1; // name에 지정된 변수로 받음.
			document.contact_form.roadAddrPart2.value = roadAddrPart2;
			document.contact_form.addrDetail.value = addrDetail;
			document.contact_form.zipNo.value = zipNo;
		}
	</script>
	<script>	
		$(function(){
			
			showAddrList();
			
			// 배송지 추가 버튼 클릭
			$(".addr-btn").click(function(){
				addDisplay();
			})
			
			// 배송지 목록 버튼 클릭
			$(".addrList-btn").click(function(){
				addDisplay2();
			})
			
			// 배송지 추가 영역 보이기/숨기기
			function addDisplay(){
				let addrTitle = document.getElementById("addrTitle");
				let addrTitleAdd = document.getElementById("addrTitleAdd");
				let addrMainTitle = document.getElementById("addrMainTitle");
				console.log(addrTitle);
				console.log(addrTitleAdd);
				
				if(addrTitle.style.display == 'none'){
					addrTitle.style.display = 'block';
				}else{
					addrTitle.style.display = 'none';
				}
				
				if(addrTitleAdd.style.display == 'none'){
					addrTitleAdd.style.display = 'block';
				}else{
					addrTitleAdd.style.display = 'none';
				}
				
				if(addrMainTitle.style.display == 'none'){
					addrMainTitle.style.display = 'block';
				}else{
					addrMainTitle.style.display = 'none';
				}
			}
			
			// 배송지 목록 영역 보이기/숨기기
			function addDisplay2(){
				let addrList = document.getElementById("addrList");
				showAddrList();
				
				if(addrList.style.display == 'none'){
					addrList.style.display = 'block';
				}else{
					addrList.style.display = 'none';
				}
			}
			
			
			// 배송지 정보 삽입하기
			let zipNo = $("#zipNo");
			let shiptitle = $("#shiptitle");
			let roadAddrPart1 = $("#roadAddrPart1");
			let addrDetail = $("#addrDetail");
			let roadAddrPart2 = $("#roadAddrPart2");
			
			$(".addrTitleAdd").click(function(){
				
				console.log(zipNo.val());
				$.ajax({
					url:'/shop/ship',
					type:'post',
					data:{
						zipNo:zipNo.val(),
						shiptitle:shiptitle.val(),
						roadAddrPart1:roadAddrPart1.val(),
						addrDetail:addrDetail.val(),
						roadAddrPart2:roadAddrPart2.val()
					},
					success:function(data){
						alert("배송지가 추가되었습니다.");
						shiptitle.html('');
						addDisplay();
						showAddrList();
					},
					error:function(xhr,status,err){
						if(xhr.responseText=="NewestShip"){
							alert("최신배송지가 이미 존재합니다.");
						}else{
							alert("배송지 추가에 실패했습니다.");
						}
						
					}
				})
			})// 배송지 목록 추가 끝
			
			
			// 배송지 목록 보여주기
			function showAddrList(){
				let addrList = $(".addrList"); // 배송지 목록 영역
				
				$.ajax({
					url:'/shop/ship',
					type:'get',
					success:function(list){

						if(list == null || list.length === 0){
							addrList.html("");
							return;
						}
						
						let str = "";
						let len = list.length || 0;
						
						for(var i = 0;i<len;i++){
							str += '<li class="filter-list"><input class="pixel-radio" type="radio" id="'+list[i].shipid+'" name="addrList" value="'+list[i].shipid+'"><label for="black">'+list[i].shiptitle+'</label></li>';
						}
						addrList.html(str);
					},
					error:function(xhr,status,err){
						alert("배송지 목록 불러오기에 실패했습니다.");
					}
				})
			}// 배송지 목록 보여주기 끝
			
			// 선택한 배송지 보여주기
			$(".addrListSelect-btn").click(function(){
				let shipid = $("input[name='addrList']:checked").val();
				$.ajax({
					url:'/shop/ship/'+shipid,
					type:'get',
					success:function(data){
						zipNo.val(data.zipNo);
						roadAddrPart1.val(data.roadAddrPart1);
						addrDetail.val(data.addrDetail);
						roadAddrPart2.val(data.roadAddrPart2);
						addDisplay2();
					},
					error:function(xhr,status,err){
						alert("배송지 목록 불러오기에 실패했습니다.");
					}
				})
			})// 선택한 배송지 보여주기 끝
			
			let name = $("#name");
			let phone = $("#phone");
			let email = $("#email");
			
			// 결제 진행 버튼 클릭
			$(".pay-btn").click(function(e){
				e.preventDefault();
				
				// 정보 칸이 비였는지 확인하기
				if(name.val() == ''){
					alert("이름 칸이 비였습니다.");
					return;
				}
				if(phone.val() == ''){
					alert("휴대번호 칸이 비였습니다.");
					return;
				}
				if(email.val() == ''){
					alert("이메일 칸이 비였습니다.");
					return;
				}
				if(zipNo.val() == '' || roadAddrPart1.val() == '' || addrDetail.val() == '' || roadAddrPart2.val() == ''){
					alert("주소 칸이 비였습니다.");
					return;
				}
				
				// 
				console.log($("#chk").val());
				let cartidList = ${chArr};
				console.log(cartidList);
				$("#chk").val(cartidList);
				console.log($("#chk").val());

				
				$("input[name='payment']").val($("input[name='payMethod']:checked").val());
				let orderForm = $(".order-form");
				orderForm.attr("action","/shop/order");
				orderForm.submit();
				
			})
			
			
		})
	</script>
	
    <%@ include file="/WEB-INF/views/include/footer.jsp" %>