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

	<form action="${cpath }/member_update.do" method="post">
	
	<input type="hidden" value=${updating_member.cust_idx } name="cust_idx">
	
	<div class="wrap">
       <h3><span>회원정보수정</span></h3>
       <div>
	   		<label class= "label_tit" for="cust_phone">전화번호</label>
	      <input type="text" id="cust_phone" name="cust_phone" value="${updating_member.cust_phone }">
	   </div>
	   <div>
	   		<label class= "label_tit" for="cust_stamp">스탬프</label>   
	      <input type="text" id="cust_stamp" name="cust_stamp" value="${updating_member.cust_stamp }">
	   </div>
	   <div>
	   		<label class= "label_tit" for="cust_ages">인식연령</label>
	      <input type="text" id="cust_ages" name="cust_ages" value="${updating_member.cust_ages }">
	   </div>
	      <button type="submit">수정</button>
	 </div>  
	</form>
	
</body>
</html>