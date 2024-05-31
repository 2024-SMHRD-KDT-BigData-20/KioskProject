<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<html>
<head>
<title>supervisor_login</title>
    <style>
        @font-face {
            font-family: 'Orbit-Regular';
            src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2310@1.0/Orbit-Regular.woff2') format('woff2');
            font-weight: normal;
            font-style: normal;
        }

        body {
            font-family: 'Orbit-Regular', sans-serif;
        }
    </style>

<link rel="stylesheet" href="<c:url value='/resources/css/initialstyle.css' />">

</head>
<body>
	<div class="wrapper">
		<div class="container">
		<img src="/resources/img/supervisorimg.png" width="300" height="200">
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
