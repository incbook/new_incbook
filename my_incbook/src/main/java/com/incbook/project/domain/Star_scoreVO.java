package com.incbook.project.domain;

import java.util.Date;

public class Star_scoreVO {

	private int id;
	private int memberId;
	private int bookId;
	private int score;
	private Date regdate;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "Star_scoreVO [id=" + id + ", memberId=" + memberId + ", bookId=" + bookId + ", score=" + score
				+ ", regdate=" + regdate + "]";
	}

}
