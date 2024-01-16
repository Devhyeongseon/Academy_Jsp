package com.ssival.model;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;

import com.ssival.jdbc.util.JdbcUtil;

import oracle.jdbc.proxy.annotation.Pre;
//DB를 통해 사용하는 메서드을 만든다.


public class UserDAO { // Date Access Object 의 약자
						//데이터에 직접적으로 접근하는 클래스,
						//JDBC 드라이버 호출하고 SQL구문 사용
	//싱글톤 디자인
	//1. 객체 1개생성한다.
	
	private static UserDAO instance = new UserDAO();
	
	//2. 생성자를 private한다.
	//
	private UserDAO() {
		
		try {
			//드라이버 호출문장 기본생성자에서 한번.
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("UserDAO 페이지 드라이버 로드 성공!");
			
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("드라이버 호출과정 에러");
		}
	}
	
	//3. getter 메서드
	public static UserDAO getInstance() {
		
		return instance;
	}
	//4 JdbcUtil.java 생성 후 import/
	// DB 접속주소와 ID,PW를 얻어옴.
	// 반복으로 사용될시 커넥션 풀로 DataSource 사용예정 **
	private String url = JdbcUtil.url;
	private String uid = JdbcUtil.uid;
	private String upw = JdbcUtil.upw;
	
	
	////////////////////////////////////////////////////////
	
	//ID 중복체크기능.
	public int idCheck(String id) {
		int result = 0; //중복결과를 반환받을 result 지정
		//** DB 접속 전 받아올 변수 선언. null로 초기화.
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		//DB에서 데이터 받기위한 SQL 구문 작성.
		String sql = "select * from users2 where id = ?";
		
		
		
		try {
			//1. conn 객체생성
			conn = DriverManager.getConnection(url,uid,upw);
			//2. pstmt 객체생성
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			//3. SQL실행 -> executeQuery(); => SELECT 문과 같은 쿼리문을 실행할 때 사용한다.
			//rs에 결과를 int 타입으로 반환받는다.
			rs = pstmt.executeQuery();
			
			
			if(rs.next()) { // true는 다음행이 있다는 뜻으로 중복되는 아이디가 있다는뜻.
				result = 1; // 중복일때 1을 반환하도록 설정.
			}else { //false인 경우 다음행이 없어서 중복이 없다는 뜻.
				result = 0;			
				
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("idCheck 에러");
		} finally { // try 구문과 상관없이 최종적으로 실행하는 구문.
			JdbcUtil.close(conn, pstmt, rs);
		}
		
		return result; //중복결과를 1,0으로 반환.
	}
	
	///중복 체크 기능 끝났으니 중복 아니면 회원가입 시키는 기능만들어라
	
	//회원가입기능
	
	public void insertUser(UserVO vo) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		//select 문아니라서 executeUpdate로 할땐
		// Resultset rs으로 반환안받아도된다.
		
		String sql = "insert into users2(id, pw, name, email, address, gender, regdate)"
						+"values(?,?,?,?,?,?,sysdate)";
		
		try {
			conn = DriverManager.getConnection(url,uid,upw);
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPw());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getEmail());
			pstmt.setString(5, vo.getAddress());
			pstmt.setString(6, vo.getGender());
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("회원가입 에러");
		}finally {
			JdbcUtil.close(conn, pstmt, null);
			
		}
	}
	
	//로그인기능
	public UserVO login(String id, String pw) {
		
		UserVO vo = null; // vo 객체 초기화
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		//DB에 아이디와 비밀번호가 일치하는지찾아본다.
		//rs.next가 boolean 타입. 참이면 일치하는 아이디 비번이있는거임.
		
		String sql = "select * from users2 where id = ? and pw = ?";
		
		try {
			
			conn = DriverManager.getConnection(url,uid,upw);
			System.out.println("데이터베이스 접속성공");
			
			pstmt = conn.prepareStatement(sql); //쿼리 준비단계
			
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {//로그인 성공 DB접속하여 해당하는 id,pw 가 있으면 vo객체에 값 저장.
				
				vo = new UserVO();
				vo.setId(id);
				vo.setName(rs.getString("name"));
				
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("로그인 과정 에러");
		} finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		
		
		return vo;
	}

	//회원정보 DB에서 받아와서 조회하기
	
	public UserVO getUserInfo(String id) {
		UserVO vo = null; //항상 DB에서 받아올 정보가 있으면 한번 초기화해줘야함.
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null; // ResultSet타입의 rs객체로 받아온결과를 담아올수있다.
		
		String sql = "select * from users2 where id = ? ";
		
		try {
			conn = DriverManager.getConnection(url, uid, upw);
			System.out.println("데이터베이스 접속 성공!");
			
			pstmt = conn.prepareStatement(sql); //쿼리준비
			
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();  // select 문이라서 executeQuery
			
			
			if ( rs.next()) { //PK 기준으로 조회한다. id 가 PK지정되어있다.
				
				String name = rs.getString("name");  // 결과를 받아온 rs 객체의 값을꺼내는 과정이다.
				//pw는 안가져온다.
				String email = rs.getString("email");
				String address = rs.getString("address");
				String gender = rs.getString("gender");
				
				
				vo = new UserVO(id, null, name, email, address, gender, null);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("getUserInfo 과정에서 에러.");
		}finally {
			JdbcUtil.close(conn, pstmt, rs);
			
		}
		
		
		
		
		return vo;
	}

	
	//회원정보 수정하기 버튼 기능.
	public int update(UserVO vo) {
		int result = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		//select 문이 아니라서 Resultset 쓸필요 없다.
		
		//id 기준으로 업데이트를 한다. 
		String sql = "update users2 set pw = ?, name = ?, email = ?, address = ?, gender = ? where id = ?";
		
		try {
			//DAO 에서 트라이캐치 구문 시작은 항상 데이터베이스접속 구문
			conn = DriverManager.getConnection(url, uid, upw);
			System.out.println("데이터베이스 접속성공!");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, vo.getPw()); //vo.getPw 는 서비스임플 페이지에서 받아온 vo객체(즉, 회원정보수정페이지에서 우리가 입력한 정보들이 담긴 vo객체)
			pstmt.setString(2, vo.getName());//그러므로 vo.getPw() 는 우리가 입력했던 "변경하려는 비밀번호" 이다!!@@@@
			pstmt.setString(3, vo.getEmail());
			pstmt.setString(4, vo.getAddress());
			pstmt.setString(5, vo.getGender());
			pstmt.setString(6, vo.getId()); // 이 아이디가 where id = ? 의 pk이기 때문에 이 아이디의 나머지 column들의 정보를 수정할것이다.
			
			result = pstmt.executeUpdate(); // pstmt.executeUpdate() 는 수행결과를 int 값으로 반환받는다.
											// -> INSERT / DELETE / UPDATE 관련 구문에서는 반영된 레코드의 건수를 반환합니다.
											//-> CREATE / DROP 관련 구문에서는 -1 을 반환합니다.
			 								// 결론 : 0 이 아니면? 성공한거다. **헷갈린다**
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("업데이트 과정 에러");
		}finally {
			
			JdbcUtil.close(conn, pstmt, null);
		}
		
		
		return result;
	}

	public void delete(String id) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "delete from users2 where id = ?";
		
		try {
			conn = DriverManager.getConnection(url, uid, upw);
			System.out.println("데이터베이스 접속성공");
			
			pstmt = conn.prepareStatement(sql); //쿼리 준비단계
			
			pstmt.setString(1, id);
			
			pstmt.executeUpdate();
		
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("회원 삭제 delete 중 에러발생");
		} finally {
			JdbcUtil.close(conn, pstmt, null);
		}
		
		
	}
	

	
	
	
}
