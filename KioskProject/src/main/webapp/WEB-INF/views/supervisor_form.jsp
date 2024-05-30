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
    <form action="${cpath}${empty updating_menu ? '/menu_insert.do' : '/menu_update.do'}" method="post"
        enctype="multipart/form-data">

        <c:if test="${not empty updating_menu}">
            <input type="hidden" value="${updating_menu.menu_idx}" name="menu_idx">
        </c:if>

        <div class="wrap">
        	<div class= "form">
        	<div class="ctn-inputs radio">
        	<h3><span>${empty updating_menu ? '상품등록' : '상품수정'}</span></h3>
                <c:if test="${not empty updating_menu}">
                    <input type="text" id="menu_category" name="menu_category" value="${updating_menu.menu_category}" required>
                </c:if>
                <c:if test="${empty updating_menu}">
                    <label><input type="radio" class="style-radio" name="menu_category" value="커피">커피</label>
                    <label><input type="radio" class="style-radio" name="menu_category" value="디카페인">디카페인</label>
                    <label><input type="radio" class="style-radio" name="menu_category" value="음료">음료</label>
                    <label><input type="radio" class="style-radio" name="menu_category" value="티">티</label>
                    <label><input type="radio" class="style-radio" name="menu_category" value="푸드">푸드</label>
                </c:if>
            </div>
        </div>
                <input type="text" id="menu_name_eng" name="menu_name_eng" placeholder="메뉴(영문)" 
                    value="${not empty updating_menu ? updating_menu.menu_name_eng : ''}" required>
       
                <input type="text" id="menu_name_kor" name="menu_name_kor" placeholder="메뉴(한글)"
                    value="${not empty updating_menu ? updating_menu.menu_name_kor : ''}" required>
   
                <input type="text" id="menu_price" name="menu_price" placeholder="가격" 
                    value="${not empty updating_menu ? updating_menu.menu_price : ''}" required>

                <c:if test="${empty updating_menu}">
                    <input type="file" id="menu_img" name="menu_img" required>
                </c:if>

            <div class="checkbox">
                <c:if test="${empty updating_menu}">
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
                        type="checkbox" name="menu_ages[]" value="90대">90대</label>
                </c:if>
            </div>
        <div>
            <div>
                <button type="submit">${empty updating_menu ? '등록' : '수정'}</button>
                </div>
            </div>
        </div>

    </form>
</body>
</html>
