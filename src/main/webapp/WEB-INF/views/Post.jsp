<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="/ErrorPage.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="centerPostOut">
	<div class="PostInBoxBottom">
		<div class="BannerBottomBox">
			<div class="postDate">
			작성일 : ${p.post_date }
			</div>
				<div class="PostTitle">
		${p.post_title }
		</div>
		</div>
		<div class="TitleBottomBox">
			<div class="PostId">
			${p.mi_id }
			</div>
     	   <div class="PostNav">
-      	<c:choose>
		<c:when test="${loginMember.mi_id eq p.mi_id }">
			<ul class="menu">
  <li>
    <a href="#">옵션</a>
    <ul class="depth_1">
      <li><a href="postUpdateForm">수정하기</a></li>
      <li><a href="/goPostDelete?post_num=${p.post_num}">삭제하기</a></li>
    </ul>
  </li>
  <li>
   </li>
   </ul>
</c:when>
</c:choose> 
<div class="PostCount"> 조회수  ${p.post_count } </div>
</div>
</div>
<div class="PostContent">
	내용 : ${p.post_content }
</div>
	</div>
</div>