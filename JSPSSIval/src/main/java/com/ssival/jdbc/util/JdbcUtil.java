package com.ssival.jdbc.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class JdbcUtil {
	
	//DB 주소 설정.
	//본인 PC 에서는 @로컬호스트:1521~
	//서버접속시에는 @172.30.1.xx:1521~
	public static final String url = "jdbc:oracle:thin:@localhost:1521:xe";
	public static final String uid = "JSP";
	public static final String upw = "JSP";

	//공통부분 
	//DAO 접속이 끝나면 close 생성자.
	public static void close(Connection conn, PreparedStatement pstmt, ResultSet rs) {
		try {
			
			if(conn != null) {
				conn.close();
			}
			
			if(pstmt != null) {
				pstmt.close();
			}
			
			if(rs != null) {
				rs.close();
			}
			
		} catch (Exception e) {
			System.out.println("==========JdbcUtil--close 에러==========");
		}
	}
	
	
	
}
