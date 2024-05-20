<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="<c:url value='/resources/css/nav.css' />">
<link rel="stylesheet" href="<c:url value='/resources/css/style.css' />">
</head>
<body>

	<nav class="supervisor_nav" >
        <ul>
             <li><a class="navLink" href="${cpath}/menu_list.do">상품관리</a></li>
             <li><a class="navLink" href="supervisor_MM.do">회원관리</a></li>
             <li><a class="navLink" href="supervisor_Emp.do">하위 관리자 관리</a></li>
             <li><a class="navLink" href="supervisor_Stat.do">판매량 통계</a></li>
        </ul>
    </nav>

</body>
</html>