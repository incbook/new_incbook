package com.incbook.project.domain;

public class BookclubVO {

	private int id;
	private String genre;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	@Override
	public String toString() {
		return "BookclubVO [id=" + id + ", genre=" + genre + "]";
	}

}
