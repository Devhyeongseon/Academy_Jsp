<%@page import="javax.swing.text.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    request.setCharacterEncoding("utf-8");
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String birth = request.getParameter("birth");
    String age = request.getParameter("age");
    String[] hobby = request.getParameterValues("hobby");
    String[] major = request.getParameterValues("major");
    String region = request.getParameter("region");
    String content = request.getParameter("content");
    
    
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	아이디 : <%=id %><br>
	비밀번호 : <%=pw %><br>
	생년월일 : <%=birth %><br>
	나이 : <%=age %><br>
	취미 : <% for(String a : hobby){ %>
		<%=a %>
	<% } %><br>
	전공 : <% for(String a : major){ %>
		<%=a %>
	<% } %><br>
	지역 : <%=region %><br>
	
	소개글: <%=content %><br>



</body>
</html>