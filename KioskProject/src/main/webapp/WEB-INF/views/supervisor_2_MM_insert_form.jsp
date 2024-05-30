<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
    href="<c:url value='/resources/css/supervisor_insert_style.css' />">
</head>
<body>

	<form action="${cpath }/member_insert.do" method="post">
	
	<!-- 등록 시에는 폰 번호만 필요하겠지? -->
	<!-- 후순위: 전화번호 나타낼 때 '-' 자동 표시 기능 추가 -->
	<!-- 후순위: 가입일 → 날짜 + 시분까지만 표시 -->
	<div class="wrap">
       <div class= "form">
       <h3><span>회원등록</span></h3>
       <div>
	   		<label for="cust_phone">전화번호</label>
	      <input type="text" id="cust_phone" name="cust_phone" required>
	      </div>
	    <div>
	      <button type="submit">등록</button>
	    </div>
	  </div>
	  </div>
	</form>
	
</body>
</html>