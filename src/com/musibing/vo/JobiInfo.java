package com.musibing.vo;

import java.io.Serializable;

import org.springframework.stereotype.Repository;
@Repository
public class JobiInfo implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2171882995541907556L;
	private int jobID;/*员工职位*/;
	private String jobName;/*职位名称*/
	private Employinfo employ;/*雇员信息*/
	
	public JobiInfo() {
		super();
	}
	public JobiInfo(int jobID, String jobName, Employinfo employ) {
		super();
		this.jobID = jobID;
		this.jobName = jobName;
		this.employ = employ;
	}
	public int getJobID() {
		return jobID;
	}
	public void setJobID(int jobID) {
		this.jobID = jobID;
	}
	public String getJobName() {
		return jobName;
	}
	public void setJobName(String jobName) {
		this.jobName = jobName;
	}
	public Employinfo getEmploy() {
		return employ;
	}
	public void setEmploy(Employinfo employ) {
		this.employ = employ;
	}
	@Override
	public String toString() {
		return "JobiInfo [jobID=" + jobID + ", jobName=" + jobName
				+ ", employ=" + employ + "]";
	}
	
	
	
	
}
