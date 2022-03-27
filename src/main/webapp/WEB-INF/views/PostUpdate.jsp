<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="/ErrorPage.jsp" %>
<form action="/goPostUpdate" method="post">
	<div class="centerPostOut" >
		<div class="PostInBox">
			<div class="writeBoxBottom">
				<div class="selectBottomBox">
					<div class="writeTitle" >
						<span>제목</span>
						<input type="text" name="post_title" class="form-control" id="exampleFormControlInput1" value="${p.post_title}" >
					</div>
					<div class="WriteContent">
						<span>내용</span>
						<input type="text" name="post_content" value="${p.post_content}">
					</div>
				</div>
				<div class="writeBtn">
					<div class="select">
						<input type="submit"  class="btn btn-primary" value="수정하기">
						<input type="hidden" name="mi_id" class="updateInput" value="${p.mi_id}" >
						<input type="hidden" name="post_num" class="updateInput" value="${p.post_num}" >
						
					</div>
				</div>
			</div>
		</div>
	</div>	
</form>