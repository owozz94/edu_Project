<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="/ErrorPage.jsp" %>
<form action="/goPostWrite" method="post">
	<div class="centerPostOut" >
		<div class="PostInBox">
			<div class="writeBoxBottom">
				<div class="selectBottomBox">
					<div class="writeTitle" >
						<span>제목</span>
						<input type="text" name="post_title" class="form-control" id="exampleFormControlInput1" placeholder="제목">
					</div>
					<div class="WriteContent">
						<span>내용</span>
						<textarea class="form-control" placeholder="내용" rows="23" name="post_content"></textarea>
					</div>
				</div>
				<div class="writeBtn">
					<div class="select">
						<input type="submit"  class="btn btn-primary" value="발행">
						<input type="hidden" name="mi_id" class="updateInput" value="${loginMember.mi_id}" >
						<input type="hidden" name="post_num" class="updateInput" value="2" >
						<input type="hidden" name="post_count" class="updateInput" value="34" >
						
					</div>
				</div>
			</div>
		</div>
	</div>	
</form>