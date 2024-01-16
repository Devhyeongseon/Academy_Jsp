<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴 페이지</title>
<link rel="stylesheet" href="../css_user/user_delete.css?after">
</head>
<body>
	<div class="background">
		<div class="outerbox">
			<div class="wrapper">
				<div class="wrapper__header">
					<div class="header__title"><a href="${pageContext.request.contextPath }/login/mypage.user">회원 탈퇴</a></div>
				</div>
				<form action="deleteForm.user" method="post" class="wrapper_form">
					<div class="wrapper__body">
						<div class="body__tite">회원님의 비밀번호를 입력하세요.</div>
						<div class="body__pwcheck">
							<input type="text" class="body_input" name="pw" placeholder="패스워드를 입력하세요.">
							<button type="submit" class="input__button" value="탈퇴">탈퇴</button>
						</div>
					</div>
					${msg }
					<div class="wrapper__footer">
						<div class="wrapper__footer__title">Copyright &copy; By Choi 2024.XX.XX~</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>