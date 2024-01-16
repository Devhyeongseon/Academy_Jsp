<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정 페이지</title>
<link rel="stylesheet" href="../css_user/user_update.css?after">
</head>
<body>
	<div class="background">
		<div class="outerbox">
			<div class="wrapper">
				<div class="wrapper__header">
					<div class="header__title"><a href="${pageContext.request.contextPath }/login/mypage.user">회원 정보 수정</a></div>
				</div>
				<form action="updateForm.user" method="post" class="wrapper_form">
					<div class="wrapper__body">
						<input type="text" class="body_input" name="id" value="${vo.id }" readonly="readonly">
						<input type="password" class="body_input" name="pw" placeholder="비밀번호를 입력하세요." >
						<input type="text" class="body_input" name="name" value="${vo.name }" >
						<input type="text" class="body_input" name="email" value="${vo.email }" >
					</div>
					<div class="wrapper__footer">
						<div class="footer__button">
							<button class="join_button" type="submit" value="수정">수정</button>
							<button class="join_button" type="reset" value="초기화">초기화</button>
						</div>
						<div class="wrapper__footer__title">Copyright &copy; By Choi 2024.XX.XX~</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>