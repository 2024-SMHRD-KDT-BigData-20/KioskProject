<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<link rel="stylesheet"
    href="<c:url value='/resources/css/supervisor_insert_style.css' />">
</head>
<body>

	<form action="${cpath }/emp_update.do" method="post">
	
	<input type="hidden" value=${updating_emp.emp_idx } name="emp_idx">
	
	<div class="wrap">
		<div class= "form">
		<h3><span>직원수정</span></h3>
	  <div>
	    <label class= "label_tit" for="emp_name">이름</label>
	      <input type="text" id="emp_name" name="emp_name" value="${updating_emp.emp_name }" >
	  </div>  
	  <div>
	    <label class= "label_tit" for="emp_id">ID</label>
	      <input type="text" id="emp_id" name="emp_id" value="${updating_emp.emp_id }" >
	  </div>
	  <div>
	    <label class= "label_tit" for="emp_pw">PW</label>
	      <input type="text" id="emp_pw" name="emp_pw" value="${updating_emp.emp_pw }" >
	  </div>
	  <div>
	    <label class= "label_tit" for="emp_phone">TEL</label>
	      <input type="text" id="emp_phone" name="emp_phone" value="${updating_emp.emp_phone }" >
	  </div>
	  <div>
	    <label class= "label_tit" for="emp_auth">권한</label>
	      <input type="text" id="emp_auth" name="emp_auth" value="${updating_emp.emp_auth }" >
	  </div>
	  <div>
	      <button type="submit">수정</button>
	  </div>
	 </div>
	</div>
	  
	</form>
	
</body>
</html>