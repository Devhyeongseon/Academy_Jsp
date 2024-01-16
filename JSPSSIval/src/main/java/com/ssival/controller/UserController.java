package com.ssival.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ssival.model.UserVO;
import com.ssival.service.UserService;
import com.ssival.service.UserServiceImpl;

@WebServlet("*.user")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UserController() {
		super();
		// TODO Auto-generated constructor stub
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
		
		request.setCharacterEncoding("UTF-8");
		
		String uri = request.getRequestURI();
		
		String path = uri.substring(request.getContextPath().length());
		
		System.out.println("user컨트롤러 도착");
		System.out.println(path + "도착");
		////////////////////////////////////////////////////
		// UserService 객체 선언(서비스영역)
		////////////////////////////////////////////
		
		UserService service = new UserServiceImpl();
		/////////////////////////////////////////////////////
		
		if ( path.equals("/login.user")) {
			
			
			request.getRequestDispatcher("/user/user_login.jsp").forward(request, response);
			
			
		}else if(path.equals("/join.user")) {
			
			request.getRequestDispatcher("/user/user_join.jsp").forward(request, response);
			
		}else if(path.equals("/joinForm.user")) {
			
			int result = service.join(request, response);
			System.out.println("실행결과 :" + result + "(0이면 회원가입성공, 1이면실패)");
		
			if ( result == 1) { //중복
				request.setAttribute("msg","아이디가 중복되었습니다.");
				request.getRequestDispatcher("/user/user_join.jsp").forward(request, response);
			}else { // 회원가입성공
				response.setContentType("text/html; charset=UTF-8"); // Servlet 에서 직접 "브라우저로" 출력할때 써주는 인코딩구문
				
				PrintWriter out = response.getWriter();
				 out.println("<script>");
				 out.println("alert('회원가입 성공!! 로그인페이지로 이동합니다.');");
				 out.println("location.href='login.user';");
				 out.println("</script>");
				 out.close();
//				response.sendRedirect("login.user");
			}
			
		}else if(path.equals("/loginForm.user")) {
			
			UserVO vo = service.login(request, response);
			if(vo != null) { //로그인성공  DB에서 값을 받아와서 vo에 담겼다는 뜻.
							//서블릿 페이지에서는 session. 사용 xx
							//request로 받아옴.
				
				HttpSession session = request.getSession();
				session.setAttribute("user_id", vo.getId());
				session.setAttribute("user_name", vo.getName());
				
				response.setContentType("text/html; charset=UTF-8"); // Servlet 에서 직접 "브라우저로" 출력할때 써주는 인코딩구문
				
				PrintWriter out = response.getWriter();
				 out.println("<script>");
				 out.println("alert('로그인 성공!!');");
				 out.println("location.href='index.jsp';");
				 out.println("</script>");
				 out.close();
				
							
					/*
					 * response.sendRedirect(request.getContextPath()); // 홈화면.index.jsp
					 */	
				 
			}else { //로그인 실패
				request.setAttribute("msg", "아이디 비밀번호를 확인하세요.");
				request.getRequestDispatcher("/user/user_login.jsp").forward(request, response);
				
			}
			
		} else if(path.equals("/logout.user")) { //로그아웃누르면.
			
			HttpSession session = request.getSession();
			session.invalidate();
			
			
			response.setContentType("text/html; charset=UTF-8"); // Servlet 에서 직접 "브라우저로" 출력할때 써주는 인코딩구문
			PrintWriter out = response.getWriter();
			 out.println("<script>");			 
			 out.println("alert('로그아웃 되었습니다!!');");
			 out.println("location.href='index.jsp';");
			 out.println("</script>");
			 out.close();
			
			
			
			//response.sendRedirect(request.getContextPath()); //홈화면
			
		}else if(path.equals("/mypage.user")) { //마이페이지 화면
			
			request.getRequestDispatcher("/user/user_mypage.jsp").forward(request, response);
			
		}else if(path.equals("/update.user")) { //회원정보수정 화면(기존 정보를 불러와야함.)
			
			/*
			 * 1. DAO 에서는 ID기준으로 회원정보를 조회해서 UserVO에 저장
			 * 2. Service 영역에서 컨트롤러 까지 회원정보를 가지고 나옵니다.
			 * 3. 컨트롤러에서는 VO를 request에 저장합니다.
			 * 4. 화면에서 EL태그를 사용하여 value 속성에 찍어준다. 
			 */
			UserVO vo = service.getUserInfo(request, response);
			
			request.setAttribute("vo", vo); // 다음페이지에서 ${vo.} 으로 앞에 지정해준 걸로 찍음.
			request.getRequestDispatcher("/user/user_update.jsp").forward(request, response); // 위에서 setAttribute로 vo 객체를 넘겨서 다음페이지에서 사용가능.
		
			
		}else if(path.equals("/updateForm.user")){ // 수정하기 버튼 클릭시.
			//DAO에서 데이터베이스에 접속하여 update한 결과를 담은 result 를 받아올거다.
			
			int result = service.update(request, response);
			System.out.println("업데이트 result 값 : " + result);
			if(result != 0) { //0이 아니라면 뭐든 실행됐다는 뜻.
				System.out.println("업데이트성공!!");
				
				response.setContentType("text/html; charset=UTF-8"); // Servlet 에서 직접 "브라우저로" 출력할때 써주는 인코딩구문
				
				PrintWriter out = response.getWriter();
				 out.println("<script>");
				 out.println("alert('업데이트에 성공했습니다');");
				 out.println("location.href='mypage.user';");
				 out.println("</script>");
				 out.close();
				 
			} else { //업데이트 실패시
				System.out.println("업데이트실패!!");
				request.getRequestDispatcher("/user/user_mypage.jsp").forward(request, response);
				
			}
			
			
			
			
		}else if(path.equals("/delete.user")) { //마이페이지에서 회원탈퇴 페이지로 이동.
			
			request.getRequestDispatcher("/user/user_delete.jsp").forward(request, response);
			
		} else if (path.equals("/deleteForm.user")) { //회원탈퇴 버튼, 회원탈퇴요청
			
			/*
			 * 1. service영역의 delete 메서드로 연결합니다
			 * 2. service 영역에서는 먼저 login 메서드를 이용해서 회원의 정보를 조회해서 가지고나옵니다.
			 * 3. 회원이 있다는것은 비밀번호가 일치한다는 의미.
			 * 4. delete 메서드를 호출시켜서 회원정보를 삭제하고, 세션도 삭제하고, 홈화면으로 리다이렉트.
			 * 5/ 비밀번호가 일치하지않아서 실패한 경우에는 delete.jsp 화면으로 메세지띄워라.
			 * 
			 */
			
			//
			int result = service.delete(request, response);
			
			if( result == 1) { // 삭제성공
				
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('회원 탈퇴처리 되었습니다.');");
				out.println("location.href='/JSPSSIval'; ");
				out.println("</script>");
				
				
			}else { // 삭제 실패
				request.setAttribute("msg", "비밀번호가 다릅니다.");
				request.getRequestDispatcher("/user/user_delete.jsp").forward(request, response);
				
			}
		}
		
		
		
		
		
		
		
		
		
		
	}
	
}
