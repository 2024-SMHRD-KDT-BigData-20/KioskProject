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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script type="text/javascript" src="<c:url value='/resources/js/supervisor_MM.js' />"></script>
<script type="text/javascript">var cpath = "${cpath}";</script>
</head>
<body>

<!-- 헤더 -->
<%@ include file="supervisor_nav.jsp"%>

	<form action="${cpath}/member_order_by_date.do" method="get">
        <select name="member_order_by_date" id="member_order_by_date">
        	<option value=''>분류</option>
			<option value="오름차순">오름차순</option>
			<option value="내림차순">내림차순</option>
        </select>
    </form>

	<div class="search">
		<form action="${cpath }/member_search.do" method="get">
			<input type="text" name="member_search_text" placeholder="회원 TEL 검색">
			<button type="submit">
			<img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png"></button>
		</form>
	</div>

	<div class="board_wrap">
		<div class="board_list_wrap">
			<div class="board_list">
				<div class="top">
					<div class="cust_idx">번호</div>
					<div class="cust_phone">전화번호</div>
					<div class="cust_stamp">보유 스탬프</div>
					<div class="joined_at">가입일</div>
					<div class="cust_face_img">안면 이미지</div>
					<div class="cust_ages">연령</div>
				</div>

				<c:forEach items="${member_list }" var="m">
					<div>
						<div class="cust_idx">${m.cust_idx }</div>
						<div class="cust_phone">${m.cust_phone }</div>
						<div class="cust_stamp">${m.cust_stamp }</div>
						<div class="joined_at">${m.joined_at }</div>
						<div class="cust_face_img">${m.cust_idx }.jpg</div>
						<div class="cust_ages">${m.cust_ages }</div>
						<div class="bt_wrap">
							<a class="modify" href="javascript:go_update_member_form('${m.cust_idx}');">수정</a> <a
								class="delete" href="javascript:go_delete_member_method('${m.cust_idx}');">삭제</a>
						</div>
					</div>
				</c:forEach>
			</div>

			<div class="bt_wrap">
				<a class="on" href="javascript:go_insert_member_form();">등록</a>
			</div>

		</div>
	</div>
</body>
</html>
