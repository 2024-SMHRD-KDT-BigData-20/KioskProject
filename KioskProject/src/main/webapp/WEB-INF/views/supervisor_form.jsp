<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
        @font-face {
            font-family: 'Orbit-Regular';
            src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2310@1.0/Orbit-Regular.woff2') format('woff2');
            font-weight: normal;
            font-style: normal;
        }

        body {
            font-family: 'Orbit-Regular', sans-serif;
        }
    </style>
<link rel="stylesheet"
    href="<c:url value='/resources/css/supervisor_insert_style.css' />">
    

</head>
<body>
    <form action="${cpath}${empty updating_menu ? '/menu_insert.do' : '/menu_update.do'}" method="post"
        enctype="multipart/form-data">

        <c:if test="${not empty updating_menu}">
            <input type="hidden" value="${updating_menu.menu_idx}" name="menu_idx">
        </c:if>

        <div class="wrap">
        	<h3><span>${empty updating_menu ? '상품등록' : '상품수정'}</span></h3>
                <div class="ctn-inputs radio">
                	<label class= "label_tit" for="menu_category">분류</label>
                    <label><input type="radio" class="style-radio" name="menu_category" value="커피">커피</label>
                    <label><input type="radio" class="style-radio" name="menu_category" value="티">티</label>
                    <label><input type="radio" class="style-radio" name="menu_category" value="에이드/주스">에이드/주스</label>
                    <label><input type="radio" class="style-radio" name="menu_category" value="스무디/프라페">스무디/프라페</label>
                    <label><input type="radio" class="style-radio" name="menu_category" value="디카페인">디카페인</label>
                    <label><input type="radio" class="style-radio" name="menu_category" value="음료">음료</label>
                    <label><input type="radio" class="style-radio" name="menu_category" value="푸드">푸드</label>
                </div>
                
                <div>
				    <label class= "label_tit" for="menu_name_eng">메뉴(영문)</label>
                <input type="text" id="menu_name_eng" name="menu_name_eng" 
                    value="${not empty updating_menu ? updating_menu.menu_name_eng : ''}" required>
       			</div>
       			
       			<div>
				    <label class= "label_tit" for="menu_name_kor">메뉴(한글)</label>
                <input type="text" id="menu_name_kor" name="menu_name_kor" 
                    value="${not empty updating_menu ? updating_menu.menu_name_kor : ''}" required>
   				</div>
   				
   				<div>
   					<label class= "label_tit" for="menu_price">가격</label>
                <input type="text" id="menu_price" name="menu_price"
                    value="${not empty updating_menu ? updating_menu.menu_price : ''}" required>
				</div>
                    <input type="file" id="menu_img" name="menu_img" required>
          

            <div class="checkbox">
            	<label class= "label_tit" for="menu_age">추천연령대</label>
                    <label><input type="checkbox" name="menu_ages[]" value="0">해당없음</label>
                    <label><input type="checkbox" name="menu_ages[]" value="10">10대</label>
                    <label><input type="checkbox" name="menu_ages[]" value="20">20대</label>
                    <label><input type="checkbox" name="menu_ages[]" value="30">30대</label>
                    <label><input type="checkbox" name="menu_ages[]" value="40">40대</label>
                    <label><input type="checkbox" name="menu_ages[]" value="50">50대</label>
                    <label><input type="checkbox" name="menu_ages[]" value="60">60대</label>
                    <label><input type="checkbox" name="menu_ages[]" value="70">70대</label>
                    <label><input type="checkbox" name="menu_ages[]" value="80">80대</label>
                    <label><input type="checkbox" name="menu_ages[]" value="90">90대</label>
            </div>
            <div>
                <button type="submit">${empty updating_menu ? '등록' : '수정'}</button>
                </div>
        </div>

    </form>
</body>
</html>
