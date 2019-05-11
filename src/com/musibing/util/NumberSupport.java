package com.musibing.util;

import java.text.DecimalFormat;
import java.util.Random;

import org.junit.Test;

public class NumberSupport {
public static int Random(int dataNumber){
	
	int rand = new Random().nextInt(dataNumber);
	String yanZhengMa = Integer.toString(rand);
	System.out.println(yanZhengMa);
	return rand;
}
public static double RandomDouble(){
	double RandomResult=(Math.random()*100);
	DecimalFormat df = new DecimalFormat("#.00");
	 String str = df.format(RandomResult);
	 RandomResult =Double.parseDouble(str);
	System.out.println(RandomResult);
	return RandomResult;
}

}
