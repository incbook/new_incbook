package com.incbook.project.domain;

import java.util.Date;

public class NoticeVO {

	private int id;
	private int boardId;
	private Date regdate;
	private Date updatedate;
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

	public int getboardId() {
		return boardId;
	}

	public void setboardId(int boardId) {
		this.boardId = boardId;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public Date getUpdatedate() {
		return updatedate;
	}

	public void setUpdatedate(Date updatedate) {
		this.updatedate = updatedate;
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

	public int getmemberId() {
		return memberId;
	}

	public void setmemberId(int memberId) {
		this.memberId = memberId;
	}

	public int getviewCount() {
		return viewCount;
	}

	public void setviewCount(int viewCount) {
		this.viewCount = viewCount;
	}

	@Override
	public String toString() {
		return "NoticeVO [id=" + id + ", boardId=" + boardId + ", regdate=" + regdate + ", updatedate=" + updatedate
				+ ", title=" + title + ", content=" + content + ", memberId=" + memberId + ", viewCount="
				+ viewCount + "]";
	}

}
