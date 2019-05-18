package com.musibing.vo;

import java.io.Serializable;
import java.util.Date;

import org.springframework.stereotype.Repository;
@Repository
public class ClassificationType implements Serializable{
	private int classificationType;
	private String classificationLeve1;
	private String classificationLeve2;
	private String classificationLeve3;
	private String classificationLeve4;
	private String classificationLeveTop;
	private Article articleType;/**/
	private Product productType;/**/
	private Date createDate;
	
	
	
	
	public ClassificationType() {
		super();
	}




	public ClassificationType(int classificationType,
			String classificationLeve1, String classificationLeve2,
			String classificationLeve3, String classificationLeve4,
			String classificationLeveTop, Article articleType,
			Product productType, Date createDate) {
		super();
		this.classificationType = classificationType;
		this.classificationLeve1 = classificationLeve1;
		this.classificationLeve2 = classificationLeve2;
		this.classificationLeve3 = classificationLeve3;
		this.classificationLeve4 = classificationLeve4;
		this.classificationLeveTop = classificationLeveTop;
		this.articleType = articleType;
		this.productType = productType;
		this.createDate = createDate;
	}




	public int getClassificationType() {
		return classificationType;
	}




	public void setClassificationType(int classificationType) {
		this.classificationType = classificationType;
	}




	public String getClassificationLeve1() {
		return classificationLeve1;
	}




	public void setClassificationLeve1(String classificationLeve1) {
		this.classificationLeve1 = classificationLeve1;
	}




	public String getClassificationLeve2() {
		return classificationLeve2;
	}




	public void setClassificationLeve2(String classificationLeve2) {
		this.classificationLeve2 = classificationLeve2;
	}




	public String getClassificationLeve3() {
		return classificationLeve3;
	}




	public void setClassificationLeve3(String classificationLeve3) {
		this.classificationLeve3 = classificationLeve3;
	}




	public String getClassificationLeve4() {
		return classificationLeve4;
	}




	public void setClassificationLeve4(String classificationLeve4) {
		this.classificationLeve4 = classificationLeve4;
	}




	public String getClassificationLeveTop() {
		return classificationLeveTop;
	}




	public void setClassificationLeveTop(String classificationLeveTop) {
		this.classificationLeveTop = classificationLeveTop;
	}




	public Article getArticleType() {
		return articleType;
	}




	public void setArticleType(Article articleType) {
		this.articleType = articleType;
	}




	public Product getProductType() {
		return productType;
	}




	public void setProductType(Product productType) {
		this.productType = productType;
	}




	public Date getCreateDate() {
		return createDate;
	}




	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}




	public String toString() {
		return "ClassificationType [classificationType=" + classificationType
				+ ", classificationLeve1=" + classificationLeve1
				+ ", classificationLeve2=" + classificationLeve2
				+ ", classificationLeve3=" + classificationLeve3
				+ ", classificationLeve4=" + classificationLeve4
				+ ", classificationLeveTop=" + classificationLeveTop
				+ ", articleType=" + articleType + ", productType="
				+ productType + ", createDate=" + createDate + "]";
	}
	

}
