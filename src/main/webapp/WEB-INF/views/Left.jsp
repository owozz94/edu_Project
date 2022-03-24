<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page errorPage="/ErrorPage.jsp" %>
<div class="leftOutBox">
	<div class="thumbnail">
		<div class="thumbnailImg">
			<img src="/resources/img/blogthumb.png" alt="thumb" width="160"><br>
		</div>
		<div class="writebtn">
			<button type="button" class="btn btn-primary" onClick="location.href='/write'">글쓰기</button>
		</div>
	</div>
	<nav>
		<ul class="nav flex-column" >
			<li class="nav-item">
		    	<a class="nav-link active" aria-current="page" href="/">HOME</a>
		    </li>
			<li class="nav-item">
		    	<a class="nav-link active" aria-current="page" href="/notice">Notice</a>
		    </li>
			<li class="nav-item">
		    	<a class="nav-link active" aria-current="page" href="/gallery">Gallery</a>
		    </li>
		    <c:choose>
		    	<c:when test="${loginMember eq null }">
					<li class="nav-item">
				    	<a class="nav-link active" aria-current="page" href="/login">Login</a>
					</li>
		    	</c:when>
		    	<c:otherwise>
					<li class="nav-item">
				    	<a class="nav-link active" aria-current="page" href="/goLogout">Logout</a>
					</li>
		    	</c:otherwise>
		    </c:choose>
		</ul>
	</nav>
</div>