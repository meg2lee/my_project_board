package com.project.meg.vo;

public class CommentVO {
	
	private int bno;
	private int cno;
	private String writer;
	private String text;
	private String regdate;

	public CommentVO() {}

	public CommentVO(int bno, int cno, String writer, String text, String regdate) {
		super();
		this.bno = bno;
		this.cno = cno;
		this.writer = writer;
		this.text = text;
		this.regdate = regdate;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public int getCno() {
		return cno;
	}

	public void setCno(int cno) {
		this.cno = cno;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	

}
