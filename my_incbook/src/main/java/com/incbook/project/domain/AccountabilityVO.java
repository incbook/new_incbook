package com.incbook.project.domain;

import java.util.Date;

public class AccountabilityVO {

	private int bookclubId;
	private String memberId;
	private Date position;

	public int getbookclubId() {
		return bookclubId;
	}

	public void setbookclubId(int bookclubId) {
		this.bookclubId = bookclubId;
	}

	public String getmemberId() {
		return memberId;
	}

	public void setmemberId(String memberId) {
		this.memberId = memberId;
	}

	public Date getPosition() {
		return position;
	}

	public void setPosition(Date position) {
		this.position = position;
	}

	@Override
	public String toString() {
		return "AccountabilityVO [bookclubId=" + bookclubId + ", memberId=" + memberId + ", position=" + position
				+ "]";
	}

}
