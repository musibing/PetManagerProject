package com.musibing.util;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.musibing.server.AccountServer;
import com.musibing.server.FreshProductSerivce;
import com.musibing.server.ProductOderListService;
import com.musibing.server.ProductOderServer;
import com.musibing.server.ProductServer;
import com.musibing.vo.AccountVO;
import com.musibing.vo.FreshProduct;
import com.musibing.vo.ProductOder;
import com.musibing.vo.ProductOderList;

public class ProductOderListTest {
	@Resource
	AccountVO accountvo;
	FreshProduct fp;
	ProductOder po;
	AccountServer as;
	FreshProductSerivce fps;
	ProductOderList prl;
	ProductServer ps;
	ProductOderListService pols;
	ProductOderServer productOderServer;
	
	@Test
	public void intiControl(){
		ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
		ps=(ProductServer)act.getBean("productServerBean");
		fps=(FreshProductSerivce)act.getBean("FreshProductSerivceBean");
		pols=(ProductOderListService)act.getBean("productOderListServiceBean");
		as=(AccountServer)act.getBean("accountServerBa");
		productOderServer=(ProductOderServer)act.getBean("productOderServerBean");
	
	}
	@Test
	public void getAllProductOderInfo(){
		intiControl();
		List<com.musibing.vo.ProductOderList> AllProductOder=new ArrayList<com.musibing.vo.ProductOderList>();
		ProductOder roductOdersimple=new ProductOder();
		
		accountvo=as.findForAccountID(602000008);
		
		AllProductOder=pols.SelectAllProductOderList();
		System.out.println("数据大小："+AllProductOder.size());
		
		for(int x=0;x<AllProductOder.size();x++){
			
			System.out.println("得到的对象属性是："+AllProductOder.get(x).toString());
		}
		/*roductOdersimple=productOderServer.SelectAllProductOderForAccounSimple(accountvo);
		
		System.out.println(roductOdersimple.getOderTips());*/
	}
	
	@Test
	public void generateProductOderList(){/*生成订单列表数据*/
		try {
			intiControl();
			NumberSupport ns=new NumberSupport();
			int FreshProductID=0;
			int FreshProductOderID=0;
			int StartID=970000000;
			
			ProductOderList pol=new ProductOderList();
			for(int x=5246;x<=100000;x++){
				int Base=ns.Random(50);
				if(Base==0){
					Base=ns.Random(50);
				}
				int Number=ns.Random(300);
				if(Number==0){
					Number=ns.Random(300);
				}
				Number*=Base;
					FreshProductID=ns.Random(90);
					if(FreshProductID==0){
						FreshProductID=ns.Random(90);
					}
					
				FreshProductID+=800000000;
				FreshProductOderID=ns.Random(23);
				if(FreshProductOderID==0){
					FreshProductOderID=ns.Random(23);
				}
				FreshProductOderID+=900000000;
				pol.setProductOderListID(StartID+x);
				
				if(x%Base==0){
					pol.setProductOderStatus("占用成功");
				}else if(x%Base==3){
					pol.setProductOderStatus("出库成功");
				}else if(x%Base==4){
					pol.setProductOderStatus("预处理");
				}else if(x%Base==1){
					pol.setProductOderStatus("拣选");
				}else if(x%Base==2){
					pol.setProductOderStatus("分拨");
				}else if(x%Base==5){
					pol.setProductOderStatus("播种");
				}else if(x%Base==6){
					pol.setProductOderStatus("拦截");
				}else if(x%Base==7){
					pol.setProductOderStatus("质检");
				}
				
				if(Number==0){
					 Base=ns.Random(50);
					 Number=ns.Random(300);
					Number*=Base;
					
				}
				pol.setDealPrice(ns.RandomDouble());
				pol.setNumber(Number);
				pol.setProductoderID(productOderServer.SelectProductOderForProductOderID(FreshProductOderID));
			/*	pol.setFreshProduct(fps.SelectFreshProductForFreshProductID(FreshProductID));*/
				
				System.out.println("得到的产品属性是"+pol);
				System.out.println("得到的随机数是："+FreshProductID);/*生成生鲜产品ID*/
				System.out.println("得到的随机数是："+FreshProductOderID);/*生成生鲜产品订单ID*/
				
				pols.SaveProductOderList(pol);
			}
			
		} catch (Exception e) {
		
			e.printStackTrace();
		}
		
		
		
		
		
	}
	
	

}
