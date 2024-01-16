package com.ssival.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ssival.model.UserVO;

public interface UserService {
	
	public int join(HttpServletRequest request, HttpServletResponse response); //회원가입 결과를 int 형으로 반환받는다
	
	public UserVO login(HttpServletRequest request, HttpServletResponse response);
	
	public UserVO getUserInfo(HttpServletRequest request, HttpServletResponse response);
	
	public int update(HttpServletRequest request, HttpServletResponse reponse);
	
	public int delete(HttpServletRequest request, HttpServletResponse response);
		
}
