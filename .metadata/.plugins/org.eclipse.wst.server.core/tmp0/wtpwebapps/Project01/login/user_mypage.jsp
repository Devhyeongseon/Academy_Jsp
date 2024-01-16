<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지</title>
<link rel="stylesheet" href="../css_user/user_mypage.css?after">
</head>
<body>
	<div class="background">
		<div class="outerbox">
			<div class="wrapper">
				<div class="wrapper__header">
					<div class="header__title"><a href="${pageContext.request.contextPath }/order/main.jsp">My Page</a></div>
				</div>
				<div class="wrapper__body">
					<div class="body__id">아이디 : ${sessionScope.user_id}</div>
					<div class="body__name"><b>(${sessionScope.user_name })</b> 님의 정보를 관리합니다.</div>
					<div class="body__modify">
						<a href="${pageContext.request.contextPath }/login/update.user">[회원 정보 변경]</a>&nbsp;&nbsp;
						<a href="${pageContext.request.contextPath }/login/delete.user">[회원 탈퇴]</a>
					</div>
				</div>
				<div class="divideLine"></div>
				<div class="wrapper__footer">
					<div class="wrapper__footer__title">Copyright &copy; By Choi 2024.XX.XX~</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>