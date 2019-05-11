package com.musibing.vo;

import java.io.Serializable;

import org.springframework.stereotype.Repository;

@Repository
public class OrderSunburnImg implements Serializable{
	
	private static final long serialVersionUID = 6350420198902839661L;
	private int orderSunburnImgID;
	private ProductOderList productOderListID;
	private String fileName;
	private String filePath;
	private String dbPath;
	
	public OrderSunburnImg() {
		super();
	}
	
	public OrderSunburnImg(int orderSunburnImgID, ProductOderList productOderListID,
			String fileName, String filePath, String dbPath) {
		super();
		this.orderSunburnImgID = orderSunburnImgID;
		this.productOderListID = productOderListID;
		this.fileName = fileName;
		this.filePath = filePath;
		dbPath = dbPath;
	}

	public int getOrderSunburnImgID() {
		return orderSunburnImgID;
	}
	public void setOrderSunburnImgID(int orderSunburnImgID) {
		this.orderSunburnImgID = orderSunburnImgID;
	}
	
	public ProductOderList getProductOderListID() {
		return productOderListID;
	}

	public void setProductOderListID(ProductOderList productOderListID) {
		this.productOderListID = productOderListID;
	}

	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	
	
	public String getDbPath() {
		return dbPath;
	}

	public void setDbPath(String dbPath) {
		this.dbPath = dbPath;
	}

	public String toString() {
		return "OrderSunburnImg [orderSunburnImgID=" + orderSunburnImgID
				+ ", productOderID=" + productOderListID + ", fileName=" + fileName
				+ ", filePath=" + filePath + ", DBPath=" + dbPath + "]";
	}
	
}
