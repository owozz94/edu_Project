<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="/ErrorPage.jsp" %>
<form action="FileProc" method="post" enctype="multipart/form-data">
	<div class="centerPostOut" >
		<div class="PostInBox">
			<div class="writeBoxBottom">
				<div class="selectBottomBox">
					<div class="writeTitle" >
						<span>제목</span>
						<input type="text" name="title" class="form-control" id="exampleFormControlInput1" placeholder="제목">
					</div>
					<div class="WriteContent">
						<span>내용</span>
						<textarea class="form-control" placeholder="내용" rows="23" name="content"></textarea>
					</div>
				</div>
				<div class="writeBtn">
					<div class="select">
						<input type="submit"  class="btn btn-primary" value="발행">
					</div>
				</div>
			</div>
		</div>
	</div>	
</form>