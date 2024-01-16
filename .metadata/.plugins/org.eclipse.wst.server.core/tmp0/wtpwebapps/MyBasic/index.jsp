<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제이오더에 오신걸 환영합니다</title>
<style>
html, body {
	width: 100%;
	height: 100%;
	margin: 0;
}

.background {
	width: 100vw;
	height: 100vh;
	background-color: tomato;
	display: flex;
	justify-content: center;
	align-items: center;
}

.container {
	width: 1200px;
	height: 800px;
	background: pink;
	border: 1px solid white;
	border-radius: 50px;
	/* padding: 10px 30px; */ /* 더커짐 */
	box-shadow: 5px 5px 5px 5px gray;
	
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	
	
	
}

.loginbox {
	width: 600px;
	height: 400px;
	background: white;
	
	text-align: center;
}
</style>


</head>
<body>
	<div class="background">
		<div class="container">
			<h1>J-ORDER</h1>
			<div class="loginbox">
				<br><h1>로그인</h1><br>
				<form action="" method="post">
					 ID: <input type="text" name="id" placeholder="아이디"><br>
					 PW: <input type="password" name="pw" placeholder="비밀번호"><br>
					 <input	type="submit" value="로그인" class="btn btn-default">&nbsp;&nbsp;
				 	 <input type="button" value="회원가입" class="btn btn-default" onclick="">
				</form>

			</div>

		</div>
	</div>


</body>
</html>