<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	1. 아이디, 비밀번호, nick을 받습니다.
	2. 아이디 비밀번호가 동일하면 로그인 성공이라고 간주하고 (user_id, id)의 세션생성
	(user_nick, 닉네임)을 세션을 생성
	
	session_welcome로 이동해서 화면에 "id님 환영합니다"를 출력합니다.
	
	틀린경우는 로그인페이지로 리다이렉트 처리해주세요.
	
	session_welcome페이지에서는 a 태그를 이용해서 로그아웃 기능을 만들어주세요.
	
	session_logout페이지에서는 세션을 삭제하고 리다이렉트를 하면 됩니다.
	
	*/
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String nick = request.getParameter("nick");
	
	if (id.equals(pw)){
		session.setAttribute("user_id", id);
		session.setAttribute("user_pw", pw);
		session.setAttribute("user_nick", nick);
		
		response.sendRedirect("session_welcome.jsp");
		
	} else{
		response.sendRedirect("session_login.jsp");
	}
	
%>












