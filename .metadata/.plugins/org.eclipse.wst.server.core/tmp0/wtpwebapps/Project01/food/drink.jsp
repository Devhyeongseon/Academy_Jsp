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
        	<form action="../order/order8.food" method="post" name="생맥주" class="food_list">
        		<button style="border:none;">
        		<img src="../image/drink1.png" class="food__img">
       			<div class="food__name">생맥주</div>
        		<div class="food__cost">6,000원</div>
        		</button>
        	</form>
        	<form action="../order/order8.food" method="post" name="테라" class="food_list">
        		<button style="border:none;">
        		<img src="../image/drink2.png" class="food__img">
        		<div class="food__name">테라</div>
        		<div class="food__cost">7,000원</div>
        		</button>
        	</form>
        	<form action="../order/order8.food" method="post" name="소주" class="food_list">
        		<button style="border:none;">
        		<img src="../image/drink3.png" class="food__img">
        		<div class="food__name">소주</div>
        		<div class="food__cost">6,000원</div>
        		</button>
        	</form>
		</div>
		<div class="wrapper__body">
        	<form action="../order/order8.food" method="post" name="화요" class="food_list">
        		<button style="border:none;">
        		<img src="../image/drink4.png" class="food__img">
        		<div class="food__name">화요</div>
        		<div class="food__cost">12,000원</div>
        		</button>
        	</form>
        	<form action="../order/order8.food" method="post" name="막걸리" class="food_list">
        		<button style="border:none;">
        		<img src="../image/drink5.png" class="food__img">
        		<div class="food__name">막걸리</div>
        		<div class="food__cost">6,000원</div>
        		</button>
        	</form>
        	<form action="../order/order8.food" method="post" name="모둠꼬치" class="food_list">
        		<button style="border:none;">
        		<img src="../image/drink6.jpg" class="food__img">
        		<div class="food__name"></div>
        		<div class="food__cost"></div>
        		</button>
        	</form>
		</div>
	</div>
</body>
</html>