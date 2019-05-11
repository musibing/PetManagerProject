package com.musibing.action;

import java.util.List;

import javax.annotation.Resource;
import javax.annotation.Resources;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Scope;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;

import com.musibing.server.ProductOderListService;
import com.opensymphony.xwork2.ActionSupport;
@Controller
@Scope("prototype")
public class TestAction  extends ActionSupport{
@Resource(name="productOderListServiceBean")
private ProductOderListService polsq;
public String SelectALlTestAction(){
	
	try {
		ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
		polsq=(ProductOderListService)act.getBean("productOderListServiceBean");
		
		System.out.println("服务对象为空TEST："+(polsq=null));
		List<Object[]> qu=polsq.SelectAllProductOderOderByProductID();
		for(Object[] objs : qu){
		        System.out.println("需要的商品的最大总数:"+objs[0]);
		      System.out.println("商品ID:"+objs[1]);
		      
		    }
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		
	
	
	return "OK";
}

}
