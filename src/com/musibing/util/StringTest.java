package com.musibing.util;

import static org.junit.Assert.*;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import org.junit.Test;

public class StringTest {

	@Test
	public void test1() {
		String s1="Hello word this";
		String temp="";
		int IntArrayNumber=0;
		char[] c1=s1.toCharArray();
		if(s1.indexOf(" ")!=0){
			
			for (int i = 0; i < c1.length; i++) {
				if(32==c1[i]){
					System.out.println("这是回车");
					c1[i]='\0';
		System.out.println("[i]"+c1[i]);
					c1[i+1]-=32;
					System.out.println("[i+1]"+c1[i+1]);
					IntArrayNumber++;
				}
				
				
			}
		}
			temp=String.valueOf(c1);
			temp=temp.replaceAll(" ", "");
			System.out.println("得到的新数据 是："+temp);
			System.out.println("INt"+IntArrayNumber);
			/*int[] NullIndexOff;
			NullIndexOff=new int[IntArrayNumber];
			
			for (int i = 0; i < c1.length; i++) {
				for(int j=0;j<NullIndexOff.length;j++){
					if(32==c1[i]){
						NullIndexOff[j]=i;
					}
				}
				}
			for (int i = 0; i < NullIndexOff.length; i++) {
				if(32==c1[i]){
					s1.
				}
				
				
			}*/
			
			
		
			
		}
	@Test
	public void test2(){
		String d="中国移动";
		
		
		try {
			/*String temp=new String(d.getBytes("gbk"),"utf-8");*/
			String temp=URLEncoder.encode(d, "UTF-8");
			System.out.println(temp);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	}


