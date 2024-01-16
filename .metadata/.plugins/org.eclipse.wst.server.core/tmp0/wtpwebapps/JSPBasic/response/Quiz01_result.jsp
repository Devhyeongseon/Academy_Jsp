<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

String name = request.getParameter("name");
String sc1 = request.getParameter("sc1");
String sc2 = request.getParameter("sc2");
String sc3 = request.getParameter("sc3");
double sc4 = Double.parseDouble(sc1);
double sc5 = Double.parseDouble(sc2);
double sc6 = Double.parseDouble(sc3);
//int avg = (Integer.parseInt(sc1)+Integer.parseInt(sc2)+Integer.parseInt(sc3))/3;
double avg1 = (sc4+sc5+sc6)/3;
	if(avg1 >= 60){
		response.sendRedirect("Quiz01_ok.jsp");
	}else{
		response.sendRedirect("Quiz01_no.jsp");
	}



%>
    
    
    
