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

<link rel="stylesheet" href="<c:url value='/resources/css/supervisor_style1.css' />">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script type="text/javascript" src="<c:url value='/resources/js/supervisor_MM.js' />"></script>
<script type="text/javascript">var cpath = "${cpath}";</script>
</head>
<body>

<!-- 헤더 -->
<a class="logout" href="">로그아웃</a>
<%@ include file="supervisor_nav.jsp"%>
	<div class="container">
	<form action="${cpath}/member_order_by_date.do" method="get">
        <select name="member_order_by_date" id="member_order_by_date">
        	<option value=''>분류</option>
			<option value="오름차순">오름차순</option>
			<option value="내림차순">내림차순</option>
        </select>
    </form>
	
		<div class="search">
		<form class="search_container" action="${cpath }/mem_search.do" method="get">
			<input type="text" id="search_bar" placeholder="전화번호 검색">
			<img class="search_icon"
					src="http://www.endlessicons.com/wp-content/uploads/2012/12/search-icon.png">
		</form>
	</div>
	</div>

	<div id="wrapper">
	<div style="width:100%; height:450px; overflow-y:auto">
		<table id="boardlist" width="100%" border="0" cellspacing="0" cellpadding="0">
			<thead>
			    <tr>
					<th class="cust_idx"><span>번호</span></th>
					<th class="cust_phone"><span>전화번호 </span></th>
					<th class="cust_stamp"><span>보유스탬프</span></th>
					<th class="joined_at"><span>가입일</span></th>
					<th class="cust_face_img"><span>안면이미지 </span></th>
					<th class="cust_ages"><span>연령 </span></th>
					<th class=""><span></span></th>
				</tr>
				</thead>
				<tbody>
					<c:forEach items="${member_list }" var="m">
					<tr>
						<td class="cust_idx">${m.cust_idx }</td>
						<td class="cust_phone">${m.cust_phone }</td>
						<td class="cust_stamp">${m.cust_stamp }</td>
						<td class="joined_at">${m.joined_at }</td>
						<td class="cust_face_img">${m.cust_idx }.jpg</td>
						<td class="cust_ages">${m.cust_ages }</td>
						<td class="bt_wrap">
							<a class="modify"
								href="javascript:go_update_member_form('${m.cust_idx}');">수정</a> 
							<a class="delete"
								href="javascript:go_delete_member_method('${m.cust_idx}');">삭제</a>
						</td>
					</tr>
				</c:forEach>
				</tbody>
				</table>
			</div>

			<div class="bt_wrap">
				<a class="on" href="javascript:go_insert_member_form();">등록</a>
			</div>
</body>
</html>
