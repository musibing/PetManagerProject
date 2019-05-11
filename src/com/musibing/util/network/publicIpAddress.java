package com.musibing.util.network;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class publicIpAddress {
	public String getPublicIpAddress() {
		String ipAddress = "";
		InputStream ins = null;
		try {
			URL url = new URL("https://ip.cn");
			URLConnection con = url.openConnection();
			con.setRequestProperty("User-Agent",
					"Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt)");
			ins = con.getInputStream();
			InputStreamReader isReader = new InputStreamReader(ins, "GB2312");
			BufferedReader bReader = new BufferedReader(isReader);

			String str = null;
			Pattern p = Pattern.compile("\\d+\\.\\d+\\.\\d+\\.\\d+");
			String tempData;

			tempData = "";

			while ((str = bReader.readLine()) != null) {

				tempData += str;
			}

			Matcher m = p.matcher(tempData);
			while (m.find()) {
				ipAddress = m.group();
			}
			ins.close();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {

		}
		return ipAddress;
	}

	public static void main(String[] args) {
		String ipAddress = new publicIpAddress().getPublicIpAddress();
		System.out.println("获取的IP地址是：" + ipAddress);
	}
}
