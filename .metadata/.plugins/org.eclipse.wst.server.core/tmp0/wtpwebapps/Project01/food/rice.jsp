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
        	<form action="../order/order4.food" method="post" name="도시락" class="food_list">
        		<button style="border:none;">
        		<img src="../image/rice1.png" class="food__img">
       			<div class="food__name">도시락</div>
        		<div class="food__cost">15,000원</div>
        		</button>
        	</form>
        	<form action="../order/order4.food" method="post" name="전복구이덮밥" class="food_list">
        		<button style="border:none;">
        		<img src="../image/rice2.png" class="food__img">
        		<div class="food__name">전복구이덮밥</div>
        		<div class="food__cost">34,000원</div>
        		</button>
        	</form>
        	<form action="../order/order4.food" method="post" name="구운닭고기덮밥" class="food_list">
        		<button style="border:none;">
        		<img src="../image/rice3.png" class="food__img">
        		<div class="food__name">구운닭고기덮밥</div>
        		<div class="food__cost">28,000원</div>
        		</button>
        	</form>
		</div>
		<div class="wrapper__body">
        	<form action="../order/order4.food" method="post" name="공기밥" class="food_list">
        		<button style="border:none;">
        		<img src="../image/rice4.png" class="food__img">
        		<div class="food__name">공기밥</div>
        		<div class="food__cost">2,000원</div>
        		</button>
        	</form>
        	<form action="../order/order4.food" method="post" name="" class="food_list">
        		<button style="border:none;">
        		<!--<img src="" class="food__img">-->
        		<div class="food__name"></div>
        		<div class="food__cost"></div>
        		</button>
        	</form>
        	<form action="../order/order4.food" method="post" name="" class="food_list">
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