<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<section>
<div class="gap-area">
</div>
<div class="container">
   <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Board List</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <button id='regBtn' type='button' class='btn btn-xs pull-right btn-success' onclick="location.href='register'">Register New Board</button>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table class="table table-striped table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>번 호</th>
                                        <th>제 목</th>
                                        <th>작성자</th>
                                        <th>작성일</th>
                                        <th>수정일</th>
                                    </tr>
                                </thead>
								<!-- 게시판 리스트 반복문 -->
								<c:forEach var="vo" items="${list}">
									<tr>
										<td>${vo.bno}</td>
										<td><a href="<c:out value='${vo.bno}'/>" class="move">${vo.title}</a><strong>[${vo.replycnt}]</strong></td>
										<td>${vo.writer}</td>
										<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${vo.regdate}" /></td>
										<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${vo.updatedate}" /></td>
									</tr>
								</c:forEach>
                            </table>
							<div class="row"> <!-- start search -->
                            	<div class="col-md-12">
                            	   <div class="col-md-8"><!--search Form-->
                            	  	  <form action="" id="searchForm">
                            	  	  	 <input type="hidden" name="pageNum" value="${cri.pageNum}"/>
                            	  	  	 <input type="hidden" name="amount" value="${cri.amount}"/>
                            	  	  	 <select name="type" id="">
                            	  	  	 	<option value="" <c:out value="${empty cri.type?'selected':''}"/>>------</option>
                            	  	  	 	<option value="T" <c:out value="${cri.type=='T'?'selected':''}"/>>제목</option>
                            	  	  	 	<option value="C" <c:out value="${cri.type=='C'?'selected':''}"/>>내용</option>
                            	  	  	 	<option value="W" <c:out value="${cri.type=='W'?'selected':''}"/>>작성자</option>
                            	  	  	 	<option value="TC" <c:out value="${cri.type=='TC'?'selected':''}"/>>제목 or 내용</option>
                            	  	  	 	<option value="TW" <c:out value="${cri.type=='TW'?'selected':''}"/>>제목 or 작성자</option>
                            	  	  	 	<option value="TCW" <c:out value="${cri.type=='TCW'?'selected':''}"/>>제목 or 내용 or 작성자</option>
                            	  	  	 </select>
                            	  	  	 <input type="text" name="keyword" value="${cri.keyword}"/>
                            	  	  	 <button class="btn btn-default" type='button'>검색</button>
                            	  	  </form>
                            	   </div>
                            	   <div class="col-md-2 col-md-offset-2">
                            	   	<!--페이지 목록 갯수 지정하는 폼-->
                            	   	<select class="form-control" name="amount" id="amount">
                            	   		<option value="10" <c:out value="${cri.amount == 10?'selected':''}"/>>10</option>
                            	   		<option value="20" <c:out value="${cri.amount == 20?'selected':''}"/>>20</option>
                            	   		<option value="30" <c:out value="${cri.amount == 30?'selected':''}"/>>30</option>
                            	   		<option value="40" <c:out value="${cri.amount == 40?'selected':''}"/>>40</option>
                            	   	</select>
								  </div>
                             	 </div>                             	 
                      		 </div><!-- end search -->
                            <!-- start Pagination -->
                            <div class="text-center">
                            	<ul class="pagination">
                            	  <c:if test="${pageVO.prev}">
                            		<li class="paginate_button previous"><a href="${pageVO.startPage-1}">Previous</a></li>
                            	  </c:if>
                            	  <c:forEach var="idx" begin="${pageVO.startPage}" end="${pageVO.endPage}">
                            		<li class="paginate_button ${pageVO.cri.pageNum==idx?'active':''}"><a href="${idx}">${idx}</a></li>
                            	  </c:forEach>
                            	  <c:if test="${pageVO.next}">
                            		<li class="paginate_button next"><a href="${pageVO.endPage+1}">Next</a></li>
                            	  </c:if>
							</ul>
						</div>
                    <!-- end Pagination -->   
					</div>
                <!-- end panel-body -->
				</div>
            <!-- end panel -->
			</div>                   
		</div>   
	</div>
<div class="gap-area">
</div>
</section>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>