package com.incbook.project.domain;

public class RatingVO {

	private int id;
	private int rentId;
	private String score;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getRentId() {
		return rentId;
	}

	public void setRentId(int rentId) {
		this.rentId = rentId;
	}

	public String getScore() {
		return score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	@Override
	public String toString() {
		return "RatingVO [id=" + id + ", rentId=" + rentId + ", score=" + score + "]";
	}

}
