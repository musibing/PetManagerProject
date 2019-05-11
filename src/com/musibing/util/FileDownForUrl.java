package com.musibing.util;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class FileDownForUrl {

	/**   
     * 从网络Url中下载文件   
     * @param urlStr   
     * @param fileName   
     * @param savePath   
     * @throws IOException   
     */    
    public static void  downLoadFromUrl(String urlStr,String FileSavePath) throws IOException{    
        URL url = new URL(urlStr);      
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
        byte[] getData=new byte[8000];;
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
    
        
      /*  
        InputStreamReader isr = new InputStreamReader(inputStream,"utf-8");
		BufferedReader Bf = new BufferedReader(isr);

		FileWriter Fw = new FileWriter("H:\\软件开发\\Java\\Jar\\Struts2.3.20+Hi\\jackson2.4.3");
		BufferedWriter output = new BufferedWriter(Fw);
		String newLin = "";

		byte[] data = new byte[8000];

		while ((newLin = Bf.readLine()) != null) {

			results += newLin + "\n";

		}
		System.out.println(">>>>");
		output.write(results);
		output.flush();
		output.close();
		isr.close();
		
    
        System.out.println("info:"+url+" download success");     */
    
    }
}
