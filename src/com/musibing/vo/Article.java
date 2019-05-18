package com.musibing.vo;

import java.io.Serializable;
import java.util.Date;

import org.springframework.stereotype.Repository;

@Repository
public class Article implements Serializable {
	
	private static final long serialVersionUID = -8181442144264094754L;
	private int articleID;/*文章ID*/
	private String articleName;/*文章标题*/
	private String articleIMG;/*文章图片*/
	private String articleContent;/*文章内容*/
	private Date submitTime;
	private AccountVO avo;
	private  ClassificationType classificationType;
	public Article() {
		super();
	}
	
	
	public Article(int articleID, String articleName, String articleIMG,
			String articleContent, Date submitTime, AccountVO avo,
			ClassificationType classificationType) {
		super();
		this.articleID = articleID;
		this.articleName = articleName;
		this.articleIMG = articleIMG;
		this.articleContent = articleContent;
		this.submitTime = submitTime;
		this.avo = avo;
		this.classificationType = classificationType;
	}

	public int getArticleID() {
		return articleID;
	}
	public void setArticleID(int articleID) {
		this.articleID = articleID;
	}
	public String getArticleName() {
		return articleName;
	}
	public void setArticleName(String articleName) {
		this.articleName = articleName;
	}
	public String getArticleIMG() {
		return articleIMG;
	}
	public void setArticleIMG(String articleIMG) {
		this.articleIMG = articleIMG;
	}
	public String getArticleContent() {
		return articleContent;
	}
	public void setArticleContent(String articleContent) {
		this.articleContent = articleContent;
	}
	public Date getSubmitTime() {
		return submitTime;
	}
	public void setSubmitTime(Date submitTime) {
		this.submitTime = submitTime;
	}
	public AccountVO getAvo() {
		return avo;
	}
	public void setAvo(AccountVO avo) {
		this.avo = avo;
	}
	public ClassificationType getClassificationType() {
		return classificationType;
	}
	public void setClassificationType(ClassificationType classificationType) {
		this.classificationType = classificationType;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	public String toString() {
		return "Article [articleID=" + articleID + ", articleName="
				+ articleName + ", articleIMG=" + articleIMG
				+ ", articleContent=" + articleContent + ", submitTime="
				+ submitTime + ", avo=" + avo + ", classificationType="
				+ classificationType + "]";
	}
	
	
	


	
	
}
