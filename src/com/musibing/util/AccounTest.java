package com.musibing.util;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.musibing.action.JSONTest;
import com.musibing.server.AccountCollectService;
import com.musibing.server.AccountServer;
import com.musibing.server.BuyCarListServer;
import com.musibing.server.BuyCarServer;
import com.musibing.vo.AccountCollect;
import com.musibing.vo.AccountVO;
import com.musibing.vo.BuyCar;
import com.musibing.vo.BuyCarList;

public class AccounTest {
	@Resource
	AccountServer accountservice;	
	BuyCar bc;
	BuyCarServer bcs;
	BuyCarListServer buyCarListSerive;
	BuyCarList buyCarList;
	AccountVO accountvo;

public void testIMG(){
	String basePath="I:/Java_Resoure/PetManagerProject/WebContent/img/Account/";
File baseflie=new File(basePath);
String[] file=baseflie.list();
for(int x=0;x<file.length;x++){
	String filename=basePath+(602000001+x)+".jpg";
File files=new File(basePath+file[x]);

if(!files.isDirectory()){
	files.renameTo(new File(filename));
	
}
}
}

public void intiControl(){
	ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
	
	bcs=(BuyCarServer)act.getBean("buyCarServerBean");
	buyCarListSerive=(BuyCarListServer)act.getBean("buyCarListServerBean");
}
@Test
public void index(){
	intiControl();
	try {
		long x=buyCarListSerive.viewBuyCarListProductNumberByByCarID(50000001);
		System.out.println(x);
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}


public void moidFo(){
	intiControl();
	List<AccountVO> accoutVO=accountservice.ViewAllUser();
	
	for(int  j=4;j<accoutVO.size();j++){
		int buyCarID=50000000+j;
		bcs.AddBuyCar(new BuyCar(buyCarID,accoutVO.get(j)));
		
	}
	
	
}

public void sencode(){
	
/*	smsManager sms=new  smsManager();
	sms.sendSmsValidateCode(890191, "15528296986");*/
}

public void stringToClass(){
	
	
}

}
