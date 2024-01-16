<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%


String user_id = (String)session.getAttribute("user_id");
String user_pw = (String)session.getAttribute("user_pw");
String user_nick = (String)session.getAttribute("user_nick");

int time = session.getMaxInactiveInterval();
%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3><%=user_id %>님 환영합니다!</h3>
	
	세션에 저장된 ID : <%=user_id %><br>
	세션에 저장된 PW : <%=user_pw %><br>
	세션에 저장된 닉네임 : <%=user_nick %><br>
	세션의 시간 : <%=time %>
	<a href="session_logout.jsp">[로그아웃]</a>
	

</body>
</html>