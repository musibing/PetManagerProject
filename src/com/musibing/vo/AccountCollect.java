package com.musibing.vo;

import java.io.Serializable;
import java.util.Date;

import org.springframework.stereotype.Repository;

@Repository
public class AccountCollect implements Serializable{

	private static final long serialVersionUID = -7909123852668085210L;
	private int accountCollectID;/*帐户收藏ID*/
	private Article articleID;
	private PetDataVOClass petDataVOClass;
	private String collectSataus;
	private AccountVO accountVO;
	private Product product;
	private Date collectTime;
	
	public AccountCollect() {
		super();
	}

	public AccountCollect(int accountCollectID, Article articleID,
			PetDataVOClass petDataVOClass, String collectSataus,
			AccountVO accountVO, Product product, Date collectTime) {
		super();
		this.accountCollectID = accountCollectID;
		this.articleID = articleID;
		this.petDataVOClass = petDataVOClass;
		this.collectSataus = collectSataus;
		this.accountVO = accountVO;
		this.product = product;
		this.collectTime = collectTime;
	}

	public int getAccountCollectID() {
		return accountCollectID;
	}

	public void setAccountCollectID(int accountCollectID) {
		this.accountCollectID = accountCollectID;
	}

	public Article getArticleID() {
		return articleID;
	}

	public void setArticleID(Article articleID) {
		this.articleID = articleID;
	}

	public PetDataVOClass getPetDataVOClass() {
		return petDataVOClass;
	}

	public void setPetDataVOClass(PetDataVOClass petDataVOClass) {
		this.petDataVOClass = petDataVOClass;
	}

	public String getCollectSataus() {
		return collectSataus;
	}

	public void setCollectSataus(String collectSataus) {
		this.collectSataus = collectSataus;
	}

	public AccountVO getAccountVO() {
		return accountVO;
	}

	public void setAccountVO(AccountVO accountVO) {
		this.accountVO = accountVO;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Date getCollectTime() {
		return collectTime;
	}

	public void setCollectTime(Date collectTime) {
		this.collectTime = collectTime;
	}


	public String toString() {
		return "AccountCollect [accountCollectID=" + accountCollectID
				+ ", articleID=" + articleID + ", petDataVOClass="
				+ petDataVOClass + ", collectSataus=" + collectSataus
				+ ", accountVO=" + accountVO + ", product=" + product
				+ ", collectTime=" + collectTime + "]";
	}
	
}
