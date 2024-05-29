<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<c:set var="userRole" value="${sessionScope.emp_auth}" />
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
<%@ include file="supervisor_nav.jsp"%>

	<div class="container">
		<div class="search">
		<form class="search_container" action="${cpath }/emp_search.do" method="get">
			<input type="text" id="search_bar" placeholder="이름 검색">
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
					<th class="emp_idx"><span>번호</span></th>
					<th class="emp_name"><span>이름</span></th>
					<th class="emp_id"><span>ID</span></th>
					<th class="emp_pw"><span>PW</span></th>
					<th class="emp_phone"><span>TEL </span></th>
					<th class="emp_auth"><span>권한 </span></th>
					<th class=""><span></span></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${emp_list }" var="m">
					<tr>
						<td class="emp_idx">${m.emp_idx }</td>
						<td class="emp_name">${m.emp_name }</td>
						<td class="emp_id">${m.emp_id }</td>
						<td class="emp_pw">${m.emp_pw }</td>
						<td class="emp_phone">${m.emp_phone }</td>
						<td class="emp_auth">${m.emp_auth }</td>
						<!-- 상위 관리자(권한: 0)일 때 수정, 삭제, 등록 가능 -->
						
						<td class="bt_wrap">
							<a class="modify"
								href="javascript:go_update_emp_form('${m.emp_idx}');">수정</a> 
							<a class="delete"
								href="javascript:go_delete_emp_method('${m.emp_idx}');">삭제</a>
						</td>
						
					</tr>
				</c:forEach>
			</tbody>
			</table>
			</div>
			
			
			<div class="bt_wrap">
				<a class="on" href="javascript:go_insert_emp_form();">등록</a>
			</div>
			</div>

</body>
</html> 
