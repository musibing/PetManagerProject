package com.musibing.util;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class DelectProductIMGFile {
public static void main(String[] args) {
	
	String[] productID={"80161621","801147106","801358914","801540905","801886166","8012286","80138102","801343597","801205537","801662559","801914457"};
	File Oldfile=new File("I:/Java_Resoure/PetManagerProject/WebContent/img/ShopMall/ProductIMG/");
	 try {
		if(Oldfile.isDirectory()){
			 
			
			for(int a=0;a<productID.length;a++){
				
				File[] list=Oldfile.listFiles();
				 for(int i=0;i<list.length;i++){
					
					 if(list[i].getName().indexOf(productID[a])!=-1){
						boolean status= list[i].delete();
						 System.out.println("文件名："+list[i].getName()+"删除校验："+status);
						 
					 }
					 
					 
				 }
			}
			
			
			 
		 }
	} catch (Exception e) {
		
		e.printStackTrace();
	}
}
}
