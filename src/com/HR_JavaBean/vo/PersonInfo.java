package com.HR_JavaBean.vo;

import java.io.Serializable;
import java.sql.Date;



public class PersonInfo implements Serializable{

	private static final long serialVersionUID = 4393174624724545059L;
	
private int id=0;
private String username="";
private String usrpasswords="";
private int usersex=0;
private Date userbirthday;
private Date createtime;
private int isadmin=0;
private String userinfo="";
private String AccountIncoPath="";

public static long getSerialversionuid() {
	return serialVersionUID;
}
public String getAccountIncoPath() {
	return AccountIncoPath;
}
public void setAccountIncoPath(String accountIncoPath) {
	AccountIncoPath = accountIncoPath;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getUsrpasswords() {
	return usrpasswords;
}
public void setUsrpasswords(String usrpasswords) {
	this.usrpasswords = usrpasswords;
}
public int getUsersex() {
	return usersex;
}
public void setUsersex(int usersex) {
	this.usersex = usersex;
}
public Date getUserbirthday() {
	return userbirthday;
}
public void setUserbirthday(Date userbirthday) {
	this.userbirthday = userbirthday;
}
public Date getCreatetime() {
	return createtime;
}
public void setCreatetime(Date createtime) {
	this.createtime = createtime;
}
public int getIsadmin() {
	return isadmin;
}
public void setIsadmin(int isadmin) {
	this.isadmin = isadmin;
}
public String getUserinfo() {
	return userinfo;
}
public void setUserinfo(String userinfo) {
	this.userinfo = userinfo;
}
	

	
}
