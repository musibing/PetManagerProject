package com.HR_JavaBean.vo;

import java.io.Serializable;
import java.sql.Date;

public class HRRewardsinfo implements Serializable {
	private static final long serialVersionUID = 3300481420253142999L;
private int rewardId;
private String rewardName;
private String reason;
private String explains;
private Date createtime;
private String emploryName;
private int emploryId;
private int rewardsnumber;
private int hrewardstype;
public HRRewardsinfo(){
	
}

public int getEmploryId() {
	return emploryId;
}

public void setEmploryId(int emploryId) {
	this.emploryId = emploryId;
}

public int getRewardsnumber() {
	return rewardsnumber;
}

public void setRewardsnumber(int rewardsnumber) {
	this.rewardsnumber = rewardsnumber;
}

public int getHrewardstype() {
	return hrewardstype;
}

public void setHrewardstype(int hrewardstype) {
	this.hrewardstype = hrewardstype;
}

public static long getSerialversionuid() {
	return serialVersionUID;
}

public String getEmploryName() {
	return emploryName;
}

public void setEmploryName(String emploryName) {
	this.emploryName = emploryName;
}

public int getRewardId() {
	return rewardId;
}

public void setRewardId(int rewardId) {
	this.rewardId = rewardId;
}

public String getRewardName() {
	return rewardName;
}

public void setRewardName(String rewardName) {
	this.rewardName = rewardName;
}

public String getReason() {
	return reason;
}
public void setReason(String reason) {
	this.reason = reason;
}
public String getExplains() {
	return explains;
}
public void setExplains(String explains) {
	this.explains = explains;
}
public Date getCreatetime() {
	return createtime;
}
public void setCreatetime(Date createtime) {
	this.createtime = createtime;
}
	
	
}
