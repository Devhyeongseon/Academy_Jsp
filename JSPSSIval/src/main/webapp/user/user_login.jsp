<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


 <%@ include file="/include/header.jsp" %>
		<h3>로그인</h3>
		<form action="loginForm.user" method="post">
			<table border="1">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id"></td>
				</tr>

				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pw"></td>
				</tr>
			</table>
			<br>
			<input type="submit" value="로그인">
		</form>
		${msg }
<%@ include file="/include/footer.jsp" %>