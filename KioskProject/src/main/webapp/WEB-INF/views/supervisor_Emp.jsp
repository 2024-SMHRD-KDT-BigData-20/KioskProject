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
    
<link rel="stylesheet" href="<c:url value='/resources/css/nav.css' />">
<link rel="stylesheet" href="<c:url value='/resources/css/style.css' />">
</head>
<body>

    <nav class="supervisor_nav" >
        <ul>
             <li><a class="navLink" href="${cpath}/menu_list.do">상품관리</a></li>
             <li><a class="navLink" href="supervisor_MM.do">회원관리</a></li>
             <li><a class="navLink" href="supervisor_Emp.do">하위 관리자 관리</a></li>
             <li><a class="navLink" href="supervisor_Stat.do">판매량 통계</a></li>
        </ul>
    </nav>

    <div class="search">
        <input type="text" placeholder="이름 검색">
        <img src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">
    </div>

    <div class="board_wrap">
        <div class="board_list_wrap">
            <div class="board_list">
                <div class="top">
                    <div class="work_idx">번호</div>
                    <div class="work_name">이름</div>
                    <div class="work_tel">휴대전화</div>
                    <div class="work_auth">관리권한</div>
                    <div class="work_rank">직급</div>
                </div>
                <div>
                    <div class="work_idx">1</div>
                    <div class="work_name">김가영</div>
                    <div class="work_tel">010-1111-1111</div>
                    <div class="work_auth">상품, 회원, 하위관리자</div>
                    <div class="work_rank">매니저</div>
                    <div class="bt_wrap">
                        <a href="#" class="modify">수정</a>
                        <a href="#" class="delete">삭제</a>
                    </div>
                </div>
                <div>
                    <div class="work_idx">1</div>
                    <div class="work_name">이나영</div>
                    <div class="work_tel">010-2222-2222</div>
                    <div class="work_auth">상품, 회원</div>
                    <div class="work_rank">리더</div>
                    <div class="bt_wrap">
                        <a href="" class="modify">수정</a>
                        <a href="#" class="delete">삭제</a>
                    </div>
                </div>
                <div>
                    <div class="work_idx">3</div>
                    <div class="work_name">박다영</div>
                    <div class="work_tel">010-3333-3333</div>
                    <div class="work_auth">회원</div>
                    <div class="work_rank">직원</div>
                    <div class="bt_wrap">
                        <a href="#" class="modify">수정</a>
                        <a href="#" class="delete">삭제</a>
                    </div>
                </div>
                <div>
                    <div class="work_idx">4</div>
                    <div class="work_name">이라영</div>
                    <div class="work_tel">010-4444-4444</div>
                    <div class="work_auth">회원</div>
                    <div class="work_rank">직원</div>
                    <div class="bt_wrap">
                        <a href="#" class="modify">수정</a>
                        <a href="#" class="delete">삭제</a>
                    </div>
                </div>
                </div>
            </div>
            
            <div class="bt_wrap">
                <a href="#" class="on">등록</a>
            </div>
        </div>
    </div>
</body>
</html> 
