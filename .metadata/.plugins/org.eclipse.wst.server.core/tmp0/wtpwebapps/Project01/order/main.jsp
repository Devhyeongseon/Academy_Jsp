<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=], initial-scale=1.0">
<meta charset="UTF-8">
<title>주문화면</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/main.css?after">
<script src="../js/food.js"></script>
</head>
<body>
	<div class="background">
		<div class="outerbox">
			<div class="wrapper">
				<div class="wrapper__left">
					<div class="wrapper__left__header">
						<div class="left__header__img"></div>
						<div class="left__header__title">주문하기</div>
					</div>
					<div class="wrapper__left__body">
						<div class="left__body__dish" id="menu__food" onclick="menufood()">
							<input type="hidden" name="category">안주
						</div>
						<div class="left__body__dish" id="menu__stick" onclick="menustick()">
							<input type="hidden" name="category" >꼬치
						</div>
						<div class="left__body__dish" id="menu__fried" onclick="menufried()">
							<input type="hidden" name="category" >튀김
						</div>
						<div class="left__body__dish" id="menu__pancake" onclick="menupancake()">
							<input type="hidden" name="category" >전
						</div>
						<div class="left__body__dish" id="menu__rice" onclick="menurice()">
							<input type="hidden" name="category" >밥&면
						</div>
						<div class="left__body__dish" id="menu__desert" onclick="menudesert()">
							<input type="hidden" name="category" >디저트
						</div>
						<div class="left__body__dish" id="menu__beverage" onclick="menubeverage()">
							<input type="hidden" name="category" >음료
						</div>
						<div class="left__body__dish" id="menu__drink" onclick="menudrink()">
							<input type="hidden" name="category" >주류
						</div>
					</div>
					<div class="wrapper__left__footer">
						<button class="left__footer__button" id="menuCall" onclick="menuCall()">직원 호출</button>
					</div>
				</div>
				<div class="wrapper__right">
					<div class="wrapper__right__header">
						<div class="right__header__menu">
							<div class="header__menu__title">
								<iframe id="content__title" src="../title/mainfood.jsp"></iframe>
							</div>
						</div>
						<div class="right__header__right">
							<div class="header__right__list">
								<a href="${pageContext.request.contextPath }/login/mypage.user">
									<button class="header__right__mypage">마이페이지</button>
								</a>
								<a href="${pageContext.request.contextPath }/order/basket.food">
									<button class="header__right__basket">장바구니</button>
								</a>
								<a href="${pageContext.request.contextPath }/login/logout.user">
									<button class="header__right__logout">로그아웃</button>
								</a>
							</div>
						</div>
					</div>
					<div class="wrapper__right__body">
						<iframe id="content__frame" src="../food/mainfood.jsp"></iframe>
					</div>
					<div class="wrapper__right__footer"></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

