<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="${cpath }/emp_update.do" method="post">
	
	<input type="hidden" value=${updating_emp.emp_idx } name="emp_idx">
	
	  <div>
	    <label for="emp_name">이름</label>
	    <div>
	      <input type="text" id="emp_name" name="emp_name" value="${updating_emp.emp_name }" >
	    </div>
	  </div>  
	  <div>
	    <label for="emp_id">ID</label>
	    <div>
	      <input type="text" id="emp_id" name="emp_id" value="${updating_emp.emp_id }" >
	    </div>
	  </div>
	  <div>
	    <label for="emp_pw">PW</label>
	    <div>
	      <input type="text" id="emp_pw" name="emp_pw" value="${updating_emp.emp_pw }" >
	    </div>
	  </div>
	  <div>
	    <label for="emp_phone">TEL</label>
	    <div>
	      <input type="text" id="emp_phone" name="emp_phone" value="${updating_emp.emp_phone }" >
	    </div>
	  </div>
	  <div>
	    <label for="emp_auth">권한</label>
	    <div>
	      <input type="text" id="emp_auth" name="emp_auth" value="${updating_emp.emp_auth }" >
	    </div>
	  </div>
	  <div>
	    <div>
	      <button type="submit">수정</button>
	    </div>
	  </div>
	  
	</form>
	
</body>
</html>