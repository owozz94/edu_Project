<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<form method="post" action="/goJoin">
	<div class="centerPostOut">
	<p>ȸ������</p>
		<div class="PostInBox">
			<div class="joinInBoxBottom">
				<div class="joinForm">
					<span>���̵�</span>
				  	<input type="text" maxlength="15" name="mi_id" class="form-control" id="exampleFormControlInput1">
				</div>
				<div class="joinForm">
					<span>��й�ȣ</span>
				  	<input type="password" maxlength="25" name="mi_pw" class="form-control" id="exampleFormControlInput1">
				</div>
				<div class="joinForm">
					<span>��й�ȣ ��Ȯ��</span>
			  		<input type="password" maxlength="25" name="password_2" class="form-control" id="exampleFormControlInput1">
				</div>
					<div class="joinForm">
						<span>�̸�</span>
				  		<input type="text" name="mi_name" maxlength="10" class="form-control" id="exampleFormControlInput1">
					</div>
				<div class="joinForm">
					<span>�̸���</span>
			  		<input type="email" name="mi_email" class="form-control" id="exampleFormControlInput1">
				</div>
				<div class="joinForm">
					<span>�޴���ȭ</span>
			  		<input type="text" name="mi_mobile" maxlength="15" class="form-control" id="exampleFormControlInput1">
				</div>
				<div class="joinForm">
					<span>�ּ�</span>
			  		<input type="text" name="mi_addr" maxlength="100" class="form-control" id="exampleFormControlInput1">
				</div>
				<div class="joinbtn">
					 <input type="submit" class="btn btn-primary" value="�����ϱ�">
				</div>
			</div>
		</div>
	</div>
</form>