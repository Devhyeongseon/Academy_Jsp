package com.example.model;

public class MemberDAO {

	/*
	 * DAO는 데이터베이스 연결을 처리하는 클래스
	 * 
	 * 불필요하게 요청별로 객체를 여러개 만들필요 없음.싱글톤 패턴으로 생성합니다.
	 * 
	 */
	
	//1. 나 자신의 객체 1개만 만든다.(static)
	private static MemberDAO instance = new MemberDAO();
	
	//2. 생성자는 private 처리
	private MemberDAO() {
		
	}
	
	//3. getter 를 사용해서 내부에 만들어진 instance를 반환합니다.
	public static MemberDAO getInstance() {
		return instance;
	}
	
	//아래에서는 데이터베이스 관련로직
	
}
