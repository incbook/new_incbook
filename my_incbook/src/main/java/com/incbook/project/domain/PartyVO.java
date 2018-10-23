package com.incbook.project.domain;

import java.util.Date;

public class PartyVO {

	private int id;
	private String name;
	private Date regdate;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "partyVO [id=" + id + ", name=" + name + ", regdate=" + regdate + "]";
	}

}
