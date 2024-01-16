<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    if( session.getAttribute("auth_ok") == null){
    	response.sendRedirect("auth.jsp");
    }
    
    ArrayList<String> list = new ArrayList<>();
    if(application.getAttribute("list") != null){
    	list = (ArrayList<String>)application.getAttribute("list");
    	
    }
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!--
	checkbox, radio 버튼을 선택 못하게 하는 옵션 disabled
	checkbox, radio 버튼을 미리 선택하는 옵션 checked
	select 박스의 미리 값을 선택하는 옵션 selected
	input태그를 읽기전용으로(값수정 불가) readonly	
	input태그의 값을 반드시 지정 required
	-->
	
	
	
	
	
	
	
	
	
	<div style="text-align : center;">
		<h3>영화 좌석예약</h3>
		<h4>예약할 좌석을 체크한 후 예약 버튼을 누르세요.</h4>
		<hr>
		
		<b>좌석배치도</b>
		<br>
		<form action="reserve_ok.jsp" method="post">
			&nbsp;&nbsp;&nbsp;
			<% for(char c = 'A'; c<='Z';c++){%>
				<small><%=c %></small>	
				&nbsp;			
			<%} %>
			<br>
			<% for(int i = 1; i<= 6; i++){ %>
				<%=i %>
				<% for(char c = 'A'; c <= 'Z'; c++){ %>
					<input type="checkbox" name="seat" value="<%=i%>-<%=c%>" <%=list.contains(i+"-"+c) ? "disabled" : "" %>>
				<%} %>
				<br>
				<% if(i ==3){ %>
					<br>
				<%} %>
			<%} %>	
			
			<br>
			
			<input type="submit" value="예약하기">
			<input type="reset" value="초기화">
			
			
		</form>
	
	</div>

</body>
</html>