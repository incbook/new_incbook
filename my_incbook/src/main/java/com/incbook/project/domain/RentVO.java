package com.incbook.project.domain;

import java.util.Date;

public class RentVO {

	private int id;
	private Date returnDate;
	private String isReturn;
	private int rentPeriod;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getReturnDate() {
		return returnDate;
	}
	public void setReturnDate(Date returnDate) {
		this.returnDate = returnDate;
	}
	public String getIsReturn() {
		return isReturn;
	}
	public void setIsReturn(String isReturn) {
		this.isReturn = isReturn;
	}
	public int getRentPeriod() {
		return rentPeriod;
	}
	public void setRentPeriod(int rentPeriod) {
		this.rentPeriod = rentPeriod;
	}
	@Override
	public String toString() {
		return "RentVO [id=" + id + ", returnDate=" + returnDate + ", isReturn=" + isReturn + ", rentPeriod="
				+ rentPeriod + "]";
	}
	
	
}
