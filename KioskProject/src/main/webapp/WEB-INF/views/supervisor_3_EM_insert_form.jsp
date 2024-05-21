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

	<form action="${cpath }/emp_insert.do" method="post">
	
	  <div>
	    <label for="emp_name">이름</label>
	    <div>
	      <input type="text" id="emp_name" name="emp_name">
	    </div>
	  </div>
	  <div>
	    <label for="emp_id">ID</label>
	    <div>
	      <input type="text" id="emp_id" name="emp_id">
	    </div>
	  </div>
	  <div>
	    <label for="emp_pw">PW</label>
	    <div>
	      <input type="text" id="emp_pw" name="emp_pw">
	    </div>
	  </div>
	  <div>
	    <label for="emp_phone">TEL</label>
	    <div>
	      <input type="text" id="emp_phone" name="emp_phone">
	    </div>
	  </div>
	  <div>
	    <label for="emp_auth">권한</label>
	    <div>
	      <input type="text" id="emp_auth" name="emp_auth">
	    </div>
	  </div>
	  <div>
	    <div>
	      <button type="submit">등록</button>
	    </div>
	  </div>
	  
	</form>
	
</body>
</html>