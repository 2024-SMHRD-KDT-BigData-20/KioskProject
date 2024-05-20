<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<html>
<head>
<title>Home</title>
</head>
<body>
	<div class="login">
		<h2>Login</h2>
		<form action="${cpath }/worker_login.do" method="post">
			<input type="text" name="work_id">
			<input type="password" name="work_pw">
			<input type="submit" value="로그인">
		</form>
	</div>

</body>
</html>
