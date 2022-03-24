<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="/ErrorPage.jsp" %>
<form method="post" action="/goLogin">
<div class="centerPostOut">
	<div class="LoginBox">
	<p>로그인</p>
		<div class ="loginForm">
			<div class="inputID">
				<input class="form-control" name="mi_id" type="text" placeholder="아이디" aria-label="default input example">
			</div>
			<div class="inputPassword">
				<input class="form-control" type="password" name="mi_pw" placeholder="비밀번호" aria-label="default input example">
			</div>
			<div class="loginBtn">
				<input type="submit" class="btn btn-primary" width="500" value="로그인">
			</div>
			<div class="loginJoiinURL"> 
				<span>회원이 아니신가요?</span>
				<a href="/join" style="text-decoration: none;">
				<span>가입하기</span></a>
			</div>
		</div>
	</div>
</div>
</form>
