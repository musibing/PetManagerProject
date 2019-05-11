package com.musibing.vo;

import java.io.Serializable;

import org.springframework.stereotype.Repository;
@Repository
public class CopyOfProductIMG implements Serializable{
	
	private static final long serialVersionUID = 1301107079989294520L;
	private int productID;
	private int pIMGID;
	private int fileWidth;
	private int fileHeight;
	private String fileName;
	private String filePath;
	
	public CopyOfProductIMG(int product, int pIMGID,int fileWidth, int fileHeight,String fileName, String filePath) {
		super();
		this.productID = product;
		this.pIMGID = pIMGID;
		this.fileWidth=fileWidth;
		this.fileHeight=fileHeight;
		this.fileName = fileName;
		this.filePath = filePath;
	}


	
	public CopyOfProductIMG() {
		super();
	}


	
	


	public int getProductID() {
		return productID;
	}



	public void setProductID(int productID) {
		this.productID = productID;
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
		return "ProductIMG [product=" + productID + ", pIMGID=" + pIMGID + ", fileName="
				+ fileName +"fileName="+ fileName + "fileName="+ fileName + ", filePath=" + filePath + "]";
	}
	

}
