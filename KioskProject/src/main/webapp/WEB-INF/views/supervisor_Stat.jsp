<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

<link rel="stylesheet" href="<c:url value='/resources/css/nav.css' />">
<link rel="stylesheet" href="<c:url value='/resources/css/style.css' />">
</head>
<body>

<!-- 헤더 -->
<%@ include file="supervisor_nav.jsp"%>
    
</body>
</html>