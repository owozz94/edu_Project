<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="/ErrorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Insert title here</title>
	<link href="/resources/css/styles.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="PostOutBox">
	<div class="MainBox">
		<div class="PostBanner">
			<jsp:include page="Banner.jsp"/>
		</div>
		<div class="center">
			<div class="nav">
				<jsp:include page="Left.jsp"/>
			</div>
			<div class="MainContent">
				<jsp:include page="${center}"/>
			</div>
		</div>
		<div class="MainFooter">
			<jsp:include page="Footer.jsp"/>
		</div>
	</div>	
</div>
<script>
	let msg = "${MSG}";
	if(msg != ''){
		alert(msg);
	}
</script>
</body>
</html>