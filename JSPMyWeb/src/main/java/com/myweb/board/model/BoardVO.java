package com.myweb.board.model;

import java.sql.Timestamp;

public class BoardVO {

	private int bno;
	private String writer;
	private String title;
	private String content;
	private int hit;
	private Timestamp regdate;
	
	public BoardVO() {
		// TODO Auto-generated constructor stub
	}

	public BoardVO(int bno, String writer, String title, String content, int hit, Timestamp regdate) {
		super();
		this.bno = bno;
		this.writer = writer;
		this.title = title;
		this.content = content;
		this.hit = hit;
		this.regdate = regdate;
	}
	

	@Override
	public String toString() {
		return "BoardVO [bno=" + bno + ", writer=" + writer + ", title=" + title + ", content=" + content + ", hit="
				+ hit + ", regdate=" + regdate + "]";
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	
	
}
