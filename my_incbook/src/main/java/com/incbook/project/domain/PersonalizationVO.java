package com.incbook.project.domain;

public class PersonalizationVO {

	private int id;
	private int memberId;
	private String genre;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getmemberId() {
		return memberId;
	}

	public void setmemberId(int memberId) {
		this.memberId = memberId;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	@Override
	public String toString() {
		return "PersonalizationVO [id=" + id + ", memberId=" + memberId + ", genre=" + genre + "]";
	}

}
