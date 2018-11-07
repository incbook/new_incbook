package com.incbook.project.domain;

import java.util.Date;

public class PaymentVO {

	private int id;
	private int memberId;
	private int paymentPrice;
	private Date regdate;
	private int point;
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
	public int getPaymentPrice() {
		return paymentPrice;
	}
	public void setPaymentPrice(int paymentPrice) {
		this.paymentPrice = paymentPrice;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	@Override
	public String toString() {
		return "PaymentVO [id=" + id + ", memberId=" + memberId + ", paymentPrice=" + paymentPrice + ", regdate="
				+ regdate + ", point=" + point + "]";
	}

	
	
}
