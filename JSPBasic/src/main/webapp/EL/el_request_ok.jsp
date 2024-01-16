<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${name }<br>
	${vo.id }<br>
	${vo.name }<br>
	${vo.email }<br>
	${requestScope.vo.name }<br>
	${requestScope.vo.email }<br>
	
	<!--sessionScope 도 생략이 됩니다.  -->
	${now }<br>
	${sessionScope.now}<br>
	

</body>
</html>