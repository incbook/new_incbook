package com.incbook.project.domain;

public class BoardVO {

	private int id;
	private int bookclubId;
	private String title;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getbookclubId() {
		return bookclubId;
	}

	public void setbookclubId(int bookclubId) {
		this.bookclubId = bookclubId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Override
	public String toString() {
		return "BoardVO [id=" + id + ", bookclubId=" + bookclubId + ", title=" + title + "]";
	}

}
