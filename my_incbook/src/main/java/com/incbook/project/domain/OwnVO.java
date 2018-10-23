package com.incbook.project.domain;

import java.util.Date;

public class OwnVO {

	private int realationId;
	private int bookId;
	private int memberId;
	private int rentCount;
	private String rentCheck;
	private String state;
	private String isRent;
	private String isSell;
	private int fee;
	private int selectPeriod;
	private Date rentAvailable;
	private String rentLocation;

	public int getRealationId() {
		return realationId;
	}

	public void setRealationId(int realationId) {
		this.realationId = realationId;
	}

	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public int getRentCount() {
		return rentCount;
	}

	public void setRentCount(int rentCount) {
		this.rentCount = rentCount;
	}

	public String getRentCheck() {
		return rentCheck;
	}

	public void setRentCheck(String rentCheck) {
		this.rentCheck = rentCheck;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getIsRent() {
		return isRent;
	}

	public void setIsRent(String isRent) {
		this.isRent = isRent;
	}

	public String getIsSell() {
		return isSell;
	}

	public void setIsSell(String isSell) {
		this.isSell = isSell;
	}

	public int getFee() {
		return fee;
	}

	public void setFee(int fee) {
		this.fee = fee;
	}

	public int getSelectPeriod() {
		return selectPeriod;
	}

	public void setSelectPeriod(int selectPeriod) {
		this.selectPeriod = selectPeriod;
	}

	public Date getRentAvailable() {
		return rentAvailable;
	}

	public void setRentAvailable(Date rentAvailable) {
		this.rentAvailable = rentAvailable;
	}

	public String getRentLocation() {
		return rentLocation;
	}

	public void setRentLocation(String rentLocation) {
		this.rentLocation = rentLocation;
	}

	@Override
	public String toString() {
		return "OwnVO [realationId=" + realationId + ", bookId=" + bookId + ", memberId=" + memberId + ", rentCount="
				+ rentCount + ", rentCheck=" + rentCheck + ", state=" + state + ", isRent=" + isRent + ", isSell="
				+ isSell + ", fee=" + fee + ", selectPeriod=" + selectPeriod + ", rentAvailable=" + rentAvailable
				+ ", rentLocation=" + rentLocation + "]";
	}

}
