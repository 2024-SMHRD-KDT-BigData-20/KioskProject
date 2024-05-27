<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<link rel="stylesheet" href="<c:url value='/resources/css/style.css' />">

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

	<form action="${cpath}/menu_categorized_result.do" method="get">
		<select name="menu_category" id="menu_category">
			<!-- 이 공간에 menu_categories() 함수를 통해 option 태그 삽입 -->
		</select>
	</form>

	<div class="search">
		<form action="${cpath }/menu_search.do" method="get">
			<input type="text" name="menu_search_text" placeholder="메뉴 검색">
			<button type="submit">
				<img
					src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">
			</button>
		</form>
	</div>

	<div class="board_wrap">
		<div class="board_list_wrap">
			<div class="board_list">
				<div class="top">
					<div class="menu_idx">번호</div>
					<div class="menu_category">분류</div>
					<div class="menu_name_eng">메뉴(영문)</div>
					<div class="menu_name_kor">메뉴(한글)</div>
					<div class="menu_price">가격</div>
					<div class="menu_img">이미지</div>
				</div>

				<c:forEach items="${menu_list }" var="m">
					<div>
						<div class="menu_idx">${m.menu_idx }</div>
						<div class="menu_category">${m.menu_category }</div>
						<div class="menu_name_eng">${m.menu_name_eng }</div>
						<div class="menu_name_kor">${m.menu_name_kor }</div>
						<div class="menu_price">${m.menu_price }</div>
						<div class="menu_img">
							<c:if test="${m.menu_img != null}">
								<img src="data:image/jpeg;base64,${m.menuImgBase64}"
									alt="${m.menu_name_eng}" style="width: 100px; height: 100px;">
							</c:if>
						</div>
						<div class="bt_wrap">
							<a class="modify"
								href="javascript:go_update_menu_form('${m.menu_idx}');">수정</a> <a
								class="delete"
								href="javascript:go_delete_menu_method('${m.menu_idx}');">삭제</a>
						</div>
					</div>
				</c:forEach>
			</div>

			<div class="bt_wrap">
				<a class="on" href="javascript:go_insert_menu_form();">등록</a>
			</div>

		</div>
	</div>
</body>
</html>