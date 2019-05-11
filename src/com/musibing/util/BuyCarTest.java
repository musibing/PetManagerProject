package com.musibing.util;

import javax.annotation.Resource;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.musibing.server.AccountServer;
import com.musibing.server.BuyCarServer;
import com.musibing.server.FreshProductSerivce;
import com.musibing.server.ProductOderListService;
import com.musibing.server.ProductOderServer;
import com.musibing.server.ProductServer;
import com.musibing.vo.AccountVO;
import com.musibing.vo.BuyCar;
import com.musibing.vo.FreshProduct;
import com.musibing.vo.Product;
import com.musibing.vo.ProductOder;
import com.musibing.vo.ProductOderList;

public class BuyCarTest {
	@Resource
	BuyCar bc;
	BuyCarServer bcs;
	AccountServer avos;
	AccountVO accountvo;

	
	
	@Test
	public void intiControl(){
		ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
		avos =(AccountServer)act.getBean("accountServerBa");
		bcs=(BuyCarServer)act.getBean("buyCarServerBean");
	}
	@Test
	public void buycar(){
		intiControl();
		bc=bcs.SelectBuyCarForAccountID(602000005);
		
		/*bc=avos.ViewAccountForBuyCarID();*/
		try {
			/*accountvo=avos.findForAccountID(602000002);*/
			/*bc=bcs.ViewAllBuyCar();*/
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(bc.toString());
	}

}
