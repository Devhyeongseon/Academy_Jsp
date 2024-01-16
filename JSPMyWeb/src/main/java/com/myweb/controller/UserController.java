package com.myweb.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.myweb.user.model.UserVO;
import com.myweb.user.service.UserService;
import com.myweb.user.service.UserServiceImpl;

@WebServlet("*.user") // 확장자 패턴
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UserController() {
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
		
		//서비스 영역 선언
		UserService service = new UserServiceImpl();
		

		if (path.equals("/user/join.user")) {
			// 화면이동 기본값 - forward 형식이 되어야함.
			request.getRequestDispatcher("user_join.jsp").forward(request, response);

		} else if (path.equals("/user/login.user")) {
			request.getRequestDispatcher("user_login.jsp").forward(request, response);
			
			
		} else if (path.equals("/user/joinForm.user")) {
			
			
			int result = service.join(request, response);
			
			System.out.println("실행결과:" + result);
			
			if(result == 1) {
				request.setAttribute("msg","아이디가 중복되었습니다." );
				request.getRequestDispatcher("user_join.jsp").forward(request, response);
				
				
			}else { //회원가입성공
				response.sendRedirect("login.user"); //MVC2 방식 리다이렉트는 다시 컨트롤러 태운다.
			}
			
		} else if(path.equals("/user/loginForm.user")) {
			
			UserVO vo = service.login(request, response);
			if(vo != null) { //로그인 성공
				//서블릿에서는 session. 불가능
				//request.getSession(); 으로 현재세션 얻을수 있다.
				HttpSession session =  request.getSession();
				session.setAttribute("user_id", vo.getId());
				session.setAttribute("user_name", vo.getName());
				
				response.sendRedirect(request.getContextPath()); // 홈화면.
				
				
			} else { //로그인 실패
				request.setAttribute("msg", "아이디 비밀번호를 확인하세요.");
				request.getRequestDispatcher("user_login.jsp").forward(request, response);
				
			}
		
		} else if(path.equals("/user/logout.user")) {
			
			HttpSession session = request.getSession();
			session.invalidate();
			
			response.sendRedirect(request.getContextPath()); //홈화면
		}else if(path.equals("/user/mypage.user")) { //마이페이지 화면
			
			request.getRequestDispatcher("user_mypage.jsp").forward(request, response);
			
		}else if(path.equals("/user/update.user")) {//회원정보수정화면에 정보 가져오기
			
			//여기에서 회원에 대한 데이터를 가지고 화면으로 나감.
			/*
			 * 1. DAO에서는 id기준으로 회원정보를 조회해서 UserVO에 저장
			 * 2. service영역에서는 리턴해서 컨트롤러까지 회원정보를 가지고 나옵니다.
			 * 3. 컨트롤러에서는 vo를 request에 저장합니다.
			 * 4. 화면에서 EL태그를 사용해서 value속성에 찍어준다.
			 *  
			 * 
			 */
			UserVO vo = service.getUserInfo(request, response);
			request.setAttribute("vo",vo);		
			
			request.getRequestDispatcher("user_update.jsp").forward(request, response);
			
		} else if(path.equals("/user/updateForm.user")) {//정보 수정.
			//0이면 실패, 1이면 성공
			int result = service.update(request, response);
			
			if(result == 1) {
				//out 객체
				response.setContentType("text/html; charset=UTF-8");
				 PrintWriter out = response.getWriter();
				 out.println("<script>");
				 out.println("alert('업데이트에 성공했습니다');");
				 out.println("location.href='mypage.user';");
				 out.println("</script>");
			}else {
				response.sendRedirect("mypage.jsp");
			}
			
			
			
		}else if( path.equals("/user/delete.user") ) { //탈퇴화면
			request.getRequestDispatcher("user_delete.jsp").forward(request, response);

		} else if( path.equals("/user/deleteForm.user")) { //회원탈퇴요청
			/*
			 * 1. service영역의 delete메서드로 연결합니다. 
			 * 2. service에서는 먼저 login메서드를 이용해서 회원의 정보를 조회해서 가지고 나옵니다.
			 * 3. 회원이 있다는 것은 비밀번호가 일치한다는 의미
			 * 4. delete메서드를 호출시켜서 회원정보를 삭제하고, 세션도 삭제하고, 홈화면으로 리다이렉트
			 * 5. 비밀번호가 일치하지않아서 실패한 경우에는, delete.jsp화면으로 메시지를 보내주세요.
			 */
			
			int result = service.delete(request, response);
			
			if(result == 1) { //삭제성공
				
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('정상적으로 탈퇴되었습니다');");
				out.println("location.href='/JSPMyWeb'; ");
				out.println("</script>");
				
			} else { //삭제실패
				request.setAttribute("msg", "비밀번호를 확인하세요");
				request.getRequestDispatcher("user_delete.jsp").forward(request, response);
			}
			
			
			
		}
		
		
	}

}
