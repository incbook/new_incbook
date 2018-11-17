package com.incbook.project.domain;

import java.util.Date;

public class TradeVO {

	private int id;
	private int ownId;
	private int memberId;
	private Date regdate;
	private String detailLocation;
	private Date tradeDate;
	private String tradeTime;
	private int totalAmount;
	
	private MemberVO member;
	private OwnVO own;
	private BookVO book;
	private RentVO rent;
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getOwnId() {
		return ownId;
	}

	public void setOwnId(int ownId) {
		this.ownId = ownId;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getDetailLocation() {
		return detailLocation;
	}

	public void setDetailLocation(String detailLocation) {
		this.detailLocation = detailLocation;
	}

	public Date getTradeDate() {
		return tradeDate;
	}

	public void setTradeDate(Date tradeDate) {
		this.tradeDate = tradeDate;
	}

	public String getTradeTime() {
		return tradeTime;
	}

	public void setTradeTime(String tradeTime) {
		this.tradeTime = tradeTime;
	}

	public int getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(int totalAmount) {
		this.totalAmount = totalAmount;
	}
	
	public MemberVO getMember() {
		return member;
	}

	public void setMember(MemberVO member) {
		this.member = member;
	}

	public OwnVO getOwn() {
		return own;
	}

	public void setOwn(OwnVO own) {
		this.own = own;
	}

	public RentVO getRent() {
		return rent;
	}

	public void setRent(RentVO rent) {
		this.rent = rent;
	}
	
	public BookVO getBook() {
		return book;
	}

	public void setBook(BookVO book) {
		this.book = book;
	}

	public void calcTotalAmount(OwnVO ownVO) {
		totalAmount = ownVO.calcTotalAmount();
	}

	@Override
	public String toString() {
		return "TradeVO [id=" + id + ", ownId=" + ownId + ", memberId=" + memberId + ", regdate=" + regdate
				+ ", detailLocation=" + detailLocation + ", tradeDate=" + tradeDate + ", tradeTime=" + tradeTime
				+ ", totalAmount=" + totalAmount + ", 대여자=" + member + ", 소유자=" + own + ", 도서=" + book + ", 대여="
				+ rent + "]";
	}
	

	
}
