<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
/*
1. 정수를 저장하는 HashSet을 생성합니다.
2. 1~45까지 랜덤하게 생성되는 로또번호를 set에 저장
3. 화면에 출력
4. header,footer는 include해주세요.

*/
%>
<%@ include file="include_header.jsp"%>
<section>
	<h3>본문영역</h3>
	<%
	HashSet<Integer> num = new HashSet<Integer>();
	while (num.size() < 7) {
		num.add((int) ((Math.random() * 45) + 1));

	}
	Iterator iter = num.iterator();
	%>
	<%while (iter.hasNext()) { %> 
		<%=iter.next() %><br>
	<%} %>
	
	




</section>
<%@ include file="include_footer.jsp"%>