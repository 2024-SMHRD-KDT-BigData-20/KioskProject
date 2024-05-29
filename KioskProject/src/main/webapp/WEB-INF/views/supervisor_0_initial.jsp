<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<html>
<head>
<title>Home</title>

<link rel="stylesheet" href="<c:url value='/resources/css/initialstyle.css' />">

</head>
<body>
	<div class="wrapper">
		<div class="container">
		<h1>관리자 로그인</h1>
		<form class = form action="${cpath }/emp_login.do" method="post">
			<input type="text" name="emp_id" placeholder="ID">
			<input type="password" name="emp_pw" placeholder="PW">
			<button type="submit" id="login-button">Login</button>
		</form>
		</div>
	</div>
</body>
</html>
