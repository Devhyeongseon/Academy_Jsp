<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/include/header.jsp" %>

	<h3>게시판 글 작성 페이지</h3>
	
	
	<form action="registForm.board" method="post">
		<table border="1" width="500">
			<tr>
				<td>작성자</td>
				<td style="padding-right:315px">
					<input type="text" name="writer" value="${sessionScope.user_id }" size="10" required readonly="readonly">
				</td>
			</tr>
			<tr>
				<td>제목</td>
				<td style="padding-right:250px">
					<input type="text" name="title" required>
				</td>
			</tr>
			<tr>
				<td>내용</td>
				<td>
					<textarea rows="10" style="width: 95%;" name="content" resize: none;></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="작성 완료" onclick="">
					&nbsp;&nbsp;
					<input type="button" value="목록" onclick="location.href='list.board';">         
				</td>										
			</tr>
			
		</table>
	</form>
	





<%@ include file="/include/footer.jsp" %>
 			