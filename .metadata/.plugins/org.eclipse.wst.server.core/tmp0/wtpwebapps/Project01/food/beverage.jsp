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
        	<form action="../order/order7.food" method="post" name="콜라" class="food_list">
        		<button style="border:none;">
        		<img src="../image/beverage1.png" class="food__img">
       			<div class="food__name">콜라</div>
        		<div class="food__cost">2,000원</div>
        		</button>
        	</form>
        	<form action="../order/order7.food" method="post" name="제로콜라" class="food_list">
        		<button style="border:none;">
        		<img src="../image/beverage2.png" class="food__img">
        		<div class="food__name">제로콜라</div>
        		<div class="food__cost">2,000원</div>
        		</button>
        	</form>
        	<form action="../order/order7.food" method="post" name="스프라이트" class="food_list">
        		<button style="border:none;">
        		<img src="../image/beverage3.png" class="food__img">
        		<div class="food__name">스프라이트</div>
        		<div class="food__cost">2,000원</div>
        		</button>
        	</form>
		</div>
		<div class="wrapper__body">
        	<form action="../order/order7.food" method="post" name="환타" class="food_list">
        		<button style="border:none;">
        		<img src="../image/beverage4.png" class="food__img">
        		<div class="food__name">환타</div>
        		<div class="food__cost">2,000원</div>
        		</button>
        	</form>
        	<form action="../order/order7.food" method="post" name="소다" class="food_list">
        		<button style="border:none;">
        		<img src="../image/beverage5.png" class="food__img">
        		<div class="food__name">소다</div>
        		<div class="food__cost">2,000원</div>
        		</button>
        	</form>
        	<form action="../order/order7.food" method="post" name="핫식스" class="food_list">
        		<button style="border:none;">
        		<img src="../image/beverage6.png" class="food__img">
        		<div class="food__name">핫식스</div>
        		<div class="food__cost">2,000원</div>
        		</button>
        	</form>
		</div>
	</div>
</body>
</html>