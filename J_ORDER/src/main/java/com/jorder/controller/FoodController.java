package com.jorder.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jorder.model.UserVO;
import com.jorder.service.FoodService;
import com.jorder.service.FoodServiceImple;
import com.jorder.service.UserService;
import com.jorder.service.UserServiceImple;

@WebServlet("*.food") // 확장자 패턴
public class FoodController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public FoodController() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doAction(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 3. url 주소를 분기(각 요청별로 코드를 만듬)

		request.setCharacterEncoding("utf-8");// 한글처리

		String uri = request.getRequestURI();
		String path = uri.substring(request.getContextPath().length());

		System.out.println(path);

		// 서비스 영역 선언
		FoodService service = new FoodServiceImple();

		if (path.equals("/food/add.food")) {
			// 화면이동 기본값 - forward 형식이 되어야함.
			request.getRequestDispatcher("user_join.jsp").forward(request, response);

		}else if (path.equals("/user/joinForm.user")) {

			int result = service.add(request, response);
			System.out.println("실행결과:" + result);
			response.sendRedirect("login.user");
		}
	}
}
