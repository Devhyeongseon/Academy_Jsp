<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


 <%@ include file="/include/header.jsp" %>
		${msg }

		<h3>회원가입</h3>
		<form action="joinForm.user" method="post">
			<table border="1">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id"></td>

				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pw"></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="text" name="email"></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input type="text" name="address"></td>
				</tr>
				<tr>
					<td>성별</td>
					<td><input type="radio" name="gender" value="M">남자 <input
						type="radio" name="gender" value="F">여자</td>
				</tr>
			</table>
			<br>
	<input type="submit" value="가입하기">
	<input type="reset" value="취소" onclick="">
		</form>
<%@ include file="/include/footer.jsp" %>