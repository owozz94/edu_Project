<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<div class="centerPostOut">
<p>회원 정보</p>
		<div class="UserInfoOutBox">
			<div class="joinInBoxBottom">
				<div class="userForm">
					<span>아이디 : ${loginMember.mi_id}</span>
				</div>
				<div class="userForm">
					<span>이름 : ${loginMember.mi_name}</span>
				</div>
				<div class="userForm">
					<span>이메일 : ${loginMember.mi_email}</span>
				</div>
				<div class="userForm">
					<span>핸드폰 번호 : ${loginMember.mi_mobile}</span>
				</div>
				<div class="userForm">
					<span>주소 : ${loginMember.mi_addr}</span>
				</div>
				<div class="userForm">
					<span>가입 날짜 : ${loginMember.mi_insdate}</span>
				</div>
				<div class="userInfoBtn">
				<button class="btn btn-primary"  onclick="location.href='/userInfoUpdate'">수정하기</button>
				<form action="/goUserDelete" method="post" class="userInfoFormTag">
					<input type="submit"  class="btn btn-primary" value="탈퇴하기">
					<input type="hidden" name="mi_id" class="updateInput" value="${loginMember.mi_id}" >
				</form>
					
				</div>
		</div>
	</div>
</div>
