package com.musibing.util;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
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

public class QueryTest {
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
	public List<Object[]> SelectALlPurchaseInfo(){
		List<Object[]> qu=new ArrayList<Object[]>();
		try {
			intiControl();
		System.out.println("pols对象是否为空："+(pols==null));
		qu=pols.SelectAllProductOderOderByProductID();
		for(Object[] objs : qu){
	            System.out.println("需要的商品的最大总数:"+objs[0]);
	          System.out.println("商品ID:"+objs[1]);
	          
	        }
			
				
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return qu;
	}

}
