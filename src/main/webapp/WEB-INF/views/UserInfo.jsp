<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<div class="centerPostOut">
<p>ȸ�� ����</p>
		<div class="UserInfoOutBox">
			<div class="joinInBoxBottom">
				<div class="userForm">
					<span>���̵� : ${loginMember.mi_id}</span>
				</div>
				<div class="userForm">
					<span>�̸� : ${loginMember.mi_name}</span>
				</div>
				<div class="userForm">
					<span>�̸��� : ${loginMember.mi_email}</span>
				</div>
				<div class="userForm">
					<span>�ڵ��� ��ȣ : ${loginMember.mi_mobile}</span>
				</div>
				<div class="userForm">
					<span>�ּ� : ${loginMember.mi_addr}</span>
				</div>
				<div class="userForm">
					<span>���� ��¥ : ${loginMember.mi_insdate}</span>
				</div>
				<div class="userInfoBtn">
				<button class="btn btn-primary"  onclick="location.href='/userInfoUpdate'">�����ϱ�</button>
				<form action="/goUserDelete" method="post" class="userInfoFormTag">
					<input type="submit"  class="btn btn-primary" value="Ż���ϱ�">
					<input type="hidden" name="mi_id" class="updateInput" value="${loginMember.mi_id}" >
				</form>
					
				</div>
		</div>
	</div>
</div>
