<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<style>
    .container {
        display: flex;
        height: 100vh; /* 전체 화면 높이 */
    }
    .left {
        flex: 1;
        border-right: 1px solid #ccc; /* 오른쪽 경계선 추가 */
        padding: 10px;
    }
    .right {
        flex: 1;
        padding: 10px;
    }
</style>
</head>
<body>

	<!-- 헤더 -->
	<%@ include file="supervisor_nav.jsp"%>

	<div class="container">
        <!-- 왼쪽 콘텐츠 -->
        <div class="left">
            <jsp:include page="supervisor_sales_statistics.jsp"></jsp:include>
        </div>
        
        <!-- 오른쪽 콘텐츠 -->
        <div class="right">
            <jsp:include page="supervisor_sales_recommend.jsp"></jsp:include>
        </div>
    </div>


</body>
</html>