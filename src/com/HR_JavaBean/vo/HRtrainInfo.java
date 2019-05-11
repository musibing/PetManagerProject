package com.HR_JavaBean.vo;

import java.io.Serializable;
import java.sql.Date;

public class HRtrainInfo implements Serializable {

private static final long serialVersionUID = -6854570710447436329L;
private String traindata;
private String trainffect;	
private String traininfo;	
private int isfinish;
private String eployname; 
private int eploryid;
private Date begintime;
private Date endtime;
private String teacher;
private String purpose;
private String trainnmae;
private int trainid;
private Date createtime;

public Date getCreatetime() {
	return createtime;
}
public void setCreatetime(Date createtime) {
	this.createtime = createtime;
}
public HRtrainInfo(){
	
}

public String getEployname() {
	return eployname;
}
public void setEployname(String eployname) {
	this.eployname = eployname;
}
public int getEploryid() {
	return eploryid;
}
public void setEploryid(int eploryid) {
	this.eploryid = eploryid;
}
public static long getSerialversionuid() {
	return serialVersionUID;
}
public String getTraindata() {
	return traindata;
}
public void setTraindata(String traindata) {
	this.traindata = traindata;
}
public String getTrainffect() {
	return trainffect;
}
public void setTrainffect(String trainffect) {
	this.trainffect = trainffect;
}
public String getTraininfo() {
	return traininfo;
}
public void setTraininfo(String traininfo) {
	this.traininfo = traininfo;
}
public int getIsfinish() {
	return isfinish;
}
public void setIsfinish(int isfinish) {
	this.isfinish = isfinish;
}

public Date getBegintime() {
	return begintime;
}
public void setBegintime(Date begintime) {
	this.begintime = begintime;
}
public Date getEndtime() {
	return endtime;
}
public void setEndtime(Date endtime) {
	this.endtime = endtime;
}
public String getTeacher() {
	return teacher;
}
public void setTeacher(String teacher) {
	this.teacher = teacher;
}
public String getPurpose() {
	return purpose;
}
public void setPurpose(String purpose) {
	this.purpose = purpose;
}
public String getTrainnmae() {
	return trainnmae;
}
public void setTrainnmae(String trainnmae) {
	this.trainnmae = trainnmae;
}
public int getTrainid() {
	return trainid;
}
public void setTrainid(int trainid) {
	this.trainid = trainid;
}

}
