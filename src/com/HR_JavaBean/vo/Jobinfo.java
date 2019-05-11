package com.HR_JavaBean.vo;

import java.io.Serializable;

public class Jobinfo implements Serializable{

	private static final long serialVersionUID = -758545733426590786L;
private int jobid;
private String jobname;
public int getJobid() {
	return jobid;
}
public void setJobid(int jobid) {
	this.jobid = jobid;
}
public String getJobname() {
	return jobname;
}
public void setJobname(String jobname) {
	this.jobname = jobname;
}
public static long getSerialversionuid() {
	return serialVersionUID;
}

}
