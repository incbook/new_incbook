package com.incbook.project.domain;

import java.util.Date;

public class PaymentVO {

	private int id;
	private int memberId;
	private int paymentPrice;
	private Date regdate;
	private String paymentMethod;

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

	public int getpaymentPrice() {
		return paymentPrice;
	}

	public void setpaymentPrice(int paymentPrice) {
		this.paymentPrice = paymentPrice;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getpaymentMethod() {
		return paymentMethod;
	}

	public void setpaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}

	@Override
	public String toString() {
		return "PaymentVO [id=" + id + ", memberId=" + memberId + ", paymentPrice=" + paymentPrice + ", regdate="
				+ regdate + ", paymentMethod=" + paymentMethod + "]";
	}

}
