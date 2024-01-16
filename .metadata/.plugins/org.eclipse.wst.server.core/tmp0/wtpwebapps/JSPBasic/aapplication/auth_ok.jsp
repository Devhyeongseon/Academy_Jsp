<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/* 
	세션에 저장된 auth와, 사용자가 입력한 code를 비교해서
	값이 같다면, 인증여부를 저장하는 용도의 세션을 하나 생성을하고
	reserv.jsp로 이동합니다.
	
	같지않다면 다시 인증페이지로 돌려보내줘라.
*/
request.setCharacterEncoding("utf-8");
String code = request.getParameter("code");
String ran = (String)session.getAttribute("auth");

 if(code.equals(ran)){
	session.setAttribute("auth_ok", true);
	response.sendRedirect("reserve.jsp");
 }else{
	 response.sendRedirect("auth.jsp");
 }
 
 


%>




