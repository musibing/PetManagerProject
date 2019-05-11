package com.musibing.vo;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import org.springframework.stereotype.Repository;

@Repository
public class AccountVO implements Serializable {
	
	private static final long serialVersionUID = 5901601394857876348L;
	private int accountId;
	private String accountName;
	private String passWord;
	private String address;
	private String email;
	private String telphoneNumber;
	private String role;
	private String accountIMGPath;
	private String accountGrade;
	private Set<PetDataVOClass> pID=new HashSet<PetDataVOClass>();
	private Set<ProductOder> productOderID=new HashSet<ProductOder>();
	
	private Set<AccountRecords> accountRecords=new HashSet<AccountRecords>();
	private BuyCar bcID=new BuyCar();
	public AccountVO(){
		
	}
	
	public AccountVO(int accountId,String accountName, String passWord,
			String address, String email, String telphoneNumber, String role,
			String accountIMGPath, String accountGrade,
			Set<PetDataVOClass> pID, Set<ProductOder> productOderID,
			Set<AccountRecords> accountRecords, BuyCar bcID) {
		super();
		this.accountId=accountId;
		this.accountName = accountName;
		this.passWord = passWord;
		this.address = address;
		this.email = email;
		this.telphoneNumber = telphoneNumber;
		this.role = role;
		this.accountIMGPath = accountIMGPath;
		this.accountGrade = accountGrade;
		this.pID = pID;
		this.productOderID = productOderID;
		this.accountRecords = accountRecords;
		this.bcID = bcID;
	}

	public int getAccountId() {
		return accountId;
	}
	public void setAccountId(int accountId) {
		this.accountId = accountId;
	}
	public String getAccountName() {
		return accountName;
	}
	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTelphoneNumber() {
		return telphoneNumber;
	}
	public void setTelphoneNumber(String telphoneNumber) {
		this.telphoneNumber = telphoneNumber;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getAccountIMGPath() {
		return accountIMGPath;
	}
	public void setAccountIMGPath(String accountIMGPath) {
		this.accountIMGPath = accountIMGPath;
	}
	public String getAccountGrade() {
		return accountGrade;
	}
	public void setAccountGrade(String accountGrade) {
		this.accountGrade = accountGrade;
	}
	public Set<PetDataVOClass> getpID() {
		return pID;
	}
	public void setpID(Set<PetDataVOClass> pID) {
		this.pID = pID;
	}
	public Set<ProductOder> getProductOderID() {
		return productOderID;
	}
	public void setProductOderID(Set<ProductOder> productOderID) {
		this.productOderID = productOderID;
	}
	public Set<AccountRecords> getAccountRecords() {
		return accountRecords;
	}
	public void setAccountRecords(Set<AccountRecords> accountRecords) {
		this.accountRecords = accountRecords;
	}
	
	
	public BuyCar getBcID() {
		return bcID;
	}

	public void setBcID(BuyCar bcID) {
		this.bcID = bcID;
	}

	public String toString() {
		return "AccountVO [accountId=" + accountId + ", accountName="
				+ accountName + ", passWord=" + passWord + ", address="
				+ address + ", email=" + email + ", telphoneNumber="
				+ telphoneNumber + ", role=" + role + ", accountIMGPath="
				+ accountIMGPath + ", accountGrade=" + accountGrade +  "]";
	}
	

	
}
