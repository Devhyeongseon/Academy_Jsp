<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


 <%@ include file="/include/header.jsp" %>
		<h3>MY PAGE</h3>
		
		<p>
			${sessionScope.user_id}<b style="color: blue;">(${sessionScope.user_name })</b>님의
			정보를 관리합니다.
		</p>

		<a href="update.user">[회원 정보 변경]</a>&nbsp;&nbsp; <a href="delete.user">[회원
			탈퇴]</a>
<%@ include file="/include/footer.jsp" %>