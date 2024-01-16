<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/index.css?after">
</head>
<body>
	<div class="background">
		<div class="outerbox">
			<div class="wrapper">
				<div class="wrapper__header">
					<div class="header__title">J ORDER</div>
				</div>
				<!-- 로그인, 회원가입 버튼 -->
				<div class="wrapper__body">
					<a href="${pageContext.request.contextPath }/login/login.user">
					<button class="wrapper__body__login" type="button" >로그인</button>
					</a>
					<a href="${pageContext.request.contextPath }/login/join.user">
					<button class="wrapper__body__login" type="button" >회원가입</button>
					</a>
				</div>

				<div class="wrapper__footer">
					<div class="wrapper__footer__title">Copyright &copy; By Choi 2024.XX.XX~</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>