package com.jorder.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.sql.DataSource;

import org.eclipse.jdt.internal.compiler.ast.TrueLiteral;

import com.jorder.util.JdbcUtil;

public class FoodDAO {

	//싱글톤
	
	private static FoodDAO instance = new FoodDAO();
	
	//2. 생성자 private
	private FoodDAO() {
		
		try {
			//드라이버호출
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
			
		}	
	}	
	//3. getter 메서드
	public static FoodDAO getInstance() {
		return instance;		
	}
	
	//////////////////////////////////////////////////
	private String url = JdbcUtil.url;
	private String uid = JdbcUtil.uid;
	private String upw = JdbcUtil.upw;

	/*
	 * //커넥션풀에서 온 디비 정보 private DataSource dataSource;
	 */
	
	
	
	
	public void addFood(FoodVO vo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		
		
		String sql = "insert into food(food_name, food_price)"
					+ "values(?,?)";
		
		try {
			
			conn = DriverManager.getConnection(url, uid, upw);
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getName());
			pstmt.setString(2, vo.getPrice());
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcUtil.close(conn, pstmt, null);
		}
		
	}

	
	
}
