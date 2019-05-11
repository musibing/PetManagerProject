package com.musibing.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Time {
	public static void main(String[] args) {
		String date="2018-09-30 10:17:46";
		DateFormat adf=new SimpleDateFormat("YYYY-MM-DD");
		try {
			Date da=adf.parse(date);
			System.out.println(da.getMonth());
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
