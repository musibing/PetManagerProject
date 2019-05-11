package com.musibing.vo;

public class Car {
	private int carID;
	private String carName;
	private Owner owner;
	public Car() {
		super();
	}
	public Car(int carID, String carName, Owner owner) {
		super();
		this.carID = carID;
		this.carName = carName;
		this.owner = owner;
	}
	public int getCarID() {
		return carID;
	}
	public void setCarID(int carID) {
		this.carID = carID;
	}
	public String getCarName() {
		return carName;
	}
	public void setCarName(String carName) {
		this.carName = carName;
	}
	public Owner getOwner() {
		return owner;
	}
	public void setOwner(Owner owner) {
		this.owner = owner;
	}
	
	public String toString() {
		return "Car [carID=" + carID + ", carName=" + carName + ", owner="
				+ owner + "]";
	}
	
}
