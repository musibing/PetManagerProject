package com.musibing.util;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.util.List;

public class CreatVOClass {

	
	public void CreatVOClassFile(List<String> templowString) {/*创建Hibernate实体类*/
		
		Boolean bool=false;
		String ClassName="";
		String resutle="";
		String UsingResulte="";
		String ThisUsingResulte="";
		String GetMethod="";
		System.out.println("创建实体类文件类调用测试");
		int MaxConentNumber=templowString.size();
		System.out.println("实体类文件得到的集合长度为："+MaxConentNumber);
		File TempClass=new File("H:\\java\\PetManagerProject\\src\\com\\musibing\\vo\\PetDataVOClass.java");
		
		TempStringData TSD=new TempStringData();
		templowString=TSD.KeyWords(templowString);
		templowString=TSD.ToLowChar(templowString);
		
	try{
			if(!TempClass.exists()){
				TempClass.getParentFile().mkdirs();
				
				bool=true;
				
				
			}
			
			TempClass.createNewFile();
			FileWriter fw=new FileWriter(TempClass,true);
			BufferedWriter Buf=new BufferedWriter(fw);
			
			for(int i=0;i<MaxConentNumber;i++){
				
				if(i==0){
					resutle+="private int petID;\n";
				}else{
					resutle+="private String "+templowString.get(i)+";\n";
				}
				}
			for(int j=0;j<MaxConentNumber;j++){
				
				if(j==0){
					UsingResulte+="int petID,";
					
				}else if(j==(MaxConentNumber-1)){
					UsingResulte+="String "+templowString.get(j);
				}else{
					UsingResulte+="String "+templowString.get(j)+",";
				}
				
			}
			
			for(int j=0;j<MaxConentNumber;j++){
				if(j==0){
					ThisUsingResulte+="this.petID=petID;\n";
				}else{
					ThisUsingResulte+="this."+templowString.get(j)+"="+templowString.get(j)+";\n";
				}
				
			}
			for(int j=0;j<MaxConentNumber;j++){
				if(j==0){
					GetMethod+="public int "+"getPetID(){\n"
							+ "return petID;\n"
							+ "}\n"
							+ ""
							+ "public void "+"setPetID(int petID){\n"
							+ "this.petID=petID;\n"
							+ "}\n"
							+ "";
				}else{
					
			
	
				List<String> TempUPString=TSD.ToUPChar(templowString);
				List<String> TempLowString=TSD.ToLowChar(templowString);
				GetMethod+="public String "+"get"+TempUPString.get(j)+"(){\n"
						+ "return "+TempLowString.get(j)+";\n"
						+ "}\n"
						+ ""
						+ "public void "+"set"+TempUPString.get(j)+"(String "+TempLowString.get(j)+"){\n"
						+ "this."+TempLowString.get(j)+"="+TempLowString.get(j)+";\n"
						+ "}\n"
						+ "";
				}
			}
			System.out.println("属性创建成功");
			Buf.write("package com.musibing.vo;\n"
					+ "import java.io.Serializable;\n"
					+ "import java.util.HashSet;\n"
					+ "import java.util.Set;\n"
					+"import org.springframework.stereotype.Repository;\n"
					+"@Repository\n"
					+"public class PetDataVOClass implements Serializable {\n"
					+ resutle
					+ "public PetDataVOClass(){\n"
					+ "}\n"
					+ "public PetDataVOClass("+UsingResulte+"){\n"
					+ "super();\n"
					+ ThisUsingResulte
					+ "}\n"
					+ ""
					+ GetMethod
					+ "}");
			Buf.flush();
			
			System.out.println("操作完成");
			new CreateHibernateMapping().getCreateHibernateMapping(templowString);
		}catch(Exception e){
			
		}
	}
	
}
