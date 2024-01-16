<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    
    String name = request.getParameter("name");
    String age = request.getParameter("age");
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	a링크로 넘어온값:<%=name %><br>
	a링크로 넘어온값:<%=age %><br>


</body>
</html>