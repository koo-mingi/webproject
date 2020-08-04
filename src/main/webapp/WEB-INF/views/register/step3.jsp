<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/views/include/header.jsp" %>

<!-- Upcoming Classes Section Begin -->
    <section class="upcoming-classes top-classes spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title normal-title">
                        <h2>${vo.userid } 님!</h2>                        
                        <h3>회원 가입을 축하합니다.</h3>
                        <a href="/member/login" class="genric-btn info radius">로그인해주세요!</a>
                    </div>
                </div>
            </div>            
        </div>
    </section>
    <!-- Upcoming Classes Section End -->


<%@ include file="/WEB-INF/views/include/footer.jsp" %>
