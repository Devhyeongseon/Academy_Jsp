<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>a태그로 get방식 사용하기</h3>
	<!--
		get방식은 반드시 form이 필요한 것은 아니고, a 링크를 이용해서
		데이터를 넘겨줄 주소뒤에 ?키=값(&키=값)(&키=값)(&키=값)
	  -->
	
	<a href="ex04.jsp?age=20&name=홍길동">ex04로 이동하기</a>
</body>
</html>