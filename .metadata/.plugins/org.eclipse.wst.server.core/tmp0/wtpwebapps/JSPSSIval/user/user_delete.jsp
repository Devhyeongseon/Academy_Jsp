<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


 <%@ include file="/include/header.jsp" %>
		<h3>회원탈퇴를 진행합니다.</h3>

		<form action="deleteForm.user" method="post">
			비밀번호: <input type="password" name="pw">&nbsp; <input
				type="submit" value="확인" class="btn btn-default"> <br>
			${msg }
		</form>
<%@ include file="/include/footer.jsp" %>