package com.musibing.util;

import javax.annotation.Resource;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.musibing.server.AccountServer;
import com.musibing.server.BuyCarListServer;
import com.musibing.server.BuyCarServer;
import com.musibing.server.PetTypeServer;
import com.musibing.server.ProductIMGServer;
import com.musibing.server.ProductServer;
import com.musibing.vo.BuyCar;
import com.musibing.vo.BuyCarList;
import com.musibing.vo.Product;

public class layze {
	@Resource
	private static AccountServer User;
	private static ProductIMGServer pis;
	private static  PetTypeServer Ps;
	private static ProductServer pds;
	private static BuyCarServer BCS;
	private static BuyCarListServer bcls;
	private static ProductServer ps;
	private static Product pd;
	private static BuyCarList bCL;
	private static BuyCar bC;
	
	public BuyCar getbC() {
		return bC;
	}
	public void setbC(BuyCar bC) {
		this.bC = bC;
	}
	public BuyCarList getbCL() {
		return bCL;
	}
	public void setbCL(BuyCarList bCL) {
		this.bCL = bCL;
	}
	public Product getPd() {
		return pd;
	}
	public void setPd(Product pd) {
		this.pd = pd;
	}
	

	public static void main(String[] args) {
		ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
		/*Ps=(PetTypeServer)act.getBean("petTypeServerBa");*/
	User = (AccountServer) act.getBean("accountServerBa");
		pds=(ProductServer)act.getBean("productServerBean");
		BCS=(BuyCarServer)act.getBean("buyCarServerBean");
		bcls=(BuyCarListServer)act.getBean("buyCarListServerBean");
		pd=new Product();
		/*BuyCar bc=BCS.SelectBuyCarForID(80001);
		System.out.println("得到结果是："+bc);*/
	/*	AccountVO AVO=User.findOrUser(9881);*/
		bCL=bcls.SelectBuyCarListForID(6001);
		System.out.println(bCL);

	}

}
