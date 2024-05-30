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

	<form action="${cpath }/emp_insert.do" method="post">
	
	<div class="wrap">
		<div class= "form">
		<h3><span>직원등록</span></h3>
	  <div>
	    <label for="emp_name">이름</label>
	      <input type="text" id="emp_name" name="emp_name">
	  </div>
	  <div>
	    <label for="emp_id">ID</label> 
	      <input type="text" id="emp_id" name="emp_id">
	  </div>
	  <div>
	    <label for="emp_pw">PW</label>
	      <input type="text" id="emp_pw" name="emp_pw">
	  </div>
	  <div>
	    <label for="emp_phone">TEL</label>
	      <input type="text" id="emp_phone" name="emp_phone">
	  </div>
	  <div>
	    <label for="emp_auth">권한</label>
	      <input type="text" id="emp_auth" name="emp_auth">
	  </div>
	    <div>
	      <button type="submit">등록</button>
	  </div>
	  </div>
	  </div>
	</form>
	
</body>
</html>