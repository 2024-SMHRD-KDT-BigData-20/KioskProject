<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
<link rel="stylesheet" href="<c:url value='/resources/css/supervisor_style1.css' />">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script type="text/javascript" src="<c:url value='/resources/js/supervisor_EM.js' />"></script>
<script type="text/javascript">var cpath = "${cpath}";</script>
</head>
<body>

<!-- 헤더 -->
<a class="logout" href="">로그아웃</a>
<%@ include file="supervisor_nav.jsp"%>
	
	<div class="container">
    <div class="search">
		<form action="${cpath }/emp_search.do" method="get">
			<input type="text" name="emp_search_text" placeholder="이름 검색">
			<button type="submit">
			<img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png"></button>
		</form>
	</div>

	<div class="board_wrap">
		<div class="board_list_wrap">
			<div class="board_list">
				<div class="top">
					<div class="emp_idx">번호</div>
					<div class="emp_name">이름</div>
					<div class="emp_id">ID</div>
					<div class="emp_pw">PW</div>
					<div class="emp_phone">TEL</div>
					<div class="emp_auth">권한</div>
				</div>

				<c:forEach items="${emp_list }" var="m">
					<div>
						<div class="emp_idx">${m.emp_idx }</div>
						<div class="emp_name">${m.emp_name }</div>
						<div class="emp_id">${m.emp_id }</div>
						<div class="emp_pw">${m.emp_pw }</div>
						<div class="emp_phone">${m.emp_phone }</div>
						<div class="emp_auth">${m.emp_auth }</div>
						<div class="bt_wrap">
							<a class="modify" href="javascript:go_update_emp_form('${m.emp_idx}');">수정</a> <a
								class="delete" href="javascript:go_delete_emp_method('${m.emp_idx}');">삭제</a>
						</div>
					</div>
				</c:forEach>
			</div>

			<div class="bt_wrap">
				<a class="on" href="javascript:go_insert_emp_form();">등록</a>
			</div>

		</div>
	</div>
</body>
</html> 
