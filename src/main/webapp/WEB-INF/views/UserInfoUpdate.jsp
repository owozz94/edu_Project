<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<form method="post" action="/goUserInfoUpdate"> 
<div class="centerPostOut">
<p>ȸ�� ����</p>
	<div class=UserOutBox>
		<div class=UserInBox>
			<div class="updateUserForm">
				<span>���̵� : ${loginMember.mi_id}</span>
				<input type="hidden" name="mi_id"  value="${loginMember.mi_id}" >
			</div>
			<div>
				<span class="updateUserForm">�̸�  
				<input type="text" name="mi_name" value="${loginMember.mi_name}" ></span>
			</div>
			<div>
				<span class="updateUserForm">�̸���  
				<input type="text" name="mi_email" value="${loginMember.mi_email}" class="updateUserInput"></span>
			</div>
			<div>
				<span class="updateUserForm">�ڵ��� ��ȣ  
				<input type="text" name="mi_mobile" value="${loginMember.mi_mobile}" class="updateUserInput"></span>
			</div>
			<div>
				<span class="updateUserForm">�ּ�
				<input type="text" name="mi_addr" value="${loginMember.mi_addr}" class="updateUserInput"></span>
			</div>
			<div class="updateUserForm">
				<span>���� ��¥ : ${loginMember.mi_insdate}</span>
				<input type="hidden" name="mi_insdate" class="updateUserInput" value="${loginMember.mi_insdate}" >
			</div>
			<div class="userInfoBtn">
		 	<input type="submit" class="btn btn-primary" value="�����ϱ�">
			</div>
		</div>
	</div>
</div>
</form>