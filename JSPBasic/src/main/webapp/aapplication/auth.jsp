<%@page import="java.util.UUID"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//간단한 랜덤 문자열 생성
	String uuid = UUID.randomUUID().toString();	
	String ran = uuid.split("-")[1];
	
	System.out.println("발급한 값: " + ran);
	//각각 사람별로 다음페이지에서 인증해야한다면?
	session.setAttribute("auth", ran);
	
%>    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>인증페이지</h3>
	<h3>아래 인증문자를 입력하세요</h3>
	<b><del><%=ran %></del></b>
	
	<form action="auth_ok.jsp" method="post">
		인증문자:<input type="text" name="code">
		<input type="submit" value="인증하기">
	
	
	
	</form>
	
	



</body>
</html>