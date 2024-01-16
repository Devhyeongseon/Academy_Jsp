package com.jorder.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jorder.model.FoodDAO;
import com.jorder.model.FoodVO;

public class FoodServiceImple implements FoodService{
	
	private FoodDAO dao = FoodDAO.getInstance();
		

	@Override
	public int add(HttpServletRequest request, HttpServletResponse response) {
		String name = request.getParameter("food_name");
		String price = request.getParameter("food_price");
		


		System.out.println("넘어온 값:" + name);
		System.out.println("넘어온 값:" + price);
		
		
		int result = 0;
		
		FoodVO vo = new FoodVO(name,price);
		dao.addFood(vo);
		
		return result;
	}

}
