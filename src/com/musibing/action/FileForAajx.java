package com.musibing.action;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Scope;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;

import com.musibing.server.AccountRecordsService;
import com.musibing.server.AccountServer;
import com.musibing.server.ProductOderServer;
import com.musibing.util.FileBuffer;
import com.musibing.vo.AccountVO;
import com.musibing.vo.ProductOder;
import com.opensymphony.xwork2.ActionSupport;
@Controller
@Scope("prototype")
public class FileForAajx extends ActionSupport{/*个人中心数据加载类*/
	@Resource
	AccountServer AS;
	AccountVO AVO;
	Object OB;
	ProductOderServer POS;
	
	HttpServletRequest HSR = ServletActionContext.getRequest();
	HttpServletResponse HSP = ServletActionContext.getResponse();
	HttpSession HSession = HSR.getSession();
	public void init(){
		ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
		AS=(AccountServer)act.getBean("accountServerBa");
		POS=(ProductOderServer)act.getBean("productOderServerBean");
		/*OB = act.getBean(SerivceName+"Ba");*/
		
	}
	public String  getDataSourece(){
		String data="";
		
		try {
			init();
			HSR.setCharacterEncoding("UTF-8");
			HSP.setContentType("text/html;charset=UTF-8");
			System.out.println("获取数据源");
			String StartPostion	= "<!--数据源开始-->";
			String EndPostion =   "<!--数据源结束-->";
			String BasePath="X:\\Java_Resoure\\CaiCaiLon\\WebContent\\AccountManager\\";	
			String RequestPage=HSR.getParameter("RequestPage");
			String FileURL=BasePath+RequestPage;
			
			FileBuffer fb=new FileBuffer();
			System.out.println("得到的请求页面是："+FileURL);
			/* data=fb.getTempFileData(FileURL);*/
			List<ProductOder> AccountVOProductOderlist=new ArrayList<ProductOder>();
			
			
			AVO=(AccountVO)HSession.getAttribute("AccountInfo");
				
				AccountVOProductOderlist=POS.SelectAllProductOderForAccoun(AVO);
				System.out.println("得到的数据源不为空"+(AccountVOProductOderlist==null));
				System.out.println("得到的数据源大小是"+AccountVOProductOderlist.size());
				HSession.setAttribute("AccountVOProductOderlist", AccountVOProductOderlist);
				for(int j=0;j<AccountVOProductOderlist.size();j++){
					System.out.println(AccountVOProductOderlist.get(j).getOderTips());
				
				}
			
			
			/*data=data.substring(data.indexOf(StartPostion), data.indexOf(EndPostion));*/
			
		} catch (Exception e1) {
			
			e1.printStackTrace();
		}
		
	
	try {
		
		
		
		/*HSP.getWriter().println(data);*/
		
		
		
	} catch (Exception e) {
		
		e.printStackTrace();
	}
	System.out.println("完成所有功能");
	return "OK";
	}
}
