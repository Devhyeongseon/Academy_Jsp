package com.ssival.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ssival.model.BoardDAO;
import com.ssival.model.BoardVO;

public class BoardServiceImpl implements BoardService {

	private BoardDAO dao = BoardDAO.getInstance();
	
	
	@Override
	public void regist(HttpServletRequest request, HttpServletResponse response) {
	
		String writer = request.getParameter("writer");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		dao.insert(writer, title, content);
		
		
		
		
	}


	@Override
	public ArrayList<BoardVO> getList(HttpServletRequest request, HttpServletResponse response) {
		ArrayList<BoardVO> list = dao.getList();

		return list;
	}


	@Override
	public BoardVO getContent(HttpServletRequest request, HttpServletResponse response) {
		String bno = request.getParameter("bno");
		System.out.println(bno);
		BoardVO vo = dao.getContent(bno);
		return vo;
	}

}
