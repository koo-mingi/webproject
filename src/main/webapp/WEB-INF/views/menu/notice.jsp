<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<section>
<%-- <section class="content">
	<div class="box box-primary">
		<div class="box-header">
			<h3 class="box-title">List Board</h3>
		</div>
	</div>
	<table class="table table-bordered">
		<tr>
			<th class='text-center' style='width:100px'>번호</th>
			<th class='text-center'>제목</th>
			<th class='text-center'>작성자</th>
			<th class='text-center'>날짜</th>
			<th class='text-center' style='width:100px'>조회수</th>
		</tr>
		<c:forEach var="vo" items="${list}"> 
		c:forEach : JSTL /  ${list} : EL
		<tr><!-- 리스트 목록 보여주기 -->
			<td class='text-center'>${vo.bno}</td><!--번호-->
			<td>
				<c:if test="${vo.re_lev!=0}">
					<c:forEach begin = "0" end ="${vo.re_lev*1}">
						&nbsp; <!-- 스페이스바 -->
					</c:forEach>
				</c:if>
				<a href="hitupdate.do?bno=${vo.bno}&page=${pageVO.search.page}&criteria=${pageVO.search.criteria}&keyword=${pageVO.search.keyword}">${vo.title}</a>
			</td><!--제목-->
			<td class='text-center'>${vo.name}</td><!--작성자-->
			<td class='text-center'>${vo.regdate}</td><!--날짜-->
			<td class='text-center'>
			<span class="badge badge-pill badge-primary">${vo.readcount}</span></td>
		</tr>		
		</c:forEach>
	</table> --%>
<!-- 	<table class="table">
	  <thead>
	    <tr>
	      <th scope="col">#</th>
	      <th scope="col">First</th>
	      <th scope="col">Last</th>
	      <th scope="col">Handle</th>
	    </tr>
	  </thead>
	  <tbody>
	    <tr>
	      <th scope="row">1</th>
	      <td>Mark</td>
	      <td>Otto</td>
	      <td>@mdo</td>
	    </tr>
	    <tr>
	      <th scope="row">2</th>
	      <td>Jacob</td>
	      <td>Thornton</td>
	      <td>@fat</td>
	    </tr>
	    <tr>
	      <th scope="row">3</th>
	      <td>Larry</td>
	      <td>the Bird</td>
	      <td>@twitter</td>
	    </tr>
	  </tbody>
	</table> -->
</section>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>