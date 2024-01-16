<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>Quiz03.jsp</h3>
	<!--
		get방식은 반드시 form이 필요한 것은 아니고, a 링크를 이용해서
		데이터를 넘겨줄 주소뒤에 ?키=값(&키=값)(&키=값)(&키=값)
	  -->
	아래처럼 a 링크를 생성하고,a태그 클릭시 학생번호를 출력<br>
	<%for (int i=1;i<=100;i++){%>
	<a href="Quiz03_OK.jsp?num=<%=i%>"><%=i%>번 학생</a><br>		
	<%} %>
	
	
	
	
</body>
</html>