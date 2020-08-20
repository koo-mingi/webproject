<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

    <!-- Breadcrumb Begin -->
    <section class="breadcrumb-option set-bg" data-setbg="/resources/img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h2>Community</h2>
                        <div class="breadcrumb__widget">
                            <a href="/">Home</a>
                            <span>Community</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb End -->

    <!-- Blog Section Begin -->
    <section class="blog spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 order-lg-1 order-2">
                    <div class="blog__sidebar">
                        <div class="blog__sidebar__categories">
                            <h4>Categories</h4>
                            <ul>
                                <li><a href="#">전체보기</a></li>
                                <li><a href="#">후기 (5)</a></li>
                                <li><a href="#">일지 (20)</a></li>
                                <li><a href="#">레시피 (9)</a></li>
                                <li><a href="#">고민&질문 (10)</a></li>
                            </ul>
                        </div>
                        <!-- <div class="blog__sidebar__recent">
                            <h4>Recent News</h4>
                            <div class="blog__recent__item">
                                <div class="blog__recent__item__pic">
                                    <img src="/resources/img/blog/br-1.jpg" alt="">
                                </div>
                                <div class="blog__recent__item__text">
                                    <h6>09 Kinds Of Vegetables Protect The Liver</h6>
                                    <span>MAR 05, 2019</span>
                                </div>
                            </div>
                            <div class="blog__recent__item">
                                <div class="blog__recent__item__pic">
                                    <img src="/resources/img/blog/br-2.jpg" alt="">
                                </div>
                                <div class="blog__recent__item__text">
                                    <h6>Tips You To Balance Nutrition Meal Day</h6>
                                    <span>MAR 05, 2019</span>
                                </div>
                            </div>
                            <div class="blog__recent__item">
                                <div class="blog__recent__item__pic">
                                    <img src="/resources/img/blog/br-3.jpg" alt="">
                                </div>
                                <div class="blog__recent__item__text">
                                    <h6>4 Principles Help You Lose Weight With Vegetables</h6>
                                    <span>MAR 05, 2019</span>
                                </div>
                            </div>
                        </div> -->
                        <br><br><br>
                        <div class="blog__sidebar__search">
                            <form action="#">
                                <input type="text" placeholder="Search">
                                <button><span class="icon_search"></span></button>
                            </form>
                        </div>
                        <div class="blog__sidebar__tags">
                            <h4>Search By Tags</h4>
                            <a href="#">몸무게</a>
                            <a href="#">헬스</a>
                            <a href="#">홈트</a>
                            <a href="#">과일</a>
                            <a href="#">건강</a>
                            <a href="#">습관</a>
                            <a href="#">식단</a>
                        </div>
                        <!-- <div class="blog__sidebar__comment">
                            <h4>Comment</h4>
                            <div class="classes__sidebar__comment">
                                <div class="classes__sidebar__comment__pic">
                                    <img src="/resources/img/classes-details/comment-1.png" alt="">
                                    <div class="classes__sidebar__comment__rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-half-o"></i>
                                    </div>
                                </div>
                                <div class="classes__sidebar__comment__text">
                                    <span>04 Mar 2018</span>
                                    <h6>Brandon Kelley</h6>
                                    <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur,
                                        adipisci velit,</p>
                                </div>
                            </div>
                            <div class="classes__sidebar__comment">
                                <div class="classes__sidebar__comment__pic">
                                    <img src="/resources/img/classes-details/comment-2.png" alt="">
                                    <div class="classes__sidebar__comment__rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-half-o"></i>
                                    </div>
                                </div>
                                <div class="classes__sidebar__comment__text">
                                    <span>04 Mar 2018</span>
                                    <h6>Christina Kelley</h6>
                                    <p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet,</p>
                                </div>
                            </div>
                        </div> -->
                    </div>
                </div>
                <div class="col-lg-8 order-lg-2 order-1">
                    <div class="row">
                    	<c:forEach var="vo" items="${list}">
	                   		<div class="col-lg-6 col-sm-6">
	                            <div class="blog__item">
	                                <div class="blog__item__pic">
	                                    <img src="/resources/img/blog/blog-1.jpg" alt="">
	                                </div>
	                                <div class="blog__item__text">
	                                    <ul>
	                                        <li><i class="fa fa-calendar-o"></i><fmt:formatDate pattern="M dd,yyyy" value="${vo.regdate}" /></li>
	                                        <li style="text-align: right;"><i class="fa fa-comment-o"></i>${vo.replycnt}</li>
	                                    </ul>
	                                    <h5><a href="<c:out value='${vo.bno}'/>" id="move">${vo.title}</a></h5>
	                                    <p>${vo.content}</p>
	                                    <a href="<c:out value='${vo.bno}'/>" id="move" class="blog_read_more">READ MORE <span class="arrow_right"></span></a>
	                                </div>
	                            </div>
	                        </div>
                    	</c:forEach>
                        <!-- <div class="col-lg-6 col-sm-6">
                            <div class="blog__item">
                                <div class="blog__item__pic">
                                    <img src="/resources/img/blog/blog-1.jpg" alt="">
                                </div>
                                <div class="blog__item__text">
                                    <ul>
                                        <li><i class="fa fa-calendar-o"></i> May 4, 2019</li>
                                        <li><i class="fa fa-comment-o"></i> 5</li>
                                    </ul>
                                    <h5><a href="#">6 ways to prepare breakfast for 30</a></h5>
                                    <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam
                                        quaerat </p>
                                    <a href="#" class="blog_read_more">READ MORE <span class="arrow_right"></span></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6">
                            <div class="blog__item">
                                <div class="blog__item__pic">
                                    <img src="/resources/img/blog/blog-2.jpg" alt="">
                                </div>
                                <div class="blog__item__text">
                                    <ul>
                                        <li><i class="fa fa-calendar-o"></i> May 4, 2019</li>
                                        <li><i class="fa fa-comment-o"></i> 5</li>
                                    </ul>
                                    <h5><a href="#">You can keep fit at university</a></h5>
                                    <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam
                                        quaerat </p>
                                    <a href="#" class="blog_read_more">READ MORE <span class="arrow_right"></span></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6">
                            <div class="blog__item">
                                <div class="blog__item__pic">
                                    <img src="/resources/img/blog/blog-3.jpg" alt="">
                                </div>
                                <div class="blog__item__text">
                                    <ul>
                                        <li><i class="fa fa-calendar-o"></i> May 4, 2019</li>
                                        <li><i class="fa fa-comment-o"></i> 5</li>
                                    </ul>
                                    <h5><a href="#">6 reasons to get rebounding</a></h5>
                                    <p>Rebounding is fast becoming the low impact, high-intensity workout of choice for
                                        those looking</p>
                                    <a href="#" class="blog_read_more">READ MORE <span class="arrow_right"></span></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6">
                            <div class="blog__item">
                                <div class="blog__item__pic">
                                    <img src="/resources/img/blog/blog-4.jpg" alt="">
                                </div>
                                <div class="blog__item__text">
                                    <ul>
                                        <li><i class="fa fa-calendar-o"></i> May 4, 2019</li>
                                        <li><i class="fa fa-comment-o"></i> 5</li>
                                    </ul>
                                    <h5><a href="#">Cooking tips make cooking simple</a></h5>
                                    <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam
                                        quaerat </p>
                                    <a href="#" class="blog_read_more">READ MORE <span class="arrow_right"></span></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6">
                            <div class="blog__item">
                                <div class="blog__item__pic">
                                    <img src="/resources/img/blog/blog-5.jpg" alt="">
                                </div>
                                <div class="blog__item__text">
                                    <ul>
                                        <li><i class="fa fa-calendar-o"></i> May 4, 2019</li>
                                        <li><i class="fa fa-comment-o"></i> 5</li>
                                    </ul>
                                    <h5><a href="#">optimise your muscle gains</a></h5>
                                    <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam
                                        quaerat </p>
                                    <a href="#" class="blog_read_more">READ MORE <span class="arrow_right"></span></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6">
                            <div class="blog__item">
                                <div class="blog__item__pic">
                                    <img src="/resources/img/blog/blog-6.jpg" alt="">
                                </div>
                                <div class="blog__item__text">
                                    <ul>
                                        <li><i class="fa fa-calendar-o"></i> May 4, 2019</li>
                                        <li><i class="fa fa-comment-o"></i> 5</li>
                                    </ul>
                                    <h5><a href="#">Cooking tips make cooking simple</a></h5>
                                    <p>Sed quia non numquam modi tempora indunt ut labore et dolore magnam aliquam
                                        quaerat </p>
                                    <a href="#" class="blog_read_more">READ MORE <span class="arrow_right"></span></a>
                                </div>
                            </div>
                        </div> -->
                        <div class="col-lg-12">
                            <div class="classes__pagination blog__pagination">
                                <a href="#">1</a>
                                <a href="#">2</a>
                                <a href="#">3</a>
                                <a href="#">4</a>
                                <a href="#">5</a>
                                <a href="#"><span class="arrow_carrot-right"></span></a>
                       			<button id='regBtn' type='button' class='btn pull-right btn-warning' onclick="location.href='communityWrite'">글쓰기</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Section End -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
$(function(){
	// 타이틀 클릭 시 페이지 나누기 정보가 있는 폼 보내기
	$("#move").click(function(e){
		// 36번 줄에 
		// <a href="read?bno=${vo.bno}"$pageNum=${cri.pageNum}&amount=${cri.amount}">${vo.title}</a> 에러 조심
		// 이렇게 작성하는 부분 대체
		e.preventDefault();
		actionForm.append("<input type='hidden' name='bno' value='"+$(this).attr("href")+"' />");
		actionForm.attr('action','communityRead');
		actionForm.submit();
	})
})
</script>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>