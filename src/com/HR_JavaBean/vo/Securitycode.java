package com.HR_JavaBean.vo;

import java.io.Serializable;

public class Securitycode implements Serializable{
	private static final long serialVersionUID = -7990599234409916507L;
private String IMGName;
private String IMGPath;

public static long getSerialversionuid() {
	return serialVersionUID;
}
public String getIMGName() {
	return IMGName;
}
public void setIMGName(String iMGName) {
	IMGName = iMGName;
}
public String getIMGPath() {
	return IMGPath;
}
public void setIMGPath(String iMGPath) {
	IMGPath = iMGPath;
}


}
