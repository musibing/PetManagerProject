package com.musibing.util;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.util.List;

public class CreateHibernateMapping {

	
	public void getCreateHibernateMapping(List<String> templowString){/*创建Hibernate实体类映射文件*/
		File TempHabernateMapping=new File("H:\\java\\PetManagerProject\\src\\com\\musibing\\vo\\PetDataVOClass.hbm.xml");
		Boolean bool=false;
		System.out.println("实体类文件得到的集合长度为："+templowString.size());
		try{
			if(!TempHabernateMapping.exists()){
				TempHabernateMapping.getParentFile().mkdirs();
				bool=true;
			}
			TempHabernateMapping.createNewFile();
			
			FileWriter fwx=new FileWriter(TempHabernateMapping,true);
			BufferedWriter bfx=new BufferedWriter(fwx);
			String HibernateString="";
			
			
			TempStringData TSD=new TempStringData();
			List<String> TempUPString=TSD.ToUPChar(templowString);
			List<String> TempLowString=TSD.ToLowChar(templowString);
		for(int i=1;i<templowString.size();i++){
		
	
		
				HibernateString+="<property name=\""+(TempLowString.get(i))+"\" type=\"java.lang.String\">\n"
	            +"<column name=\""+(TempLowString.get(i).toUpperCase())+"\" />\n"
	            +"</property>\n";
	        
			}
			
			
			
			bfx.write("<?xml version=\"1.0\"?>\n"
					+ "<!DOCTYPE hibernate-mapping PUBLIC \"-//Hibernate/Hibernate Mapping DTD 3.0//EN\"\n"
					+ "\"http://hibernate.sourceforge.net/hibernate-mapping-3.0.dtd\">\n"
					+ "<!-- Generated 2018-3-17 21:46:37 by Hibernate Tools 3.4.0.CR1 -->\n"
					+ "<hibernate-mapping>\n"
					+ "<class name=\"com.musibing.vo.PetDataVOClass\" table=\"PETDATAVOCLASS\">\n"
					+ "<id name=\"petID\" type=\"int\">\n"
		            + "<column name=\"PETID\" />\n"
		            + "<generator class=\"identity\" />\n"
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
			
		}catch(Exception e){
			
		}
	}
	

}
