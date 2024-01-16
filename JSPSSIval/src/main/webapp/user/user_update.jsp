<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


 <%@ include file="/include/header.jsp" %>
		<h3>회원정보 수정 페이지</h3>
		
		<form action="updateForm.user" method="post">
			<table border="1">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id" value="${vo.id }"
						readonly="readonly"></td>

				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pw"></td>
				</tr>
				<tr>
				<tr>
					<td>비밀번호 확인</td>
					<td><input type="password" name="pw_check"></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" value="${vo.name }"></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="text" name="email" value="${vo.email }"></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input type="text" name="address" value="${vo.address }"></td>
				</tr>
				<tr>
					<td>성별</td>
					<td><input type="radio" name="gender"
						${vo.gender == 'M' ? 'checked' : '' } value="M">남자 <input
						type="radio" name="gender" ${vo.gender == 'F' ? 'checked' : '' }
						value="F">여자</td>
				</tr>
			</table>
			<br> 
			<input type="submit" value="수정하기"> 
			<input
				type="reset" value="취소" onclick="">
		</form>
<%@ include file="/include/footer.jsp" %>