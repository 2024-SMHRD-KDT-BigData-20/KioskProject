<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<%-- <link rel="stylesheet" href="<c:url value='/resources/css/supervisor_recoboard_style.css' />"> --%>
<title>Insert title here</title>
</head>
<body>

	<div id="wrapper">
		<div style="height: 80vh; width: 40vw; overflow-y: auto">
			<table id="boardlist"
				style="width: 30vw; border: 0; cellspacing: 0; cellpadding: 0;">
				<thead>
					<tr>
						<th class="menu_idx"><span>번호</span></th>
						<th class="menu_name_kor"><span>메뉴(한글)</span></th>
						<th class="reco_ages"><span>연령대</span></th>
						<th class="reco_check"><span>추천 여부</span></th>
					</tr>
				</thead>

				<tbody id="recoboard">
					<!-- rList 삽입될 곳: update_recoboard 함수로 삽입 -->

				</tbody>
			</table>
		</div>
	</div>



	<script type="text/javascript">

	var cpath = "${cpath}";

	// 페이지 로딩 시 레코보드 로딩
	$(document).ready(function(){   
		load_reco();
	});
	
	function load_reco() {
		$.ajax({
			url: cpath + '/load_reco',
			type : 'get',
			dataType : 'json',
			success : update_recoboard,
            error : function(xhr, status, error) {
                console.error("판매량 로딩 실패: " + error);
                console.error("상태: " + status);
                console.error(xhr.responseText);
            }
		});	
	}

	function update_recoboard(recoData) {
		console.log(recoData);
		
		var rList = '';
		
		$.each(recoData, (index, obj) => {
			rList += '<tr>';
			rList += '<td>'+ obj.menu_idx + '</td>';
			rList += '<td>'+ obj.menu_name_kor + '</td>';
			rList += '<td>'+ obj.reco_ages + '</td>';
			rList += '<td>'+ obj.reco_check + '</td>';
			rList += '<td><a class="modify" href="javascript:show_update_reco_btn(' + obj.menu_idx + ');">수정</a></td>';
			rList += '<tr>';
		});
		
		$("#recoboard").html(rList);
	}
	
	function show_update_reco_btn() {
		/* 작성해야 함 */
	}
	
	
	
	
	</script>
</body>
</html>