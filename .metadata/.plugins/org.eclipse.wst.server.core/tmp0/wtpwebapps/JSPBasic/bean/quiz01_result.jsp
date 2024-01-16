<%@page import="com.example.bean.StudentVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%
    	StudentVO svo = (StudentVO)request.getAttribute("svo");
    
    	int kor = Integer.parseInt(svo.getKor());
    	int math = Integer.parseInt(svo.getMath());
    	double avg =(kor + math)/2;
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	아이디:<%=svo.getId() %><br>
	비밀번호:<%=svo.getPw() %><br>
	이름:<%=svo.getName() %><br>
	주소:<%=svo.getAddress() %><br>
	국어:<%=svo.getKor() %><br>
	수학:<%=svo.getMath() %><br>
	<hr>
	평균:<%= avg %><br>
	
	


</body>
</html>