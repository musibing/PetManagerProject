package com.musibing.util.sms;
import com.aliyuncs.CommonRequest;
import com.aliyuncs.CommonResponse;
import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.exceptions.ServerException;
import com.aliyuncs.http.MethodType;
import com.aliyuncs.profile.DefaultProfile;
public class aliSmsManagerProject {

	
	/*
	pom.xml
	<dependency>
	  <groupId>com.aliyun</groupId>
	  <artifactId>aliyun-java-sdk-core</artifactId>
	  <version>4.0.3</version>
	</dependency>
	*/
	  public void sendRegisterSms(int code,String PhoneNumbers){
	    	
	    	DefaultProfile profile = DefaultProfile.getProfile("default", "", "");
	        IAcsClient client = new DefaultAcsClient(profile);

	        CommonRequest request = new CommonRequest();
	        //request.setProtocol(ProtocolType.HTTPS);
	        request.setMethod(MethodType.POST);
	        request.setDomain("dysmsapi.aliyuncs.com");
	        request.setVersion("2017-05-25");
	        request.setAction("SendSms");
	        request.putQueryParameter("PhoneNumbers", PhoneNumbers);
	        request.putQueryParameter("TemplateCode", "SMS_113730011");
	        request.putQueryParameter("SignName", "萌宠之家");
	        request.putQueryParameter("TemplateParam", "{\"UserRegisterCode\":\""+code+"\"}");
	        try {
	            CommonResponse response = client.getCommonResponse(request);
	            System.out.println(response.getData());
	        } catch (ServerException e) {
	            e.printStackTrace();
	        } catch (ClientException e) {
	            e.printStackTrace();
	        }
	    	
		}
public void sendPasswordBackSms(int code,String PhoneNumbers){
	    	
	    	DefaultProfile profile = DefaultProfile.getProfile("default", "LTAIKlZOlSD5yrV6", "hCqJ6e85TnLCJ4oGj7bLEcnVtM3phc");
	        IAcsClient client = new DefaultAcsClient(profile);

	        CommonRequest request = new CommonRequest();
	        //request.setProtocol(ProtocolType.HTTPS);
	        request.setMethod(MethodType.POST);
	        request.setDomain("dysmsapi.aliyuncs.com");
	        request.setVersion("2017-05-25");
	        request.setAction("SendSms");
	        request.putQueryParameter("PhoneNumbers", PhoneNumbers);
	        request.putQueryParameter("TemplateCode", "SMS_113260001");
	        request.putQueryParameter("SignName", "萌宠之家");
	        request.putQueryParameter("TemplateParam", "{\"pfcoed\":\""+code+"\"}");
	        try {
	            CommonResponse response = client.getCommonResponse(request);
	            System.out.println(response.getData());
	        } catch (ServerException e) {
	            e.printStackTrace();
	        } catch (ClientException e) {
	            e.printStackTrace();
	        }
	    	
		}
	}

