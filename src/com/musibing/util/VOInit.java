package com.musibing.util;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.junit.Test;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.musibing.vo.AddressList;
import com.musibing.vo.NotificationInterface;
import com.musibing.vo.PayAccount;

public class VOInit {
	@Test
	public void main() {
		NotificationInterface notificationInterface=new NotificationInterface();
		servicInit(notificationInterface);
		
	}public void servicInit(Object bean){
		String simpleClassName =bean.getClass().getSimpleName();
		String className=bean.getClass().getName();
		File serviceInterfaceFile=new File("l:\\Java_Resoure\\PetManagerProject\\src\\com\\musibing\\server\\"+simpleClassName+"Service"+".java");
		Boolean bool=false;
		
		if(!serviceInterfaceFile.exists()){
			serviceInterfaceFile.getParentFile().mkdirs();
			bool=true;
		}
		try {
			serviceInterfaceFile.createNewFile();
			

			FileWriter fwx=new FileWriter(serviceInterfaceFile,true);
			BufferedWriter bfx=new BufferedWriter(fwx);
			String HibernateString="";
			
			
			TempStringData TSD=new TempStringData();
			bfx.write("package com.musibing.server;\n"+
					"import java.util.List;\n"+
					"import "+bean.getClass().getName()+";\n"+
					"public interface "+simpleClassName+"Service {\n"+
					"public void  save"+simpleClassName+"("+simpleClassName+" "+ simpleClassName+");\n"+
					"public List<"+simpleClassName+"> viewAll"+simpleClassName+"();\n"+
					"public int selectMax"+simpleClassName+"ID();\n"+
					"public void update"+simpleClassName+"("+simpleClassName+" "+ simpleClassName+");\n"+
					"public List<"+simpleClassName+"> view"+simpleClassName+"ByAccountID(int accountID);\n"+
					"}"
					);
			System.out.println("实体类映射文件操作完成1");		
			bfx.flush();
			bfx.close();
			fwx.close();
			System.out.println("实体类映射文件操作完成2");
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		File serviceBeanFile=new File("l:\\Java_Resoure\\PetManagerProject\\src\\com\\musibing\\Bean\\"+simpleClassName+"ServiceBean"+".java");
		 bool=false;
		
		if(!serviceBeanFile.exists()){
			serviceBeanFile.getParentFile().mkdirs();
			bool=true;
		}
		try {
			serviceBeanFile.createNewFile();
			FileWriter fbeanwx=new FileWriter(serviceBeanFile,true);
			BufferedWriter bbeanfx=new BufferedWriter(fbeanwx);
			bbeanfx.write("package com.musibing.Bean;\n"+
					"import java.util.List;\n"+
					"import javax.annotation.Resource;\n"+
					"import org.hibernate.SessionFactory;\n"+
					"import org.springframework.stereotype.Service;\n"+
					"import org.springframework.transaction.annotation.Transactional;\n"+
					"import com.musibing.server."+simpleClassName+"Service;\n"+
					"import "+bean.getClass().getName()+";\n"+
					"@Service(\""+simpleClassName+"\")\n"+
					"@Transactional\n"+
					"public class "+simpleClassName+"ServiceBean  implements "+simpleClassName+"Service"+"{\n"+
					"@Resource\n"+
					"SessionFactory factory;\n"+
					"@Resource\n"+
					""+simpleClassName+" "+simpleClassName+";\n"+
					
					"@Transactional\n"+
					"public void  save"+simpleClassName+"("+simpleClassName+" "+ simpleClassName+"){\n"
							+ "factory.getCurrentSession().save("+simpleClassName+");}\n"+
					"public List<"+simpleClassName+"> viewAll"+simpleClassName+"(){\n"
							+ "return (List<"+simpleClassName+">) factory.getCurrentSession().createQuery(\"from "+simpleClassName+"\").list();\n"
							+ "}\n"+
					"public int selectMax"+simpleClassName+"ID(){\n"
							+ "return (int)factory.getCurrentSession().createQuery(\"select max("+simpleClassName+"ID) from "+simpleClassName+"\").uniqueResult();\n"
							+ "}\n"+
					"@Transactional\n"+
					"public void update"+simpleClassName+"("+simpleClassName+" "+ simpleClassName+"){\n"
							+ "factory.getCurrentSession().update("+simpleClassName+");\n"
							+ "};\n"+
					"public List<"+simpleClassName+"> view"+simpleClassName+"ByAccountID(int accountID){\n"
							+ ""
							+ "return (List<"+simpleClassName+">) factory.getCurrentSession().createQuery(\"from "+simpleClassName+" where accountVO.accountId=?\").setInteger(0, accountID).list();}\n"+
					"}\n"
					);
			System.out.println("实体类映射文件操作完成1");		
			bbeanfx.flush();
			bbeanfx.close();
			fbeanwx.close();
			System.out.println("实体类映射文件操作完成2");
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}public void createHiberNateMappingFile(Object bean){
		
		String SimpleClassName =bean.getClass().getSimpleName();
		File serviceInterfaceFile=new File("l:\\Java_Resoure\\PetManagerProject\\src\\com\\musibing\\server\\"+SimpleClassName+"Service"+".java");
		Boolean bool=false;
		
		if(!serviceInterfaceFile.exists()){
			serviceInterfaceFile.getParentFile().mkdirs();
			bool=true;
		}
		try {
			serviceInterfaceFile.createNewFile();
			

			FileWriter fwx=new FileWriter(serviceInterfaceFile,true);
			BufferedWriter bfx=new BufferedWriter(fwx);
			String HibernateString="";
			
			
			TempStringData TSD=new TempStringData();
			bfx.write("<?xml version=\"1.0\"?>\n"
					+ "<!DOCTYPE hibernate-mapping PUBLIC \"-//Hibernate/Hibernate Mapping DTD 3.0//EN\"\n"
					+ "\"http://hibernate.sourceforge.net/hibernate-mapping-3.0.dtd\">\n"
					+ "<!-- Generated 2018-3-17 21:46:37 by Hibernate Tools 3.4.0.CR1 -->\n"
					+ "<hibernate-mapping>\n"
					+ "<class name=\"com.musibing.vo."+SimpleClassName+" table=\""+SimpleClassName+"\">\n"
					+ "<id name=\"payAccount\" type=\"int\">\n"
		            + "<column name=\"PAYACCOUNT\" />\n"
		            + "<generator class=\"assigned\" />\n"
					+ "</id>\n"
					+ HibernateString
					+ "</class>\n"
					+ "</hibernate-mapping>"
					);
			System.out.println("实体类映射文件操作完成1");		
			bfx.flush();
			bfx.close();
			fwx.close();
			System.out.println("实体类映射文件操作完成2");
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
