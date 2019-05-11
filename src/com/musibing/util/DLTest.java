package com.musibing.util;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;

public class DLTest {
	

	public static void main(String[] args) {
		String URL = "https://baike.baidu.com/item/贵宾犬";
		DLTest DLT = new DLTest();
		System.out.println(DLT.Download(URL));

	}

	public String Download(String URl) {
		
		String results = "";
		try {
			/*
			 * URL DownLoadURL=new URL(
			 * "https://baike.baidu.com/item/%E6%B8%AF%E9%BE%99%E8%88%AA%E7%A9%BA"
			 * );
			 * 
			 * HttpURLConnection
			 * Http=(HttpURLConnection)DownLoadURL.openConnection();
			 * Http.setRequestMethod("POST");
			 */

			URL inputURL = new URL(URl);
			HttpURLConnection UC = (HttpURLConnection) inputURL.openConnection();
			UC.setRequestProperty("User-Agent","Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt)");
			InputStreamReader isr = new InputStreamReader(UC.getInputStream(),"utf-8");
			BufferedReader Bf = new BufferedReader(isr);

			FileWriter Fw = new FileWriter("D:\\DL.Jsp");
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
			

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return results;
	}

}
