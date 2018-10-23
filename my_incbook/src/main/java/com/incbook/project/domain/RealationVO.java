package com.incbook.project.domain;

import java.util.Date;

public class RealationVO {

	private int id;
	private Date regdate;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "RealationVO [id=" + id + ", regdate=" + regdate + "]";
	}

}
