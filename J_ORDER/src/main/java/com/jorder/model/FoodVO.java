package com.jorder.model;

import java.sql.Timestamp;

public class FoodVO {
	//DB의 컬럼과 동일하게 변수명 선언.
	private String food_name;
	private String food_price;
	public FoodVO() {
		// TODO Auto-generated constructor stub
	}
	public FoodVO(String name, String price) {
		super();
		this.food_name = name;
		this.food_price = price;
	}
	public String getName() {
		return food_name;
	}
	public void setName(String name) {
		this.food_name = name;
	}
	public String getPrice() {
		return food_price;
	}
	public void setPrice(String price) {
		this.food_price = price;
	}
	@Override
	public String toString() {
		return "FoodVO [name=" + food_name + ", price=" + food_price + "]";
	}
	
	
	
}

