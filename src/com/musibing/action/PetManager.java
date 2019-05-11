package com.musibing.action;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;

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

import com.musibing.Bean.PetServerBean;
import com.musibing.server.AccountCollectService;
import com.musibing.server.AccountServer;
import com.musibing.server.ArticleService;
import com.musibing.server.OrderSunburnImgService;
import com.musibing.server.PetEntryStatisticsServer;
import com.musibing.server.PetIMGServer;
import com.musibing.server.PetServer;
import com.musibing.server.PetTypeServer;
import com.musibing.server.ProductOderServer;
import com.musibing.server.ProductServer;
import com.musibing.util.NumberSupport;
import com.musibing.util.file.PetTypeImgerDownload;
import com.musibing.vo.AccountCollect;
import com.musibing.vo.AccountVO;
import com.musibing.vo.PetDataVOClass;
import com.musibing.vo.PetEntryStatistics;
import com.musibing.vo.PetIMG;

@Controller
@Scope("prototype")
public class PetManager {
	@Resource
	AccountCollect acccountCollect;
	AccountCollectService acccountCollectService;
	PetDataVOClass pdvoc;
	@Resource
	PetIMG pimg;
	PetServer ps;
	PetServerBean psb;
	PetIMGServer petis;
	HttpServletRequest HSR = ServletActionContext.getRequest();
	HttpServletResponse HSP = ServletActionContext.getResponse();
	HttpSession HSession = HSR.getSession();
	public PetDataVOClass getPdvoc() {
		return pdvoc;
	}
	public void setPdvoc(PetDataVOClass pdvoc) {
		this.pdvoc = pdvoc;
	}
	public String selectPetForID(){
		ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
		ps = (PetServer) act.getBean("petServerBean");
		String PetID=HSR.getParameter("PetID");
		pdvoc= ps.finPetForID(Integer.parseInt(PetID));
		System.out.println("宠物的属性是："+pdvoc);
		/*帐户收藏开始*/
		System.out.println("帐户收藏检测");
		
		acccountCollectService = (AccountCollectService) act.getBean("accountCollectServicBean");
		AccountVO accountID=(AccountVO)ServletActionContext.getRequest().getSession().getAttribute("AccountInfo");
		System.out.println("帐户信息是否为空："+"帐户属性为："+accountID);
	
		
			int PetIDData=0;
			if(PetID!=null){
				PetIDData=Integer.parseInt(PetID);
				
			}
		
		System.out.println("商品ID属性为："+PetIDData);
		String HQL="from AccountCollect where petDataVOClass.petID="+PetIDData+" and accountVO.accountId="+accountID.getAccountId();
		System.out.println("HQL属性为："+HQL);
		AccountCollect accountcollect=acccountCollectService.ViewAccountCollectForParameterID(HQL);
		System.out.println(accountcollect);
		
		if(accountcollect!=null){
			HSR.getSession().setAttribute("AccountcollectStatus", accountcollect);
		}else{
			HSR.getSession().setAttribute("AccountcollectStatus", null);
		}
		/*帐户收藏结束*/
		
		HSession.setAttribute("PetInfo", pdvoc);		
		return "OK";
		
	}
	public void ActionInit(){
		ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
		ps=(PetServer)act.getBean("petServerBean");
		petis=(PetIMGServer)act.getBean("PetIMGServerBean");
		try {
			HSR.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			
			e.printStackTrace();
		}
		HSP.setContentType("text/html;charset=UTF-8");
	}
	public void savePetVoInfo(){
		ActionInit();
		
	try {
		System.out.println(ps!=null);
		pdvoc.setPetcnName(HSR.getParameter("petcnName"));
		pdvoc.setPetenName(HSR.getParameter("petenName"));
		pdvoc.setDisposition(HSR.getParameter("disposition"));
		pdvoc.setAncestralHome(HSR.getParameter("ancestralHome"));
		pdvoc.setEaseOfDisease(HSR.getParameter("easeOfDisease"));
		pdvoc.setLifeAge(HSR.getParameter("lifeAge"));
		pdvoc.setPrice(HSR.getParameter("price"));
		pdvoc.setBriefIntroduction(HSR.getParameter("briefIntroduction").trim());
		pdvoc.setMorphologicalCharacter(HSR.getParameter("morphologicalCharacter").trim());
		pdvoc.setConservationKnowledge(HSR.getParameter("conservationKnowledge").trim());
		pdvoc.setCharacterCharacteristics(HSR.getParameter("characterCharacteristics").trim());
		pdvoc.setFeedingPoints(HSR.getParameter("feedingPoints").trim());
		System.out.println("测试结果"+pdvoc.toString());
		ps.savePetData(pdvoc);
		String[] petIMG=HSR.getParameterValues("petIMG");
		String[] petEntryStatistics=HSR.getParameterValues("petEntryStatistics");
		String DBOutputPath="";
		String FileOutputPath="";
		String PetType="Crawler";
		String FileName="";
		PetTypeImgerDownload imgdl=new PetTypeImgerDownload();
		for(int a=0;a<petIMG.length;a++){

				int ContentStart=petIMG[a].indexOf(".jpg");
				petIMG[a]=petIMG[a].substring(0,ContentStart+4);
				System.out.println("得到是图像下载路径为："+petIMG[a]);
				System.out.println("得到的产品ID是："+pdvoc.getPetID());
				DBOutputPath="../img/PetIMG/"+PetType+"/baseic/"+pdvoc.getPetID()+"baseic"+a+".jpg";
				FileOutputPath="I:/Java_Resoure/PetManagerProject/WebContent/img/PetIMG/"+PetType+"/baseic/"+pdvoc.getPetID()+"baseic"+a+".jpg";
				String FilePath="I:/Java_Resoure/PetManagerProject/WebContent/img/PetIMG/"+PetType+"/baseic/";
				System.out.println("得到的产品图片存储路径是："+FileOutputPath);
				imgdl.GetTypeImgerToNewWork(petIMG[a],FilePath, FileOutputPath);
				System.out.println("图片存储完成：");
				pimg.setFilePath(DBOutputPath);
				FileName=pdvoc.getPetID()+"baseic"+a+".jpg";
				pimg.setFileName(FileName);
				
				pimg.setpDVOC(pdvoc);
				System.out.println("宠物相关对象的属性是"+pimg);
				System.out.println("图片服务对象是否为空："+petis==null);
				try {
					 InputStream in=new FileInputStream(new File(FileOutputPath));
						BufferedImage buf=ImageIO.read(in);
						pimg.setFileWidth(500);
						pimg.setFileHeight(350);
						petis.savePetIMG(pimg);
					
				} catch (Exception e) {
					
					e.printStackTrace();
				}
			}
		for(int i=0;i<petEntryStatistics.length;i++){
			int ContentStart=petEntryStatistics[i].indexOf(".jpg");
					petEntryStatistics[i]=petEntryStatistics[i].substring(0,ContentStart+4);
					System.out.println("得到是图像下载路径为："+petEntryStatistics[i]);
					System.out.println("得到的产品ID是："+pdvoc.getPetID());
					DBOutputPath="../img/PetIMG/"+PetType+"/petEntryStatistics/"+pdvoc.getPetID()+"petEntryStatistics"+i+".jpg";
					FileOutputPath="I:/Java_Resoure/PetManagerProject/WebContent/img/PetIMG/"+PetType+"/petEntryStatistics/"+pdvoc.getPetID()+"petEntryStatistics"+i+".jpg";
					String FilePath="I:/Java_Resoure/PetManagerProject/WebContent/img/PetIMG/"+PetType+"/petEntryStatistics/";
					System.out.println("得到的产品图片存储路径是："+FileOutputPath);
					imgdl.GetTypeImgerToNewWork(petEntryStatistics[i],FilePath, FileOutputPath);
					System.out.println("图片存储完成：");
					pimg.setFilePath(DBOutputPath);
					FileName=pdvoc.getPetID()+"petEntryStatistics"+i+".jpg";
					pimg.setFileName(FileName);
					
					pimg.setpDVOC(pdvoc);
					System.out.println("宠物相关对象的属性是"+pimg);
					System.out.println("图片服务对象是否为空："+petis==null);
					try {
						 InputStream in=new FileInputStream(new File(FileOutputPath));
							BufferedImage buf=ImageIO.read(in);
							/*int OldHeight=buf.getHeight();
							int OldWidth=buf.getWidth();*/
							pimg.setFileWidth(190);
							pimg.setFileHeight(140);
							petis.savePetIMG(pimg);
						
					} catch (Exception e) {
						
						e.printStackTrace();
					}
				}
		
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	}
	public String ViewAllPet(){
		ActionInit();
		List<PetDataVOClass> AllPetInfo=ps.ViewAllPet();
		
		HSR.getSession().setAttribute("AllPetInfo", AllPetInfo);
		return "OK";
	}

}
