package com.musibing.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.musibing.server.ProductIMGServer;
import com.musibing.server.ProductServer;
import com.musibing.vo.Product;
import com.musibing.vo.ProductIMG;

/*
 * 该类用于临时处理产品图片数据错误
 *需要完成的功能;
 *1.产品图片文件名字中没有产品的ID;
 *2.产品图片数据库的表中有些文件中间有间隔;
 *3.产品图片数据库的表中的文件名与路径没有产品的ID;
 * 解决思路
 * 1.先通过产品的ID查询所有产品的图片
 * 2.记录产品ID与文件中的ID的对应关系
 * 3.将本地图片的总数与数据库对应进行对比
 * 4.数据库中少加的记录要加上
 * */
public class TempProductIMGChanage {/*用于临时修改产品图片数据错误信息*/
	@Resource
	 Product productvo;
	 ProductIMG productdimg;
	 ProductServer productserver;
	 ProductIMGServer productIMGserver;/*注解自动注入失败*/
	public Product getProductvo() {
		return productvo;
	}
	public void setProductvo(Product productvo) {
		this.productvo = productvo;
	}
	public ProductIMG getProductdimg() {
		return productdimg;
	}
	public void setProductdimg(ProductIMG productdimg) {
		this.productdimg = productdimg;
	}
	public  void ActionInit(){
		ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
		productIMGserver=(ProductIMGServer)act.getBean("productimgServerBean");	
		productserver=(ProductServer)act.getBean("productServerBean");

		
	}
	
	
	public void tempDat(){
		ActionInit();/*程序初始化*/
		int productID=800000000;/*产品ID*/
				
		String OldproductID="";/*旧ID：用于记录数据库中的旧文件的ID,方便修改文件时使用*/
		String NewDBFilePaht="";/*新的数据库图片文件存储路径*/
		String ImgType="";/*图片类型：用于分便是大图片还是小图片*/
		int total=0;/*计数器：用于分便小图片结束是结果是多少(由于大小图片存储在一张表中,所以要知道小图片有多少张)*/
		
		for(int x=23;x<=25;x++){
			File Oldfile;
			File newfile;
			OldproductID="";
			
				productvo=productserver.slectProductOfID(productID+x);
				List<ProductIMG> listpimg=productIMGserver.SelecProductImgDatForID(productvo);
				for(int y=0;y<listpimg.size();y++){
				int j=0;
				String temp="";
				
				try {
					OutputStream fis=new FileOutputStream(new File("I:/temp/product.txt"));
					
					for(int a=0;a<listpimg.size();a++){
						OldproductID="";
						
					 j=0;
					 temp="";
					 
					if(listpimg.get(a).getFileName().indexOf("Small")!=-1){
						j=listpimg.get(a).getFileName().indexOf("Small");
						OldproductID=listpimg.get(a).getFileName().substring(0,j);
						
						ImgType="Small";
						 Oldfile=new File("I:/Java_Resoure/PetManagerProject/WebContent/img/ShopMall/ProductIMG/Small/Error/"+OldproductID+ImgType+a+".jpg");
						 newfile=new File("I:/Java_Resoure/PetManagerProject/WebContent/img/ShopMall/ProductIMG/Small/Error/"+productID+x+ImgType+a+".jpg");
						NewDBFilePaht="../img/ShopMall/ProductIMG/Small/"+productID+x+ImgType+a+".jpg";
						if(listpimg.get(a).getFileName().indexOf("Small")!=-1){/*创建产品ID与图像文件名的对应关系文件*/
							
							
							
							System.out.println("Small图片旧文件路径是："+ Oldfile.getPath());
							Oldfile.renameTo(newfile);
							System.out.println("Small图片新文件路径是："+ Oldfile.getPath());
							OldproductID+=":"+productID+";";
							listpimg.get(a).setFilePath(NewDBFilePaht);
							
								fis.write(OldproductID.getBytes(), 0, OldproductID.getBytes().length);
								fis.flush();
							j=listpimg.get(a).getFileName().indexOf("Small");
						temp=listpimg.get(a).getFileName().substring(j);
						listpimg.get(a).setFileName(productID+x+temp);
						
						
						}
					
					
					
				}else{
					/*int listpimg.size();
					ImgType="Content";
					j=listpimg.get(a).getFileName().indexOf(ImgType);
					
					OldproductID=listpimg.get(a).getFileName().substring(0,j);*/
					
					 Oldfile=new File("I:/Java_Resoure/PetManagerProject/WebContent/img/ShopMall/ProductIMG/Small/Error/"+OldproductID+ImgType+a+".jpg");
					 newfile=new File("I:/Java_Resoure/PetManagerProject/WebContent/img/ShopMall/ProductIMG/Small/Error/"+productID+x+ImgType+a+".jpg");
					 NewDBFilePaht="../img/ShopMall/ProductIMG/Small/"+productID+x+ImgType+a+".jpg";
					 System.out.println("Content图片旧文件路径是："+ Oldfile.getPath());
					 Oldfile.renameTo(newfile);
					 System.out.println("Content图片新文件路径是："+ Oldfile.getPath());
			
				
				listpimg.get(a).setFilePath(NewDBFilePaht);
				
				listpimg.get(a).setFileName(productID+x+ImgType+(total++)+".jpg");
				
			
			}
					productIMGserver.updateProductImgData(listpimg.get(a));
					
					
			
				
			}
			
				} catch (Exception e) {
					e.printStackTrace();
				}
		}
				productID=800000000;
		}
		
		
		
	}
	

}
