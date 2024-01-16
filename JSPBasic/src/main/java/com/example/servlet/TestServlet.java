package com.example.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//1. URL 맵핑 - 요청에 대해서 클래스를 연결하는 힌트
//@WebServlet("/apple")
public class TestServlet extends HttpServlet {

	// alt+shift+s

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		System.out.println("서블릿 get 메서드 실행됨");
		// 출력을 클라이언트로
		resp.setContentType("text/html; charset=UTF-8");

		PrintWriter out = resp.getWriter();
		out.println("<b>헬로월드</b>");
		out.println("<b>헬로월드</b>");

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}

}
