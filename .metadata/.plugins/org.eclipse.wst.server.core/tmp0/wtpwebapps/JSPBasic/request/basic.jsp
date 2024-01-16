<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
//request 는 자동으로 생성되는ㄷ 내장객체. 그래서 변수에 . 찍어서사용.

	StringBuffer url = request.getRequestURL();//전체주소
	String uri = request.getRequestURI();//서버주소를 뺸 나머지
	String path = request.getContextPath();	//was가 프로젝트구분하는 최상위 경로
	String addr = request.getRemoteAddr();//요청한 사람의 아이피주소
	String query = request.getQueryString();
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>리퀘스트 객체 확인하기</h3>
	URL :  <%=url %><br>
	URI : <%=uri %><br>
	Context Path : <%=path %><br>
	접속한 주소 : <%= addr %><br>
	쿼리스트링 : <%= query %><br>




</body>
</html>