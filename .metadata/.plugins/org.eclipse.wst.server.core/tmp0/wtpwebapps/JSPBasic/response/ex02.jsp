<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
//포스트방식 인코딩 필수
request.setCharacterEncoding("utf-8");

String name = request.getParameter("name");
String age = request.getParameter("age");

int result = Integer.parseInt(age);

if (result >= 20) {
	response.sendRedirect("ex02_ok.jsp");//ex02_ok.jsp로 화면이동
} else {
	response.sendRedirect("ex02_no.jsp");
}

//여기에 자바코드만있다면? ->> servlet으로 변경가능
%>
