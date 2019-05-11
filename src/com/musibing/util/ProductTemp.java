package com.musibing.util;

import static org.junit.Assert.*;

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
import com.musibing.vo.Product;
import com.musibing.vo.ProductOder;
import com.musibing.vo.ProductOderList;

public class ProductTemp {
	@Resource
	Product pt;
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
	public void chengeAttribute(){
		try {
			intiControl();
			List<Product> li=ps.viewAllProductInfo();
			
			for(int a=0;a<li.size();a++){
				pt=li.get(a);
				pt.setTagVelTOP("狗狗专区");
				
				ps.updateProductData(pt);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
}
