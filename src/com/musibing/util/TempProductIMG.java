package com.musibing.util;

import static org.junit.Assert.*;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.musibing.server.CopyOfProductIMGServer;
import com.musibing.server.CopyOfProductServer;
import com.musibing.server.ProductIMGServer;
import com.musibing.server.ProductServer;
import com.musibing.util.file.GetIMGInfo;
import com.musibing.vo.CopyOfProduct;
import com.musibing.vo.CopyOfProductIMG;
import com.musibing.vo.Product;
import com.musibing.vo.ProductIMG;

public class TempProductIMG {
	@Resource
	Product productvo;
	CopyOfProduct productvocp;
	ProductIMG productdimg;
	CopyOfProductIMG productdimgcp;
	ProductServer productserver;
	CopyOfProductServer productservercp;
	ProductIMGServer productIMGserver;/* 注解自动注入失败 */
	CopyOfProductIMGServer productIMGservercp;

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

	public CopyOfProduct getProductvocp() {
		return productvocp;
	}

	public void setProductvocp(CopyOfProduct productvocp) {
		this.productvocp = productvocp;
	}

	public CopyOfProductIMG getProductdimgcp() {
		return productdimgcp;
	}

	public void setProductdimgcp(CopyOfProductIMG productdimgcp) {
		this.productdimgcp = productdimgcp;
	}

	public void ActionInit() {
		ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
		productIMGserver = (ProductIMGServer) act
				.getBean("productimgServerBean");
		productserver = (ProductServer) act.getBean("productServerBean");
		productIMGservercp = (CopyOfProductIMGServer) act
				.getBean("CopyOfProductIMGServerBean");
		productservercp = (CopyOfProductServer) act
				.getBean("CopyOfProductServerBean");

	}
	
	public void tempDat() {
		ActionInit();/* 程序初始化 */
		int productID = 800000000;/* 产品ID */
		String OldproductID = "";/* 旧ID：用于记录数据库中的旧文件的ID,方便修改文件时使用 */
		String NewDBFilePaht = "";/* 新的数据库图片文件存储路径 */
		String ImgType = "";/* 图片类型：用于分便是大图片还是小图片 */
		int total = 0;/* 计数器：用于分便小图片结束是结果是多少(由于大小图片存储在一张表中,所以要知道小图片有多少张) */
		int tempID=0;
		for (int x =107; x <= 143; x++) {
			File Oldfile;
			File newfile;
			productvo = productserver.slectProductOfID(productID + x);
			List<ProductIMG> listpimg = productIMGserver
					.SelecProductImgDatForID(productvo);
			int j = 0;
			String temp = "";

			try {
				OutputStream fis = new FileOutputStream(new File(
						"I:/temp/product.txt"));
				total = 0;
				for (int a = 0; a < listpimg.size(); a++) {
					j = 0;
					temp = "";

					if (listpimg.get(a).getFileName().indexOf("Small") != -1) {

						
							j = listpimg.get(a).getFileName().indexOf("Small");
							OldproductID = listpimg.get(a).getFileName()
									.substring(0, j);
							tempID=	Integer.parseInt(OldproductID);

							if ("".equals(OldproductID)) {
								System.out.println("出错找不到产品的旧ID：在第" + a
										+ "个元素！");
								break;
							}
						

						System.out.println("OldID是" + OldproductID + "产品ID是"
								+ (tempID - 20));
						ImgType = "Small";
						j = listpimg.get(a).getFileName().indexOf(ImgType);
						temp = listpimg.get(a).getFileName().substring(j);
						Oldfile = new File(
								"I:/Java_Resoure/PetManagerProject/WebContent/img/ShopMall/ProductIMG/" + OldproductID + temp);
						newfile = new File(
								"I:/Java_Resoure/PetManagerProject/WebContent/img/ShopMall/ProductIMG/"
										+ ImgType + "/new/"
										+ ((tempID - 20)) + temp);
						NewDBFilePaht = "../img/ShopMall/ProductIMG/Small/"
								+ ((tempID - 20) ) + temp;
						/* 创建产品ID与图像文件名的对应关系文件 */
						System.out
								.println("Small图片旧文件路径是：" + Oldfile.getPath());
						Oldfile.renameTo(newfile);
						System.out
								.println("Small图片新文件路径是：" + Oldfile.getPath());

						listpimg.get(a).setFilePath(NewDBFilePaht);
						/*
						 * OldproductID+=":"+(productID+x)+";";
						 * fis.write(OldproductID.getBytes(), 0,
						 * OldproductID.getBytes().length); fis.flush();
						 */

						System.out.println("文件ID后的数据" + temp);
						listpimg.get(a).setFileName(
								((tempID - 20)) + temp);

					} else {
						ImgType = "Content";

						j = listpimg.get(a).getFileName().indexOf(ImgType);
						temp = listpimg.get(a).getFileName().substring(j);

						System.out.println("OldID是" + OldproductID + "产品ID是"
								+ (tempID - 20));

						Oldfile = new File(
								"I:/Java_Resoure/PetManagerProject/WebContent/img/ShopMall/ProductIMG/" + OldproductID + temp);
						newfile = new File(
								"I:/Java_Resoure/PetManagerProject/WebContent/img/ShopMall/ProductIMG/"
										+ ImgType + "/new/"
										+ ((tempID - 20)) + temp);
						NewDBFilePaht = "../img/ShopMall/ProductIMG/" + ImgType
								+ "/" + ((tempID - 20) ) + temp;
						System.out.println("Content图片旧文件路径是："
								+ Oldfile.getPath());
						Oldfile.renameTo(newfile);
						System.out.println("Content图片新文件路径是："
								+ Oldfile.getPath());

						listpimg.get(a).setFilePath(NewDBFilePaht);

						listpimg.get(a).setFileName(
								((tempID - 20)) + ImgType + (total)
										+ ".jpg");

						total++;
					}
					productIMGserver.updateProductImgData(listpimg.get(a));

				}

			} catch (Exception e) {
				e.printStackTrace();
			}

			productID = 800000000;	
		}

	}


	public void changeProductID() {/*修改商品ID*/
		ActionInit();
		try {
			List<Product> list = productserver.viewAllProductInfo();
			int ProductID = 0;
			CopyOfProduct cpt = new CopyOfProduct();

			for (int i = 122; i <=list.size(); i++) {
				if (list.get(i).getProductID() <= 800000143) {
					ProductID = list.get(i).getProductID() + 2000000;
					System.out.println("^^^^^^^^^^^^^^^^^^^" + ProductID);
				} else {
					ProductID = list.get(i).getProductID();
				}

				System.out.println("ID" + ProductID);
				/* productserver.updateProductData(list.get(i)); */

				cpt.setProductID(ProductID);
				cpt.setProductName(list.get(i).getProductName());
				cpt.setRetailPrice(list.get(i).getRetailPrice());
				cpt.setManufacturerGuidancePrice(list.get(i).getManufacturerGuidancePrice());
				cpt.setDistributionLocality(list.get(i).getDistributionLocality());
				cpt.setEvaluationIndex(list.get(i).getEvaluationIndex());
				cpt.setSalesVolumes(list.get(i).getSalesVolumes());
				cpt.setBrandName(list.get(i).getBrandName());
				cpt.setSpecifications(list.get(i).getSpecifications());
				cpt.setApplicableObject(list.get(i).getApplicableObject());
				cpt.setProductDescribe(list.get(i).getProductDescribe());
				cpt.setExhibitionIMGPath(list.get(i).getExhibitionIMGPath());
				 productservercp.saveProductData(cpt);
				/*list.get(i).setExhibitionIMGPath("../img/ShopMall/ProductIMG/Small/"+ (ProductID-20) + "Small0.jpg");*/
			/*	productserver.updateProductData(list.get(i)); */
			}
		} catch (Exception e) {

			e.printStackTrace();
		}
	}
	
	public void changeProductIMGID() {
		ActionInit();
		
		try {
			int ProductID = 800000000;
			int MaxContentForProductID=0;
			for(int i=104;i<=143;i++){
			productvo=new Product();
			productvo.setProductID(ProductID+i);
			/*List<ProductIMG> list = productIMGserver.SelectAllProductIMGData();*/
			List<ProductIMG> listforid=productIMGserver.SelecProductImgDatForID(productvo);
			MaxContentForProductID=productIMGserver.selectMaxContenetNumber();
			MaxContentForProductID=MaxContentForProductID+1;
			System.out.println("最大值是"+MaxContentForProductID);
			CopyOfProductIMG cpt = new CopyOfProductIMG();
			
			for(int a=0;a<listforid.size();a++){
				System.out.println("得到的属性是："+listforid.get(a));
				
				if(listforid.get(a).getProduct().getProductID() == 802000002){
					cpt.setpIMGID(a+MaxContentForProductID);
					
				}else{
					cpt.setpIMGID(MaxContentForProductID+a);
				}
				System.out.println("ID" + ProductID);
				cpt.setProductID((listforid.get(a).getProduct().getProductID()+2000000)-20);
				cpt.setFileName(listforid.get(a).getFileName());
				cpt.setFilePath(listforid.get(a).getFilePath());
			
				GetIMGInfo imginfo=new GetIMGInfo();
				String tempstring="I:/Java_Resoure/PetManagerProject/WebContent/"+listforid.get(a).getFilePath().substring(3);
				System.out.println(tempstring);
				List list=imginfo.getIMGInfo(tempstring);
				System.out.println("");
				try {
					cpt.setFileHeight(Integer.parseInt(list.get(0).toString()));
					cpt.setFileWidth(Integer.parseInt(list.get(1).toString()));
				} catch (Exception e) {
					continue;
					
				}
				 productIMGservercp.saveProductImgData(cpt); 
				 
			}
			 ProductID = 800000000;
		}
				
				
			
		} catch (Exception e) {

			e.printStackTrace();
		}
	}

	
	public void dlelectProductIMG() {

		String[] productID = { "80161621", "801147106", "801358914",
				"801540905", "801886166", "8012286" };
		/*
		 * String[]
		 * productID={"80161621","801147106","801358914","801540905","801886166"
		 * ,"8012286"};
		 */

		File Oldfile = new File(
				"I:/Java_Resoure/PetManagerProject/WebContent/img/ShopMall/ProductIMG/Small/");
		try {
			if (Oldfile.isDirectory()) {

				for (int a = 0; a < productID.length; a++) {
					File[] list = Oldfile.listFiles();
					for (int i = 0; i < list.length; i++) {
						if (list[i].getName().indexOf(productID[a]) != -1) {
							boolean status = list[i].delete();
							System.out.println("文件名：" + list[i].getName()
									+ "删除校验：" + status);

						}

					}
				}

			}
		} catch (Exception e) {

			e.printStackTrace();
		}
	}

	
	public void downloadProductIMGdata() {
		ActionInit();/* 程序初始化 */
		int productID = 802000000;/* 产品ID */
		File ProductIMGfile = new File("I:/Java_Resoure/PetManagerProject/WebContent/img/ShopMall/ProductIMG/");
		File Oldfile;
		File newfile;
		String oldproductID = "";
		int total = 0;
		
			String productStr = "";
			int number=0;
			for (int x = 85; x <= 103; x++) {
				number=1;
				productStr = String.valueOf(productID + x);
				System.out.println("字符型ID的数据是：" + productStr);
				productvo = productserver.slectProductOfID(productID + x);
				List<ProductIMG> DBAllProductIMG = productIMGserver.SelecProductImgDatForID(productvo);
				List ChangFile = new ArrayList();
				List listpimgFileName=new ArrayList();
				if (ProductIMGfile.isDirectory()) {
					File[] Productimglist = ProductIMGfile.listFiles();
					List LoacalhostAllProductimglist=new ArrayList();
					System.out.println("从数据库中获取的数据："+DBAllProductIMG.get(0));
					oldproductID = DBAllProductIMG.get(0).getFileName();
					total = oldproductID.indexOf("Small");
					oldproductID = oldproductID.substring(0, total);
					Boolean bl=false;
					for(int i = 0; i < Productimglist.length; i++){
						LoacalhostAllProductimglist.add(Productimglist[i].getName());
	
					}
					Boolean istoDB=true;
						for (int i = 0; i < LoacalhostAllProductimglist.size(); i++) {
							istoDB=true;
						if (LoacalhostAllProductimglist.get(i).toString().indexOf(oldproductID) != (-1)) {
								System.out.println("匹配完成Small有以下数据："+ LoacalhostAllProductimglist.get(i).toString());
								
								
								
									for(int j=0;j<DBAllProductIMG.size();j++){
									System.out.println("判断值是："+bl);
										if(!LoacalhostAllProductimglist.get(i).toString().equals(DBAllProductIMG.get(j).getFileName())){
											System.out.println("文件名不相同的，本地文件名是："+LoacalhostAllProductimglist.get(i).toString()+"数据库中的文件名:"+DBAllProductIMG.get(j).getFileName());
												}else{
											System.out.println("文件名相同的，本地文件名是："+LoacalhostAllProductimglist.get(i).toString()+"数据库中的文件名:"+DBAllProductIMG.get(j).getFileName());
											istoDB=false;
										}
									}
								if(istoDB==true){
										System.out.println("是否写入数据库A："+LoacalhostAllProductimglist.get(i).toString()+"数据库中的文件名:");
										productdimg=new ProductIMG();
										productdimg.setProduct(productvo);
										productdimg.setFileName(LoacalhostAllProductimglist.get(i).toString());
										if(LoacalhostAllProductimglist.get(i).toString().indexOf("Small")!=-1){
											productdimg.setFilePath("../img/ShopMall/ProductIMG/Small/"+LoacalhostAllProductimglist.get(i).toString());
										}else{
											productdimg.setFilePath("../img/ShopMall/ProductIMG/Content/"+LoacalhostAllProductimglist.get(i).toString());
										}
											productIMGserver.saveProductImgData(productdimg);
										
										
										
									}
							} else {

							}
						
						
						}
				}
			/*	HashSet s1=new HashSet(ChangFile);
				ChangFile.clear();
				ChangFile.addAll(s1);利用Set集合的特性去除重复的数据*/
				/*Boolean bl=listpimgFileName.contains(ChangFile.get(i));判断集合中是否包含对象*/
					}
				
				
			}
		
	
	public void TestList(){
		List A=new ArrayList();
		List B=new ArrayList();
		A.add("春");
		A.add("夏");
		A.add("秋");
		A.add("冬");
		B.add("春");
		
		Boolean test=A.contains(B.get(0));
		System.out.println(test);
	}
	@Test
	public void TestCase(){
		ActionInit();
		/*productvo=productserver.viewMaxSalesVolumes();*/
	}

}
