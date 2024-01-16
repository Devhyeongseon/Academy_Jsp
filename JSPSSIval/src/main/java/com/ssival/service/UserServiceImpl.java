package com.ssival.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ssival.model.UserDAO;
import com.ssival.model.UserVO;

public class UserServiceImpl implements UserService{
	
	
	// UserDAO 클래스의 메서드를 사용할수 있게 선언한다.
	// dao.xxx(); 기능사용
	private UserDAO dao = UserDAO.getInstance();

	
	//회원가입기능
	@Override
	public int join(HttpServletRequest request, HttpServletResponse response) {
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String gender = request.getParameter("gender");
		
		System.out.println("회원가입 창에서 입력한 id:" + id);
		System.out.println("회원가입 창에서 입력한 pw:" + pw);
		System.out.println("회원가입 창에서 입력한 name:" + name);
		System.out.println("회원가입 창에서 입력한 email:" + email);
		System.out.println("회원가입 창에서 입력한 address:" + address);
		System.out.println("회원가입 창에서 입력한 gender:" + gender);
		
		//가입하기 전에 ID 중복체크하고나서 DAO에서 insert 구문으로 DB에 삽입
		
		int result = dao.idCheck(id);
		
		if(result == 1 ) { //ID 중복인 경우
			return result;
		} else {	//중복 아닌경우
			UserVO vo = new UserVO(id,pw,name,email,address,gender,null);
			dao.insertUser(vo);
		}
		
		return result;
	}

	
	//로그인기능
	public UserVO login(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		UserVO vo = dao.login(id,pw);
		return vo;
	}

	public UserVO getUserInfo(HttpServletRequest request, HttpServletResponse response) {

		// 회원 아이디는 세션에 있습니다.
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("user_id");

		// getUserInfo호출
		UserVO vo = dao.getUserInfo(id);

		return vo;
	}


	@Override
	public int update(HttpServletRequest request, HttpServletResponse reponse) {
		
		String id = request.getParameter("id"); //회원정보수정페이지에서 입력한 정보들.
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String gender = request.getParameter("gender");
		
		//vo 객체 생성구문에 정보수정페이지에 입력한 정보들을 매개변수로 담아준다.
		UserVO vo = new UserVO(id, pw, name, email, address, gender, null);
		
		//dao의 update메서드에 정보가 담겨있는 vo 객체를 전달한다.
		int result = dao.update(vo);
		
		if (result == 1) {// 업데이트 성공시 세션의 값도 변경
			HttpSession session = request.getSession();
			session.setAttribute("user_name", name);

		}
		
		return result;
	}


	@Override
	public int delete(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("user_id");
		String pw = request.getParameter("pw");
		
		UserVO vo = dao.login(id, pw);
		
		if(vo != null) { // vo객체가 null이 아니라는것은 login 메서드 동작으로 DB에 id,pw가 일치하는 계정이 있다는뜻 
			//delete 작업
			dao.delete(id);
			session.invalidate(); // 세션삭제
			
			return 1;  //delete 성공하면 1을 리턴
			
		} else { // 비밀번호 틀리면 0을리턴
			return 0;
		}
		
		
	}

	
}
