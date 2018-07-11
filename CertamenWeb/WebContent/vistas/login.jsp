
<%@ page language="java" 
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>El certamen</title>
<link rel="stylesheet"
	href="<c:url value="/resources/css/certamen.css" />">
</head>
<body>
	<header>
		<div id="contenido_header">
			<div id="logo">
				<a href='<c:url value="/" />'><img
					src="<c:url value="/resources/images/logocertamen.png" />"
					alt="logo del certamen" /></a>
			</div>
			<!--fin del logo-->
		</div>
		<!-- fin del div contenido_header -->
	</header>
	<%@include file="common/menu.jsp" %>
	
	<section id="login">
		<h2>Signup Details</h2>
		<form action="" method="post">
			<br />Username:<input type="text" name="username"> <br />Password:<input
				type="password" name="password"> <br />
			<input type="submit" value="Submit">
		</form>
	</section>

	<%@include file="common/footer.jsp" %>
</body>
</html>