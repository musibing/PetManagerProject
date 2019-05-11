package com.musibing.util;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.List;

public class PropertyToDatabase {
	File TempHabernateMapping = new File(
			"H:\\java\\PetManagerProject\\src\\com\\musibing\\temp\\PropertyToDatabase.txt");

	Boolean bool = false;
	public void WritetProperty(List<String> templowString) {
	

		
		System.out.println("数据库字段检测文件写入得到的集合长度为：" + templowString.size());
		try {

			if (!TempHabernateMapping.exists()) {
				TempHabernateMapping.getParentFile().mkdirs();

				bool = true;

			}

			TempHabernateMapping.createNewFile();

			FileWriter fwx = new FileWriter(TempHabernateMapping, true);
			BufferedWriter bfx = new BufferedWriter(fwx);
			
			for(int i=0;i<templowString.size();i++){
				System.out.println(templowString.get(i));
				bfx.write(templowString.get(i).trim()+"\n");
			}
			
				
				bfx.flush();
				bfx.close();
				fwx.close();
			
			
		} catch (Exception e) {

		}
		
	}public List<String> GetProperty(){
		List<String> Ls = new ArrayList<String>();
		String tempString="";
		try {

			

			FileReader fwx = new FileReader(TempHabernateMapping);
			BufferedReader bfx = new BufferedReader(fwx);
			
			while((tempString=bfx.readLine())!=null){
				System.out.println(tempString);
				Ls.add(tempString);
			}
		}catch(Exception e){
			
		}
			
		return Ls;
	}public static void main(String[] args) {
		PropertyToDatabase PTD=new PropertyToDatabase();
		
		List<String> Ls=new ArrayList<String>();
		Ls.add("Poor");
		Ls.add("dso");
		PTD.WritetProperty(Ls);
		/*List<String> Ls=PTD.GetProperty();
		for(int i=0;i<Ls.size();i++){
			System.out.println("得到的数据是:"+Ls.get(i));
		}*/
	}

}
