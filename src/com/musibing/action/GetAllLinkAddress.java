package com.musibing.action;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.musibing.util.FileDownForUrl;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class GetAllLinkAddress extends ActionSupport{
	
	HttpServletRequest HSR = ServletActionContext.getRequest();
	HttpServletResponse HSP = ServletActionContext.getResponse();
	HttpSession HSession = HSR.getSession();
	public void GetHerf(){
		System.out.println("方法测试");
		String[] HerfAddress=HSR.getParameterValues("HerfData");
	
		System.out.println("得到数据是："+HerfAddress.length);
		String data="";
		for (int i = 0; i < HerfAddress.length; i++) {
			
			data=HerfAddress[i];
			System.out.println("得到数据是："+data);
			try {
				FileDownForUrl.downLoadFromUrl(data,"");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
	}
}
