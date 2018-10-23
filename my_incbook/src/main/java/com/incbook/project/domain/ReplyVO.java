package com.incbook.project.domain;

import java.util.Date;

public class ReplyVO {

	private int id;
	private int reply_id;
	private int notice_id;
	private Date regdate;
	private String content;
	private String member_id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getReply_id() {
		return reply_id;
	}

	public void setReply_id(int reply_id) {
		this.reply_id = reply_id;
	}

	public int getNotice_id() {
		return notice_id;
	}

	public void setNotice_id(int notice_id) {
		this.notice_id = notice_id;
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

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	@Override
	public String toString() {
		return "ReplyVO [id=" + id + ", reply_id=" + reply_id + ", notice_id=" + notice_id + ", regdate=" + regdate
				+ ", content=" + content + ", member_id=" + member_id + "]";
	}

}
