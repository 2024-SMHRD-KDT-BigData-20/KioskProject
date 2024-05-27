<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>
       body {
		  margin: 0px;
		}
		
		.supervisor_nav {
		  padding: 24px;
		  text-align: center;
		  background: #FFDC00;
		}
		
		.navLink {
		  transition: 0.4s;
		  color: #ffffff;
		  font-size: 20px;
		  text-decoration: none;
		  padding: 0 10px;
		  margin: 0 10px;
		}
		
		.navLink:hover {
		  background-color: #ffffff;
		  color: #000000;
		  padding: 24px 10px;
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

