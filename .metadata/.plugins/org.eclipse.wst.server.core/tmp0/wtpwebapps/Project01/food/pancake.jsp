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
        	<form action="../order/order3.food" method="post" name="모둠전" class="food_list">
        		<button style="border:none;">
        		<img src="../image/pancake1.png" class="food__img">
       			<div class="food__name">모둠전</div>
        		<div class="food__cost">36,000원</div>
        		</button>
        	</form>
        	<form action="../order/order3.food" method="post" name="김치전" class="food_list">
        		<button style="border:none;">
        		<img src="../image/pancake2.png" class="food__img">
        		<div class="food__name">김치전</div>
        		<div class="food__cost">14,000원</div>
        		</button>
        	</form>
        	<form action="../order/order3.food" method="post" name="녹두전" class="food_list">
        		<button style="border:none;">
        		<img src="../image/pancake3.png" class="food__img">
        		<div class="food__name">녹두전</div>
        		<div class="food__cost">17,000원</div>
        		</button>
        	</form>
		</div>
		<div class="wrapper__body">
        	<form action="../order/order3.food" method="post" name="해물파전" class="food_list">
        		<button style="border:none;">
        		<img src="../image/pancake4.png" class="food__img">
        		<div class="food__name">해물파전</div>
        		<div class="food__cost">19,000원</div>
        		</button>
        	</form>
        	<form action="../order/order3.food" method="post" name="" class="food_list">
        		<button style="border:none;">
        		<!--<img src="" class="food__img">-->
        		<div class="food__name"></div>
        		<div class="food__cost"></div>
        		</button>
        	</form>
        	<form action="../order/order3.food" method="post" name="" class="food_list">
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