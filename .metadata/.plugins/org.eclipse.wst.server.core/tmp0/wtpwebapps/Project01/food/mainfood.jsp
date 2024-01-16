<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인메뉴</title>
<link rel="stylesheet" href="../css_food/food.css?after">
<meta name="viewport" content="width=], initial-scale=1.0">
</head>
<body>
	<div class="wrapper">
		<form class="wrapper__body" action="../order/dfdfd.food" method="post" style="flex-wrap: wrap;">
			<c:forEach var="i" items="${list }"> 
	        	<div class="food_list">
	   				<button style="border:none;">
	        		<img src="../image/${i.foodimgpath }" class="food__img">
	       			<div class="food__name">${i.foodname }</div>
	        		<div class="food__cost">${i.foodprice }</div>
	        		</button>
	        	</div>
        	</c:forEach>
		</form>
	</div>
</body>
</html>