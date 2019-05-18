package com.musibing.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Scope;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;

import com.musibing.number.RandomNumber;
import com.musibing.server.AccountCollectService;
import com.musibing.server.AccountRecordsService;
import com.musibing.server.AccountServer;
import com.musibing.server.ArticleService;
import com.musibing.server.PetServer;
import com.musibing.server.PetTypeServer;
import com.musibing.util.file.PetTypeImgerDownload;
import com.musibing.vo.AccountCollect;
import com.musibing.vo.AccountRecords;
import com.musibing.vo.AccountVO;
import com.musibing.vo.Article;
import com.musibing.vo.PetDataVOClass;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class ArticleManager extends ActionSupport{
	@Resource
	AccountCollect acccountCollect;
	AccountCollectService acccountCollectService;
	Article ac;
	PetServer petservice;
	ArticleService as;
	HttpServletRequest HSR = ServletActionContext.getRequest();
	HttpServletResponse HSP = ServletActionContext.getResponse();
	HttpSession HSession = HSR.getSession();
	public void saveArticleToDB(){
		ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
		as = (ArticleService) act.getBean("ArticleServiceBean");
		
		
		try {
			/*String articleImg=HSR.getParameter("ArticleImg");*/
			PetTypeImgerDownload ptid=new PetTypeImgerDownload();
			String articleIMG=HSR.getParameter("ArticleIMG");
			
			String articleTitle=HSR.getParameter("ArticleTitle");
			String articleContent=HSR.getParameter("ArticleContent");
			
			String articleSubmitTime=HSR.getParameter("ArticleSubmitTime");
			
			SimpleDateFormat sdf=new SimpleDateFormat("YYYY-MM-dd HH:mm:ss");
			Date submittime=sdf.parse(articleSubmitTime);
			
			
			
			ac.setArticleName(articleTitle);	
			ac.setArticleContent(articleContent);
			ac.setSubmitTime(submittime);
			as.saverArticle(ac);
			String FileDirectory="I:\\Java_Resoure\\PetManagerProject\\WebContent\\img\\BaiKe\\Article\\ArticleIMG\\";
			String FileOutputPath=FileDirectory+"article"+ac.getArticleID()+".jpg";
			String DBOutputPath="../img/BaiKe/Article/ArticleIMG/article"+ac.getArticleID()+".jpg";
			ptid.GetTypeImgerToNewWork(articleIMG, FileDirectory, FileOutputPath);
			System.out.println("文件输出路径："+FileOutputPath);
			ac.setArticleIMG(DBOutputPath);
			as.updateArticle(ac);;
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		System.out.println("完成检查！");
		
	}
	public String viewArticleForID(){
		try {
			System.out.println("检测");
		
			
			
			
			/*帐户收藏开始*/
			System.out.println("文章收藏检测");
			ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
			as = (ArticleService) act.getBean("ArticleServiceBean");
			acccountCollectService = (AccountCollectService) act.getBean("accountCollectServicBean");
			AccountVO accountID=(AccountVO)ServletActionContext.getRequest().getSession().getAttribute("AccountInfo");
			System.out.println("帐户信息是否为空："+"帐户属性为："+accountID);
			String ArticleIDStr=HSR.getParameter("ArticleID");
			int ArticleID=Integer.parseInt(ArticleIDStr);
			Article ac=as.selectArticleForID(ArticleID);
			System.out.println("文章属性为："+ArticleID);
			AccountCollect accountcollect=null;
			
			if(accountID!=null){String HQL="from AccountCollect where articleID.articleID="+ArticleID+" and accountVO.accountId="+accountID.getAccountId();
			System.out.println("HQL属性为："+HQL);
				accountcollect=acccountCollectService.ViewAccountCollectForParameterID(HQL);
			System.out.println(accountcollect);
			}
			if(accountcollect!=null){
				HSR.getSession().setAttribute("AccountcollectStatus", accountcollect);
			}else{
				HSR.getSession().setAttribute("AccountcollectStatus", null);
			}
			/*帐户收藏结束*/
			HSR.getSession().setAttribute("ArticleInfo", ac);
			
		} catch (BeansException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return "OK";
		
	}
	public String SelectArticleByBaiKeiIndex(){
		ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
		as = (ArticleService) act.getBean("ArticleServiceBean");
		petservice=(PetServer)act.getBean("petServerBean");
		List<PetDataVOClass> petDatali=petservice.ViewPetForPage();
		
		List<Article> li=as.SelectAllArticle();
		Long CountArticle=as.SelectCountArticle();
		int CountArticleint=CountArticle.intValue();
		List<Article> liQuestion=as.SelectAllQuestion(CountArticleint);	
		
		
		for(int l=0;l<liQuestion.size();l++){
			
			System.out.println(liQuestion.get(l));
		}
		HSR.getSession().setAttribute("PetDatali", petDatali);
		
		HSR.getSession().setAttribute("AllArticleInfo", li);
		
		HSR.getSession().setAttribute("AllQuestion",liQuestion);
		return "OK";
	}
	

}
