package com.myweb.user.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.myweb.user.model.UserDAO;
import com.myweb.user.model.UserVO;

public class UserServiceImpl implements UserService {

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

		// 가입에 대한 프로세스? => id가 존재하는지확인 -> insert

		int result = dao.idCheck(id);

		if (result == 1) { // 아이디 중복일때 1
			return result;
		} else { // 회원가입
			UserVO vo = new UserVO(id, pw, name, email, address, gender, null);
			dao.insertUser(vo);

			return result;
		}

	}

	public UserVO login(HttpServletRequest request, HttpServletResponse response) {

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		UserVO vo = dao.login(id, pw);
		return vo;

	}

	@Override
	public UserVO getUserInfo(HttpServletRequest request, HttpServletResponse response) {

		// 회원 아이디는 세션에 있습니다.
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("user_id");

		// getUserInfo호출
		UserVO vo = dao.getUserInfo(id);

		return vo;
	}

	public int update(HttpServletRequest request, HttpServletResponse response) {

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String gender = request.getParameter("gender");

		UserVO vo = new UserVO(id, pw, name, email, address, gender, null);
		int result = dao.update(vo);

		if (result == 1) {// 업데이트 성공시 세션의 값도 변경
			HttpSession session = request.getSession();
			session.setAttribute("user_name", name);

		}

		return result;
	}

	@Override
	public int delete(HttpServletRequest request, HttpServletResponse response) {
		// 세션에서 아이디를 얻음
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("user_id");
		String pw = request.getParameter("pw");

		UserVO vo = dao.login(id, pw);

		if (vo != null) { // 비밀번호가 일치
			// delete작업
			dao.delete(id);
			session.invalidate(); // 세션삭제

			return 1;
		} else { // 비밀번호가 일치하지 않음
			return 0;
		}
	}
}
