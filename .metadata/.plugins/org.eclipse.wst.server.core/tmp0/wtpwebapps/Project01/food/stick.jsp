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
        	<form action="../order/order2.food" method="post" name="모둠꼬치" class="food_list">
        		<button style="border:none;">
        		<img src="../image/stick1.png" class="food__img">
       			<div class="food__name">모둠꼬치</div>
        		<div class="food__cost">50,000원</div>
        		</button>
        	</form>
        	<form action="../order/order2.food" method="post" name="가지꼬치" class="food_list">
        		<button style="border:none;">
        		<img src="../image/stick2.png" class="food__img">
        		<div class="food__name">가지꼬치</div>
        		<div class="food__cost">10,000원</div>
        		</button>
        	</form>
        	<form action="../order/order2.food" method="post" name="감자꼬치" class="food_list">
        		<button style="border:none;">
        		<img src="../image/stick3.png" class="food__img">
        		<div class="food__name">감자꼬치</div>
        		<div class="food__cost">10,000원</div>
        		</button>
        	</form>
		</div>
		<div class="wrapper__body">
        	<form action="../order/order2.food" method="post" name="항정살꼬치" class="food_list">
        		<button style="border:none;">
        		<img src="../image/stick4.png" class="food__img">
        		<div class="food__name">항정살꼬치</div>
        		<div class="food__cost">12,000원</div>
        		</button>
        	</form>
        	<form action="../order/order2.food" method="post" name="" class="food_list">
        		<button style="border:none;">
        		<!--<img src="" class="food__img">-->
        		<div class="food__name"></div>
        		<div class="food__cost"></div>
        		</button>
        	</form>
        	<form action="../order/order2.food" method="post" name="" class="food_list">
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