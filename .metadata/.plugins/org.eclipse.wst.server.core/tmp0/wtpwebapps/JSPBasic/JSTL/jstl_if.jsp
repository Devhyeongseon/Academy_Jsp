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
	<!-- 변수 선언 -->
	<c:set   var="a" value="홍길동"/>
	<!-- 출력 -->
	<c:out value="${a }"/>
	<hr>
	${a }
	<hr>
	<!-- if문 -->
	<c:if test="${param.name eq '랄로' }" >
		<b>김찬호입니다</b>
	</c:if>
	
	<c:if test="${param.name eq '이순신' }">
		<b>나의 죽음을 적에게 알리지마라.</b>	
	</c:if>	
	
	<h3>이름이 홍길동이고, 나이가 20세 이상이라면 "성인입니다"출력</h3>
	
	<c:if test="${param.name eq '홍길동' && param.age > '20' }">
		<b>성인입니다.</b>
	</c:if>
	
	
	
	
		
</body>
</html>