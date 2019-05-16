package com.musibing.vo;

import java.io.Serializable;

import org.springframework.stereotype.Repository;

@Repository
public class AddressList implements Serializable {
	private int addressListID;
	private String takeDeliveryPersionName;
	private String address;
	private String postalCode;
	private String mobileTelphoneNumber;
	private String telphoneNumber;
	private String defaultValue;
	private AccountVO takeDeliveryPersion;
	
	public AddressList() {
		super();
	}

	public AddressList(int addressListID, String takeDeliveryPersionName,
			String address, String postalCode, String mobileTelphoneNumber,
			String telphoneNumber, String defaultValue,
			AccountVO takeDeliveryPersion) {
		super();
		this.addressListID = addressListID;
		this.takeDeliveryPersionName = takeDeliveryPersionName;
		this.address = address;
		this.postalCode = postalCode;
		this.mobileTelphoneNumber = mobileTelphoneNumber;
		this.telphoneNumber = telphoneNumber;
		this.defaultValue = defaultValue;
		this.takeDeliveryPersion = takeDeliveryPersion;
	}

	public int getAddressListID() {
		return addressListID;
	}

	public void setAddressListID(int addressListID) {
		this.addressListID = addressListID;
	}

	public String getTakeDeliveryPersionName() {
		return takeDeliveryPersionName;
	}

	public void setTakeDeliveryPersionName(String takeDeliveryPersionName) {
		this.takeDeliveryPersionName = takeDeliveryPersionName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}

	public String getMobileTelphoneNumber() {
		return mobileTelphoneNumber;
	}

	public void setMobileTelphoneNumber(String mobileTelphoneNumber) {
		this.mobileTelphoneNumber = mobileTelphoneNumber;
	}

	public String getTelphoneNumber() {
		return telphoneNumber;
	}

	public void setTelphoneNumber(String telphoneNumber) {
		this.telphoneNumber = telphoneNumber;
	}

	public String getDefaultValue() {
		return defaultValue;
	}

	public void setDefaultValue(String defaultValue) {
		this.defaultValue = defaultValue;
	}

	public AccountVO getTakeDeliveryPersion() {
		return takeDeliveryPersion;
	}

	public void setTakeDeliveryPersion(AccountVO takeDeliveryPersion) {
		this.takeDeliveryPersion = takeDeliveryPersion;
	}

	
	public String toString() {
		return "AddressList [addressListID=" + addressListID
				+ ", takeDeliveryPersionName=" + takeDeliveryPersionName
				+ ", address=" + address + ", postalCode=" + postalCode
				+ ", mobileTelphoneNumber=" + mobileTelphoneNumber
				+ ", telphoneNumber=" + telphoneNumber + ", defaultValue="
				+ defaultValue + ", takeDeliveryPersion=" + takeDeliveryPersion
				+ "]";
	}

	
	
}
