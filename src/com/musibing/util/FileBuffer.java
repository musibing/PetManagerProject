package com.musibing.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

public class FileBuffer {
	public static void main(String[] args) {
		FileBuffer fb=new FileBuffer();
		String Tempdata=fb.getTempFileData("H:\\java\\PetManagerProject\\WebContent\\temp\\TempData.jsp");
		System.out.println(Tempdata);
		
	}
	public String getTempFileData(String path){
		
		String results="";
		try {
		File fi=new File(path);
		
		InputStream in=new FileInputStream(fi);
		
		InputStreamReader isr=new InputStreamReader(in,"utf-8");
		
		BufferedReader bf=new BufferedReader(isr);
		
		String newline="";
		System.out.println("123");
		while((newline=bf.readLine())!=null){
			if(newline.equals("<body>")){
				newline+="\n添加数据测试";
			}
			results+=newline+"\n";
			
		}
		
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return results;
	}public String getTempFileDataForURL(String urlpath){
		
		String results="";
		try {
			 URL url = new URL(urlpath);      
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
		System.out.println("123");
		while((newline=bf.readLine())!=null){
			if(newline.equals("<body>")){
				newline+="\n添加数据测试";
			}
			results+=newline+"\n";
			
		}
		System.out.println("results:结果集布尔值"+"".equals(results.trim()));
		} catch (Exception e) {
			
			e.printStackTrace();
			return results;
		} 
		
		return results;
	}

}
