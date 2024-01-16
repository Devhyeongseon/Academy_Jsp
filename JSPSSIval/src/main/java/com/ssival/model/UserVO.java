package com.ssival.model;

import java.sql.Timestamp;

public class UserVO {

	//DB의 컬럼과 동일하게 변수명을 선언해준다.
	//
	
	private String id;
	private String pw;
	private String name;
	private String email;
	private String address;
	private String gender;
	private Timestamp regdate;
	
	//기본생성자 없이 매개변수가 있는 생성자를 만들면 나중에 컴파일에러뜰수있으니 
	//기본생성자 만들고 시작.
	public UserVO() {
		
	}
	
	public UserVO(String id, String pw, String name, String email, String address, String gender, Timestamp regdate) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.email = email;
		this.address = address;
		this.gender = gender;
		this.regdate = regdate;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getPw() {
		return pw;
	}


	public void setPw(String pw) {
		this.pw = pw;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public Timestamp getRegdate() {
		return regdate;
	}


	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
