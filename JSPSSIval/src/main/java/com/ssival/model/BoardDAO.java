package com.ssival.model;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.ssival.jdbc.util.JdbcUtil;

import oracle.jdbc.proxy.annotation.Pre;

public class BoardDAO {

	//커넥션 풀에서 얻어온 디비객체 정보.
	private DataSource dataSource;
	
	
	//싱글톤 디자인
	//1 객체 생성
	
	private static BoardDAO instance = new BoardDAO();
	
	private BoardDAO() {
		
		try {
			//드라이버 호출문장
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//초기 설정, 값을 얻을수 있는 객체
			InitialContext init = new InitialContext();
			
			dataSource =(DataSource)init.lookup("java:comp/env/jdbc/oracle");
			
		} catch (Exception e) {
			
			e.printStackTrace();
			System.out.println("드라이버 호출 에러");
		}
		
		
	}
	
	//getter 메서드
	public static BoardDAO getInstance() {
		return instance;
		
	}
	
	public void insert(String writer, String title, String content) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "insert into board(bno, writer, title, content) "
				   + "values(board_seq.nextval, ?, ?, ? )";
		
		try {
			
			conn = dataSource.getConnection();
			System.out.println("글작성하기 DB접속 성공");
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, writer);
			pstmt.setString(2, title);
			pstmt.setString(3, content);
			
			pstmt.executeUpdate();  //select 문 아니면 update
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("글작성 insert 과정 에러");
		}finally {
			
			JdbcUtil.close(conn, pstmt, null);
		}
		
		
	}
	
	public ArrayList<BoardVO> getList() {
		
		ArrayList<BoardVO> list = new ArrayList<>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from board order by bno desc";
		
		try {
			
			conn = dataSource.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery(); //selecet 문으로 board 테이블을 rs 객체에 다담는다.
					
			while(rs.next()) {
				
				int bno = rs.getInt("bno"); // rs객체에 담긴 컬럼명bno의 행 데이터를 받아온다.
				String writer = rs.getString("writer");
				String title = rs.getString("title");
				String content = rs.getString("content");
				int hit = rs.getInt("hit"); 
				Timestamp regdate = rs.getTimestamp("regdate");
				
				BoardVO vo = new BoardVO(bno, writer, title, content, hit, regdate); // 한 행의 데이터를 다 받아오면 vo객체에 저장.
				
				list.add(vo);  //ArrayList<BoardVO> list = new ArrayList<>();  아까 선언한 BoardVO 타입의 객체 vo 를 list에 추가.
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("getList 과정 에러");
		}finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		
		
		return list;
	}
	//게시글 보기
	public BoardVO getContent(String bno) {  //bno=? 게시글 번호로 DB에 접속하여 가져온다.
		BoardVO vo = new BoardVO();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null; //select 문 써서 where절에 bno 값과 일치하는 데이터를 담을 객체 ResultSet이 필요하다.
		
		String sql = "select * from board where bno = ?";
		
		try {
			
			conn = dataSource.getConnection();
			System.out.println("데이터베이스 접속성공!");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, bno);  //sql 구문에서 ? 에 해당하는 부분에 bno가 들어가기때문에
									
			rs = pstmt.executeQuery(); // select 문은 executeQuery(); 사용  
			
			if(rs.next()) {
				
				int bno2 = rs.getInt("bno");
				String writer = rs.getString("writer"); 
				String title = rs.getString("title");
				String content = rs.getString("content");
				int hit = rs.getInt("hit");
				Timestamp regdate = rs.getTimestamp("regdate");
				
				vo.setBno(bno2);
				vo.setWriter(writer);
				vo.setTitle(title);
				vo.setContent(content);
				vo.setHit(hit);
				vo.setRegdate(regdate);
				
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("getContent 과정에서 에러");
		}finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		
		return vo;
	}
	
	
	
	
	
}
