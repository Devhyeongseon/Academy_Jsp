<%@page import="com.example.bean.MemberVO"%>
<%@page import="javax.print.attribute.standard.Media"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	
	//id,name,email 을 자바빈에 저장
	MemberVO vo = new MemberVO(id, name, email);
	
	request.setAttribute("vo", vo); //저장

	request.getRequestDispatcher("ex03.jsp").forward(request, response);
%>