package com.musibing.vo;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import org.springframework.stereotype.Repository;
@Repository
public class ProductOder implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -5961567266087137088L;
	private int productOderID;
	private AccountVO accountId;
	private Product productID;
	private double oderPrice;/*订单价格*/
	private String oderTips;/*订单订单备注*/
	private Date submitTime;/*订单时间*/
	private int mailCode;/*邮政编码*/
	private String oderAddress;/*收货地址*/
	private String personName;/*收货人*/
	private String personTel;/*联系方式*/
	private String payAccount;/*付款帐号*/
	private String productOderSataus/*订单状态*/;
	private String productOderPage;/*发票类型*/
	private String logisticsOrderNumber;/*物流订单号*/
	private String judgedContent; /*评论内容*/
	private String judgedMark;/*评论分数*/
	private String judgedGrade;/*评论等级:已经生成表建议后期分废除*/
	private String judgedTime;/*评论时间*/
	private String judgedSource;/*评论来源*/
	private Set<OrderSunburnImg> simg;
	public ProductOder() {
		super();
	}
	public ProductOder(AccountVO accountId,Product productID, double oderPrice, String oderTips,
			Date submitTime, int mailCode, String oderAddress,
			String personName, String personTel, String payAccount,String productOderSataus,String productOderPage,String logisticsOrderNumber,
			String judgedContent, String judgedMark, String judgedGrade,
			String judgedTime, String judgedSource, Set<OrderSunburnImg> simg) {
		super();
		
		this.accountId = accountId;
		this.productID = productID;
		this.oderPrice = oderPrice;
		this.oderTips = oderTips;
		this.submitTime = submitTime;
		this.mailCode = mailCode;
		this.oderAddress = oderAddress;
		this.personName = personName;
		this.personTel = personTel;
		this.productOderSataus=productOderSataus;/*订单状态*/
		this.productOderPage=productOderPage;/*发票类型*/
		this.logisticsOrderNumber=logisticsOrderNumber;/*物流订单号*/
		this.payAccount = payAccount;
		this.judgedContent = judgedContent;
		this.judgedMark = judgedMark;
		this.judgedGrade = judgedGrade;
		this.judgedTime = judgedTime;
		this.judgedSource = judgedSource;
		this.simg = simg;
	}
	public int getProductOderID() {
		return productOderID;
	}
	public void setProductOderID(int productOderID) {
		this.productOderID = productOderID;
	}
	public AccountVO getAccountId() {
		return accountId;
	}
	public void setAccountId(AccountVO accountId) {
		this.accountId = accountId;
	}
	public Product getProductID() {
		return productID;
	}
	public void setProductID(Product productID) {
		this.productID = productID;
	}
	public double getOderPrice() {
		return oderPrice;
	}
	public void setOderPrice(double oderPrice) {
		this.oderPrice = oderPrice;
	}
	public String getOderTips() {
		return oderTips;
	}
	public void setOderTips(String oderTips) {
		this.oderTips = oderTips;
	}
	public Date getSubmitTime() {
		return submitTime;
	}
	public void setSubmitTime(Date submitTime) {
		this.submitTime = submitTime;
	}
	public int getMailCode() {
		return mailCode;
	}
	public void setMailCode(int mailCode) {
		this.mailCode = mailCode;
	}
	public String getOderAddress() {
		return oderAddress;
	}
	public void setOderAddress(String oderAddress) {
		this.oderAddress = oderAddress;
	}
	public String getPersonName() {
		return personName;
	}
	public void setPersonName(String personName) {
		this.personName = personName;
	}
	public String getPersonTel() {
		return personTel;
	}
	public void setPersonTel(String personTel) {
		this.personTel = personTel;
	}
	public String getPayAccount() {
		return payAccount;
	}
	public void setPayAccount(String payAccount) {
		this.payAccount = payAccount;
	}
	
	public String getProductOderSataus() {
		return productOderSataus;
	}
	public void setProductOderSataus(String productOderSataus) {
		this.productOderSataus = productOderSataus;
	}
	public String getProductOderPage() {
		return productOderPage;
	}
	public void setProductOderPage(String productOderPage) {
		this.productOderPage = productOderPage;
	}
	public String getLogisticsOrderNumber() {
		return logisticsOrderNumber;
	}
	public void setLogisticsOrderNumber(String logisticsOrderNumber) {
		this.logisticsOrderNumber = logisticsOrderNumber;
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
	public Set<OrderSunburnImg> getSimg() {
		return simg;
	}
	public void setSimg(Set<OrderSunburnImg> simg) {
		this.simg = simg;
	}
	
	public String toString() {
		return "ProductOder [productOderID=" + productOderID + ", accountId="
				+ accountId + ", productID=" + productID + ", oderPrice="
				+ oderPrice + ", oderTips=" + oderTips + ", submitTime="
				+ submitTime + ", mailCode=" + mailCode + ", oderAddress="
				+ oderAddress + ", personName=" + personName + ", personTel="
				+ personTel + ", payAccount=" + payAccount
				+ ", productOderSataus=" + productOderSataus
				+ ", productOderPage=" + productOderPage
				+ ", logisticsOrderNumber=" + logisticsOrderNumber
				+ ", judgedContent=" + judgedContent + ", judgedMark="
				+ judgedMark + ", judgedGrade=" + judgedGrade + ", judgedTime="
				+ judgedTime + ", judgedSource=" + judgedSource + ", simg="
				 + "]";
	}
	

}
