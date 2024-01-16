<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
//세션삭제하기

session.removeAttribute("user_id");//삭제
session.removeAttribute("user_name");//삭제

//세션을 통째로 제거
session.invalidate();
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<a href="session_get.jsp">세션 확인하기</a>


</body>
</html>