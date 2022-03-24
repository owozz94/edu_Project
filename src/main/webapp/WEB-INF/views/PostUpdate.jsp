<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="/ErrorPage.jsp" %>
<form action="FileProc" method="post" enctype="multipart/form-data">
	<div class="PostOutBox" >
		<div class="PostInBox">
			<div class="writeBoxBottom">
				<div class="writeBtn">
					<div class="select">
						<input type="hidden" name="option" value="update">
						<input type="submit"  class="btn btn-primary" value="발행">
						<select class="form-select" name="location" aria-label="Default select example">
							<option value="서울">서울</option>
							<option value="경기">경기</option>
							<option value="충청">충청</option>
							<option value="대구">대구</option>
							<option value="경북">경북</option>
							<option value="부산">부산</option>
							<option value="경남">경남</option>
							<option value="전라">전라</option>
							<option value="제주">제주</option>
						</select>
					</div>
				</div>
				<div class="selectBottomBox">
					<div class="writeTitle" >
						<span>제목</span>
						<input type="text" name="title" class="form-control" id="exampleFormControlInput1" value="${BlogBean.title }">
					</div>
					<div class="WriteContent">
						<span>내용</span>
						<textarea class="form-control" placeholder="내용" rows="23" name="content">
							${BlogBean.content }
						</textarea>
					</div>
				</div>
			</div>
		</div>
	</div>	
</form>