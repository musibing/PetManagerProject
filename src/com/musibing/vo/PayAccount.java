package com.musibing.vo;

import java.io.Serializable;
import java.util.Date;

public class PayAccount implements Serializable{
	
	private int payAccountID;
	private String payPassword;
	private double money;/*金额*/
	private int kidneyBean;/*云豆*/
	private Date creatDate;
	private AccountVO accountVO;
	
	public PayAccount() {
		super();
	}
	public PayAccount(int payAccountID, String payPassword, double money,
			int kidneyBean, Date creatDate, AccountVO accountVO) {
		super();
		this.payAccountID = payAccountID;
		this.payPassword = payPassword;
		this.money = money;
		this.kidneyBean = kidneyBean;
		this.creatDate = creatDate;
		this.accountVO = accountVO;
	}
	public int getPayAccountID() {
		return payAccountID;
	}
	public void setPayAccountID(int payAccountID) {
		this.payAccountID = payAccountID;
	}
	public String getPayPassword() {
		return payPassword;
	}
	public void setPayPassword(String payPassword) {
		this.payPassword = payPassword;
	}
	public double getMoney() {
		return money;
	}
	public void setMoney(double money) {
		this.money = money;
	}
	public int getKidneyBean() {
		return kidneyBean;
	}
	public void setKidneyBean(int kidneyBean) {
		this.kidneyBean = kidneyBean;
	}
	public Date getCreatDate() {
		return creatDate;
	}
	public void setCreatDate(Date creatDate) {
		this.creatDate = creatDate;
	}
	public AccountVO getAccountVO() {
		return accountVO;
	}
	public void setAccountVO(AccountVO accountVO) {
		this.accountVO = accountVO;
	}
	
	public String toString() {
		return "PayAccount [payAccount=" + payAccountID + ", payPassword="
				+ payPassword + ", money=" + money + ", kidneyBean="
				+ kidneyBean + ", creatDate=" + creatDate + ", accountVO="
				+ accountVO + "]";
	}
	

}
