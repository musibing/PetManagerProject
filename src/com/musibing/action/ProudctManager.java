package com.musibing.action;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Scope;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;

import com.musibing.number.RandomNumber;
import com.musibing.server.AccountCollectService;
import com.musibing.server.AccountServer;
import com.musibing.server.ArticleService;
import com.musibing.server.BuyCarListServer;
import com.musibing.server.BuyCarServer;
import com.musibing.server.OrderSunburnImgService;
import com.musibing.server.ProductIMGServer;
import com.musibing.server.ProductJudgedService;
import com.musibing.server.ProductOderListService;
import com.musibing.server.ProductOderServer;
import com.musibing.server.ProductServer;
import com.musibing.util.FileDownForUrl;
import com.musibing.util.NumberSupport;
import com.musibing.util.file.PetTypeImgerDownload;
import com.musibing.util.lucene.PorductInterface;
import com.musibing.vo.AccountCollect;
import com.musibing.vo.AccountVO;
import com.musibing.vo.Article;
import com.musibing.vo.BuyCar;
import com.musibing.vo.BuyCarList;
import com.musibing.vo.OrderSunburnImg;
import com.musibing.vo.Product;
import com.musibing.vo.ProductIMG;
import com.musibing.vo.ProductJudged;
import com.musibing.vo.ProductOder;
import com.musibing.vo.ProductOderList;
import com.opensymphony.xwork2.ActionSupport;
@Controller
@Scope("prototype")
public class ProudctManager extends ActionSupport {
	@Resource
	Product pd;
	ProductJudgedService productjudgedservice;
	AccountCollect acccountCollect;
	AccountCollectService acccountCollectService;
	@Resource
	ProductJudged porductjudged;
	ProductOderListService productOderListService;
	@Resource
	ProductOderList productOderList;
	@Resource
	AccountVO avo;
	ProductOder poder;
	@Resource
	OrderSunburnImg osi;
	BuyCarListServer BCLS;
	BuyCarServer BCS;
	@Resource
	BuyCarList BCL;
	ProductServer ps;
	ProductIMGServer pimgsb;/*注解自动注入失败*/
	AccountServer as;
	OrderSunburnImgService osis;
	ProductOderServer poderserver;
	HttpServletRequest HSR = ServletActionContext.getRequest();
	HttpServletResponse HSP = ServletActionContext.getResponse();
	HttpSession HSession = HSR.getSession();
	String[] ImgDataValues=HSR.getParameterValues("ImgDataValues");
	String[] ContentImgDataValues=HSR.getParameterValues("ContentIMGDataValues");
	String DBOutputPath="";
	String FileOutputPath="";
	String FileName="";
	ProductIMG pIMG=new ProductIMG();
	PetTypeImgerDownload imgdl=new PetTypeImgerDownload();
	String accountIMGSrc[]=HSR.getParameterValues("accountIMGSrc");
	String accountName[]=HSR.getParameterValues("accountName");
	String accountGrade[]=HSR.getParameterValues("accountGrade");
	
	
	
	
	public ProductOder getPoder() {
		return poder;
	}
	public void setPoder(ProductOder poder) {
		this.poder = poder;
	}
	public AccountVO getAvo() {
		return avo;
	}
	public void setAvo(AccountVO avo) {
		this.avo = avo;
	}
	
	public OrderSunburnImg getOsi() {
		return osi;
	}
	public void setOsi(OrderSunburnImg osi) {
		this.osi = osi;
	}
	public Product getPd() {
		return pd;
	}
	public void setPd(Product pd) {
		this.pd = pd;
	}
	public void ActionInit(){
		ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
		pimgsb=(ProductIMGServer)act.getBean("productimgServerBean");	
		as = (AccountServer) act.getBean("accountServerBa");
		poderserver = (ProductOderServer) act.getBean("productOderServerBean");
		osis = (OrderSunburnImgService) act.getBean("OrderSunburnImgService");
		ps=(ProductServer)act.getBean("productServerBean");
		productjudgedservice=(ProductJudgedService)act.getBean("ProductJudgedServiceBean");
		productOderListService =(ProductOderListService)act.getBean("productOderListServiceBean");
		pimgsb=(ProductIMGServer)act.getBean("productimgServerBean");
		
		BCS=(BuyCarServer)act.getBean("buyCarServerBean");
	
		
		
		BCLS=(BuyCarListServer)act.getBean("buyCarListServerBean");	
		
		

		try {
			HSR.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			
			e.printStackTrace();
		}
		HSP.setContentType("text/html;charset=UTF-8");
	}
public String ViewProductForID(){
	System.out.println("test");
	try {
		ActionInit();
		/*帐户收藏开始*/
		System.out.println("帐户收藏检测");
		ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
		acccountCollectService = (AccountCollectService) act.getBean("accountCollectServicBean");
		AccountVO accountID=(AccountVO)ServletActionContext.getRequest().getSession().getAttribute("AccountInfo");
		String ProductIDStr=HSR.getParameter("PorductID");
		int ProductID=0;
		if(ProductIDStr!=null){
			ProductID=Integer.parseInt(ProductIDStr);
			
		}
		
		if(accountID!=null){
			
			System.out.println("帐户信息是否为空："+"帐户属性为："+accountID);
			
		
			
		
		System.out.println("商品ID属性为："+ProductID);
		String HQL="from AccountCollect where product.productID="+ProductID+" and accountVO.accountId="+accountID.getAccountId();
		System.out.println("HQL属性为："+HQL);
		AccountCollect accountcollect=acccountCollectService.ViewAccountCollectForParameterID(HQL);
		System.out.println(accountcollect);
		
		if(accountcollect!=null){
			HSR.getSession().setAttribute("AccountcollectStatus", accountcollect);
		}else{
			HSR.getSession().setAttribute("AccountcollectStatus", null);
		}
		
		}	
		
		/*帐户收藏结束*/
		
			System.out.println("PS:"+ps==null);
			pd=ps.slectProductOfID(ProductID);
			System.out.println(pd==null);
			List<ProductIMG> PIMG=pimgsb.SelecProductImgDatForID(pd);
			System.out.println("得到的集合的大小是"+PIMG.size());
			Set<ProductIMG>  NewPIMG=new HashSet<ProductIMG>();
			List<ProductIMG> ContentPIMG=new ArrayList<ProductIMG>();
			List<ProductIMG> SmallPIMG=new ArrayList<ProductIMG>();
			int Height=0;
			for(int o=0;o<PIMG.size();o++){
				if(PIMG.get(o).getFileName().contains("Small")){
					
					SmallPIMG.add(PIMG.get(o));
					System.out.println(PIMG.get(o));
				
					
				}
				else{
					ContentPIMG.add(PIMG.get(o));
					Height+=PIMG.get(o).getFileHeight();
					System.out.println(PIMG.get(o));
				}
				
				
			}
			
			System.out.println("总高度是："+Height);
			System.out.println(SmallPIMG.size());
			pd.setPimg(NewPIMG);
			System.out.println(pd);
			
			HSR.setAttribute("Result", pd);
			List<ProductJudged> JudgedForProductID=productjudgedservice.JudgedForProductID(pd.getProductID());
			System.out.println("子查询评价得到的大小是"+JudgedForProductID.size());
			double judgedMarkNumber=0;
			double judgedMarkTotalNumber=0;
			int judgedMarkNumberLev1=0;
			int judgedMarkNumberLev2=0;
			int judgedMarkNumberLev3=0;
			if(JudgedForProductID!=null){
				
				for(int x=0;x<JudgedForProductID.size();x++){
					ProductOderList productOderList=JudgedForProductID.get(x).getProductoderlist();
					
/*					ProductOderList productOderList1=productOderListService.viewProductOderListByProductOderListID(productOderList.getProductOderListID());*/
					
					
					
					
					judgedMarkNumber=Double.parseDouble(JudgedForProductID.get(x).getJudgedMark().substring(0,(JudgedForProductID.get(x).getJudgedMark().indexOf("分"))));
					
					System.out.println("子查询评价得到的值是"+JudgedForProductID.get(x));
					
					judgedMarkTotalNumber=+judgedMarkNumber;
					System.out.println(">>>："+JudgedForProductID.get(x).getJudgedMark().substring(0,(JudgedForProductID.get(x).getJudgedMark().indexOf("分"))));
	
				if(1<=judgedMarkNumber&&judgedMarkNumber<=2){
					
					judgedMarkNumberLev1++;
				}else  if(2.5<=judgedMarkNumber&&judgedMarkNumber<=3.5){
					
					judgedMarkNumberLev2++;
				}else{
					judgedMarkNumberLev3++;
				}
				judgedMarkNumber=0;
				}
				judgedMarkNumber=(double)judgedMarkNumberLev3/JudgedForProductID.size();
				
				
				judgedMarkNumber=judgedMarkNumber*100;
			
				String temp=String.format("%.2f", judgedMarkNumber);
				judgedMarkNumber=Double.valueOf(temp);
			}
			double pcsPX=300/JudgedForProductID.size();/*计算单位PX*/
			String temp1=String.format("%.0f", pcsPX);
			System.out.println(">>>:"+temp1);
			System.out.println("商品评价分数："+judgedMarkNumber);
			HSR.getSession().setAttribute("JudgedForProductID", JudgedForProductID);
			ServletActionContext.getRequest().getSession().setAttribute("ProductInfo", pd);
			ServletActionContext.getRequest().getSession().setAttribute("ContentPIMG", ContentPIMG);
			ServletActionContext.getRequest().getSession().setAttribute("SmallPIMG", SmallPIMG);
			ServletActionContext.getRequest().getSession().setAttribute("ContentIMGHeight", Height);
			ServletActionContext.getRequest().getSession().setAttribute("judgedMarkNumber", judgedMarkNumber);
			
			ServletActionContext.getRequest().getSession().setAttribute("judgedMarkNumberLev3",judgedMarkNumberLev3);
			ServletActionContext.getRequest().getSession().setAttribute("judgedMarkNumberLev2",judgedMarkNumberLev2);
			ServletActionContext.getRequest().getSession().setAttribute("judgedMarkNumberLev1",judgedMarkNumberLev1);
			ServletActionContext.getRequest().getSession().setAttribute("judgedMarkNumberLev3Value",Double.valueOf(temp1)*judgedMarkNumberLev3);
			ServletActionContext.getRequest().getSession().setAttribute("judgedMarkNumberLev1Value",Double.valueOf(temp1)*judgedMarkNumberLev1);
			ServletActionContext.getRequest().getSession().setAttribute("judgedMarkNumberLev2Value",Double.valueOf(temp1)*judgedMarkNumberLev2);
			System.out.println("judgedMarkNumberLev3:"+judgedMarkNumberLev3+"judgedMarkNumberLev2:"+judgedMarkNumberLev2+"judgedMarkNumberLev1:"+judgedMarkNumberLev1);
			System.out.println("judgedMarkNumberLev3Value："+ServletActionContext.getRequest().getSession().getAttribute("judgedMarkNumberLev3Value"));
			System.out.println("judgedMarkNumberLev2Value："+ServletActionContext.getRequest().getSession().getAttribute("judgedMarkNumberLev2Value"));
			System.out.println("judgedMarkNumberLev1Value："+ServletActionContext.getRequest().getSession().getAttribute("judgedMarkNumberLev1Value"));
			ServletActionContext.getRequest().getSession().setAttribute("judgedMarkTotal",JudgedForProductID.size());/*总评价数*/
			
	} catch (Exception e) {
		
		e.printStackTrace();
	}
	try {
		ServletActionContext.getResponse().getWriter().write("ok");
	} catch (IOException e) {
		
		e.printStackTrace();
	}
	return "OK";
	
}
public void sevePorductInfoForAdministratorInput(){
	System.out.println("得到的PD属性"+pd);
	ActionInit();
	ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
	
	pimgsb=(ProductIMGServer)act.getBean("pimgServerBean");
	ps=(ProductServer)act.getBean("productServerBean");
	System.out.println("ps是否为空"+ps==null);
	pd.setProductID(80000007);
	ps.saveProductData(pd);
	
	
}
public void getSmallIMG(Product pd){
	Set<ProductIMG> pimgSet=new HashSet<ProductIMG>();
	/*商品图像处理部分
	从源数据中获取图片的地址并存储图像
	*/
	for (int i = 0; i < ImgDataValues.length; i++) {
		int Start=ImgDataValues[i].indexOf(".jpg");
			ImgDataValues[i]=ImgDataValues[i].substring(0,Start+4);
			System.out.println("得到的产品ID是："+pd.getProductID());
			DBOutputPath="../img/ShopMall/ProductIMG/Small/"+pd.getProductID()+"Small"+i+".jpg";
			FileOutputPath="x:\\Java_Resoure\\PetManagerProject\\WebContent\\img\\ShopMall\\ProductIMG\\Small\\"+pd.getProductID()+"Small"+i+".jpg";
			String FilePath="x:\\Java_Resoure\\PetManagerProject\\WebContent\\img\\ShopMall\\ProductIMG\\Small";
			System.out.println("得到的产品图片存储路径是："+FileOutputPath);
			imgdl.GetTypeImgerToNewWork(ImgDataValues[i],FilePath, FileOutputPath);
			pIMG.setFilePath(DBOutputPath);
			FileName=pd.getProductID()+"Small"+i+".jpg";
			pIMG.setFileName(FileName);
			pIMG.setProduct(pd);
			int ProductIMGID=NumberSupport.Random(1000000);
			pIMG.setpIMGID(ProductIMGID);
			pimgSet.add(pIMG);
			try {
				pimgsb.saveProductImgData(pIMG);
			} catch (Exception e) {
			
				e.printStackTrace();
			}
	}
}
public void getContentIMG(Product pd){
	String ContentIMGheightStr=HSR.getParameter("ContentIMGheight");
	String ContentIMGwidthStr=HSR.getParameter("ContentIMGwidth");
	/*System.out.println("Old高度是："+ContentIMGheightStr+"Old宽度是："+ContentIMGwidthStr);*/
	int ContentIMGwidth=Integer.parseInt(ContentIMGwidthStr);
	int ContentIMGheight=Integer.parseInt(ContentIMGheightStr);
	/*System.out.println("高度是："+ContentIMGheight+"宽度是："+ContentIMGwidth);*/
	
for (int j = 0; j< ContentImgDataValues.length; j++){
			
			int ContentStart=ContentImgDataValues[j].indexOf(".jpg");
			ContentImgDataValues[j]=ContentImgDataValues[j].substring(0,ContentStart+4);
			System.out.println("得到是图像下载路径为："+ContentImgDataValues[j]);
			System.out.println("得到的产品ID是："+pd.getProductID());
			DBOutputPath="../img/ShopMall/ProductIMG/Content/"+pd.getProductID()+"Content"+j+".jpg";
			FileOutputPath="x:\\Java_Resoure\\PetManagerProject\\WebContent\\img\\ShopMall\\ProductIMG\\Content\\"+pd.getProductID()+"Content"+j+".jpg";
			String FilePath="x:\\Java_Resoure\\PetManagerProject\\WebContent\\img\\ShopMall\\ProductIMG\\Content";
			System.out.println("得到的产品图片存储路径是："+FileOutputPath);
			imgdl.GetTypeImgerToNewWork(ContentImgDataValues[j],FilePath, FileOutputPath);
			System.out.println("图片存储完成：");
			pIMG.setFilePath(DBOutputPath);
			FileName=pd.getProductID()+"Content"+j+".jpg";
			pIMG.setFileName(FileName);
			int ProductIMGID=NumberSupport.Random(1000000);
			pIMG.setpIMGID(ProductIMGID);
			pIMG.setProduct(pd);
			
				
			
			System.out.println(">>>>>"+pIMG);
			System.out.println("图片服务对象是否为空："+pimgsb==null);
			try {
				 InputStream in=new FileInputStream(new File(FileOutputPath));
					BufferedImage buf=ImageIO.read(in);
					int OldHeight=buf.getHeight();
					int OldWidth=buf.getWidth();
					pIMG.setFileWidth(OldWidth);
					pIMG.setFileHeight(OldHeight);
					pimgsb.saveProductImgData(pIMG);
				
			} catch (Exception e) {
				
				e.printStackTrace();
			}
		}
}public AccountVO getAccountInfo(){
	int AccountID=NumberSupport.Random(1000000);

	
	return avo;
}
public void getOderInfo(Product pd,AccountVO avo){
	/*生成简单的用户数据*/
	String judgedMark[]=HSR.getParameterValues("JudgedMark");
	String judgedContent[]=HSR.getParameterValues("JudgedContent");
	String judgedSource[]=HSR.getParameterValues("CommentSoure");
	String judgedTime[]=HSR.getParameterValues("CommentTime");
	String accountIMGSrc[]=HSR.getParameterValues("accountIMGSrc");
	
	
	
	String judgedMarkStr="";
	int ProductOderID=0;
	System.out.println("订单数据处理的总数是：》》》》》"+accountIMGSrc.length);
	for(int i=0;i<accountIMGSrc.length;i++){
		int ProductJudgedID=productjudgedservice.SelectMaxProductJudgedID();
		ProductJudgedID=(++ProductJudgedID);
		System.out.println("得到评分ID最大值是："+ProductJudgedID);
System.out.println("订单数据生成检查："+judgedMark[i]+judgedTime[i]+judgedContent[i]);
		try {
			/*ProductOder poder=new ProductOder();
			
		ProductOderID=NumberSupport.Random(1000000);
		poder.setProductOderID(ProductOderID);*/
		porductjudged.setJudgedID(ProductJudgedID);
		porductjudged.setJudgedMark(judgedMark[i]);
		porductjudged.setJudgedContent(judgedContent[i]);
		porductjudged.setJudgedSource(judgedSource[i]);
		porductjudged.setJudgedTime(judgedTime[i]);
		/*poder.setAccountId(avo);
		poder.setProductID(pd);*/
		System.out.println("得到的分数是"+judgedMark);
		judgedMarkStr=judgedMark[i].substring(0, 1);
		
		int tempData=Integer.parseInt(judgedMarkStr);
		if(tempData<=2){
			porductjudged.setJudgedGrade("1");
			
		}else if(tempData<5&&tempData<2){
			porductjudged.setJudgedGrade("2");
			
		}else{
			porductjudged.setJudgedGrade("3");
		}
		int productOderListID=productOderListService.SelectMAXProductOderListID();
		productOderList.setProductOderListID(++productOderListID);
		
		productOderList.setNumber(new NumberSupport().Random(50));
		productOderList.setProductOderStatus("完成");
		productOderList.setProductID(pd);
		productOderListService.SaveProductOderList(productOderList);
		porductjudged.setProductoderlist(productOderList);
		
		productjudgedservice.SaveProductJudged(porductjudged);
	
			int SunburnIMGID=0;
		
			String SunburnImgValues[]=HSR.getParameterValues("SunburnImgValues");
			try {
				
				
				if(SunburnImgValues!=null){
					
				if(SunburnImgValues.length!=0){
					
					/*for(int a=0;a<SunburnImgValues.length;a++){
						int OderSunburnImgID=osis.SelectMaxOderSunburnImg();
						OderSunburnImgID=(++OderSunburnImgID);
						
						System.out.println("晒单图片循环开始："+SunburnImgValues[a]+"晒单图片ID:"+OderSunburnImgID);
						osi.setOrderSunburnImgID(OderSunburnImgID);
						osi.setProductOderListID(productOderList);
						
						String FileBasePath="x:\\Java_Resoure\\PetManagerProject\\WebContent\\img\\Order\\SunburnImg\\";
						String FileOutputPath="x:\\Java_Resoure\\PetManagerProject\\WebContent\\img\\Order\\SunburnImg\\"+OderSunburnImgID+"OderSunburnImg"+a+".jpg";
						 DBOutputPath="../img/Order/SunburnImg/"+OderSunburnImgID+"OderSunburnImg"+a+".jpg";
						 FileName=OderSunburnImgID+"SunburnIMG"+a+".jpg";
						
						imgdl.GetTypeImgerToNewWork(SunburnImgValues[a],FileBasePath, FileOutputPath);
						osi.setFilePath(FileOutputPath);
						osi.setDbPath(DBOutputPath);
						osi.setFileName(FileName);
						osis.SeavOrderSunburnImg(osi);
						

					}
					*/
					for(int a=0;a<SunburnImgValues.length;a++){
						
					
						
						System.out.println("晒单图片循环开始：>>>"+SunburnImgValues[a]);
						
					
					}
				}
				
				
				
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		} catch (Exception e) {
			
			System.out.println("异常");
			e.printStackTrace();
		}
	}
}
public void saveProductInfoOrNet(){
	
	try {
		System.out.println("商品数据保存测试");
		ActionInit();
		
		String productName=HSR.getParameter("productName");
		String retailPriceString=HSR.getParameter("retailPrice");
		System.out.println("程序检查1");
		double retailPrice=Double.parseDouble(retailPriceString.trim().substring(1));
		String manufacturerGuidancePriceString=HSR.getParameter("manufacturerGuidancePrice");
		double manufacturerGuidancePrice=Double.parseDouble(manufacturerGuidancePriceString.trim().substring(1));
		String evaluationIndexString=HSR.getParameter("evaluationIndex");
		int evaindexof=evaluationIndexString.indexOf("分");
		evaluationIndexString=evaluationIndexString.substring(0, evaindexof);
		double evaluationIndex=Double.parseDouble(evaluationIndexString.trim());
	/*	String productIDString=HSR.getParameter("productID");
		int productID=Integer.parseInt(productIDString.trim());*/
		String salesVolumesString=HSR.getParameter("salesVolumes");
		int salesVol=salesVolumesString.indexOf("件");
		System.out.println("程序检查2");
		salesVolumesString=salesVolumesString.substring(0, salesVol-1);
		int salesVolumes=0;
		if(!("".equals(salesVolumesString))){
			 salesVolumes=Integer.parseInt(salesVolumesString.trim());
		}else{
			salesVolumes=0;
		}
		
		String brandName=HSR.getParameter("brandName");
		String productDescribe=HSR.getParameter("productDescribe");
		String datasourceIdentification=HSR.getParameter("datasourceIdentification");
		
		/*RandomNumber rd=new RandomNumber();
		String tempID=rd.RandomNumber();
		productID=Integer.parseInt("801"+tempID);*/
		System.out.println("程序检查3");

		pd=new Product();
		
		String specifications=HSR.getParameter("specifications");
		String applicableObject=HSR.getParameter("applicableobject");
		int ProductID=ps.SelectMaxProductID();
		System.out.println("得到的ID是："+ProductID);
		pd.setProductID(++ProductID);
		pd.setApplicableObject(applicableObject.trim());
		pd.setManufacturerGuidancePrice(manufacturerGuidancePrice);
		pd.setBrandName(brandName.trim());
		pd.setEvaluationIndex(evaluationIndex);
		pd.setProductID(ProductID);
		pd.setProductName(productName.trim());
		pd.setRetailPrice(retailPrice);
		pd.setSalesVolumes(salesVolumes);
		pd.setSpecifications(specifications.trim());
		pd.setProductDescribe(productDescribe.trim());
		pd.setDatasourceIdentification(datasourceIdentification);
		pd.setTagVelTOP("萌宠周边");
		pd.setTagVel1("装饰工艺");
		pd.setTagVel2("装饰摆件");
		System.out.println("程序检查4");
		ps.saveProductData(pd);
		System.out.println("商品实体类数据保存成功");


downSmallIMG(pd);
getOderInfo(pd,avo);
/*System.out.println("得到的用户的个数是："+accountIMGSrc.length);*/
		/*for (int j = 0; j < accountIMGSrc.length; j++) {
			try {
				
				
				avo.setAccountGrade(accountGrade[j]);
				avo.setAccountName(accountName[j]);
				
				as.save(avo);
				as.findForAccontID(avo.getAccountId());
				String FilePath="x:\\Java_Resoure\\PetManagerProject\\WebContent\\img\\Account";
				FileOutputPath="x:\\Java_Resoure\\PetManagerProject\\WebContent\\img\\Account\\"+avo.getAccountId()+".jpg";
				DBOutputPath="../img/Account/"+avo.getAccountId()+".jpg";
				imgdl.GetTypeImgerToNewWork(accountIMGSrc[j] ,FilePath, FileOutputPath);
				
				System.out.println(avo);
				
				} catch (Exception e1) {
				
					e1.printStackTrace();
				}
			
		}*/
		
/*信息流线程组*/
		
		/*Thread getSmallIMGthread = new Thread(new Runnable() {
		    public void run() {
		    	getSmallIMG(pd);
		    }
		});
		Thread getContentIMGthread = new Thread(new Runnable() {
		    public void run() {
		    	getContentIMG(pd);
		    }
		});*/
		/*Thread getOderInfothread = new Thread(new Runnable() {
		    public void run() {
		    	getOderInfo(pd,avo);
		    }
		});*/
		
		/*getSmallIMGthread.start();
		getContentIMGthread.start();*/
		
		/*getOderInfothread.start();*/
		try {
			Thread.sleep(1000);
		} catch (InterruptedException e) {
			
			e.printStackTrace();
		}
		
		
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}


System.out.println("^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^完成所有功能");


}


public void downSmallIMG(Product pd){

/*商品图像处理部分
	从源数据中获取图片的地址并存储图像*/
	
	try {
		int productID=pd.getProductID();
		PetTypeImgerDownload imgdl=new PetTypeImgerDownload();
		String[] SmallImgDataValues=HSR.getParameterValues("SmallImgDataValues");
		String[] ContentIMGDataValues=HSR.getParameterValues("ContentIMGDataValues");
		String DBOutputPath="";
		String FileOutputPath="";
		String FileName="";
		ProductIMG pIMG=new ProductIMG();
		for (int i = 0; i < SmallImgDataValues.length; i++) {
			System.out.println("得到的产品ID是："+productID);
			 DBOutputPath="../img/ShopMall/ProductIMG/Small/"+productID+"Small"+i+".jpg";
			 FileOutputPath="X:\\Java_Resoure\\PetManagerProject\\WebContent\\img\\ShopMall\\ProductIMG\\Small\\"+productID+"Small"+i+".jpg";
			 System.out.println("得到的产品图片存储路径是："+FileOutputPath);
			 imgdl.GetTypeImgerToNewWork(SmallImgDataValues[i], DBOutputPath, FileOutputPath);
			 System.out.println("图片存储完成：");
			 pIMG.setFilePath(DBOutputPath);
			FileName=productID+"Small"+i+".jpg";
			pIMG.setFileName(FileName);
			pIMG.setProduct(pd);

			System.out.println(">>>>>"+pIMG);
			System.out.println("图片服务对象是否为空："+pimgsb==null);
			
			
			pimgsb.saveProductImgData(pIMG);
				
			
			 System.out.println("<<<<<<");
			System.out.println(pIMG);
			if(i==0){
				pd.setExhibitionIMGPath(DBOutputPath);
				ps.updateProductData(pd);
			}
			
			
		}
		for (int j = 0; j < ContentIMGDataValues.length; j++) {
			System.out.println("循环次数:"+j);
		
			System.out.println("得到的产品ID是："+productID);
			 DBOutputPath="../img/ShopMall/ProductIMG/Content/"+productID+"Content"+j+".jpg";
			 FileOutputPath="X:\\Java_Resoure\\PetManagerProject\\WebContent\\img\\ShopMall\\ProductIMG\\Content\\"+productID+"Content"+j+".jpg";
			 System.out.println("得到的产品图片存储路径是："+FileOutputPath);
			 imgdl.GetTypeImgerToNewWork(ContentIMGDataValues[j], DBOutputPath, FileOutputPath);
			 System.out.println("图片存储完成：");
			 pIMG.setFilePath(DBOutputPath);
			FileName=productID+"Content"+j+".jpg";
			pIMG.setFileName(FileName);
			pIMG.setProduct(pd);

			System.out.println(">>>>>"+pIMG);
			System.out.println("图片服务对象是否为空："+pIMG==null);
			
			
			pimgsb.saveProductImgData(pIMG);
				
			
			 System.out.println("<<<<<<");
			System.out.println(pIMG);
			
		}
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	
	
	
	
	
	/*将数据信息存入数据库(使用Hibernate)*/
	
}
public void JspToArrayOfSet(){
	
	
	try {
	System.out.println("s");
		ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
		
		pimgsb=(ProductIMGServer)act.getBean("pimgServerBean");	
		as = (AccountServer) act.getBean("accountServerBa");
		poderserver = (ProductOderServer) act.getBean("productOderServerBean");
		osis = (OrderSunburnImgService) act.getBean("OrderSunburnImgService");
		
		HSR.setCharacterEncoding("UTF-8");
		HSP.setContentType("text/html;charset=UTF-8");
	 
	
	
	String[] data=HSR.getParameterValues("SunburnImgValues");
System.out.println(data.length);
	for(int a=0;a<data.length;a++){
		Set<String> s=new HashSet<String>(Arrays.asList(data[0]));
		Iterator i=s.iterator();
		while(i.hasNext()){
			System.out.println("得到的数据是："+i.next());
			
		}
		
		
	}
	}catch (Exception e) {
		
		e.printStackTrace();
	}
}
	public String ViewAllProduct(){
		ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
		pimgsb=(ProductIMGServer)act.getBean("pimgServerBean");	
		List<Product> li=ps.viewAllProductInfo();
		List productImgli=new ArrayList();
		List<ProductIMG> pimg=new ArrayList<ProductIMG>();
		/*for(int ia=0;ia<li.size();ia++){
			pimg=pimgsb.SelecProductImgDatForID(li.get(ia));
			for(int i=0;i<pimg.size();i++){
				if(pimg.get(i).getFileName().indexOf("Small1.jpg")!=(-1)){
					productImgli.add(pimg.get(i).getFilePath());
				
				}
				}
				
			}*/
		HSR.getSession().setAttribute("ListIMGData",productImgli );
		HSR.getSession().setAttribute("ListData", li);
		return "OK";
	}public String ViewProductForBranName(){
		try {
			HSR.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			
			e.printStackTrace();
		}
		HSP.setCharacterEncoding("utf-8");
		ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
		ps=(ProductServer)act.getBean("productServerBean");
		String brandName=HSR.getParameter("BranName");
		
		try {
			brandName=new String(brandName.getBytes("iso8859-1"),"utf-8");/*参数转码*/
		} catch (UnsupportedEncodingException e) {
			
			e.printStackTrace();
		}
		System.out.println("得到的品牌名称是："+brandName);
		List<Product> li=ps.viewAllProductForBranName(brandName);
		
		HSR.getSession().setAttribute("ListData", li);
		HSR.getSession().setAttribute("ResultNumber", li.size());
		return "OK";
}
	public String SelectClassificationProductForArrayList(){/*查询五大分类商品的产品*/
		
		ActionInit();
		AccountVO accountvo=(AccountVO)HSR.getSession().getAttribute("AccountInfo");
		int BuyCarNumber=0;
		if(accountvo!=null){
			System.out.println("帐户ID:"+accountvo.getAccountId());
			BuyCar bc=BCS.SelectBuyCarForAccountID(accountvo.getAccountId());
			System.out.println(bc==null);
			if(bc!=null){
				List<BuyCarList> BuyCarList=BCLS.SelectBuyCarListForBuyCarID(bc.getBuyCarID());
				if(BuyCarList!=null){
					
					BuyCarNumber=BuyCarList.size();
					 System.out.println("购物车数量："+BuyCarNumber);
				}
				 
			}
			
			
		}
		
		List<Product> dogli=ps.ViewAllProductForProductClassification("狗狗专区");
		List<Product> catli=ps.ViewAllProductForProductClassification("猫咪专区");
		List<Product> smallli=ps.ViewAllProductForProductClassification("小宠专区");
		List<Product> wtearli=ps.ViewAllProductForProductClassification("水族专区");
		List<Product> maoli=ps.ViewAllProductForProductClassification("萌宠周边");
		List<Product> dogRecommendli=ps.ViewRecommendProductForArrayList("狗狗专区");
		List<Product> catRecommendli=ps.ViewRecommendProductForArrayList("猫咪专区");
		List<Product> smallRecommendli=ps.ViewRecommendProductForArrayList("小宠专区");
		List<Product> wtearRecommendli=ps.ViewRecommendProductForArrayList("水族专区");
		List<Product> maoRecommendli=ps.ViewRecommendProductForArrayList("萌宠周边");
		List<Product> li=ps.ViewHotProcut();
		HSR.getSession().setAttribute("HotProductList", li);
		HSR.getSession().setAttribute("dogli", dogli);
		HSR.getSession().setAttribute("catli", catli);
		HSR.getSession().setAttribute("smallli", smallli);
		HSR.getSession().setAttribute("wtearli", wtearli);
		HSR.getSession().setAttribute("mengli", maoli);
		HSR.getSession().setAttribute("dogRecommendli", dogRecommendli);
		HSR.getSession().setAttribute("catRecommendli", catRecommendli);
		HSR.getSession().setAttribute("smallRecommendli", smallRecommendli);
		HSR.getSession().setAttribute("wtearRecommendli", wtearRecommendli);
		HSR.getSession().setAttribute("maoRecommendli", maoRecommendli);
		HSR.getSession().setAttribute("maoRecommendli", maoRecommendli);
		HSR.getSession().setAttribute("BuyCarNumber", BuyCarNumber);
		HSR.getSession().setAttribute("AccountInfo", accountvo);
		
		 System.out.println("购物车数量："+BuyCarNumber);
		return "OK";
	}
	public String SelectClassificationProductForTagVel(){
		ActionInit();
		try {
			String productTagVelName=HSR.getParameter("ProductTagVelName");
			productTagVelName=new String(productTagVelName.getBytes("ISO-8859-1"),"utf-8");
			System.out.println("请求名："+productTagVelName);
			List<Product> li=ps.ViewClassificationProductForTagVel(productTagVelName);
			HSR.getSession().setAttribute("SearchResultList", li);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "OK";
	}
	public String SelectClassificationProductForTags(){
		ActionInit();
		try {
			String productTagVelName=HSR.getParameter("ProductTagVelName");
			productTagVelName=new String(productTagVelName.getBytes("ISO-8859-1"),"UTF-8");
			
			String HQL="from Product where tagVelTOP='"+productTagVelName+"' ORDER BY salesVolumes DESC";
			System.out.println("请求名："+productTagVelName);
			System.out.println(HQL);
			List<Product> li=ps.SelectClassificationProductForTags(HQL);
			
			System.out.println("测试");
			HSR.getSession().setAttribute("SearchResultList", li);
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return "OK";
	}
	
	
	
	public String SelectClassificationProductForTagVel1(){
		ActionInit();
		try {
			String productTagVelName=HSR.getParameter("ProductTagVelName");
			productTagVelName=new String(productTagVelName.getBytes("ISO-8859-1"),"UTF-8");
			System.out.println("请求名："+productTagVelName);
			List<Product> li=ps.ViewClassificationProductForTagVel1(productTagVelName);
			HSR.getSession().setAttribute("SearchResultList", li);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "OK";
	}
	public String AnotherBatchHotProduct(){
		
		ActionInit();
		
		int basePage=new NumberSupport().Random(82);

		basePage=basePage*6;
		List<Product> li=new ArrayList<Product>();
		
		HSR.getSession().setAttribute("HotProductList", li);	
				
				li=ps.ViewHotProcutForClassificationPage(basePage,6);
		
		
		
		HSR.getSession().setAttribute("HotProductList", li);
		System.out.println("生成的页面值是"+basePage);
		System.out.println("生成的list大小是"+li.size());
		for(int j=0;j<li.size();j++){
			System.out.println("子查询测试得到的结果是："+li.get(j));
		}
		return "OK";
		
	}
	public String searchProductBuyList(){
		ActionInit();
		
		try {
			System.out.println("初始化!");
			String searchTextValue=HSR.getParameter("searchTextValue");
			
			PorductInterface porductInterfaceSupport=new PorductInterface();
			Map<Integer, String> searchValueMap=new HashMap<Integer, String>();
			searchTextValue = new String(searchTextValue.getBytes("ISO-8859-1"), "utf-8");  
			System.out.println("searchTextValue:"+searchTextValue);
			searchValueMap=porductInterfaceSupport.searchIndex(searchTextValue);
			
			  Iterator<Map.Entry<Integer, String>> iterator1 = searchValueMap.entrySet().iterator();
			    Map.Entry<Integer, String> entry;
			    System.out.println("共搜索到:"+searchValueMap.size()+"条结果!");
			    List<Product> SearchResultList=new ArrayList<Product>();
			    
			    while (iterator1.hasNext()) {
			        entry = iterator1.next();
			        System.out.print("产品ID:"+entry.getKey());
			        pd=ps.slectProductOfID(entry.getKey());
			        pd.setProductName(entry.getValue());
			        SearchResultList.add(pd);
			        System.out.println("＞＞＞产品名字:"+entry.getValue()); 
			     }
			    
			  HSR.getSession().setAttribute("SearchResultList", SearchResultList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return "OK";
	}

}