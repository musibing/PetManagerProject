package com.musibing.vo;

import java.io.Serializable;
import java.util.Set;

import org.springframework.stereotype.Repository;
@Repository
public class BuyCarList implements Serializable{
	
	private static final long serialVersionUID = 1L;
	private int buyCarListID;
	private Product product;
	private int buyNumber;
	private double dealPrice;
	private double totalPrice;
	private BuyCar buyCarID;
	public BuyCarList() {
		super();
	}
	
	public BuyCarList(int buyCarListID,Product product, int buyNumber,double dealPrie,double totalPrice,
			BuyCar buyCarID) {
		super();
		this.buyCarListID=buyCarListID;
		this.product = product;
		this.buyNumber = buyNumber;
		this.dealPrice = dealPrie;
		this.totalPrice = totalPrice;
		this.buyCarID = buyCarID;
		
	}

	public int getBuyCarListID() {
		return buyCarListID;
	}

	public void setBuyCarListID(int buyCarListID) {
		this.buyCarListID = buyCarListID;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getBuyNumber() {
		return buyNumber;
	}

	public void setBuyNumber(int buyNumber) {
		this.buyNumber = buyNumber;
	}

	public double getDealPrice() {
		return dealPrice;
	}

	public void setDealPrice(double dealPrice) {
		this.dealPrice = dealPrice;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public BuyCar getBuyCarID() {
		return buyCarID;
	}

	public void setBuyCarID(BuyCar buyCarID) {
		this.buyCarID = buyCarID;
	}

	
	public String toString() {
		return "BuyCarList [buyCarListID=" + buyCarListID + ", product="
				+ product + ", buyNumber=" + buyNumber + ", dealPrice="
				+ dealPrice + ", totalPrice=" + totalPrice + ", buyCarID="
				+ buyCarID + "]";
	}

	
	

	
}
