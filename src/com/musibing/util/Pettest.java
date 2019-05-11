package com.musibing.util;

import java.util.HashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;

import com.musibing.server.AccountServer;
import com.musibing.server.BuyCarListServer;
import com.musibing.server.BuyCarServer;
import com.musibing.server.PetIMGServer;
import com.musibing.server.PetServer;
import com.musibing.server.PetTypeServer;
import com.musibing.server.ProductIMGServer;
import com.musibing.server.ProductServer;
import com.musibing.vo.AccountVO;
import com.musibing.vo.BuyCar;
import com.musibing.vo.BuyCarList;
import com.musibing.vo.PetDataVOClass;
import com.musibing.vo.PetIMG;
import com.musibing.vo.PetType;
import com.musibing.vo.Product;
import com.musibing.vo.ProductIMG;
import com.opensymphony.xwork2.ActionContext;

@Component
public class Pettest {
	@Resource
	
	ProductServer ps;
	Product pd;
	BuyCarList bCL;
	BuyCar bC;
	private static AccountServer User;
	private static ProductIMGServer pis;
	private static  PetServer Ps;
	private static ProductServer pds;
	private static BuyCarServer BCS;
	private static BuyCarListServer bcls;
	private static PetIMGServer petimgs;
	
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


	@BeforeClass
	public static void setUpBeforeClass() {
		try {
			ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
			/*Ps=(PetTypeServer)act.getBean("petTypeServerBa");*/
			
			/*Ps=(PetServer)act.getBean("petServerBa");
			User = (AccountServer) act.getBean("accountServerBa");
			pds=(ProductServer)act.getBean("productServerBean");
			BCS=(BuyCarServer)act.getBean("buyCarServerBean");
			bcls=(BuyCarListServer)act.getBean("buyCarListServerBean");*/
			
		} catch (BeansException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@Test
	public  void save() {
		PetIMG pi=new PetIMG();
		pi.setpIMGID(80001);
		petimgs.savePetIMG(pi);
	try {
	/*	pd=new Product();
		BuyCar bc=BCS.SelectBuyCarForID(80001);
		System.out.println("得到结果是："+bc);
	AccountVO AVO=User.findOrUser(9881);
	bCL=bcls.SelectBuyCarListForID(6001);
		BuyCar bc=BCS.SelectBuyCarForID(80001);
		System.out.println(bc.getBuyCarID());*/
		/*System.out.println(bCL.getBuyCarListID()+bCL.getBuyNumber()+bCL.getBuyCarID()+bCL.getProduct());*/
		/*System.out.println(bCL.getBuyCarID().getBuyCarID());*/
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		/*pd.setBrandName("法国");
		pd.setManufacturerGuidancePrice(98.0);
		pd.setSalesVolumes(10000);
		pd.setProductName("狗粮");
		pd.setRetailPrice(111.9);
		
		pd.setApplicableObject("小狗");*/
		
		/*ProductIMG pg1=new ProductIMG();
		
		pg1.setProduct(pd);
		pg1.setFileName("NHK");
		pg1.setFilePath("I:\\data");
		pis.SaveIMGData(pg1);*/
	/*	ProductIMG pg2=new ProductIMG();
		pg2.setpIMGID(8001);
		pg2.setProduct(pd);
		pg2.setFileName("NsHK");
		pg2.setFilePath("I:\\dadta");*/
		/*pis.SaveIMGData(pg2);*/
		
		
		/*pds.slectProductOfID(100244);*/
		
		
		/*Ps.save(SPV.SaveData(baseicinfoNameJOSNArray));*/
	/*PetDataVOClass PDVO=new PetDataVOClass();
		PDVO.setPetID(80001);
		PDVO.setPetcnName("哈士奇");
		System.out.println(PDVO);
		
		Ps.save(PDVO);*/
		/*PetType pt=new PetType();
		pt.setPetIMGSrc("D\\Hai.jps");
		pt.setPetyName("haishiqi");
		pt.setPetTypeID(100);
		Ps.save(pt);
		System.out.println(">>>");*/
	/*	List<PetTypeServer> li=Ps.ViewAllPetTypeForPage();
		for(int i=0;i<li.size();i++){
			System.out.println("得到属性是："+li.get(i));
		}*/
	/*	Set<PetDataVOClass> PetSet=new HashSet<>();
		PetSet.add(new PetDataVOClass(""));*/
	/*	AccountVO av=new AccountVO("陈东", "top",
				"cd", "smail", "tsd", "gas");
		
	User.save(av);*/
	}

/*	@Test 
	public void update() {
		PetVO PVS=Pser.finPet("吉姊姊");
		PVS.setPetClass("贵宾");
		PetDataVOClass PVS=Ps.finPet(0);
		PVS.setPetName("金毛");
		Ps.update(PVS);
	}*/

	/*@Test
	public void delect() {
		Pser.deletePet("吉姊姊");
	}*/
/*
	@Test
	public void find() {
		PetVO PV=Pser.finPet("吉姊姊");
		System.out.println("得到的类别是："+PV.getPetClass());
	}
	@Test
	public void viewPet(){
		List<PetVO> li=Pser.ViewPet();
		for (PetVO petVO : li) {
			System.out.println(petVO.getPetName());
		}
		
	}
	*/
	@Test
	public void Random(){
		
		int rand = new Random().nextInt(1000000);
		String yanZhengMa = Integer.toString(rand);
		System.out.println(yanZhengMa);
	}

}
