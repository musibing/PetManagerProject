package com.musibing.vo;

import java.io.Serializable;

import org.springframework.stereotype.Repository;
@Repository
public class ProductOderList  implements Serializable{
	
	private static final long serialVersionUID = 1774773496059955879L;
	private int productOderListID;
	private int number;
	private double dealPrice;
	private String productOderStatus;/*订单状态*/
	private Product productID;
	private ProductOder productoderID;
	
	public ProductOderList() {
		super();
	}

	public ProductOderList(int productOderListID, int number, double dealPrice,
			String productOderStatus, Product productID,
			ProductOder productoderID) {
		super();
		this.productOderListID = productOderListID;
		this.number = number;
		this.dealPrice = dealPrice;
		this.productOderStatus = productOderStatus;
		this.productID = productID;
		this.productoderID = productoderID;
	}

	public int getProductOderListID() {
		return productOderListID;
	}

	public void setProductOderListID(int productOderListID) {
		this.productOderListID = productOderListID;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public double getDealPrice() {
		return dealPrice;
	}

	public void setDealPrice(double dealPrice) {
		this.dealPrice = dealPrice;
	}

	public String getProductOderStatus() {
		return productOderStatus;
	}

	public void setProductOderStatus(String productOderStatus) {
		this.productOderStatus = productOderStatus;
	}

	

	public Product getProductID() {
		return productID;
	}

	public void setProductID(Product productID) {
		this.productID = productID;
	}

	public ProductOder getProductoderID() {
		return productoderID;
	}

	public void setProductoderID(ProductOder productoderID) {
		this.productoderID = productoderID;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	public String toString() {
		return "ProductOderList [productOderListID=" + productOderListID
				+ ", number=" + number + ", dealPrice=" + dealPrice
				+ ", productOderStatus=" + productOderStatus
				+ ", freshProduct=" + productID + ", productoderID="
				+ productoderID + "]";
	}

	
}
