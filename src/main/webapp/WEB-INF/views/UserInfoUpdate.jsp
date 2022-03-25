<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<form method="post" action="/goUserInfoUpdate"> 
<div class="centerPostOut">
<p>회원 정보</p>
	<div class=UserOutBox>
		<div class=UserInBox>
			<div class="updateUserForm">
				<span>아이디 : ${loginMember.mi_id}</span>
				<input type="hidden" name="mi_id"  value="${loginMember.mi_id}" >
			</div>
			<div>
				<span class="updateUserForm">이름  
				<input type="text" name="mi_name" value="${loginMember.mi_name}" ></span>
			</div>
			<div>
				<span class="updateUserForm">이메일  
				<input type="text" name="mi_email" value="${loginMember.mi_email}" class="updateUserInput"></span>
			</div>
			<div>
				<span class="updateUserForm">핸드폰 번호  
				<input type="text" name="mi_mobile" value="${loginMember.mi_mobile}" class="updateUserInput"></span>
			</div>
			<div>
				<span class="updateUserForm">주소
				<input type="text" name="mi_addr" value="${loginMember.mi_addr}" class="updateUserInput"></span>
			</div>
			<div class="updateUserForm">
				<span>가입 날짜 : ${loginMember.mi_insdate}</span>
				<input type="hidden" name="mi_insdate" class="updateUserInput" value="${loginMember.mi_insdate}" >
			</div>
			<div class="userInfoBtn">
		 	<input type="submit" class="btn btn-primary" value="수정하기">
			</div>
		</div>
	</div>
</div>
</form>