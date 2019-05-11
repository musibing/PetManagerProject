package com.musibing.vo;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import org.springframework.stereotype.Repository;
@Repository
public class CopyOfProduct implements Serializable{
	
	private static final long serialVersionUID = 7635660987839341385L;
	private int productID;
	private String productName;
	private double retailPrice;/*零售价格*/
	private double manufacturerGuidancePrice;/*厂家指导价*/
	private int distributionLocality;/*库存*/
	private double evaluationIndex;/*评价指数*/
	private int salesVolumes;/*销售数量*/
	private String brandName;/*所属品牌*/
	private String specifications;/*规格*/
	private String applicableObject;/*适用对象*/
	private String productDescribe;/*产品描述信息*/
	private String exhibitionIMGPath;/*展示图片路径*/
	
	
	
	public CopyOfProduct() {
		super();
	}
	
	
	public CopyOfProduct(int productID, String productName, double retailPrice,
			double manufacturerGuidancePrice, int distributionLocality,
			double evaluationIndex, int salesVolumes, String brandName,
			String specifications, String applicableObject,String productDescribe,String exhibitionIMGPath,Set<ProductIMG> pimg, Set<BuyCarList> buyCarListID) {
		super();
		this.productID = productID;
		this.productName = productName;
		this.retailPrice = retailPrice;
		this.manufacturerGuidancePrice = manufacturerGuidancePrice;
		this.distributionLocality = distributionLocality;
		this.evaluationIndex = evaluationIndex;
		this.salesVolumes = salesVolumes;
		this.brandName = brandName;
		this.specifications = specifications;
		this.applicableObject = applicableObject;
		this.productDescribe = productDescribe;
		this.exhibitionIMGPath=exhibitionIMGPath;
		
		
	}
	
	


	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public double getRetailPrice() {
		return retailPrice;
	}
	public void setRetailPrice(double retailPrice) {
		this.retailPrice = retailPrice;
	}
	public double getManufacturerGuidancePrice() {
		return manufacturerGuidancePrice;
	}
	public void setManufacturerGuidancePrice(double manufacturerGuidancePrice) {
		this.manufacturerGuidancePrice = manufacturerGuidancePrice;
	}
	public int getDistributionLocality() {
		return distributionLocality;
	}
	public void setDistributionLocality(int distributionLocality) {
		this.distributionLocality = distributionLocality;
	}
	public double getEvaluationIndex() {
		return evaluationIndex;
	}
	public void setEvaluationIndex(double evaluationIndex) {
		this.evaluationIndex = evaluationIndex;
	}
	public int getSalesVolumes() {
		return salesVolumes;
	}
	public void setSalesVolumes(int salesVolumes) {
		this.salesVolumes = salesVolumes;
	}
	public String getBrandName() {
		return brandName;
	}
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}
	public String getSpecifications() {
		return specifications;
	}
	public void setSpecifications(String specifications) {
		this.specifications = specifications;
	}
	public String getApplicableObject() {
		return applicableObject;
	}
	public void setApplicableObject(String applicableObject) {
		this.applicableObject = applicableObject;
	}
	public String getExhibitionIMGPath() {
		return exhibitionIMGPath;
	}


	public void setExhibitionIMGPath(String exhibitionIMGPath) {
		this.exhibitionIMGPath = exhibitionIMGPath;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public String getProductDescribe() {
		return productDescribe;
	}
	public void setProductDescribe(String productDescribe) {
		this.productDescribe = productDescribe;
	}
	

	public String toString() {
		return "Product [productID=" + productID + ", productName="
				+ productName + ", retailPrice=" + retailPrice
				+ ", manufacturerGuidancePrice=" + manufacturerGuidancePrice
				+ ", distributionLocality=" + distributionLocality
				+ ", evaluationIndex=" + evaluationIndex + ", salesVolumes="
				+ salesVolumes + ", brandName=" + brandName
				+ ", specifications=" + specifications + ", applicableObject="
				+ applicableObject + ", productDescribe=" + productDescribe+ "Pimg"+"]";
	}
	
	
}
