<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<html>
<head>
<title>Home</title>

<link rel="stylesheet" href="<c:url value='/resources/css/style.css' />">

</head>
<body>
	<div class="login">
		<img src=".png" class="logo1" />
		<form action="${cpath }/emp_login.do" method="post">
			<input type="text" name="emp_id">
			<input type="password" name="emp_pw">
			<input type="submit" value="로그인">
		</form>
	</div>

</body>
</html>
