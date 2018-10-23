package com.incbook.project.domain;

import java.util.Date;

public class AnnouncementVO {

	private int id;
	private Date regdate;
	private String title;
	private String content;
	private int memberId;
	private int viewCount;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public int getViewCount() {
		return viewCount;
	}

	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}

	@Override
	public String toString() {
		return "AnnouncementVO [id=" + id + ", regdate=" + regdate + ", title=" + title + ", content=" + content
				+ ", memberId=" + memberId + ", viewCount=" + viewCount + "]";
	}

}
