package com.musibing.vo;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import org.springframework.stereotype.Repository;
@Repository
public class Product implements Serializable{
	
	private static final long serialVersionUID = 7635660987839341385L;
	private int productID;
	private String productName;
	private double retailPrice;/*零售价格*/
	private double manufacturerGuidancePrice;/*厂家指导价*/
	private int distributionLocality;/*库存*/
	private double evaluationIndex;/*评价指数*/
	private String tagVel1;/*分类标签1*/
	private String tagVel2;/*分类标签1*/
	private String tagVelTOP;/*顶级分类*/
	private int salesVolumes;/*销售数量*/
	private String brandName;/*所属品牌*/
	private String specifications;/*规格*/
	private String applicableObject;/*适用对象*/
	private String productDescribe;/*产品描述信息*/
	private String exhibitionIMGPath;/*展示图片路径*/
	private String datasourceIdentification;/*源数据标识用来记录来源数据在原本数据库中的ID*/
	
	private Set<ProductIMG> pimg = new HashSet<ProductIMG>();
	private Set<ProductOder> productOderID=new HashSet<ProductOder>();
	private Set<BuyCarList> buyCarListID=new HashSet<BuyCarList>();
	public Product() {
		super();
	}
	
	
	public Product(int productID, String productName, double retailPrice,
			double manufacturerGuidancePrice, int distributionLocality,
			double evaluationIndex, int salesVolumes, String brandName,
			String specifications, String applicableObject,String productDescribe,String exhibitionIMGPath,Set<ProductIMG> pimg, Set<BuyCarList> buyCarListID,String datasourceIdentification) {
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
		
		this.pimg = pimg;
		this.buyCarListID=buyCarListID;
		this.datasourceIdentification=datasourceIdentification;
	}
	
	


	public Set<ProductOder> getProductOderID() {
		return productOderID;
	}


	public void setProductOderID(Set<ProductOder> productOderID) {
		this.productOderID = productOderID;
	}


	public Set<ProductIMG> getPimg() {
		return pimg;
	}

	public void setPimg(Set<ProductIMG> pimg) {
		this.pimg = pimg;
	}

	public String getTagVel1() {
		return tagVel1;
	}


	public void setTagVel1(String tagVel1) {
		this.tagVel1 = tagVel1;
	}


	public String getTagVel2() {
		return tagVel2;
	}


	public void setTagVel2(String tagVel2) {
		this.tagVel2 = tagVel2;
	}
	

	public String getTagVelTOP() {
		return tagVelTOP;
	}


	public void setTagVelTOP(String tagVelTOP) {
		this.tagVelTOP = tagVelTOP;
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
	public Set<BuyCarList> getBuyCarID() {
		return buyCarListID;
	}


	public void setBuyCarID(Set<BuyCarList> buyCarListID) {
		this.buyCarListID =buyCarListID;
	}
	
	public Set<BuyCarList> getBuyCarListID() {
		return buyCarListID;
	}


	public void setBuyCarListID(Set<BuyCarList> buyCarListID) {
		this.buyCarListID = buyCarListID;
	}


	public String getDatasourceIdentification() {
		return datasourceIdentification;
	}


	public void setDatasourceIdentification(String datasourceIdentification) {
		this.datasourceIdentification = datasourceIdentification;
	}


	public String toString() {
		return "Product [productID=" + productID + ", productName="
				+ productName + ", retailPrice=" + retailPrice
				+ ", manufacturerGuidancePrice=" + manufacturerGuidancePrice
				+ ", distributionLocality=" + distributionLocality
				+ ", evaluationIndex=" + evaluationIndex + ", salesVolumes="
				+ salesVolumes + ", brandName=" + brandName
				+ ", specifications=" + specifications + ", applicableObject="
				+ applicableObject + ", productDescribe=" + productDescribe+ "Pimg" + pimg+"]";
	}
	
	
}
