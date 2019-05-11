package com.musibing.util;

import org.junit.Test;
import org.springframework.stereotype.Component;

import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;

@Component
public class SmsTest {
	/*阿里大于短信验证码发送*/
	
	@Test
	public void sendMobileCode(){
		
		String rusult="nul";
		String url="http://gw.api.taobao.com/router/rest";
		String appkey="23586532";
		String secret="05ef71fa49e3778f304df45325177dec";
		String code="034512";
		String product="cool_moon";
		TaobaoClient client=new DefaultTaobaoClient(url,appkey,secret);
		AlibabaAliqinFcSmsNumSendRequest req=new AlibabaAliqinFcSmsNumSendRequest();
		req.setExtend("1234");
		req.setSmsType("normal");
		req.setSmsFreeSignName("萌宠之家");
		req.setSmsParamString("{\"UserRegisterCode\":\""+code+"\"}");
								  
		req.setRecNum("17318904386");
		req.setSmsTemplateCode("SMS_113730011");
		
		
		try{
			AlibabaAliqinFcSmsNumSendResponse rsq=client.execute(req);
			System.out.println(rsq.getBody());
			rusult=rsq.getSubMsg();
		}catch(Exception e){
			e.printStackTrace();
		}
		System.out.println(rusult);
	}

}
