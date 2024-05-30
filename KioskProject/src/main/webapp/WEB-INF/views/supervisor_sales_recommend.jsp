<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<%-- <link rel="stylesheet" href="<c:url value='/resources/css/supervisor_recoboard_style.css' />"> --%>
<title>Insert title here</title>
</head>
<body>

	<div id="wrapper">
	<div style="height:80vh; width:50vw; overflow-y:auto">
		<table id="boardlist" style="width: 50vw; border: 0; cellspacing: 0; cellpadding: 0;">
			<thead>
            	<tr>
					<th class="menu_idx"><span>번호</span></th>
					<th class="menu_category"><span>분류 </span></th>
					<th class="menu_name_kor"><span>메뉴(한글)</span></th>
					<th class="menu_price"><span>가격</span></th>
					<th class="menu_reco_check"><span>추천 여부</span></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${menu_search_result }" var="m">
				<tr>
						<td class="menu_idx">${m.menu_idx }</td>
						<td class="menu_category">${m.menu_category }</td>
						<td class="menu_name_kor">${m.menu_name_kor }</td>
						<td class="menu_price">${m.menu_price }</td>
						<td class="menu_reco_check"></td>
						<td class="bt_wrap">
							<a class="modify"
								href="javascript:go_update_menu_form('${m.menu_idx}');">수정</a> 
							<a class="delete"
								href="javascript:go_delete_menu_method('${m.menu_idx}');">삭제</a>
						</td>
				</tr>
				</c:forEach>
			</tbody>	
			</table>
			</div>
			</div>


</body>
</html>