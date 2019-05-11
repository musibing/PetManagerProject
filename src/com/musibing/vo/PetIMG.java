package com.musibing.vo;

import java.io.Serializable;


import org.springframework.stereotype.Repository;
@Repository
public class PetIMG implements Serializable{
	
	/**宠物相关图片类
	 */
	private static final long serialVersionUID = -8106875633685627288L;
	private int pIMGID;
	private int fileWidth;
	private int fileHeight;
	private String fileName;
	private String filePath;
	private PetDataVOClass pDVOC;
	
	public PetIMG() {
		super();
	}

	public PetIMG(int fileWidth, int fileHeight, String fileName,
			String filePath, PetDataVOClass pDVOC) {
		super();
		
		this.fileWidth = fileWidth;
		this.fileHeight = fileHeight;
		this.fileName = fileName;
		this.filePath = filePath;
		this.pDVOC = pDVOC;
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

	public PetDataVOClass getpDVOC() {
		return pDVOC;
	}

	public void setpDVOC(PetDataVOClass pDVOC) {
		this.pDVOC = pDVOC;
	}


	public String toString() {
		return "PetIMG [pIMGID=" + pIMGID + ", fileWidth=" + fileWidth
				+ ", fileHeight=" + fileHeight + ", fileName=" + fileName
				+ ", filePath=" + filePath + ", pDVOC=" + pDVOC + "]";
	}
	
	
	
}
