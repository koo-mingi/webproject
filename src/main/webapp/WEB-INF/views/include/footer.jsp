<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
	
	<!-- 상점 스크립트 -->
	<script>
    let shopActionForm = $("#shopActionForm"); // 상점의 페이지와 관련된 폼
	
    let shopAmount1 = $(".shop-amount1"); // 상점 페이지 내 개시물 개수 상단옵션
    let shopAmount2 = $(".shop-amount2"); // 상점 페이지 내 개시물 개수 하단옵션
    let shopCategory = $(".shop-category"); // 상점 페이지 내 카테고리 옵션 버튼
    
    //----- Page Amount --------//
    
    shopAmount1.change(function(){
		shopActionForm.find("input[name='amount']").val($(this).val());
		shopActionForm.find("input[name='pageNum']").val("1");
		shopActionForm.submit();
	})
    
    shopAmount2.change(function(){
    		shopActionForm.find("input[name='amount']").val($(this).val());
    		shopActionForm.find("input[name='pageNum']").val("1");
    		shopActionForm.submit();
    })
    
    //----- Page move -------//
    
    $(".pagination_button1").click(function(e){ // 상단 페이지 버튼
    	e.preventDefault();
		shopActionForm.find("input[name='pageNum']").val($(this).attr("href"));
		shopActionForm.submit();
    })
    
        $(".pagination_button2").click(function(e){ // 상단 페이지 버튼
    	e.preventDefault();
		shopActionForm.find("input[name='pageNum']").val($(this).attr("href"));
		shopActionForm.submit();
    })
    
    //----- Page category -----//
    
    shopCategory.change(function(){
    	shopActionForm.find("input[name='type']").val($(this).val());
    	shopActionForm.submit();
    })
    
	</script>
</body>
</html>

