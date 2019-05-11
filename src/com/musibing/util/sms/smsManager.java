package com.musibing.util.sms;

import java.io.PrintWriter;

import org.apache.struts2.ServletActionContext;

import com.musibing.util.MobileScode;
import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;

public class smsManager {
	public void sendSmsValidateCode(int smsValidateCodeID,String TelphoneNumber){
	
		System.out.println("得到的电话号码是：" + TelphoneNumber);
		String rusult = "nul";
		String url = "http://gw.api.taobao.com/router/rest";
		String appkey = "23586532";
		String secret = "05ef71fa49e3778f304df45325177dec";
		String product = "cool_moon";
		TaobaoClient client = new DefaultTaobaoClient(url, appkey, secret);
		AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
		req.setExtend("1234");
		req.setSmsType("normal");
		req.setSmsFreeSignName("萌宠之家");
		req.setSmsParamString("{\"UserRegisterCode\":\"" + smsValidateCodeID + "\"}");

		req.setRecNum(TelphoneNumber);
		req.setSmsTemplateCode("SMS_113730011");
		
		int error = 0;
		try {
			AlibabaAliqinFcSmsNumSendResponse rsq = client.execute(req);
			System.out.println(rsq.getBody());
			rusult = rsq.getSubMsg();
			error = 0;
		} catch (Exception e) {
			e.printStackTrace();
			error = 1;
		}
		
		
	}

}
