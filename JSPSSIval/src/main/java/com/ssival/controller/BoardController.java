package com.ssival.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ssival.model.BoardVO;
import com.ssival.service.BoardService;
import com.ssival.service.BoardServiceImpl;

@WebServlet("*.board")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public BoardController() {
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
		
		
		// 3. url 주소를 분기(각 요청별로 코드를 만듬)
		request.setCharacterEncoding("utf-8");// 한글처리
		
		String uri = request.getRequestURI();

		String path = uri.substring(request.getContextPath().length());

		System.out.println("Board컨트롤러 도착");
		System.out.println(path + "도착");
		
		////////////////////////////////
		//BoardService 객체 선언(서비스 영역선언)
		
		//서비스와 서비스임플은 상속관계라 부모객체에 자식객체 담을수있다.
		
		BoardService service = new BoardServiceImpl();
		
		//기본이동방식은 디스패쳐.포워드
		if(path.equals("/list.board")) { //목록화면
			//목록데이터를 가지고 화면으로 이동
			ArrayList<BoardVO> list = service.getList(request, response);
			request.setAttribute("list", list);	
			
			request.getRequestDispatcher("/board/board_list.jsp").forward(request, response);
			
			
		}else if(path.equals("/write.board")) { //작성하기 버튼
			request.getRequestDispatcher("/board/board_write.jsp").forward(request, response);
			
		}else if(path.equals("/registForm.board")) { //글작성완료버튼.
			
			service.regist(request, response); // service 영역으로 데이터를 보내고 DAO를 통해서 DB에 접속할거다
			
			response.sendRedirect("list.board"); // 단순 목록 페이지이동.
			
		}else if(path.equals("/content.board")) { //게시물 페이지 bno = ? 인 화면.
			BoardVO vo = service.getContent(request, response);
			request.setAttribute("vo", vo);
			
			request.getRequestDispatcher("/board/board_content.jsp").forward(request, response);
		}
		
		
		
		
		
	}

}
