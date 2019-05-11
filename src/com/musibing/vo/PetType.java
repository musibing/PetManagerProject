package com.musibing.vo;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import org.springframework.stereotype.Repository;
@Repository
public class PetType implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 5852444869651611407L;
	private int petTypeID;
	private String petyName;
	private String petIMGSrc;
 	private Set<Article> articleID = new HashSet<Article>();;
	public PetType() {
		super();
	}

	public PetType(int petTypeID, String petyName, String petIMGSrc) {
		super();
		this.petTypeID = petTypeID;
		this.petyName = petyName;
		this.petIMGSrc = petIMGSrc;
	}

	public int getPetTypeID() {
		return petTypeID;
	}

	public void setPetTypeID(int petTypeID) {
		this.petTypeID = petTypeID;
	}

	public String getPetyName() {
		return petyName;
	}

	public void setPetyName(String petyName) {
		this.petyName = petyName;
	}

	public String getPetIMGSrc() {
		return petIMGSrc;
	}

	public void setPetIMGSrc(String petIMGSrc) {
		this.petIMGSrc = petIMGSrc;
	}
	
	
	public Set<Article> getArticleID() {
		return articleID;
	}

	public void setArticleID(Set<Article> articleID) {
		this.articleID = articleID;
	}


	public String toString() {
		return "PetType [petTypeID=" + petTypeID + ", petyName=" + petyName
				+ ", petIMGSrc=" + petIMGSrc + ", articleID=" + articleID + "]";
	}

	
	

}
