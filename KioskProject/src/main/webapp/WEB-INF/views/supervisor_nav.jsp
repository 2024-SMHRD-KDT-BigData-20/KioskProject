<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lan<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<style>
body {
	margin: 25px 0px 25px;
}

.supervisor_nav {
	padding: 18px;
	text-align: center;
	background: #dfd3c3;
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
	border-top: 4px solid #6c5d53;
	border-bottom: 4px solid #6c5d53;
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
			class="navLink" href="./supervisor_4_Stat.jsp">판매량 통계</a> <a
			class="logout" href="${cpath}/emp_logout.do">로그아웃</a>
	</nav>
</body>
</html>

g="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>
       body {
		  margin: 25px 0px 25px;
		}
		
		.supervisor_nav {
		  padding: 18px;
		  text-align: center;
		  background: #000;
		}
		
		.navLink {
		  transition: 0.4s;
		  color: #fff;
		  font-size: 18px;
		  text-decoration: none;
		  padding: 0 10px;
		  margin: 0 10px;
		}
		
		.navLink:hover {
		  border-top: 4px solid #fff;
		  border-bottom: 4px solid #fff;
		  padding: 6px 0; 
		}
    </style>

</head>
<body>
    <nav class="supervisor_nav" >
      		<a class="navLink" href="${cpath}/menu_list.do">상품관리</a>
            <a class="navLink" href="${cpath}/member_list.do">회원관리</a>
            <a class="navLink" href="${cpath}/emp_list.do">하위 관리자 관리</a>
            <a class="navLink" href="./supervisor_4_Stat.jsp">판매량 통계</a>
    </nav>
</body>
</html>

