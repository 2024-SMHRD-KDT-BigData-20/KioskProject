<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%
    String[] categories = {"커피", "티", "에이드/주스", "스무디/프라페", "디카페인", "음료", "푸드"};
    String[] ages = {"10~20대", "30~40대", "50대 이상"};
    request.setAttribute("categories", categories);
    request.setAttribute("ages", ages);
%>

<c:set var="cpath" value="${pageContext.request.contextPath}" />
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
                <div class="container">
                    <label class="label_tit" for="menu_category">분류</label>
                <div class="ctn-inputs radio">
                    <c:forEach var="category" items="${categories}">
                        <label>
                            <input type="radio" class="style-radio" name="menu_category" value="${category}" 
                                <c:if test="${updating_menu.menu_category == category}">checked</c:if>>${category}
                        </label>
                    </c:forEach>
                </div>
                </div>
                
                <div>
                    <label class="label_tit" for="menu_name_eng">메뉴(영문)</label>
                <input type="text" id="menu_name_eng" name="menu_name_eng" 
                    value="${not empty updating_menu ? updating_menu.menu_name_eng : ''}" required>
                </div>
                
                <div>
                    <label class="label_tit" for="menu_name_kor">메뉴(한글)</label>
                <input type="text" id="menu_name_kor" name="menu_name_kor" 
                    value="${not empty updating_menu ? updating_menu.menu_name_kor : ''}" required>
                </div>
                
                <div>
                    <label class="label_tit" for="menu_price">가격</label>
                <input type="text" id="menu_price" name="menu_price"
                    value="${not empty updating_menu ? updating_menu.menu_price : ''}" required>
                </div>
                <div class="container1">
                    <label class="label_tit" for="menu_img">이미지</label>
                    <div>
                        	<c:if test="${not empty menuImgBase64}">
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        	<img src="data:image/jpeg;base64,${menuImgBase64}" alt="${updating_menu.menu_name_eng}" style="width: 80px; height: 80px;">
                        	</c:if>
                        <input type="file" id="menu_img" name="menu_img" ${empty updating_menu ? 'required' : ''}>
                    </div>
                </div>
          
            <div class="container">
                <label class="label_tit" for="menu_age">추천연령대</label>
                    <div class="checkbox">
                        <c:forEach var="age" items="${ages}">
                            <label>
                                <input type="checkbox" name="menu_ages[]" value="${age}"
                                    <c:if test="${age == '10~20대' && menu_reco_ages[0] == 1}">checked</c:if>
                                    <c:if test="${age == '30~40대' && menu_reco_ages[1] == 1}">checked</c:if>
                                    <c:if test="${age == '50대 이상' && menu_reco_ages[2] == 1}">checked</c:if>
                                    >${age}
                            </label>
                        </c:forEach>
                    </div>
            </div>
            <div>
                <button type="submit">${empty updating_menu ? '등록' : '수정'}</button>
            </div>
        </div>

    </form>
</body>
</html>
