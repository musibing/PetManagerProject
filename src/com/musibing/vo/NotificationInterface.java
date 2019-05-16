package com.musibing.vo;

import java.io.Serializable;
import java.util.Date;

import org.springframework.stereotype.Repository;

@Repository
public class NotificationInterface implements Serializable{
	private  int notificationID;
	private String code;
	private String status;
	private String notificationType;
	private AccountVO accountvo;
	private Date createDate;
	
	public NotificationInterface() {
		super();
	}
	public NotificationInterface(int notificationID, String code,
			String status, String notificationType, AccountVO accountvo,
			Date createDate) {
		super();
		this.notificationID = notificationID;
		this.code = code;
		this.status = status;
		this.notificationType = notificationType;
		this.accountvo = accountvo;
		this.createDate = createDate;
	}
	public int getNotificationID() {
		return notificationID;
	}
	public void setNotificationID(int notificationID) {
		this.notificationID = notificationID;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getNotificationType() {
		return notificationType;
	}
	public void setNotificationType(String notificationType) {
		this.notificationType = notificationType;
	}
	public AccountVO getAccountvo() {
		return accountvo;
	}
	public void setAccountvo(AccountVO accountvo) {
		this.accountvo = accountvo;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	
	public String toString() {
		return "NotificationInterface [notificationID=" + notificationID
				+ ", code=" + code + ", status=" + status
				+ ", notificationType=" + notificationType + ", accountvo="
				+ accountvo + ", createDate=" + createDate + "]";
	}
	
}
