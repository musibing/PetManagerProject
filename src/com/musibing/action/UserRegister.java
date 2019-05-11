package com.musibing.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Scope;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;

import com.musibing.vo.AccountRecords;
import com.musibing.vo.AccountVO;
import com.musibing.vo.BuyCar;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;
import com.musibing.Bean.BuyCarServerBean;
import com.musibing.number.RandomNumber;
import com.musibing.server.AccountRecordsService;
import com.musibing.server.AccountServer;
import com.musibing.server.BuyCarServer;
import com.musibing.server.PetIMGServer;
import com.musibing.util.MobileScode;
import com.musibing.util.network.publicIpAddress;

@Controller
@Scope("prototype")
public class UserRegister extends ActionSupport {
	@Resource
	AccountServer Us;
	AccountVO uvo;
	AccountRecordsService arss;
	AccountRecords ars;
	HttpServletRequest HSR = ServletActionContext.getRequest();
	HttpServletResponse HSP = ServletActionContext.getResponse();
	HttpSession HSession = HSR.getSession();

	public AccountVO getUvo() {

		return uvo;
	}

	public void setUvo(AccountVO uvo) {

		this.uvo = uvo;
	}

	public AccountRecords getArs() {
		return ars;
	}

	public void setArs(AccountRecords ars) {
		this.ars = ars;
	}

	public void UserIDCheck() throws Exception {

		String CheckUserName = HSR.getParameter("userloginidvalue");
		System.out.println("得到的用户名的值是：" + CheckUserName);

		PrintWriter out = HSP.getWriter();

		/*int CUVO = Us.UserNameCheck(CheckUserName);

		if (CUVO == 0) {
			HSession.setAttribute("UserIDCheckStatus", "May");
			System.out.println(2);
			out.write("true");

		} else {
			HSession.setAttribute("UserIDCheckStatus", "Useing");
			System.out.println(7);
			out.write("Failure");
		}*/

	}

	public void sendMobileCode() throws Exception {
		/*
		 * int Random = MobileScode.getMscObj().getRandom();
		 * MobileScode.getMscObj().setmSC(Random); HSP =
		 * ServletActionContext.getResponse(); HSR =
		 * ServletActionContext.getRequest(); String TelphoneNumber =
		 * HSR.getParameter("telphoneNumber"); System.out.println("得到的电话号码是：" +
		 * TelphoneNumber); PrintWriter out = HSP.getWriter(); String rusult =
		 * "nul"; String url = "http://gw.api.taobao.com/router/rest"; String
		 * appkey = "23586532"; String secret =
		 * "05ef71fa49e3778f304df45325177dec";
		 * 
		 * String product = "cool_moon"; TaobaoClient client = new
		 * DefaultTaobaoClient(url, appkey, secret);
		 * AlibabaAliqinFcSmsNumSendRequest req = new
		 * AlibabaAliqinFcSmsNumSendRequest(); req.setExtend("1234");
		 * req.setSmsType("normal"); req.setSmsFreeSignName("萌宠之家");
		 * req.setSmsParamString("{\"UserRegisterCode\":\"" + Random + "\"}");
		 * 
		 * req.setRecNum(TelphoneNumber);
		 * req.setSmsTemplateCode("SMS_113730011");
		 * System.out.println("得到的验证码是：" + Random); int error = 0; try {
		 * AlibabaAliqinFcSmsNumSendResponse rsq = client.execute(req);
		 * System.out.println(rsq.getBody()); rusult = rsq.getSubMsg(); error =
		 * 0; } catch (Exception e) { e.printStackTrace(); error = 1; }
		 */
		PrintWriter out = HSP.getWriter();

		out.write("true");

	}

	public void scodecheck() throws Exception {
		int code = MobileScode.getMscObj().getmSC();
		System.out.println("检研得到的验证码是：" + code);

		PrintWriter out = HSP.getWriter();
		String smscode = HSR.getParameter("inputsmscode");
		System.out.println("安全验证码是：" + smscode);

		if (smscode.equals(code)) {

			HSession.setAttribute("ScodeCheckStatus", "Correct");
			out.write("true");

		} else {
			HSession.setAttribute("ScodeCheckStatus", "Error");
			out.write("fail");
		}
	}

	public String saveUserData() {
			ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
		arss = (AccountRecordsService) act.getBean("accountRecordsService");
		Us = (AccountServer) act.getBean("accountServerBa");
		BuyCarServer bcsb=(BuyCarServer)act.getBean("buyCarServerBean");
		int saveUserStatus = 0;
		String ScodeCheckStatus = (String) HSession.getAttribute("ScodeCheckStatus");
		String UserIDCheckStatus = (String) HSession.getAttribute("UserIDCheckStatus");

		if ("May".equals(UserIDCheckStatus)) {
			
			String identifier = "60";
			String tempID = new RandomNumber().RandomNumber();
			int temp=Integer.parseInt(identifier+tempID);
			int AccountID=Us.SelectMaxAccountID();
			AccountID=AccountID+1;
			System.out.println("生成的ID是："+AccountID);
			/*uvo.setAccountId(AccountID);*/
			uvo.setRole("1");
			System.out.println("得到的UVO实体的值是" + (uvo));
			ars = new AccountRecords();
			ars.setEventName("创建帐户");
			int AccountRecordsID=0;
			AccountRecordsID=arss.SelectAccountRecordsMaxID()+1;
			ars.setAccountRecordsID(AccountRecordsID);
			Date happenTime = new Date();
			String iPAddress = new publicIpAddress().getPublicIpAddress();
			ars.setiPAddress(iPAddress);
			ars.setHappenTime(happenTime);
			System.out.println(ars.toString());
			arss.saveAccountRecords(ars);
			uvo.setAccountId(AccountID);
			Us.save(uvo);
			AccountRecords arsRe =arss.SelectAccountRecordsIDForAccountRecordsID(AccountRecordsID);
			arsRe.setAccountVOID(uvo);
			arss.UpdateAccountRecords(arsRe);
			/*saveUserStatus = Us.UserNameCheck(uvo.getAccountName());

			if (saveUserStatus != 0) {
				ActionContext.getContext().put("message", "用户创建完成");
				BuyCar Bc=new BuyCar();
				Bc.setBuyCarID(bcsb.SelectMaxBuyCarID()+1);
				Bc.setaVO(uvo);
				bcsb.AddBuyCar(Bc);
				uvo.setBcID(Bc);
			AccountVO uvonew=Us.findForAccontID(AccountID);
			uvonew.setBcID(Bc);
			Us.update(uvo);
				return "Message";
			} else {
				return "Error";
			}*/

		}
		return "Error";
	}

}
