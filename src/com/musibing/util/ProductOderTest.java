package com.musibing.util;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.musibing.server.AccountServer;
import com.musibing.server.ArticleService;
import com.musibing.server.ProductOderServer;
import com.musibing.server.ProductServer;
import com.musibing.vo.AccountVO;
import com.musibing.vo.Article;
import com.musibing.vo.Product;
import com.musibing.vo.ProductOder;

public class ProductOderTest {
	@Resource
	 
	AccountVO accountvo;
	AccountServer as;
	ProductOder po;
	ProductServer ps;
	ProductOderServer productOderServer;
	public void intiControl(){
		ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
		ps=(ProductServer)act.getBean("productServerBean");
		as=(AccountServer)act.getBean("accountServerBa");
		
		productOderServer=(ProductOderServer)act.getBean("productOderServerBean");
		
		
	}
	@Test
	public void getAllProductOderInfo(){
		intiControl();
		List<ProductOder> AllProductOderForAccoun=new ArrayList<ProductOder>();
		ProductOder roductOdersimple=new ProductOder();
		
		accountvo=as.findForAccountID(602000008);
		
	AllProductOderForAccoun=productOderServer.SelectAllProductOderForAccoun(accountvo);
		System.out.println("数据大小："+AllProductOderForAccoun.size());
		System.out.println(AllProductOderForAccoun.get(0).getOderTips());
		/*roductOdersimple=productOderServer.SelectAllProductOderForAccounSimple(accountvo);
		
		System.out.println(roductOdersimple.getOderTips());*/
	}
	
	
}
