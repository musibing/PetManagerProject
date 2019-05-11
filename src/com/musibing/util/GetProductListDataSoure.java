package com.musibing.util;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class GetProductListDataSoure {
	public List<String>  getProductList(){
		List<String>  result=new ArrayList<String>();
		try{
			String Strdata="";
		File f1=new File("H:\\java\\PetManagerProject\\WebContent\\BoqiiTest.html");
		InputStream  is=new FileInputStream(f1);
		InputStreamReader isr = new InputStreamReader(is,"UTF-8");
		BufferedReader Bf = new BufferedReader(isr);

		FileWriter Fw = new FileWriter("D:\\DL.Jsp");
		BufferedWriter output = new BufferedWriter(Fw);
		String newLin = "";

		byte[] data = new byte[8000];

		while ((newLin = Bf.readLine()) != null) {

			Strdata += newLin + "\n";
		

		}
		
		/*output.write(Strdata);*/
		String star="small_imgs";
		String product="product_name";
		String SmallImgregEx = "<img\\sname=\""+star+"\""+"\\s\\S+\\sdata-original=\""+"\\S+\\?"; 
		String ProdutctList="<p\\sclass=\""+product+"\""+">\\s+<a\\shref=\""+"\\S+";
		System.out.println(ProdutctList);
		Pattern pat=Pattern.compile(ProdutctList);
		Matcher mat = pat.matcher(Strdata);  
		boolean rs = mat.find();  
		
		while(mat.find()){
			
	
				result.add(mat.group(0).substring(86,mat.group().length()-1));
			
		}
		
	}catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		return result;
	}
	public static void main(String[] args) {
		GetProductListDataSoure GPLD=new GetProductListDataSoure();
		List<String> ProductList=GPLD.getProductList();
		for(int i=0;i<ProductList.size();i++){
			System.out.println(ProductList.get(i));
		}
		
	}
}

	

