package com.project.meg.vo;

import java.time.LocalDate;

public class MemberVO {
	
	private String email;
	private String password;
	private String name;
	private LocalDate regDate;

	public MemberVO() {}

	public MemberVO(String email, String password, String name, LocalDate regDate) {
		super();
		this.email = email;
		this.password = password;
		this.name = name;
		this.regDate = regDate;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public LocalDate getRegDate() {
		return regDate;
	}

	public void setRegDate(LocalDate regDate) {
		this.regDate = regDate;
	}



}
