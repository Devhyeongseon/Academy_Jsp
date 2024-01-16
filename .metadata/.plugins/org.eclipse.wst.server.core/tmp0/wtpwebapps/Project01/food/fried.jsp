<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인메뉴</title>
<link rel="stylesheet" href="../css_food/food.css?after">
</head>
<body>
	<div class="wrapper">
		<div class="wrapper__body">
        	<form action="../order/order5.food" method="post" name="후라이드치킨" class="food_list">
        		<button style="border:none;">
        		<img src="../image/fried1.png" class="food__img">
       			<div class="food__name">후라이드치킨</div>
        		<div class="food__cost">24,000원</div>
        		</button>
        	</form>
        	<form action="../order/order5.food" method="post" name="양념치킨" class="food_list">
        		<button style="border:none;">
        		<img src="../image/fried2.png" class="food__img">
        		<div class="food__name">양념치킨</div>
        		<div class="food__cost">26,000원</div>
        		</button>
        	</form>
        	<form action="../order/order5.food" method="post" name="간장마늘치킨" class="food_list">
        		<button style="border:none;">
        		<img src="../image/fried3.png" class="food__img">
        		<div class="food__name">간장마늘치킨</div>
        		<div class="food__cost">26,000원</div>
        		</button>
        	</form>
		</div>
		<div class="wrapper__body">
        	<form action="../order/order5.food" method="post" name="현무암치킨" class="food_list">
        		<button style="border:none;">
        		<img src="../image/fried4.png" class="food__img">
        		<div class="food__name">현무암치킨</div>
        		<div class="food__cost">48,000원</div>
        		</button>
        	</form>
        	<form action="../order/order5.food" method="post" name="" class="food_list">
        		<button style="border:none;">
        		<!--<img src="" class="food__img">-->
        		<div class="food__name"></div>
        		<div class="food__cost"></div>
        		</button>
        	</form>
        	<form action="../order/order5.food" method="post" name="" class="food_list">
        		<button style="border:none;">
        		<!--<img src="" class="food__img">-->
        		<div class="food__name"></div>
        		<div class="food__cost"></div>
        		</button>
        	</form>
		</div>
	</div>
</body>
</html>