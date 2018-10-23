package com.incbook.project.domain;

public class SellVO {

	private int id;
	private int sellPrice;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getSellPrice() {
		return sellPrice;
	}

	public void setSellPrice(int sellPrice) {
		this.sellPrice = sellPrice;
	}

	@Override
	public String toString() {
		return "SellVO [id=" + id + ", sellPrice=" + sellPrice + "]";
	}

}
