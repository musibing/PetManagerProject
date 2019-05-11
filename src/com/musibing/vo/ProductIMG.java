package com.musibing.vo;

import java.io.Serializable;

import org.springframework.stereotype.Repository;
@Repository
public class ProductIMG implements Serializable{
	
	private static final long serialVersionUID = 1301107079989294520L;
	private Product product;
	private int pIMGID;
	private int fileWidth;
	private int fileHeight;
	private String fileName;
	private String filePath;
	
	public ProductIMG(Product product, int pIMGID,int fileWidth, int fileHeight,String fileName, String filePath) {
		super();
		this.product = product;
		this.pIMGID = pIMGID;
		this.fileWidth=fileWidth;
		this.fileHeight=fileHeight;
		this.fileName = fileName;
		this.filePath = filePath;
	}


	
	public ProductIMG() {
		super();
	}


	
	public Product getProduct() {
		return product;
	}



	public void setProduct(Product product) {
		this.product = product;
	}



	public int getpIMGID() {
		return pIMGID;
	}

	public void setpIMGID(int pIMGID) {
		this.pIMGID = pIMGID;
	}
	
	public int getFileWidth() {
		return fileWidth;
	}



	public void setFileWidth(int fileWidth) {
		this.fileWidth = fileWidth;
	}



	public int getFileHeight() {
		return fileHeight;
	}



	public void setFileHeight(int fileHeight) {
		this.fileHeight = fileHeight;
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


	public String toString() {
		return "ProductIMG [product=" + product + ", pIMGID=" + pIMGID + ", fileName="
				+ fileName +"fileName="+ fileName + "fileName="+ fileName + ", filePath=" + filePath + "]";
	}
	

}
