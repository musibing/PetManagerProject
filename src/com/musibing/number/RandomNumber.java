package com.musibing.number;

import java.util.Random;

public class RandomNumber {
public String RandomNumber(){
	int rand = new Random().nextInt(1000000);
	String ImmediateNumber = Integer.toString(rand);
	
	
	return ImmediateNumber;
	
}
}
