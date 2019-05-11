package com.musibing.vo;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import org.springframework.stereotype.Repository;
@Repository
public class BuyCar implements Serializable{
	
	private static final long serialVersionUID = -9045571693184703761L;
	private int buyCarID;
	private AccountVO aVO;
	private Set<BuyCarList> buyCarList=new HashSet<BuyCarList>();
	public BuyCar() {
		super();
	}
	public BuyCar(AccountVO aVO) {
		super();
		
		this.aVO = aVO;
	}
	public int getBuyCarID() {
		return buyCarID;
	}
	public void setBuyCarID(int buyCarID) {
		System.out.println(buyCarID);
		this.buyCarID = buyCarID;
	}
	
	public AccountVO getaVO() {
		return aVO;
	}
	public void setaVO(AccountVO aVO) {
		this.aVO = aVO;
	}
	public Set<BuyCarList> getBuyCarList() {
		return buyCarList;
	}
	public void setBuyCarList(Set<BuyCarList> buyCarList) {
		this.buyCarList = buyCarList;
	}
	
	public String toString() {
		return "BuyCar [buyCarID=" + buyCarID + ", aVO=" + aVO + "]";
	}

	
	
	
	
}
