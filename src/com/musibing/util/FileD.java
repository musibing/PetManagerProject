package com.musibing.util;

import static org.junit.Assert.*;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import org.junit.Test;

public class FileD {

	@Test
	public void test1() {
		
		String urlStr="http://www.baike.com/wiki/%E8%A5%BF%E7%BA%A2%E6%9F%BF&prd=so_1_doc";
	    try {
			URL url = new URL(urlStr);
   String FileSavePath="x:/temp.txt"; 
			HttpURLConnection conn = (HttpURLConnection)url.openConnection();      
			        //设置超时间为3秒    
			conn.setConnectTimeout(3*1000);    
			//防止屏蔽程序抓取而返回403错误    
			conn.setRequestProperty("User-Agent", "Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt)");    
   
			//得到输入流    
			InputStream inputStream = conn.getInputStream();      
			//获取自己数组    
			String results="";
			int len=0;
			byte[] getData=new byte[1600];;
			while((len=inputStream.read())!=-1){
				inputStream.read(getData);
			}
			System.out.println("测试1");
			File file = new File(FileSavePath);        
			FileOutputStream fos = new FileOutputStream(file);   
			fos.write(getData);
			System.out.println("测试2");
			fos.flush();
			System.out.println("测试3");
			if(fos!=null){    
			    fos.close();      
			}    
			if(inputStream!=null){    
			    inputStream.close();    
			}
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}    
    
        
	}
	@Test
	public void test2(){/*下载源文件*/
		String results="";
		try {
			String urlStr="http://www.xinfadi.com.cn/marketanalysis/1/list/1.shtml";
		  
				URL url = new URL(urlStr);
	   String FileSavePath="x:/temp.txt"; 
				HttpURLConnection conn = (HttpURLConnection)url.openConnection();      
				        //设置超时间为3秒    
				conn.setConnectTimeout(3*1000);    
				//防止屏蔽程序抓取而返回403错误    
				conn.setRequestProperty("User-Agent", "Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt)");    
	   
				//得到输入流    
				InputStream inputStream = conn.getInputStream();      
		
		
		InputStreamReader isr=new InputStreamReader(inputStream,"utf-8");
		
		BufferedReader bf=new BufferedReader(isr);
		
		String newline="";
		
		while((newline=bf.readLine())!=null){
			if(newline.equals("<body>")){
				newline+="\n添加数据测试";
			}
			results+=newline+"\n";
			
		}
		System.out.println(results);
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
