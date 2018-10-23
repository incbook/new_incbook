package com.incbook.legacy.domain;

public class AppeareanceVO {

	private int lexId;
	private int bookId;

	public int getLexId() {
		return lexId;
	}

	public void setLexId(int lexId) {
		this.lexId = lexId;
	}

	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	@Override
	public String toString() {
		return "AppeareanceVO [lexId=" + lexId + ", bookId=" + bookId + "]";
	}

}