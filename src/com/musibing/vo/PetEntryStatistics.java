package com.musibing.vo;

import java.io.Serializable;

import org.springframework.stereotype.Repository;

@Repository
public class PetEntryStatistics implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -2974421813343758027L;
	private int petEntryStatisticsID;
	private int timesOfBrowsing;/*浏览次数*/
	private int rankTheRanking;/*分类排行*/
	private int relevantArticles;/*相关文章*/
	private int iInterrelatedQuestionsAndAnswers;/*相关问答*/
	private int collectionNumber;/*收藏数*/
	private PetDataVOClass pdvoc;
	
	public PetEntryStatistics() {
		super();
	}

	public PetEntryStatistics(int petEntryStatisticsID, int timesOfBrowsing,
			int rankTheRanking, int relevantArticles,
			int iInterrelatedQuestionsAndAnswers, int collectionNumber,
			PetDataVOClass pdvoc) {
		super();
		this.petEntryStatisticsID = petEntryStatisticsID;
		this.timesOfBrowsing = timesOfBrowsing;
		this.rankTheRanking = rankTheRanking;
		this.relevantArticles = relevantArticles;
		this.iInterrelatedQuestionsAndAnswers = iInterrelatedQuestionsAndAnswers;
		this.collectionNumber = collectionNumber;
		this.pdvoc = pdvoc;
	}

	public int getPetEntryStatisticsID() {
		return petEntryStatisticsID;
	}

	public void setPetEntryStatisticsID(int petEntryStatisticsID) {
		this.petEntryStatisticsID = petEntryStatisticsID;
	}

	public int getTimesOfBrowsing() {
		return timesOfBrowsing;
	}

	public void setTimesOfBrowsing(int timesOfBrowsing) {
		this.timesOfBrowsing = timesOfBrowsing;
	}

	public int getRankTheRanking() {
		return rankTheRanking;
	}

	public void setRankTheRanking(int rankTheRanking) {
		this.rankTheRanking = rankTheRanking;
	}

	public int getRelevantArticles() {
		return relevantArticles;
	}

	public void setRelevantArticles(int relevantArticles) {
		this.relevantArticles = relevantArticles;
	}

	public int getiInterrelatedQuestionsAndAnswers() {
		return iInterrelatedQuestionsAndAnswers;
	}

	public void setiInterrelatedQuestionsAndAnswers(
			int iInterrelatedQuestionsAndAnswers) {
		this.iInterrelatedQuestionsAndAnswers = iInterrelatedQuestionsAndAnswers;
	}

	public int getCollectionNumber() {
		return collectionNumber;
	}

	public void setCollectionNumber(int collectionNumber) {
		this.collectionNumber = collectionNumber;
	}

	public PetDataVOClass getPdvoc() {
		return pdvoc;
	}

	public void setPdvoc(PetDataVOClass pdvoc) {
		this.pdvoc = pdvoc;
	}


	public String toString() {
		return "PetEntryStatistics [petEntryStatisticsID="
				+ petEntryStatisticsID + ", timesOfBrowsing=" + timesOfBrowsing
				+ ", rankTheRanking=" + rankTheRanking + ", relevantArticles="
				+ relevantArticles + ", iInterrelatedQuestionsAndAnswers="
				+ iInterrelatedQuestionsAndAnswers + ", collectionNumber="
				+ collectionNumber + ", pdvoc=" + pdvoc + "]";
	}
	
	
}
