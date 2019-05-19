package com.musibing.action;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Scope;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;

import com.musibing.number.RandomNumber;
import com.musibing.server.AccountCollectService;
import com.musibing.server.AccountRecordsService;
import com.musibing.server.AccountServer;
import com.musibing.server.AddressListService;
import com.musibing.server.BuyCarListServer;
import com.musibing.server.BuyCarServer;
import com.musibing.server.OrderSunburnImgService;
import com.musibing.server.PayAccountService;
import com.musibing.server.ProductIMGServer;
import com.musibing.server.ProductOderListService;
import com.musibing.server.ProductOderServer;
import com.musibing.server.ProductServer;
import com.musibing.util.MobileScode;
import com.musibing.util.NumberSupport;
import com.musibing.util.email.Sendmail;
import com.musibing.util.network.publicIpAddress;
import com.musibing.util.sms.aliSmsManagerProject;
import com.musibing.vo.AccountCollect;
import com.musibing.vo.AccountRecords;
import com.musibing.vo.AccountVO;
import com.musibing.vo.AddressList;
import com.musibing.vo.BuyCar;
import com.musibing.vo.BuyCarList;
import com.musibing.vo.OrderSunburnImg;
import com.musibing.vo.PayAccount;
import com.musibing.vo.Product;
import com.musibing.vo.ProductOder;
import com.musibing.vo.ProductOderList;
import com.opensymphony.xwork2.ActionSupport;



@Controller
@Scope("prototype")
public class AccountManager extends ActionSupport{
	@Resource
	AccountCollect acccountCollect;
	AccountCollectService acccountCollectService;
	AccountServer accountservice;
	@Resource
	ProductServer pservice;
	@Resource
	ProductIMGServer pimgsb;/*注解自动注入失败*/
	@Resource
	AccountServer as;
	@Resource
	ProductOderServer POS;
	@Resource
	ProductOder PO;
	@Resource
	ProductOderList POL;
	@Resource
	ProductOderListService POLS;
	PayAccountService payAccountService;
	PayAccount payAccount;
	Product pd;
	BuyCar bC;
	OrderSunburnImg OSI;
	OrderSunburnImgService OSIS;
	ProductServer Poder;
	ProductServer PS;
	BuyCarListServer BCLS;
	BuyCarServer BCS;
	@Resource
	BuyCarList BCL;
	AccountVO uvo;
	AccountRecordsService arss;
	AccountRecords ars;
	@Resource
	AddressListService addressListService;
	AddressList addressList;
	
	public PayAccount getPayAccount() {
		return payAccount;
	}

	public void setPayAccount(PayAccount payAccount) {
		this.payAccount = payAccount;
	}

	public AddressList getAddressList() {
		return addressList;
	}

	public void setAddressList(AddressList addressList) {
		this.addressList = addressList;
	}

	HttpServletRequest HSR = ServletActionContext.getRequest();
	HttpServletResponse HSP = ServletActionContext.getResponse();
	HttpSession HSession = HSR.getSession();

	public AccountVO getUvo() {
		return uvo;
	}

	public void setUvo(AccountVO uvo) {
		System.out.println("设置方法测试" + uvo);
		this.uvo = uvo;
	}

	public AccountRecords getArs() {
		return ars;
	}

	public void setArs(AccountRecords ars) {
		this.ars = ars;
	}
	public void ActionInit(){
		ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
		
		acccountCollectService = (AccountCollectService) act.getBean("accountCollectServicBean");
		accountservice=(AccountServer)act.getBean("accountServerBa");
		pimgsb=(ProductIMGServer)act.getBean("productimgServerBean");
		
		BCS=(BuyCarServer)act.getBean("buyCarServerBean");
	
		POS=(ProductOderServer)act.getBean("productOderServerBean");
	
		PS=(ProductServer)act.getBean("productServerBean");
		
		BCLS=(BuyCarListServer)act.getBean("buyCarListServerBean");	
		
		POLS=(ProductOderListService)act.getBean("productOderListServiceBean");
		
		addressListService=(AddressListService)act.getBean("addressListServiceBean");
		
		payAccountService=(PayAccountService)act.getBean("payAccountServiceBean");

		try {
			HSR.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			
			e.printStackTrace();
		}
		HSP.setContentType("text/html;charset=UTF-8");
	}
	
	public void ViewAccountCollectForArticle(){
		
		String ParameterID=HSR.getParameter("ParameterID");
		int ParameterIDData=Integer.parseInt(ParameterID);
		
		
		String HQL="from AccountCollect where articleID="+ParameterIDData;
		AccountCollect accountcollect=acccountCollectService.ViewAccountCollectForParameterID(HQL);
		System.out.println(accountcollect);
		
		
	}
	public void accountPasswordModify() {/*修改帐户密码*/
		ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
		accountservice = (AccountServer) act.getBean("accountServerBa");
		
		System.out.println("得到的实体类的属性是：" + uvo);
		HttpSession HSession = HSR.getSession();
		Object smsValidateCodeStr = HSession.getAttribute("SMSValidateCode");
		int smsValidateCode = Integer.parseInt(smsValidateCodeStr.toString());
		System.out.println("得到的校验码是" + smsValidateCode);
		String userInputCodeStr = "";
		int userInputCode = 0;
		userInputCodeStr = HSR.getParameter("userinputcode");
		String userConfirmPassWord=HSR.getParameter("userConfirmPassWord");
		userInputCode = Integer.parseInt(userInputCodeStr);
		System.out.println("用户输入的验证码是：" + userInputCode);
		System.out.println(uvo == null);
		/*uvo = accountservice.findForAccontID(uvo.getAccountId());*/
		uvo.setPassWord(userConfirmPassWord);
		
		System.out.println("更改后的实体类的属性是：" + uvo);
		accountservice.update(uvo);
		arss=(AccountRecordsService)act.getBean("accountRecordsService");
		Date happenTime=new Date();
		String iPAddress=new publicIpAddress().getPublicIpAddress();
		String identifier = "61";
		String tempID = new RandomNumber().RandomNumber();
		int AccountRecordsID = Integer.parseInt(identifier + tempID);
		ars=new AccountRecords();
		ars.setAccountRecordsID(AccountRecordsID);
		ars.setAccountVOID(uvo);
		ars.setEventName("修改密码");
		ars.setHappenTime(happenTime);
		ars.setiPAddress(iPAddress);
		arss.saveAccountRecords(ars);
		if (smsValidateCode == userInputCode) {

		} else {
			System.out.println("验证失败！");
		}

	}

	public void sendSMSValidateCode() {/*发送短信验证妈*/

		int SMSValidateCode = MobileScode.getMscObj().getRandom();
		MobileScode.getMscObj().setmSC(SMSValidateCode);
		HttpSession HSession = HSR.getSession();
		System.out.println(SMSValidateCode);
		HSession.setAttribute("SMSValidateCode", SMSValidateCode);
		String accuntTelphoneNumber = "";
		try {
			accuntTelphoneNumber = HSR.getParameter("accuntTelphoneNumber");
		} catch (Exception e) {
		
			e.printStackTrace();
		}

		aliSmsManagerProject sm = new aliSmsManagerProject();
		 sm.sendRegisterSms(SMSValidateCode, accuntTelphoneNumber);
		System.out.println("短信发送完成");

	}
	public void SelectAccountIMGForAccountID(){
		try {
			ActionInit();
		System.out.println("系统检测");
		String accountid=HSR.getParameter("accountid");
		int accountidint=0;
		System.out.println("得到的数据账户是"+accountid);
		accountidint=Integer.parseInt(accountid);
		uvo=accountservice.findForAccountID(accountidint);
		String accountIMGPath=uvo.getAccountIMGPath();
		System.out.println("得到的数据图片是"+accountIMGPath);
		
			HSP.getWriter().print(accountIMGPath);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}
	public void UpdateAccountIMGInfo(){
	try {
		List<AccountVO> li=accountservice.ViewAllUser();
		String basePath="../img/Account/";
		int baseID=602000001;
	for(int y=0;y<li.size();y++){
		li.get(y).setAccountIMGPath(basePath+(baseID+y)+".jpg");
		
		accountservice.update(li.get(y));
		System.out.println(li.get(y));
		
	
	}	
		
		
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		
	}
	public void UserLoginStatusCheck(){
		System.out.println("系统调用！");
		try {
			AccountVO accountvo=null;
			List<BuyCarList> li=new ArrayList<BuyCarList>();
			long BuyCarNumber=0;
			
			ActionInit();
			 accountvo=(AccountVO)HSR.getSession().getAttribute("AccountInfo");
			 String result="null";	
			if(accountvo!=null){
				System.out.println("accountvo状态:"+(accountvo==null));
				BuyCar bc=BCS.SelectBuyCarForAccountID(accountvo.getAccountId());
				System.out.println(">>>>>>1");
				BuyCarNumber=BCLS.viewBuyCarListProductNumberByByCarID(bc.getBuyCarID());
				System.out.println(">>>>>>2");
				result="<a href=\"../viewAccountByAccountID.action?accountID="+accountvo.getAccountId()+"\">欢迎,"+accountvo.getAccountName()+"</a>";
				System.out.println(">>>>>>3");
				 HSP.getWriter().print(result);
					System.out.println("<MMMM"+accountvo.getAccountName()+accountvo.getAccountId());
					HSR.getSession().setAttribute("BuyCarNumber", BuyCarNumber);
					System.out.println(">>>>>>4");
					HSR.getSession().setAttribute("AccountInfo", accountvo);
					System.out.println("成功:"+accountvo.toString()+"BuyCarNumber:"+BuyCarNumber);
			}else{
				System.out.println("会话为空!");
				
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
	
		
	
		
	}public String viewAccountByAccountID(){
		String accountIDStr=HSR.getParameter("accountID");
		if(accountIDStr!=null){
			
			uvo=as.findForAccountID(Integer.parseInt(accountIDStr));
			HSR.getSession().setAttribute("AccountInfo", uvo);
		}
		
		return "OK";
	}public String  viewProductOderByAccounID(){
		try {
			AccountVO accountVO=(AccountVO)HSR.getSession().getAttribute("AccountInfo");
			List<ProductOder> productList=new ArrayList<ProductOder>();
			if(accountVO!=null){
				productList=POS.viewProductOderByAccountID(accountVO.getAccountId());
				for (int i = 0; i < productList.size(); i++) {
					System.out.println(productList.get(i).toString());
				}
				
			}
			HSR.getSession().setAttribute("ProductOderlistByAccountID", productList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "OK";
	}
	
	public String viewProductCollectListInfoByAccountID(){
	System.out.println("帐户收藏检测");
	try {
		ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
		acccountCollectService = (AccountCollectService) act.getBean("accountCollectServicBean");
		AccountVO accountID=(AccountVO)ServletActionContext.getRequest().getSession().getAttribute("AccountInfo");
		
		if(accountID!=null){
			
			System.out.println("帐户信息是否为空："+"帐户属性为："+accountID);
			
		String HQL="from AccountCollect where product.productID IS NOT NULL and accountVO.accountId="+accountID.getAccountId();
		System.out.println("HQL属性为："+HQL);
		List<AccountCollect> accountcollect=acccountCollectService.ViewAccountCollectListForParameterID(HQL);
			for(int j=0;j<accountcollect.size();j++){
				System.out.println(accountcollect.get(j).toString());
			}
		
		if(accountcollect!=null){
			HSR.getSession().setAttribute("AccountCollectStatus", accountcollect);
		}else{
			HSR.getSession().setAttribute("AccountCollectStatus", null);
		}
		
		}
	} catch (BeansException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return "OK";	
	
	/*帐户收藏结束*/
	}public String saveAddressList(){
		try {
			ActionInit();
			String placeOfOwnership=HSR.getParameter("placeOfOwnership");
			AccountVO account =(AccountVO)HSR.getSession().getAttribute("AccountInfo");
			int maxAddressListID=addressListService.selectMaxAddressListID();
			addressList.setAddressListID(++maxAddressListID);
			if(placeOfOwnership!=null){
				addressList.setAddress(placeOfOwnership+addressList.getAddress());
				
			}if(account!=null){
				
				addressList.setTakeDeliveryPersion(account);
			}
			String[] defaultValue=HSR.getParameterValues("addressList.defaultValue");
			
			if(defaultValue[0]!=null){
				addressList.setDefaultValue("defaultValueOn");
			}else{
				
				addressList.setDefaultValue("defaultValueNo");
			}
			System.out.println(addressList);
			addressListService.saveAddressList(addressList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "OK";
	}
	public String viewAddressListByAccountID(){
		ActionInit();
		try {
			AccountVO account =(AccountVO)HSR.getSession().getAttribute("AccountInfo");
			List<AddressList> addressListData=new ArrayList<AddressList>();
			if(account!=null){
			addressListData=addressListService.viewAddressListByAccountID(account.getAccountId());
			 
			
			for(int j=0;j<addressListData.size();j++){
				
				if("defaultValueOn".equals(addressListData.get(j).getDefaultValue())){
					System.out.println(addressListData.get(j));
					addressList=addressListData.get(j);
				}
				
			}
			}

			HSR.getSession().setAttribute("addressListdefaultValue",addressList);
			HSR.getSession().setAttribute("addressList", addressListData);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "OK";
	}
	
	public void  sendObtainCode(){
		String obtainAddress=HSR.getParameter("obtainAddress");
		String requestPage=HSR.getParameter("requestPage");
		int validateCode=new  NumberSupport().Random(1000000);
		Sendmail sendmail=new Sendmail() ;
		aliSmsManagerProject sms=new  aliSmsManagerProject();
		if("MobilePhoneBind.jsp".equals(requestPage)){
			sms.sendRegisterSms(validateCode, obtainAddress);
			HSR.getSession().setAttribute("validateCode", validateCode);
			HSR.getSession().setAttribute("requestPage", requestPage);
			HSR.getSession().setAttribute("obtainAddress", obtainAddress);
			}else{
				sendmail.sendEmail(validateCode,obtainAddress);
				System.out.println("邮件发送成功,"+"验证码:"+validateCode);
				HSR.getSession().setAttribute("validateCode", validateCode);
				HSR.getSession().setAttribute("requestPage", requestPage);
				HSR.getSession().setAttribute("obtainAddress", obtainAddress);
			}
	}public String obtainMobliePhoneNumberByAccount(){
		ActionInit();
		System.out.println("test");
		String accountvalidateCode=HSR.getParameter("obtainCode");
		Object validateCode=HSR.getSession().getAttribute("validateCode");
		System.out.println(validateCode.toString());
		String validate="error";
		if(validateCode.toString().equals(accountvalidateCode)){
			validate="OK";
			AccountVO account=(AccountVO)HSR.getSession().getAttribute("AccountInfo");
			String obtainAddress=(String)HSR.getSession().getAttribute("obtainAddress");
			String requestPage=(String)HSR.getSession().getAttribute("requestPage");
			if("MobilePhoneBind.jsp".equals(requestPage)){
				account.setTelphoneNumber(obtainAddress);
			}else{
				account.setEmail(obtainAddress);
			}
			
			accountservice.update(account);
		}
		return validate;
	}public String accountSafetySettingCheck(){
		ActionInit();
		AccountVO account=(AccountVO)HSR.getSession().getAttribute("AccountInfo");
		AccountVO accountnew=accountservice.findForAccountID(account.getAccountId());
		HSR.getSession().setAttribute("AccountInfo", accountnew);
		return "OK";
	}public String viewPayAccountByAccounID(){
		ActionInit();
		try {
			AccountVO account=(AccountVO)HSR.getSession().getAttribute("AccountInfo");
			PayAccount payAccount=payAccountService.viewPayAccountByAccountID(account.getAccountId());
			System.out.println(payAccount.toString());
			HSR.getSession().setAttribute("payAccount",payAccount);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "OK";
	}
}
