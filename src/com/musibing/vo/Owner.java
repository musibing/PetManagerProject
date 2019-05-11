package com.musibing.vo;

public class Owner {
	private int ownerID;
	private String ownerName;
	private Car carData;
	
	public Owner() {
		super();
	}
	public Owner(int ownerID, String ownerName, Car carData) {
		super();
		this.ownerID = ownerID;
		this.ownerName = ownerName;
		this.carData = carData;
	}
	public int getOwnerID() {
		return ownerID;
	}
	public void setOwnerID(int ownerID) {
		this.ownerID = ownerID;
	}
	public String getOwnerName() {
		return ownerName;
	}
	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}
	public Car getCarData() {
		return carData;
	}
	public void setCarData(Car carData) {
		this.carData = carData;
	}
	
	public String toString() {
		return "Owner [ownerID=" + ownerID + ", ownerName=" + ownerName
				+ ", carData=" + carData + "]";
	}
	
	

}
