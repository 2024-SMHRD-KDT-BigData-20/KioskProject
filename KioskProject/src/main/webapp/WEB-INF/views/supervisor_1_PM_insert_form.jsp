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

	<form action="${cpath }/menu_insert.do" method="post" enctype="multipart/form-data">
	
	  <div>
	    <label for="menu_name_eng">메뉴(영문)</label>
	    <div>
	      <input type="text" id="menu_name_eng" name="menu_name_eng">
	    </div>
	  </div>
	  <div>
	    <label for="menu_name_kor">메뉴(한글)</label>
	    <div>
	      <input type="text" id="menu_name_kor" name="menu_name_kor">
	    </div>
	  </div>
	  <div>
	    <label for="menu_category">분류</label>
	    <!-- 나중에 체크박스로 변경해도 좋을 듯 -->
	    <div>
	      <input type="text" id="menu_category" name="menu_category">
	    </div>
	  </div>
	  <div>
	    <label for="menu_price">가격</label>
	    <div>
	      <input type="text" id="menu_price" name="menu_price">
	    </div>
	  </div>
	  <div>
	    <label for="menu_img">사진</label>
	    <div>
	      <input type="file" id="menu_price" name="menu_price">
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