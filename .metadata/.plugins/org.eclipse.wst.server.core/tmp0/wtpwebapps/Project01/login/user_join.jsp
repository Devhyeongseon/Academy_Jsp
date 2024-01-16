<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
<link rel="stylesheet" href="../css_user/user_join.css?after">
</head>
<body>
	<div class="background">
		<div class="outerbox">
			<div class="wrapper">
				<div class="wrapper__header">
					<div class="header__title">회원가입</div>
				</div>
				<form action="joinForm.user" method="post" class="wrapper_form">
					<div class="wrapper__body">
						<input type="text" class="body_input" name="id" placeholder="아이디를 입력하세요." required>
						<input type="password" class="body_input" name="pw" placeholder="비밀번호를 입력하세요." required>
						<input type="text" class="body_input" name="name" placeholder="이름을 입력하세요." required>
						<input type="email" class="body_input" name="email" placeholder="이메일을 입력하세요." >
					</div>
					<div class="wrapper__footer">
						<div class="footer__button">
							<button class="join_button" type="submit" value="로그인">회원가입</button>
							<button class="join_button" type="reset" value="초기화">초기화</button>
						</div>
						${msg }
						<div class="wrapper__footer__title">Copyright &copy; By Choi 2024.XX.XX~</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>