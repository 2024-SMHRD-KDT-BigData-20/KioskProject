<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="userName" value="${sessionScope.logined_emp.emp_name}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<style>
@font-face {
    font-family: 'Orbit-Regular';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2310@1.0/Orbit-Regular.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
    }

body {
	margin: 30px 0px 20px;
	font-family: 'Orbit-Regular', sans-serif;
}

.supervisor_nav {
	width: 100%;
	max-width: 1000px;
	box-sizing: border-box;
	margin: 0 auto;
	padding: 18px;
	text-align: center;
	background: #ffd954;
}

.navLink {
	transition: 0.4s;
	color: #000000;
	font-size: 18px;
	text-decoration: none;
	padding: 0 10px;
	margin: 0 10px;
}

.navLink:hover {
	border-top: 4px solid #ffffff;
	border-bottom: 4px solid #ffffff;
	padding: 6px 0;
}

/* 로그아웃 */
a.logout {
	text-decoration: none;
	color: #000000;
	font-size: 15px;
	position: fixed;
	top: 20px;
	right: 20px;
}
</style>

</head>
<body>
	<nav class="supervisor_nav">
		<a class="navLink" href="${cpath}/menu_list.do">상품관리</a> <a
			class="navLink" href="${cpath}/member_list.do">회원관리</a> <a
			class="navLink" href="${cpath}/emp_list.do">하위 관리자 관리</a> <a
			class="navLink" href="${cpath}/supervisor_4_Stat.do">판매량 통계</a> <a
			class="logout" href="${cpath}/emp_logout.do">${userName } 로그아웃</a>
	</nav>
</body>
</html>

