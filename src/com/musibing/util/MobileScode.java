package com.musibing.util;

import java.util.Random;

public class MobileScode {
	private int mSC;
	private static MobileScode MSCOBJ=null;
	
private MobileScode(){
	
}


public int getmSC() {
	return mSC;
}


public void setmSC(int mSC) {
	this.mSC = mSC;
}


public int getRandom(){
	int rand = new Random().nextInt(1000000);
	
	return rand;
}
public static MobileScode getMscObj(){
	if(MSCOBJ==null){
		MSCOBJ=new MobileScode();
	}
	
	
	return MSCOBJ;
}	
	
	
}
