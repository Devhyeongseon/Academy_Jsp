package com.example.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.test") // 1. 확장자 패턴을 씁니다.
public class TestController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public TestController() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("서블릿 실행됨.");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doAction(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//3. url 주소를 분기(각 요청별로 코드를 만듬)
		
		request.setCharacterEncoding("utf-8");//한글처리
		
		
		
		String uri = request.getRequestURI();
		String path = uri.substring(request.getContextPath().length());
		
		System.out.println(path);
		
		if (path.equals("/controller/join.test")) {
			//회원가입~~ 처리로직			
		}else if(path.equals("/controller/modify.test")) {
			//정부수정
		}else if(path.equals("/controller/delete.test")) {
			//회원탈퇴
		}else if(path.equals("/controller/logout.test")) {
			//로그아웃
		}
	}

}
