<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	request.setCharacterEncoding("utf-8");
%>     
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:choose>
		<c:when test="${param.name eq '홍길동' }">
			홍길동입니다.
		</c:when>
		<c:when test="${param.name eq '이순신' }">
			이순신입니다.
		</c:when>
		<c:otherwise>
			홍길동,이순신이 아닙니다.
		</c:otherwise>
	</c:choose>
	
	<hr>
	
<c:choose>
    <c:when test="${param.score >= '95' }">
        A+
    </c:when>
    <c:when test="${param.score >= '90' }">
        A
    </c:when>
    <c:when test="${param.score >= '80' }">
        B
    </c:when>
    <c:otherwise>
        F
    </c:otherwise>
</c:choose>


</body>
</html>