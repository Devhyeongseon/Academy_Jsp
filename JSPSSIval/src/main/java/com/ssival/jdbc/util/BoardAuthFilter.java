package com.ssival.jdbc.util;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter({ "/board/modify.board", "/board/update.board", "/board/delete.board" })
public class BoardAuthFilter implements Filter {

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		//세션에 있는 유저아이디와, 각 요청에서 넘어오는 작성자 정보를 비교
		
		//Httprequest 타입으로 다운캐스팅
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;
		
		request.setCharacterEncoding("utf-8"); //인코딩처리
		
		//세션얻기
		
		HttpSession session = req.getSession();
		
		//세션에서 전달받은 id
		String user_id = (String)session.getAttribute("writer");
		
		//화면에서 전달받은 writer
		String writer = req.getParameter("writer");
		
		System.out.println(user_id);
		System.out.println(writer);
		
		//null 처리
		if(writer == null) {
			res.sendRedirect( req.getContextPath() + "/user/login.user");
			System.out.println("writer가 null 입니다.");
			
			return;
		}
		if(user_id == null) {
			res.sendRedirect( req.getContextPath() + "/user/login.user");
			System.out.println("user_id가 null 입니다.");
			return;
		}
		
		//로그인한 사람과 작성자가 다른경우
		if( !user_id.equals(writer)) {
			res.setContentType("text/html; charset=UTF-8;");
			PrintWriter out = res.getWriter();
			out.println("<script>");
			out.println("alert('권한이 없습니다');");
			out.println("location.href='list.board'; ");
			out.println("</script>");
			out.close();
			
			return;
			
			
		}
		
		
		
		chain.doFilter(request, response);
	}

}
