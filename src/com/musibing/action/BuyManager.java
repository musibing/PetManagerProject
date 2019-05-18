package com.musibing.action;

import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

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
import org.springframework.transaction.annotation.Transactional;

import com.musibing.server.AccountServer;
import com.musibing.server.BuyCarListServer;
import com.musibing.server.BuyCarServer;
import com.musibing.server.OrderSunburnImgService;
import com.musibing.server.ProductIMGServer;
import com.musibing.server.ProductOderListService;
import com.musibing.server.ProductOderServer;
import com.musibing.server.ProductServer;
import com.musibing.util.NumberSupport;
import com.musibing.vo.AccountVO;
import com.musibing.vo.BuyCar;
import com.musibing.vo.BuyCarList;
import com.musibing.vo.OrderSunburnImg;
import com.musibing.vo.Product;
import com.musibing.vo.ProductIMG;
import com.musibing.vo.ProductOder;
import com.musibing.vo.ProductOderList;
import com.opensymphony.xwork2.ActionSupport;
@Controller
@Scope("prototype")
public class BuyManager extends ActionSupport{
	private String[] ProductPoolData;
	String[] tempdata;
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
	HttpServletRequest HSR = ServletActionContext.getRequest();
	HttpServletResponse HSP = ServletActionContext.getResponse();
	HttpSession HSession = HSR.getSession();
	
	public BuyCar getBC() {
		return bC;
	}
	public void setBC(BuyCar bC) {
		this.bC = bC;
	}
	
	public String[] getProductPoolData() {
		return ProductPoolData;
	}
	public void setProductPoolData(String[] productPoolData) {
		ProductPoolData = productPoolData;
	}
	public void Init(){
		
		ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
		
		pimgsb=(ProductIMGServer)act.getBean("productimgServerBean");
		
		BCS=(BuyCarServer)act.getBean("buyCarServerBean");
	
		POS=(ProductOderServer)act.getBean("productOderServerBean");
	
		PS=(ProductServer)act.getBean("productServerBean");
		
		BCLS=(BuyCarListServer)act.getBean("buyCarListServerBean");	
		
		POLS=(ProductOderListService)act.getBean("productOderListServiceBean");
		
		try {
			HSR.setCharacterEncoding("UTF-8");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		HSP.setContentType("text/html;charset=UTF-8");
		
	}
	public String BuyProductForNowMeth(){
		
		try {
	Init();
		
			String ProductIDStr=HSR.getParameter("ProductID");/*从请求中得到商品的ID*/
			int ProductID=Integer.parseInt(ProductIDStr.trim());/*解析产品ID*/
			Product product=PS.slectProductOfID(ProductID);/*查询产品信息*/
			String buyProductNumberStr=HSR.getParameter("BuyProductNumber");
			int buyProductNumber=0;
			if(buyProductNumberStr!=null){
				buyProductNumber=Integer.parseInt(buyProductNumberStr.trim());
				
			}
			 System.out.println("购买数量："+buyProductNumberStr);
			 System.out.println("购买数量："+buyProductNumber);
			AccountVO avo=(AccountVO)HSR.getSession().getAttribute("AccountInfo");/*从会话中读取账户信息*/
			String PriceString="";
	
			
		
			
			
			bC=BCS.SelectBuyCarForAccountID(avo.getAccountId());
			
					
			
			
			
			PO.setOderAddress(avo.getAddress());
			PO.setAccountId(avo);
			PO.setSubmitTime(new Date());
			PO.setProductOderSataus("未付款");
			System.out.println("ID:"+PO.getProductOderID());
			POS.SaveProductOder(PO);
			
			
			
			
			int MAXProductOderListID=0;
			
			List<ProductOderList> list=new ArrayList<ProductOderList>();
			double TotalPrice=0;
			for (int i = 0; i <1; i++) {
				TotalPrice=(buyProductNumber*product.getRetailPrice());
				
				MAXProductOderListID =POLS.SelectMAXProductOderListID();
			
				POL.setProductOderListID(++MAXProductOderListID);
				POL.setDealPrice(product.getRetailPrice());
				POL.setNumber(buyProductNumber);
				POL.setProductID(product);
				POL.setTotalPrice(buyProductNumber*product.getRetailPrice());
				POL.setProductoderID(PO);
				POL.setProductOderStatus("订单已经创建");
				list.add(POL);
				POLS.SaveProductOderList(POL);
				System.out.println("订单数据"+POL.toString());
				
				TotalPrice+=(buyProductNumber*product.getRetailPrice());
				
				
			}		
			
			
			PO.setOderPrice(TotalPrice);
			POS.UpdateProductOder(PO);
			
			System.out.println("得到的产品ID5是："+ProductID);
			HSR.getSession().setAttribute("Product", product);
			HSR.getSession().setAttribute("ListData", list);
			HSR.getSession().setAttribute("AccountInfo", avo);
			HSR.getSession().setAttribute("OderData", PO);
		
			System.out.println("测试线1："+product);
			System.out.println("测试线2："+BCL);
		
		} catch (Exception e) {
			
			e.printStackTrace();
		} 
		String s="TestOK"; 
		
		System.out.println("请求成功");
			return s;
	}
	public String ViewBuyCarList(){
		Init();
		try {
			AccountVO accountinfo=(AccountVO)HSR.getSession().getAttribute("AccountInfo");
			
			BuyCar buycar=BCS.SelectBuyCarForAccountID(accountinfo.getAccountId());
			int buycarid=buycar.getBuyCarID();
			List<BuyCarList> buycarlist=BCLS.SelectBuyCarListForBuyCarID(buycarid);
			HSR.getSession().setAttribute("BuyCarList", buycarlist);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "OK";
	}
	public void AddProductToBuyCar(){
		
		Init();
		try {
			AccountVO accountinfo=(AccountVO)HSR.getSession().getAttribute("AccountInfo");
			BuyCar buycar=BCS.SelectBuyCarForAccountID(accountinfo.getAccountId());
			System.out.println("账户测试1");
			String ProductIDStr=HSR.getParameter("ProductID");
			String PriceStr=HSR.getParameter("Price");
			String BuyProductNumberStr=HSR.getParameter("BuyProductNumber");
			System.out.println("请求参数测试1"+ProductIDStr.trim()+PriceStr.trim().substring(1)+BuyProductNumberStr.trim());
			int ProductID=Integer.parseInt(ProductIDStr.trim());
			int BuyProductNumber=Integer.parseInt(BuyProductNumberStr.trim());
			Double Price=Double.parseDouble(PriceStr.trim().substring(1));
			System.out.println("请求参数转换测试1");
			int MaxBuyCarListID=BCLS.SelectMaxBuyCarListID();
			BCL.setBuyCarListID(++MaxBuyCarListID);
			BCL.setBuyNumber(BuyProductNumber);
			BCL.setDealPrice(Price);
			BCL.setProduct(PS.slectProductOfID(ProductID));
			BCL.setTotalPrice(Price*BuyProductNumber);
			BCL.setBuyCarID(buycar);
			System.out.println("参数设置测试1");
			BCLS.SaveBuyCarList(BCL);
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		public String SettlementOrderForPool(){/*处理订单池*/
			String s="OK"; 
			AccountVO avo=(AccountVO)HSR.getSession().getAttribute("AccountInfo");/*从会话中读取账户信息*/
			List<ProductOderList> ProductOderListData=new ArrayList<ProductOderList>();
			try {
		Init();
		
		
		bC=BCS.SelectBuyCarForAccountID(avo.getAccountId());/*相询帐户相关的购物车ID*/
		System.out.println("得到的购物车ID"+bC);
			String[] ProductOderList=getProductPoolData();/*查找选中商品列表数据*/
			System.out.println(ProductOderList.length);				 
			
			
				int MAXProductOderListID=0;
				int TotalNumber=0;
				PO.setOderAddress(avo.getAddress());
				PO.setAccountId(avo);
				PO.setSubmitTime(new Date());
				PO.setProductOderSataus("未付款");
				System.out.println("ID:"+PO.getProductOderID());
				POS.SaveProductOder(PO);
				
				
				
				for (int i = 0; i < ProductOderList.length; i++) {
					System.out.println("得到的所有选中订单列表："+ProductOderList[i]);
					
					MAXProductOderListID =POLS.SelectMAXProductOderListID();
					BCL=BCLS.SelectBuyCarListForID(Integer.parseInt(ProductOderList[i]));
					POL.setProductOderListID(++MAXProductOderListID);
					POL.setDealPrice(BCL.getDealPrice());
					POL.setNumber(BCL.getBuyNumber());
					POL.setProductID(BCL.getProduct());
					POL.setTotalPrice(BCL.getTotalPrice());
					POL.setProductoderID(PO);
					POL.setProductOderStatus("订单已经创建");
					POLS.SaveProductOderList(POL);
					System.out.println();
					
					TotalNumber+=(BCL.getDealPrice()*BCL.getBuyNumber());
					
					
				}		
				
				
				PO.setOderPrice(TotalNumber);
				POS.UpdateProductOder(PO);
			 
				ProductOderListData=POLS.SelectAllForProductOderID(PO.getProductOderID());
				
			} catch (Exception e) {
				
				e.printStackTrace();
			} 
			for(int j=0;j<ProductOderListData.size();j++){
				
				System.out.println("得到的数据是："+ProductOderListData.get(j));
			}
			
			HSR.getSession().setAttribute("ListData", ProductOderListData);
			HSR.getSession().setAttribute("OderData", PO);
			HSR.getSession().setAttribute("AccountInfo", avo);
			System.out.println("请求成功");
				
			
			return s;
		}
		 public String execute() throws Exception{  
	         for(int i=0;i<this.getProductPoolData().length;i++){  
	                String chkNameValue=this.getProductPoolData()[i]; 
	                System.out.println(chkNameValue);
	         }
			return null; 
	}
	
}
