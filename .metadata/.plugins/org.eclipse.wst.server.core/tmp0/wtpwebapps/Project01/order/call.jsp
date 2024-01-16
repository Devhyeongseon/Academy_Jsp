<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직원 호출</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/call.css?after">
</head>
<body>
	<div class="wrapper">
		<div class="wrapper__left">
			<div class="wrapper__left__body">
				<button class="left__body__call" type="button">냅킨</button>
				<button class="left__body__call" type="button">물티슈</button>
				<button class="left__body__call" type="button">물 리필</button>
				<button class="left__body__call" type="button">얼음</button>
				<button class="left__body__call" type="button">기본안주리필</button>
			</div>
			<div class="wrapper__left__body">
				<div class="left__body__call">젓가락</div>
				<div class="left__body__call">앞접시</div>
				<div class="left__body__call">국그릇</div>
				<div class="left__body__call">이쑤시개</div>
				<div class="left__body__call">유아 식기</div>
			</div>
			<div class="wrapper__left__body">
				<div class="left__body__call">담요</div>
				<div class="left__body__call">핸드폰충전</div>
				<div class="left__body__call">테이블정리</div>
				<div class="left__body__call">포장</div>
				<div class="left__body__call">결제</div>
			</div>
		</div>
		<div class="wrapper__right">
			<div class="wrapper__body">
				<div class="wrapper__right__header">주문목록</div>
				<div class="wrapper__right__divideLine"></div>
				<div class="wrapper__right__footer">호출하기</div>
			</div>
		</div>
	</div>
</body>
</html>