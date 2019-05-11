package com.musibing.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Repository;
@Repository
public class Employinfo implements Serializable{
	private static final long serialVersionUID = 900234299108459672L;
private int employid;/*员工ID*/
private String passwords;/*员工密码*/
private String employName;/*员工姓名*/
private String professional;/*员工专业*/
private String school;/*员工学校信息*/
private String ecdtion;/*员工学历*/
private String address;/*通讯地址*/
private String emailAddress;/*员工电子邮件地址*/
private String jobinfodata;/*员工工作经历*/
private String employinfo;/*员工信息*/
private String employTelNumber;/*员工移动电话号码*/
private int employAge;/*员工年龄*/
private int employSex;/*员工性别*/
private int jobstatus;/*员工在职状态*/
private Date createtime;/*员工创建日期*/
private String accountIncoPath="";/*员工图像*/
private JobiInfo jobinfo;/*员工职位*/
private String idCarNumber/*身份证ID号码*/;
public Employinfo(){
	
}
public Employinfo(int employid, String passwords, String employName,
		String professional, String school, String ecdtion, String address,
		String emailAddress, String jobinfodata, String employinfo,
		String employTelNumber, int employAge, int employSex, int jobstatus,
		Date createtime, String accountIncoPath, JobiInfo jobinfo, String idCarNumber) {
	super();
	this.employid = employid;
	this.passwords = passwords;
	this.employName = employName;
	this.professional = professional;
	this.school = school;
	this.ecdtion = ecdtion;
	this.address = address;
	this.emailAddress = emailAddress;
	this.jobinfodata = jobinfodata;
	this.employinfo = employinfo;
	this.employTelNumber = employTelNumber;
	this.employAge = employAge;
	this.employSex = employSex;
	this.jobstatus = jobstatus;
	this.createtime = createtime;
	this.accountIncoPath = accountIncoPath;
	this.jobinfo=jobinfo;
	this.idCarNumber = idCarNumber;
}
public int getEmployid() {
	return employid;
}
public void setEmployid(int employid) {
	this.employid = employid;
}
public String getPasswords() {
	return passwords;
}
public void setPasswords(String passwords) {
	this.passwords = passwords;
}
public String getEmployName() {
	return employName;
}
public void setEmployName(String employName) {
	this.employName = employName;
}
public String getProfessional() {
	return professional;
}
public void setProfessional(String professional) {
	this.professional = professional;
}
public String getSchool() {
	return school;
}
public void setSchool(String school) {
	this.school = school;
}
public String getEcdtion() {
	return ecdtion;
}
public void setEcdtion(String ecdtion) {
	this.ecdtion = ecdtion;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getEmailAddress() {
	return emailAddress;
}
public void setEmailAddress(String emailAddress) {
	this.emailAddress = emailAddress;
}
public String getJobinfodata() {
	return jobinfodata;
}
public void setJobinfodata(String jobinfodata) {
	this.jobinfodata = jobinfodata;
}
public String getEmployinfo() {
	return employinfo;
}
public void setEmployinfo(String employinfo) {
	this.employinfo = employinfo;
}
public String getEmployTelNumber() {
	return employTelNumber;
}
public void setEmployTelNumber(String employTelNumber) {
	this.employTelNumber = employTelNumber;
}
public int getEmployAge() {
	return employAge;
}
public void setEmployAge(int employAge) {
	this.employAge = employAge;
}
public int getEmploySex() {
	return employSex;
}
public void setEmploySex(int employSex) {
	this.employSex = employSex;
}
public int getJobstatus() {
	return jobstatus;
}
public void setJobstatus(int jobstatus) {
	this.jobstatus = jobstatus;
}
public Date getCreatetime() {
	return createtime;
}
public void setCreatetime(Date createtime) {
	this.createtime = createtime;
}
public String getAccountIncoPath() {
	return accountIncoPath;
}
public void setAccountIncoPath(String accountIncoPath) {
	this.accountIncoPath = accountIncoPath;
}

public JobiInfo getJobinfo() {
	return jobinfo;
}
public void setJobinfo(JobiInfo jobinfo) {
	this.jobinfo = jobinfo;
}
public String getIdCarNumber() {
	return idCarNumber;
}
public void setIdCarNumber(String idCarNumber) {
	this.idCarNumber = idCarNumber;
}
@Override
public String toString() {
	return "Employinfo [employid=" + employid + ", passwords=" + passwords
			+ ", employName=" + employName + ", professional=" + professional
			+ ", school=" + school + ", ecdtion=" + ecdtion + ", address="
			+ address + ", emailAddress=" + emailAddress + ", jobinfodata="
			+ jobinfodata + ", employinfo=" + employinfo + ", employTelNumber="
			+ employTelNumber + ", employAge=" + employAge + ", employSex="
			+ employSex + ", jobstatus=" + jobstatus + ", createtime="
			+ createtime + ", accountIncoPath=" + accountIncoPath
			+ ", jobinfo=" + jobinfo + ", idCarNumber=" + idCarNumber + "]";
}

}
