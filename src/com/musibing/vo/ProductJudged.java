package com.musibing.vo;

import java.io.Serializable;
import java.util.Set;

import org.springframework.stereotype.Repository;

@Repository
public class ProductJudged implements Serializable{
	private int judgedID;
	private String judgedContent; /*评论内容*/
	private String judgedMark;/*评论分数*/
	private String judgedGrade;/*评论等级:已经生成表建议后期分废除*/
	private String judgedTime;/*评论时间*/
	private String judgedSource;/*评论来源*/
	private ProductOderList productoderlist;/*订单列表指向数据*/
	private Set<OrderSunburnImg> simg;/*晒单图片*/
	public int getJudgedID() {
		return judgedID;
	}
	public void setJudgedID(int judgedID) {
		this.judgedID = judgedID;
	}
	public String getJudgedContent() {
		return judgedContent;
	}
	public void setJudgedContent(String judgedContent) {
		this.judgedContent = judgedContent;
	}
	public String getJudgedMark() {
		return judgedMark;
	}
	public void setJudgedMark(String judgedMark) {
		this.judgedMark = judgedMark;
	}
	public String getJudgedGrade() {
		return judgedGrade;
	}
	public void setJudgedGrade(String judgedGrade) {
		this.judgedGrade = judgedGrade;
	}
	public String getJudgedTime() {
		return judgedTime;
	}
	public void setJudgedTime(String judgedTime) {
		this.judgedTime = judgedTime;
	}
	public String getJudgedSource() {
		return judgedSource;
	}
	public void setJudgedSource(String judgedSource) {
		this.judgedSource = judgedSource;
	}
	public ProductOderList getProductoderlist() {
		return productoderlist;
	}
	public void setProductoderlist(ProductOderList productoderlist) {
		this.productoderlist = productoderlist;
	}
	public Set<OrderSunburnImg> getSimg() {
		return simg;
	}
	public void setSimg(Set<OrderSunburnImg> simg) {
		this.simg = simg;
	}
	
	public String toString() {
		return "ProductJudged [judgedID=" + judgedID + ", judgedContent="
				+ judgedContent + ", judgedMark=" + judgedMark
				+ ", judgedGrade=" + judgedGrade + ", judgedTime=" + judgedTime
				+ ", judgedSource=" + judgedSource + ", productoderlist="
				+ productoderlist + ", simg=" + simg + "]";
	}
	
}
