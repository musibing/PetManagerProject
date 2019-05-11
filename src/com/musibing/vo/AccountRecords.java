package com.musibing.vo;

import java.io.Serializable;
import java.util.Date;

import org.springframework.stereotype.Repository;

import com.musibing.vo.AccountVO;
@Repository
public class AccountRecords implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -3573712581413132684L;
	private int accountRecordsID;/*帐户记录ID*/
	private String iPAddress;/*访问者IP地址*/
	private String eventName;/*事件名称*/
	private Date happenTime;/*产生时间*/
	private AccountVO accountVOID;/*对应帐户*/
	
	public AccountRecords() {
		super();
	}
	
	public AccountRecords(int accountRecordsID, String iPAddress, String eventName,
			Date happenTime, AccountVO accountVOID) {
		super();
		this.accountRecordsID = accountRecordsID;
		this.iPAddress = iPAddress;
		this.eventName = eventName;
		this.happenTime = happenTime;
		this.accountVOID = accountVOID;
	}

	public int getAccountRecordsID() {
		return accountRecordsID;
	}
	public void setAccountRecordsID(int accountRecordsID) {
		this.accountRecordsID = accountRecordsID;
	}
	public String getiPAddress() {
		return iPAddress;
	}
	public void setiPAddress(String iPAddress) {
		this.iPAddress = iPAddress;
	}
	public String getEventName() {
		return eventName;
	}
	public void setEventName(String eventName) {
		this.eventName = eventName;
	}
	public Date getHappenTime() {
		return happenTime;
	}
	public void setHappenTime(Date happenTime) {
		this.happenTime = happenTime;
	}
	
	
	public AccountVO getAccountVOID() {
		return accountVOID;
	}

	public void setAccountVOID(AccountVO accountVOID) {
		this.accountVOID = accountVOID;
	}

	public String toString() {
		return "accountRecords [accountRecordsID=" + accountRecordsID
				+ ", iPAddress=" + iPAddress + ", eventName=" + eventName
				+ ", happenTime=" + happenTime + ", accountVOID=" + accountVOID + "]";
	}
	

}
