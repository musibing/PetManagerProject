package com.musibing.action;

import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.jsoup.select.Evaluator.IsEmpty;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Scope;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;

import com.musibing.number.RandomNumber;
import com.musibing.server.AccountRecordsService;
import com.musibing.server.AccountServer;
import com.musibing.util.NumberSupport;
import com.musibing.util.network.publicIpAddress;
import com.musibing.vo.AccountRecords;
import com.musibing.vo.AccountVO;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class AccountCheck extends ActionSupport {
	@Resource
	AccountServer Us;
	AccountVO uvo;
	AccountRecords ars;
	AccountRecordsService arss;
	HttpServletRequest HSR = ServletActionContext.getRequest();
	HttpServletResponse HSP = ServletActionContext.getResponse();
	HttpSession HSession = HSR.getSession();

	public AccountVO getUvo() {
		return uvo;
	}

	public void setUvo(AccountVO uvo) {
		this.uvo = uvo;
	}

	public String AccountLoginCheck() {
		String Result = "Error";
		try {
		
			int CheckAccountID = uvo.getAccountId();

			String CheckPassword = uvo.getPassWord();

			System.out.println("得到的管理员帐户的值是：" + CheckAccountID);
			System.out.println("得到的密码的值是：" + CheckPassword);
			

			uvo = Us.AccountLoginCheck(CheckAccountID);
			
			System.out.println(uvo.toString());
			if (uvo == null) {
				return "Error";
			} else if (!CheckPassword.equals(uvo.getPassWord())) {
				return "Error";
			} else {
				ApplicationContext act = new ClassPathXmlApplicationContext(
						"beans.xml");
			/*	arss = (AccountRecordsService) act.getBean("accountRecordsService");
				Date happenTime = new Date();
				String iPAddress = new publicIpAddress().getPublicIpAddress();
				ars = new AccountRecords();
				ars.setAccountRecordsID(arss.SelectAccountRecordsMaxID()+1);
				ars.setAccountVOID(uvo);
				ars.setEventName("登录");
				ars.setHappenTime(happenTime);
				ars.setiPAddress(iPAddress);
				arss.saveAccountRecords(ars);*/
				String Role = uvo.getRole();
				if (1 == Integer.parseInt(Role)) {
					Result = "AdminIndex";

				} else {
					Result = "UserIndex";

				}
				System.out.println("登录成功：用户的参数是"+uvo.toString());
				ServletActionContext.getRequest().getSession()
						.setAttribute("AccountInfo", uvo);
				uvo=null;
				arss=null;
				ars=null;
				CheckPassword=null;
				

			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return Result;
	}

}
