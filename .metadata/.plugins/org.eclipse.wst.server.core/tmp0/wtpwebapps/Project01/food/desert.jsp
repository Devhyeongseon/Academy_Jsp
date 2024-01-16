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
        	<form action="../order/order6.food" method="post" name="카스타드튀김" class="food_list">
        		<button style="border:none;">
        		<img src="../image/desert1.png" class="food__img">
       			<div class="food__name">카스타드튀김</div>
        		<div class="food__cost">13,000원</div>
        		</button>
        	</form>
        	<form action="../order/order6.food" method="post" name="옛날빙수" class="food_list">
        		<button style="border:none;">
        		<img src="../image/desert2.png" class="food__img">
        		<div class="food__name">옛날빙수</div>
        		<div class="food__cost">24,000원</div>
        		</button>
        	</form>
        	<form action="../order/order6.food" method="post" name="과일" class="food_list">
        		<button style="border:none;">
        		<img src="../image/desert3.png" class="food__img">
        		<div class="food__name">과일</div>
        		<div class="food__cost">24,000원</div>
        		</button>
        	</form>
		</div>
		<div class="wrapper__body">
			<form action="../order/order6.food" method="post" name="" class="food_list">
        		<button style="border:none;">
        		<img src="../image/desert4.png" class="food__img">
        		<div class="food__name"></div>
        		<div class="food__cost"></div>
        		</button>
        	</form>
        	<form action="../order/order6.food" method="post" name="" class="food_list">
        		<button style="border:none;">
        		<!--<img src="" class="food__img">-->
        		<div class="food__name"></div>
        		<div class="food__cost"></div>
        		</button>
        	</form>
        	<form action="../order/order6.food" method="post" name="" class="food_list">
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