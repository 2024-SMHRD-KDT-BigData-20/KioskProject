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

	<form action="${cpath }/member_update.do" method="post">
	
	<input type="hidden" value=${updating_member.cust_idx } name="cust_idx">
	
	  <div>
	    <label for="cust_phone">TEL</label>
	    <div>
	      <input type="text" id="cust_phone" name="cust_phone" value="${updating_member.cust_phone }" >
	    </div>
	  </div>
	  <div>
	    <label for="cust_stamp">스탬프</label>
	    <div>
	      <input type="text" id="cust_stamp" name="cust_stamp" value="${updating_member.cust_stamp }" >
	    </div>
	  </div>
	  <div>
	    <label for="cust_ages">인식 연령</label>
	    <div>
	      <input type="text" id="cust_ages" name="cust_ages" value="${updating_member.cust_ages }" >
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