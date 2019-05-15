package com.musibing.vo;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import org.springframework.stereotype.Repository;
@Repository
public class PetDataVOClass implements Serializable {

private static final long serialVersionUID = -3442846544756769183L;
private int petID;/*宠物ID*/
private String petcnName;/*宠物名字*/
private String petenName;
private String briefIntroduction;/*宠物简介*/
private String chinesename;/*中文学名*/
private String dontsaid;/*别称*/
private String circles;/*界*/
private String door;/*门*/
private String subdoor;/*亚门*/
private String gang;/*纲*/
private String subang;/*亚纲*/
private String item;/*目*/
private String subOrder;/*亚目*/
private String section;/*科*/
private String subfamily;/*亚科*/
private String genus;/*属*/
private String species;/*种*/
private String subSpecies;/*亚种*/
private String ancestralHome/*祖籍*/;
private String easeOfDisease;/*易用患病*/
private String lifeAge;/*寿命*/
private String price;/*售价*/
private String disposition;/*性格*/
private String morphologicalCharacter;/*形态特征*/
private String conservationKnowledge;/*养护知识*/
private String characterCharacteristics;/*性格特点*/
private String feedingPoints;/*喂食要点*/
private String environment;
private String exhibitionIMG;
private String shape;/*体形*/
private String function;/*功能*/
private String friendliness;/*友善程度*/
private String difficultyInFeeding;/*饲养难度*/
private Set<PetDataVOClass> pdvocimg = new HashSet<PetDataVOClass>();


public PetDataVOClass() {
	super();
}


public PetDataVOClass(String petcnName, String petenName,
		String briefIntroduction, String chinesename, String dontsaid,
		String circles, String door, String subdoor, String gang,
		String subang, String item, String subOrder, String section,
		String subfamily, String genus, String species, String subSpecies,
		String ancestralHome, String easeOfDisease, String lifeAge,
		String price, String disposition, String morphologicalCharacter,
		String conservationKnowledge, String characterCharacteristics,
		String feedingPoints, String environment, String exhibitionIMG,
		String shape, String function, String friendliness,
		String difficultyInFeeding, Set<PetDataVOClass> pdvocimg) {
	super();
	this.petcnName = petcnName;
	this.petenName = petenName;
	this.briefIntroduction = briefIntroduction;
	this.chinesename = chinesename;
	this.dontsaid = dontsaid;
	this.circles = circles;
	this.door = door;
	this.subdoor = subdoor;
	this.gang = gang;
	this.subang = subang;
	this.item = item;
	this.subOrder = subOrder;
	this.section = section;
	this.subfamily = subfamily;
	this.genus = genus;
	this.species = species;
	this.subSpecies = subSpecies;
	this.ancestralHome = ancestralHome;
	this.easeOfDisease = easeOfDisease;
	this.lifeAge = lifeAge;
	this.price = price;
	this.disposition = disposition;
	this.morphologicalCharacter = morphologicalCharacter;
	this.conservationKnowledge = conservationKnowledge;
	this.characterCharacteristics = characterCharacteristics;
	this.feedingPoints = feedingPoints;
	this.environment = environment;
	this.exhibitionIMG = exhibitionIMG;
	this.shape = shape;
	this.function = function;
	this.friendliness = friendliness;
	this.difficultyInFeeding = difficultyInFeeding;
	this.pdvocimg = pdvocimg;
}


public int getPetID() {
	return petID;
}


public void setPetID(int petID) {
	this.petID = petID;
}


public String getPetcnName() {
	return petcnName;
}


public void setPetcnName(String petcnName) {
	this.petcnName = petcnName;
}


public String getPetenName() {
	return petenName;
}


public void setPetenName(String petenName) {
	this.petenName = petenName;
}


public String getBriefIntroduction() {
	return briefIntroduction;
}


public void setBriefIntroduction(String briefIntroduction) {
	this.briefIntroduction = briefIntroduction;
}


public String getChinesename() {
	return chinesename;
}


public void setChinesename(String chinesename) {
	this.chinesename = chinesename;
}


public String getDontsaid() {
	return dontsaid;
}


public void setDontsaid(String dontsaid) {
	this.dontsaid = dontsaid;
}


public String getCircles() {
	return circles;
}


public void setCircles(String circles) {
	this.circles = circles;
}


public String getDoor() {
	return door;
}


public void setDoor(String door) {
	this.door = door;
}


public String getSubdoor() {
	return subdoor;
}


public void setSubdoor(String subdoor) {
	this.subdoor = subdoor;
}


public String getGang() {
	return gang;
}


public void setGang(String gang) {
	this.gang = gang;
}


public String getSubang() {
	return subang;
}


public void setSubang(String subang) {
	this.subang = subang;
}


public String getItem() {
	return item;
}


public void setItem(String item) {
	this.item = item;
}


public String getSubOrder() {
	return subOrder;
}


public void setSubOrder(String subOrder) {
	this.subOrder = subOrder;
}


public String getSection() {
	return section;
}


public void setSection(String section) {
	this.section = section;
}


public String getSubfamily() {
	return subfamily;
}


public void setSubfamily(String subfamily) {
	this.subfamily = subfamily;
}


public String getGenus() {
	return genus;
}


public void setGenus(String genus) {
	this.genus = genus;
}


public String getSpecies() {
	return species;
}


public void setSpecies(String species) {
	this.species = species;
}


public String getSubSpecies() {
	return subSpecies;
}


public void setSubSpecies(String subSpecies) {
	this.subSpecies = subSpecies;
}


public String getAncestralHome() {
	return ancestralHome;
}


public void setAncestralHome(String ancestralHome) {
	this.ancestralHome = ancestralHome;
}


public String getEaseOfDisease() {
	return easeOfDisease;
}


public void setEaseOfDisease(String easeOfDisease) {
	this.easeOfDisease = easeOfDisease;
}


public String getLifeAge() {
	return lifeAge;
}


public void setLifeAge(String lifeAge) {
	this.lifeAge = lifeAge;
}


public String getPrice() {
	return price;
}


public void setPrice(String price) {
	this.price = price;
}


public String getDisposition() {
	return disposition;
}


public void setDisposition(String disposition) {
	this.disposition = disposition;
}


public String getMorphologicalCharacter() {
	return morphologicalCharacter;
}


public void setMorphologicalCharacter(String morphologicalCharacter) {
	this.morphologicalCharacter = morphologicalCharacter;
}


public String getConservationKnowledge() {
	return conservationKnowledge;
}


public void setConservationKnowledge(String conservationKnowledge) {
	this.conservationKnowledge = conservationKnowledge;
}


public String getCharacterCharacteristics() {
	return characterCharacteristics;
}


public void setCharacterCharacteristics(String characterCharacteristics) {
	this.characterCharacteristics = characterCharacteristics;
}


public String getFeedingPoints() {
	return feedingPoints;
}


public void setFeedingPoints(String feedingPoints) {
	this.feedingPoints = feedingPoints;
}


public String getEnvironment() {
	return environment;
}


public void setEnvironment(String environment) {
	this.environment = environment;
}


public String getExhibitionIMG() {
	return exhibitionIMG;
}


public void setExhibitionIMG(String exhibitionIMG) {
	this.exhibitionIMG = exhibitionIMG;
}


public String getShape() {
	return shape;
}


public void setShape(String shape) {
	this.shape = shape;
}


public String getFunction() {
	return function;
}


public void setFunction(String function) {
	this.function = function;
}


public String getFriendliness() {
	return friendliness;
}


public void setFriendliness(String friendliness) {
	this.friendliness = friendliness;
}


public String getDifficultyInFeeding() {
	return difficultyInFeeding;
}


public void setDifficultyInFeeding(String difficultyInFeeding) {
	this.difficultyInFeeding = difficultyInFeeding;
}


public Set<PetDataVOClass> getPdvocimg() {
	return pdvocimg;
}


public void setPdvocimg(Set<PetDataVOClass> pdvocimg) {
	this.pdvocimg = pdvocimg;
}



public String toString() {
	return "PetDataVOClass [petID=" + petID + ", petcnName=" + petcnName
			+ ", petenName=" + petenName + ", briefIntroduction="
			+ briefIntroduction + ", chinesename=" + chinesename
			+ ", dontsaid=" + dontsaid + ", circles=" + circles + ", door="
			+ door + ", subdoor=" + subdoor + ", gang=" + gang + ", subang="
			+ subang + ", item=" + item + ", subOrder=" + subOrder
			+ ", section=" + section + ", subfamily=" + subfamily + ", genus="
			+ genus + ", species=" + species + ", subSpecies=" + subSpecies
			+ ", ancestralHome=" + ancestralHome + ", easeOfDisease="
			+ easeOfDisease + ", lifeAge=" + lifeAge + ", price=" + price
			+ ", disposition=" + disposition + ", morphologicalCharacter="
			+ morphologicalCharacter + ", conservationKnowledge="
			+ conservationKnowledge + ", characterCharacteristics="
			+ characterCharacteristics + ", feedingPoints=" + feedingPoints
			+ ", environment=" + environment + ", exhibitionIMG="
			+ exhibitionIMG + ", shape=" + shape + ", function=" + function
			+ ", friendliness=" + friendliness + ", difficultyInFeeding="
			+ difficultyInFeeding + ", pdvocimg=" + pdvocimg + "]";
}



}