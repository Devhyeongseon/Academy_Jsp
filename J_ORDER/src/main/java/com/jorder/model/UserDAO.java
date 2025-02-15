package com.jorder.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.sql.DataSource;

import org.eclipse.jdt.internal.compiler.ast.TrueLiteral;

import com.jorder.util.JdbcUtil;

public class UserDAO {

	//싱글톤
	
	private static UserDAO instance = new UserDAO();
	
	//2. 생성자 private
	private UserDAO() {
		
		try {
			//드라이버호출
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
			
		}	
	}	
	//3. getter 메서드
	public static UserDAO getInstance() {
		return instance;		
	}
	
	//////////////////////////////////////////////////
//	private String url = JdbcUtil.url;
//	private String uid = JdbcUtil.uid;
//	private String upw = JdbcUtil.upw;
//	
	//커넥션풀에서 온 디비 정보
	private DataSource dataSource;

	public void insertUser(UserVO vo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "insert into users2(id, pw, name, email, address, gender)"
					+ "values(?,?,?,?,?,?)";
		
		try {
			
			conn = dataSource.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPw());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getEmail());
			pstmt.setString(5, vo.getAddress());
			pstmt.setString(6, vo.getGender());
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(conn, pstmt, null);
		}
		
	}
	
	
}
