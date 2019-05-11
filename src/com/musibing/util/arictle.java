package com.musibing.util;

import static org.junit.Assert.*;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.musibing.server.AccountServer;
import com.musibing.server.ArticleService;
import com.musibing.server.ProductServer;
import com.musibing.vo.AccountVO;
import com.musibing.vo.Article;
import com.musibing.vo.Product;
import com.musibing.vo.ProductIMG;

public class arictle {
	@Resource
	Article ac;
	ArticleService as;
	Product productvo;
	ProductServer productserver;
	@Resource
	AccountServer accountservice;

	public void test1() {
		ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
		as = (ArticleService) act.getBean("ArticleServiceBean");
	ac=as.selectArticleForID(922000009);

	System.out.println(ac.getSubmitTime().toString());
	
	}
	@Test
	public void test2(){
		ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
		productserver=(ProductServer)act.getBean("productServerBean");
		System.out.println(productserver==null);										  
		int data=productserver.viewMaxSalesVolumes();
		List<Product> datali=productserver.viewMaxSalesVolumesTop();
		for(int a=0;a<datali.size();a++){
			
			System.out.println(datali.get(a).getProductName());
		}
		System.out.println("销量冠军数据："+data);
	}
	@Test
	public void test3() {
		ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
		as = (ArticleService) act.getBean("ArticleServiceBean");
		
		accountservice = (AccountServer) act.getBean("accountServerBa");
		List<AccountVO> Accountli=accountservice.ViewAllUser();
		List<Article> li=as.SelectAllArticleNoTerm();
		
		
		for(int x=0;x<li.size();x++){
			
			li.get(x).setAvo(Accountli.get(x));
			as.updateArticle(li.get(x));
		}
	}
}
