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

	<form action="${cpath }/menu_insert.do" method="post"
		enctype="multipart/form-data">

		<div>
			<label for="menu_name_eng">메뉴(영문)</label>
			<div>
				<input type="text" id="menu_name_eng" name="menu_name_eng" required>
			</div>
		</div>
		<div>
			<label for="menu_name_kor">메뉴(한글)</label>
			<div>
				<input type="text" id="menu_name_kor" name="menu_name_kor" required>
			</div>
		</div>
		<div>
			<label for="menu_category">분류</label>
			<div>
				<label><input type="radio" name="menu_category" value="커피">커피</label>
				<label><input type="radio" name="menu_category" value="디카페인">디카페인</label>
				<label><input type="radio" name="menu_category" value="음료">음료</label>
				<label><input type="radio" name="menu_category" value="티">티</label>
				<label><input type="radio" name="menu_category" value="푸드">푸드</label>
			</div>
		</div>
		<div>
			<label for="menu_price">가격</label>
			<div>
				<input type="text" id="menu_price" name="menu_price" required>
			</div>
		</div>
		<div>
			<label for="menu_img">사진</label>
			<div>
				<input type="file" id="menu_img" name="menu_img" required>
			</div>
		</div>
		<div>
			<span>추천 연령대</span>
			<div>
				<label><input type="checkbox" name="menu_ages"
					value="해당없음">해당없음</label> <label><input type="checkbox"
					name="menu_ages[]" value="10대">10대</label><label><input
					type="checkbox" name="menu_ages[]" value="20대">20대</label> <label><input
					type="checkbox" name="menu_ages[]" value="30대">30대</label> <label><input
					type="checkbox" name="menu_ages[]" value="40대">40대</label> <label><input
					type="checkbox" name="menu_ages[]" value="50대">50대</label> <label><input
					type="checkbox" name="menu_ages[]" value="60대">60대</label> <label><input
					type="checkbox" name="menu_ages[]" value="70대">70대</label> <label><input
					type="checkbox" name="menu_ages[]" value="80대">80대</label> <label><input
					type="checkbox" name="menu_ages[]" value="90대">90대</label> <label><input
					type="checkbox" name="menu_ages[]" value="100대">100대</label>
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