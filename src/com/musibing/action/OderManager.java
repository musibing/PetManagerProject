package com.musibing.action;


import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Scope;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;

import com.musibing.server.AccountServer;
import com.musibing.server.BuyCarListServer;
import com.musibing.server.BuyCarServer;
import com.musibing.server.FreshProductSerivce;
import com.musibing.server.ProductOderListService;
import com.musibing.server.ProductOderServer;
import com.musibing.server.ProductServer;
import com.musibing.util.QueryTest;
import com.musibing.vo.AccountVO;
import com.musibing.vo.BuyCar;
import com.musibing.vo.BuyCarList;
import com.musibing.vo.FreshProduct;
import com.musibing.vo.ProductOder;
import com.musibing.vo.ProductOderList;
import com.opensymphony.xwork2.ActionSupport;
@Controller
@Scope("prototype")
public class OderManager extends ActionSupport{
	
	@Resource
	BuyCar bC;
	ProductOderListService polsq;
	ProductOderServer productOderServer;
	AccountVO accountvo;
	FreshProduct fp;
	@Resource
	ProductOder po;
	@Resource
	AccountServer as;
	FreshProductSerivce fps;
	BuyCarServer BCS;
	@Resource
	ProductOderList prl;
	ProductServer ps;
	BuyCarList bcl;
	BuyCarListServer bcls;
	
	HttpServletRequest HSR = ServletActionContext.getRequest();
	HttpServletResponse HSP = ServletActionContext.getResponse();
	HttpSession HSession = HSR.getSession();
	
	public ProductOder getPoder() {
		System.out.println("得到方法调用！"+po);
		return po;
	}
	public void setPoder(ProductOder poder) {
		System.out.println("设置方法调用！"+poder);
		this.po = poder;
	}
	public void ActionInit(){
		try {
			ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
			productOderServer=(ProductOderServer)act.getBean("productOderServerBean");
			ps=(ProductServer)act.getBean("productServerBean");
			fps=(FreshProductSerivce)act.getBean("FreshProductSerivceBean");
			polsq=(ProductOderListService)act.getBean("productOderListServiceBean");
			as=(AccountServer)act.getBean("accountServerBa");
			bcls=(BuyCarListServer)act.getBean("buyCarListServerBean");
			BCS=(BuyCarServer)act.getBean("buyCarServerBean");
			HSR.setCharacterEncoding("UTF-8");
			
			HSP.setContentType("text/html;charset=UTF-8");
		} catch (Exception e) {
			
			e.printStackTrace();
		} 
		
		
	}
	public String  SaveOderInfo()throws Exception {
		
	
		try {
			ActionInit();
			AccountVO avo=(AccountVO)HSR.getSession().getAttribute("AccountInfo");/*从会话中读取账户信息*/
			String BuyCarListIDStr=HSR.getParameter("BuyCarListID");
			bC=BCS.SelectBuyCarForAccountID(avo.getAccountId());
			
			int BuyCarListID=0;
			
			if(bC!=null){
				BuyCarListID=bC.getBuyCarID();
			}
			int MaxProductOderID=productOderServer.SelectMaxProductOderID();
			System.out.println("得到的购物车列表ID是："+BuyCarListID);
			po.setProductOderID(++MaxProductOderID);
			po.setOderAddress(avo.getAddress());
			po.setProductOderSataus("未支付");
			po.setAccountId(avo);
			 
			
			bcl =bcls.SelectBuyCarListForID(BuyCarListID);
			
		/*	int MAXProductOderListID=polsq.SelectMAXProductOderListID();
			System.out.println("得到的最大订单列表参数是："+MAXProductOderListID);
			prl.setProductOderListID(++MAXProductOderListID);
			prl.setDealPrice(bcl.getDealPrice());
			prl.setNumber(bcl.getBuyNumber());
			prl.setProductOderStatus("订单已经创建");
			prl.setProductID(bcl.getProduct());
			System.out.println("属性检查!"+prl.toString());
			polsq.SaveProductOderList(prl);*/
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "OK";
	}
	public String SelectAllProductOder(){
	try {
		List<ProductOder> li=productOderServer.SelectAllProductOder();
		
		for(int x=0;x<li.size();x++){
			System.out.println(li.get(x).getAccountId().getAccountName());
			
		}
		
		HSession.setAttribute("AllProductOder", li);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
		
		return "OK";
	}
	public String SelectAllProductOderOderByProductID(){
		List<ProductOder> li=productOderServer.SelectAllProductOder();
		
		for(int x=0;x<li.size();x++){
			System.out.println(li.get(x).getAccountId().getAccountName());
			
		}
		HSession.setAttribute("AllProductOder", li);
			
			return "OK";
		}
	public String SelectALlPurchaseInfo(){
		
		try {
			ActionInit();
			QueryTest qu=new QueryTest();
			List<Object[]> qulist=qu.SelectALlPurchaseInfo();
			/*List<Object[]> qu=polsq.SelectAllProductOderOderByProductID();*/
			
			
				for(Object[] objs : qulist){
			        System.out.println("需要的商品的最大总数:"+objs[0]);
			      System.out.println("商品ID:"+objs[1]);
			      
			      
			    }
				
				HSession.setAttribute("AllProductPurchaseOder", qulist);	
				
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		
		
		return "OK";
	}
	
	
}
