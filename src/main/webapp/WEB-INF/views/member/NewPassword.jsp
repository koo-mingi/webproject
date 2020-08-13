<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<form id="pwForm" action="update_pw" method="post">
	<div class="card"  style="width: 40rem;margin:40px auto;">	
		<div class="card-header">
			<h4>임시 비밀번호 변경</h4>			
		</div>
		<div class="card-body">	
			<div class="form-group row justify-content-center">		
				<div class="col-sm-10">	
					<input type="text" name="userid" id="userid" class="form-control" value="${auth.userid }" readonly/>
			 		<small id="userid" class="text-info"></small>		
				</div>
			</div>
			<div class="form-group row justify-content-center">
				<div class="col-sm-10">	
					<input type="password" name="password" id = "password" class="form-control" placeholder="비밀번호" autofocus="autofocus"/>
					<small id="current_password" class="text-info"></small>
				</div>	
			</div>
			<div class="form-group row justify-content-center">
				<div class="col-sm-10">	
					<input type="password" name="new_password" id="new_password" class="form-control" placeholder="새비밀번호" autofocus="autofocus"/>
					<small id="new_password" class="text-info"></small>
				</div>	
			</div>
			<div class="form-group row justify-content-center">
				<div class="col-sm-10">	
					<input type="password" name="pw2" id = "pw2" class="form-control" placeholder="새비밀번호 재입력" autofocus="autofocus"/>
					<small id="new_confirm_password" class="text-info"></small>
				</div>	
			</div>			
			<div class="form-group text-center">
				<button type="submit" id="joinBtn" class="btn btn-primary">비밀번호 변경</button>				
			</div>			
		</div>
	</div>				
</form>
<script>
	$(function(){
		if(${msg ne null}){
			alert('${msg}');
		};
		
		if($("#pwForm").submit(function(){
			if($("#pw").val() !== $("#pw2").val()){
				alert("비밀번호가 다릅니다.");
				$("#pw").val("").focus();
				$("#pw2").val("");
				return false;
			}else if ($("#pw").val().length < 8) {
				alert("비밀번호는 소문자,특수문자 포함 10자 이상으로 설정해야 합니다.");
				$("#pw").val("").focus();
				return false;
			}else if($.trim($("#pw").val()) !== $("#pw").val()){
				alert("공백은 입력이 불가능합니다.");
				return false;
			}
		}));
	})
</script>