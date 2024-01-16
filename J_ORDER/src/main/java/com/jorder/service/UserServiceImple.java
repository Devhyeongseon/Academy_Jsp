package com.jorder.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jorder.model.UserDAO;
import com.jorder.model.UserVO;

public class UserServiceImple implements UserService{
	
	private UserDAO dao = UserDAO.getInstance();
	
	@Override
	public int join(HttpServletRequest request, HttpServletResponse response) {

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String gender = request.getParameter("gender");


		System.out.println("넘어온 값:" + id);
		System.out.println("넘어온 값:" + pw);
		
		
		int result = 0;
		
		UserVO vo = new UserVO(id, pw, name, email, address, gender, null);
		dao.insertUser(vo);
		
		return result;
		
		
	}

}
