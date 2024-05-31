<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<c:choose>
    <c:when test="${not empty updating_menu}">
        <jsp:include page="supervisor_form.jsp" />
    </c:when>
    <c:otherwise>
        <jsp:include page="supervisor_form.jsp" />
    </c:otherwise>
</c:choose>