package com.project.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.user.model.UserVO;
import com.project.user.service.UserService;
import com.project.user.service.UserServiceImpl;

@WebServlet("*.user")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String uri = request.getRequestURI();
		String path = (String)uri.substring(request.getContextPath().length());
		
		UserService service= new UserServiceImpl();
		
		// 시작화면에서 "로그인" 화면으로의 전환
		if(path.equals("/login/login.user")) {
			request.getRequestDispatcher("user_login.jsp").forward(request, response);
			
		// 시작화면에서 "회원가입" 화면으로의 전환	
		}else if(path.equals("/login/join.user")) {	
			response.sendRedirect("../login/user_join.jsp");
			
		// 회원가입에서 회원가입 성공시, 로그인화면으로의 전환
		}else if(path.equals("/login/joinForm.user")) {
			int result = service.join(request, response);
			System.out.println("실행결과 : " + result); // 1일시 실패, 0일때 성공
			
			// 아이디 중복으로 인한 회원가입 실패
			if(result == 1) {
				request.setAttribute("msg", "아이디가 중복되었습니다");
				request.getRequestDispatcher("../login/user_join.jsp").forward(request, response);
				
			// 회원 가입 성공
			}else {
				response.sendRedirect("login.user");
			}
		// 로그인 성공 시 메인화면으로의 전환
		}else if(path.equals("/login/loginForm.user")) {
			UserVO vo = service.login(request, response);
			// 로그인 성공
			if(vo != null) {
				HttpSession session =  request.getSession();
				session.setAttribute("user_id", vo.getId());
				session.setAttribute("user_name", vo.getName());
				
				response.sendRedirect("../order/main.jsp" );
			}else {
				request.setAttribute("msg", "아이디,비밀번호를 확인하세요");
				request.getRequestDispatcher("login.user").forward(request, response);
			}
			
		// 메인페이지에서 마이페이지로의 화면전환
		}else if(path.equals("/login/mypage.user")){
			request.getRequestDispatcher("user_mypage.jsp").forward(request, response);
			
		// 메인페이지에서 로그아웃 기능 실행	
		}else if(path.equals("/login/logout.user")) {
			HttpSession session = request.getSession();
			session.invalidate();
			response.sendRedirect( request.getContextPath() );
			
		// 마이페이지에서 회원정보변경 페이지로의 이동	
		}else if(path.equals("/login/update.user")) {
			UserVO vo = service.getUserInfo(request, response);
			request.setAttribute("vo", vo);
			request.getRequestDispatcher("user_update.jsp").forward(request, response);
			
		// 업데이트 화면에서 수정버튼 클릭시 업데이트 되는 동작
		}else if(path.equals("/login/updateForm.user")){
			
			int result = service.update(request, response);
			System.out.println(result);
			if(result == 1) {
				response.setContentType("text/html; charset=UTF-8");
				
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('업데이트에 성공하였습니다.');");
				out.println("location.href='mypage.user';");
				out.println("</script>");
			}else {
				response.sendRedirect("mypage.user");
			}
			
		// 마이페이지에서 회원탈퇴페이지로의 이동	
		}else if(path.equals("/login/delete.user")) {
			UserVO vo = service.getUserInfo(request, response);
			request.setAttribute("vo", vo);
			request.getRequestDispatcher("user_delete.jsp").forward(request, response);
			
		// 회원 탈퇴페이지에서 탈퇴 기능 수행
		}else if(path.equals("/login/deleteForm.user")) {
			int result = service.delete(request, response);
			System.out.println(result);
			
			if(result == 1) {
				response.setContentType("text/html; charset=UTF-8");
				
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('회원탈퇴에 성공하였습니다.');");
				out.println("location.href='../index.jsp';");
				out.println("</script>");
			}else {
				request.setAttribute("msg", "메세지를 확인하세요");
				request.getRequestDispatcher("user_delete.jsp").forward(request, response);
			}
		}
		
		
	}

}
