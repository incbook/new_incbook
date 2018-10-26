package com.incbook.project.domain;

import java.util.Date;

public class BookVO {

	private int id;
	private String title;
	private String genre;
	private String writer;
	private String publisher;
	private int averageScore;
	private Date regdate;
	private Date updateDate;
	private int finalUpdateMemberId;
	private String image;
	private String content;
	private int viewCount;
	
	public int getViewCount() {
		return viewCount;
	}

	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public int getAverageScore() {
		return averageScore;
	}

	public void setAverageScore(int averageScore) {
		this.averageScore = averageScore;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public int getFinalUpdateMemberId() {
		return finalUpdateMemberId;
	}

	public void setFinalUpdateMemberId(int finalUpdateMemberId) {
		this.finalUpdateMemberId = finalUpdateMemberId;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}



	@Override
	public String toString() {
		return "BookVO [id=" + id + ", title=" + title + ", genre=" + genre + ", writer=" + writer + ", publisher="
				+ publisher + ", averageScore=" + averageScore + ", regdate=" + regdate + ", updateDate=" + updateDate
				+ ", finalUpdateMemberId=" + finalUpdateMemberId + ", image=" + image + ", content=" + content
				+ ", viewCount=" + viewCount + "]";
	}




}
