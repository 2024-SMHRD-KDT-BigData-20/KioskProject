<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<c:set var="userRole" value="${sessionScope.logined_emp.emp_auth}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet"
	href="<c:url value='/resources/css/supervisor_style1.css' />">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script type="text/javascript"
	src="<c:url value='/resources/js/supervisor_PM.js' />"></script>
<script type="text/javascript">
	var cpath = "${cpath}";
</script>
</head>
<body>

	<!-- 헤더 -->
	<%@ include file="supervisor_nav.jsp"%>

	<div class="container">
		<form action="${cpath}/menu_categorized_result.do" method="get">
			<select name="menu_category" id="menu_category">
				<!-- 이 공간에 menu_categories() 함수를 통해 option 태그 삽입 -->
			</select> 
		</form>

		<div class="search">
			<form class="search_container" action="${cpath }/menu_search.do"
				method="get">
				<input type="text" id="search_bar" name="menu_search_text"
					placeholder="메뉴 검색"> <img class="search_icon"
					src="http://www.endlessicons.com/wp-content/uploads/2012/12/search-icon.png">
			</form>

		</div>
	</div>


	<div id="wrapper">
		<div style="width: 100%; height: 450px; overflow-y: auto">
			<table id="boardlist" width="100%" border="0" cellspacing="0"
				cellpadding="0">
				<thead>
					<tr>
						<th class="menu_idx"><span>번호</span></th>
						<th class="menu_category"><span>분류 </span></th>
						<th class="menu_name_eng"><span>메뉴(영문)</span></th>
						<th class="menu_name_kor"><span>메뉴(한글)</span></th>
						<th class="menu_price"><span>가격 </span></th>
						<th class="menu_img"><span>이미지 </span></th>
						<th class=""><span></span></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${menu_list }" var="m">
						<tr>
							<td class="menu_idx">${m.menu_idx }</td>
							<td class="menu_category">${m.menu_category }</td>
							<td class="menu_name_eng">${m.menu_name_eng }</td>
							<td class="menu_name_kor">${m.menu_name_kor }</td>
							<td class="menu_price">${m.menu_price }</td>
							<td class="menu_img"><c:if test="${m.menu_img != null}">
									<img src="data:image/jpeg;base64,${m.menuImgBase64}"
										alt="${m.menu_name_eng}" style="width: 100px; height: 100px;">
								</c:if></td>
							<td class="bt_wrap">
								<!-- 상위 관리자(권한: 0)일 때 수정, 삭제, 등록 가능 --> <c:if
									test="${userRole != null && userRole == 0}">
									<a class="modify"
										href="javascript:go_update_menu_form('${m.menu_idx}');">수정</a>
									<a class="delete"
										href="javascript:go_delete_menu_method('${m.menu_idx}');">삭제</a>
								</c:if>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

	<div class="bt_wrap">
		<!-- 상위 관리자(권한: 0)일 때 수정, 삭제, 등록 가능 -->
		<c:if test="${userRole != null && userRole == 0}">
			<a class="on" href="javascript:go_insert_menu_form();">등록</a>
		</c:if>
	</div>
</body>
</html>