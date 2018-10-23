package com.incbook.project.domain;

import java.util.Date;

public class ChattingVO {

	private int id;
	private int memberId;
	private int ownId;
	private Date regdate;
	private String content;
	private String emotion;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public int getOwnId() {
		return ownId;
	}

	public void setOwnId(int ownId) {
		this.ownId = ownId;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getEmotion() {
		return emotion;
	}

	public void setEmotion(String emotion) {
		this.emotion = emotion;
	}

	@Override
	public String toString() {
		return "ChattingVO [id=" + id + ", memberId=" + memberId + ", ownId=" + ownId + ", content=" + content
				+ ", emotion=" + emotion + "]";
	}

}
