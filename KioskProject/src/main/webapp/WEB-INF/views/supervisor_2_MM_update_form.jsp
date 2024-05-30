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
    href="<c:url value='/resources/css/supervisor_form_style.css' />">
</head>
<body>

	<form action="${cpath }/member_update.do" method="post">
	
	<input type="hidden" value=${updating_member.cust_idx } name="cust_idx">
	
	<div class="wrap">
       <div class= "form">
       <h3><span>회원정보수정</span></h3>
	      <input type="text" id="cust_phone" name="cust_phone" value="${updating_member.cust_phone }" placeholder="전화번호">
	      <input type="text" id="cust_stamp" name="cust_stamp" value="${updating_member.cust_stamp }" placeholder="스탬프" >
	      <input type="text" id="cust_ages" name="cust_ages" value="${updating_member.cust_ages }" placeholder="인식연령" >
	      <button type="submit">수정</button>
	    </div>
	  </div>  
	</form>
	
</body>
</html>