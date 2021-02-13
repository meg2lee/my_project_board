package com.project.meg.vo;

public class BoardVO {
	
	private int num;
	private String author;
	private String wdate;
	private String title;
	private String contents;
	private int views;
	private int pnum;
	private int rownum;
	private int likes;

	public BoardVO() {}

	public BoardVO(int num, String author, String wdate, String title, String contents, int views, int pnum, int rownum,
			int likes) {
		super();
		this.num = num;
		this.author = author;
		this.wdate = wdate;
		this.title = title;
		this.contents = contents;
		this.views = views;
		this.pnum = pnum;
		this.rownum = rownum;
		this.likes = likes;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getWdate() {
		return wdate;
	}

	public void setWdate(String wdate) {
		this.wdate = wdate;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public int getViews() {
		return views;
	}

	public void setViews(int views) {
		this.views = views;
	}

	public int getPnum() {
		return pnum;
	}

	public void setPnum(int pnum) {
		this.pnum = pnum;
	}

	public int getRownum() {
		return rownum;
	}

	public void setRownum(int rownum) {
		this.rownum = rownum;
	}

	public int getLikes() {
		return likes;
	}

	public void setLikes(int likes) {
		this.likes = likes;
	}
	

	
}
