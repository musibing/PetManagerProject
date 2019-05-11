package com.musibing.util;

import static org.junit.Assert.*;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.musibing.server.AccountCollectService;
import com.musibing.server.ArticleService;
import com.musibing.server.ProductServer;
import com.musibing.vo.AccountCollect;
import com.musibing.vo.Article;
import com.musibing.vo.Product;

public class AccountCollectTest {
	@Resource
	AccountCollect acccountCollect;
	AccountCollectService acccountCollectService;
	Article ac;
	ArticleService as;
	Product productvo;
	ProductServer productserver;
	@Resource
	@Test
	public void test1() {
		ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
		acccountCollectService = (AccountCollectService) act.getBean("accountCollectServicBean");
		List<AccountCollect> li=acccountCollectService.ViewAllAccountCollect();
for(int x=0;x<li.size();x++){
	System.out.println(li.get(x));
	
}
	
	
	}
}
