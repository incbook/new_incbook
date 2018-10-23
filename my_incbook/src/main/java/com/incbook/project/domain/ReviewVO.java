package com.incbook.project.domain;

public class ReviewVO {

	private int id;
	private int bookId;
	private int memberId;
	private String content;

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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "ReviewVO [id=" + id + ", bookId=" + bookId + ", memberId=" + memberId + ", content=" + content + "]";
	}

}
