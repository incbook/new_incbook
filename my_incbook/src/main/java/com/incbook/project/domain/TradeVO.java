package com.incbook.project.domain;

import java.util.Date;

public class TradeVO {

	private int id;
	private int ownId;
	private int memberId;
	private Date regdate;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getOwnId() {
		return ownId;
	}

	public void setOwnId(int ownId) {
		this.ownId = ownId;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "TradeVO [id=" + id + ", ownId=" + ownId + ", memberId=" + memberId + ", regdate=" + regdate + "]";
	}

}
