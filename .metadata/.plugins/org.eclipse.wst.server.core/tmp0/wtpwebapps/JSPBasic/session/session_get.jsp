<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//세션의 값을 얻는방법 getAttribute(키)
	String user_id = (String)session.getAttribute("auth");
	String user_name = (String)session.getAttribute("user_name");
	
	//세션의 유효시간 (기본 1800초=30분)
	int time = session.getMaxInactiveInterval();
	
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	세션에 저장된 값 : <%=user_id %><br>
	세션에 저장된 값 : <%=user_name %><br>
	세션의 시간 : <%=time %>
	
	<a href="session_remove.jsp">세션 삭제하기</a>


</body>
</html>