package com.incbook.project.domain;

public class PreferVO {

	private int id;
	private int bookId;
	private int memberId;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	@Override
	public String toString() {
		return "PreferVO [id=" + id + ", bookId=" + bookId + ", memberId=" + memberId + "]";
	}

}
