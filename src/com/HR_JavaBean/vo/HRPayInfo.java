package com.HR_JavaBean.vo;

import java.io.Serializable;
import java.sql.Date;

public class HRPayInfo implements Serializable{
private static final long serialVersionUID = 4519045296702001072L;
private int payid;
private int epmlyid;
private String basicNumber;
private float eatNumber;
private float houseNumber;
private Date granttim;
private float scot;
private float duty;
private float rewards;
private float other;
private float totalize;
private String epmlyname;
public HRPayInfo(){
	
}
public String getEpmlyname() {
	return epmlyname;
}
public void setEpmlyname(String epmlyname) {
	this.epmlyname = epmlyname;
}

public int getPayid() {
	return payid;
}
public void setPayid(int payid) {
	this.payid = payid;
}
public int getEpmlyid() {
	return epmlyid;
}
public void setEpmlyid(int epmlyid) {
	this.epmlyid = epmlyid;
}

public String getBasicNumber() {
	return basicNumber;
}
public void setBasicNumber(String basicNumber) {
	this.basicNumber = basicNumber;
}
public static long getSerialversionuid() {
	return serialVersionUID;
}
public float getEatNumber() {
	return eatNumber;
}
public void setEatNumber(float eatNumber) {
	this.eatNumber = eatNumber;
}
public float getHouseNumber() {
	return houseNumber;
}
public void setHouseNumber(float houseNumber) {
	this.houseNumber = houseNumber;
}
public Date getGranttim() {
	return granttim;
}
public void setGranttim(Date granttim) {
	this.granttim = granttim;
}
public float getScot() {
	return scot;
}
public void setScot(float scot) {
	this.scot = scot;
}
public float getDuty() {
	return duty;
}
public void setDuty(float duty) {
	this.duty = duty;
}

public float getRewards() {
	return rewards;
}
public void setRewards(float rewards) {
	this.rewards = rewards;
}
public float getOther() {
	return other;
}
public void setOther(float other) {
	this.other = other;
}
public float getTotalize() {
	return totalize;
}
public void setTotalize(float totalize) {
	this.totalize = totalize;
}

}
