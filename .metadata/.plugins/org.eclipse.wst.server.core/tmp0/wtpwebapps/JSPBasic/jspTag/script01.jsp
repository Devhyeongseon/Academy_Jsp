<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Script01</title>
</head>
<body>

	<%
	//main 메서드라고 생각하면된다.

	out.println("hello world");
	//System.out.println 이건 콘솔창에 출력
	Random ran = new Random();

	/* int a = ran.nextInt(); */
	int a = (int) (Math.random() * 20) + 1;

	out.println("<br>변수값:" + a);
	%>
	<%
	if (a >= 10) {
		out.println("<br>10보다 큽니다.");
	} else {
		out.println("<br>10보다 작습니다.");
	}
	//1st
	if (a >= 10) {
		out.println("<br><input type='checkbox' name='ex'>남자");
	} else {
		out.println("<br><input type='checkbox' name='ex'>여자");
	}
	%>

	<br>
	<%	if (a >= 10) {	%>
	<input type='checkbox' name='ex'>남자
	<%	} else {	%>
	<input type='checkbox' name='ex'>여자
	<%	}	%>




</body>
</html>