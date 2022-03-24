<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<form method="post" action="/goJoin">
	<div class="centerPostOut">
	<p>회원가입</p>
		<div class="PostInBox">
			<div class="joinInBoxBottom">
				<div class="joinForm">
					<span>아이디</span>
				  	<input type="text" maxlength="15" name="mi_id" class="form-control" id="exampleFormControlInput1">
				</div>
				<div class="joinForm">
					<span>비밀번호</span>
				  	<input type="password" maxlength="25" name="mi_pw" class="form-control" id="exampleFormControlInput1">
				</div>
				<div class="joinForm">
					<span>비밀번호 재확인</span>
			  		<input type="password" maxlength="25" name="password_2" class="form-control" id="exampleFormControlInput1">
				</div>
					<div class="joinForm">
						<span>이름</span>
				  		<input type="text" name="mi_name" maxlength="10" class="form-control" id="exampleFormControlInput1">
					</div>
				<div class="joinForm">
					<span>이메일</span>
			  		<input type="email" name="mi_email" class="form-control" id="exampleFormControlInput1">
				</div>
				<div class="joinForm">
					<span>휴대전화</span>
			  		<input type="text" name="mi_mobile" maxlength="15" class="form-control" id="exampleFormControlInput1">
				</div>
				<div class="joinForm">
					<span>주소</span>
			  		<input type="text" name="mi_addr" maxlength="100" class="form-control" id="exampleFormControlInput1">
				</div>
				<div class="joinbtn">
					 <input type="submit" class="btn btn-primary" value="가입하기">
				</div>
			</div>
		</div>
	</div>
</form>