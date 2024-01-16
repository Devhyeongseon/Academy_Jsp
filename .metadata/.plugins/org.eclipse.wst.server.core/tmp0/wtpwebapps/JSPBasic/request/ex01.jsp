<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>데이터 전송하기(get방식)</h3>
	<!-- 데이터를 전송할 경로를 action에 적는다  -->
	
	<form action = "ex02.jsp">
	<!-- value는 input이 가지는 실제 값이다.  -->
		아이디:<input type="text" name="id" ><br>
		비밀번호<input type="password" name="pw"><br>
		관심분야:
		<input type="checkbox" name="inter" value="롤">롤
		<input type="checkbox" name="inter" value="디아">디아
		<input type="checkbox" name="inter" value="옵치">옵치
		<input type="checkbox" name="inter" value="배그">배그
		
		<br>
		<input type="submit" value="전송하기">	
	
	</form>



</body>
</html>