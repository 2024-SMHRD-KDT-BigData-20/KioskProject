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
	body {
		position: fixed;
		  width: 100%;
		  height: 100%;
		  overflow: hidden;
	}
    .container {
        display: flex;
        height: 100vh; /* 전체 화면 높이 */
    }
    .left {
        flex: 1;
        padding: 10px;
    }
    .right {
        flex: 1;
        padding: 10px;
    }
    .stat_nav {
    	margin: 30px 0px 20px;
		font-family: 'Orbit-Regular', sans-serif;
    }
</style>
</head>
<body>

	<!-- 헤더 -->
	<div class="stat_nav"><%@ include file="supervisor_nav.jsp"%></div>

	<div class="container">
        <!-- 왼쪽 콘텐츠 -->
        <div class="left">
        <div class="chart-container">
            <jsp:include page="supervisor_sales_statistics.jsp"></jsp:include>         
        </div>
        </div>
        
        <!-- 오른쪽 콘텐츠 -->
        <div class="right">
            <jsp:include page="supervisor_sales_recommend.jsp"></jsp:include>
        </div>
    </div>


</body>
</html>