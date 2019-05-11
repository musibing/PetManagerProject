package com.musibing.action;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hibernate.SessionFactory;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Scope;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.baidu.translate.demo.TransApi;
import com.musibing.Bean.PetIMGServerBean;
import com.musibing.server.AccountServer;
import com.musibing.server.PetEntryStatisticsServer;
import com.musibing.server.PetIMGServer;
import com.musibing.server.PetServer;
import com.musibing.server.PetTypeServer;
import com.musibing.util.CreatVOClass;
import com.musibing.util.DLTest;
import com.musibing.util.NumberSupport;
import com.musibing.util.PropertyToDatabase;
import com.musibing.util.file.PetTypeImgerDownload;
import com.musibing.vo.AccountVO;
import com.musibing.vo.PetDataVOClass;
import com.musibing.vo.PetEntryStatistics;
import com.musibing.vo.PetIMG;
import com.musibing.vo.PetType;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class WebDataDispose extends ActionSupport {
	@Resource
	PetEntryStatistics pes;
	PetIMG pimg;
	AccountServer Us;
	AccountVO UVO;
	PetServer Ps;
	PetTypeServer Pts;
	PetDataVOClass PDVO;
	PetEntryStatisticsServer pess;
	PetIMGServer petis;
	HttpServletRequest HSR = ServletActionContext.getRequest();
	HttpServletResponse HSP = ServletActionContext.getResponse();
	HttpSession HSession = HSR.getSession();
	private static final String APP_ID = "20180403000142610";
	private static final String SECURITY_KEY = "p5vafpzwI3rjJo06vYmx";

	public PetDataVOClass getPetDataVOClass() {
		return PDVO;
	}

	public void sePetDataVOClass(PetDataVOClass PDVO) {
		this.PDVO = PDVO;
	}

	public void WebDataInit() throws Exception {
		System.out.println("数据初始化");
		String DIVData = HSR.getParameter("webdata");

		/*
		 * System.out.println(DIVData); File TempFile=new
		 * File("H:\\java\\PetManagerProject\\WebContent\\temp\\TempData.jsp");
		 * FileOutputStream out=new FileOutputStream(TempFile); FileInputStream
		 * in=new FileInputStream(TempFile); byte[] tempdata=new
		 * byte[in.available()]; int l; in.read(tempdata); String s=new
		 * String(tempdata);
		 * 
		 * while((l=in.read())!=-1){ System.out.println("得到的文件数据是"+ (char)l); }
		 * };
		 */
		String results = "";
		try {
			File fi = new File(
					"H:\\java\\PetManagerProject\\WebContent\\temp\\TempData.jsp");

			InputStream in = new FileInputStream(fi);

			InputStreamReader isr = new InputStreamReader(in, "utf-8");

			BufferedReader bf = new BufferedReader(isr);

			FileWriter fiW = new FileWriter(
					"H:\\java\\PetManagerProject\\WebContent\\temp\\NewTempData.jsp");

			BufferedWriter Bfw = new BufferedWriter(fiW);

			String newline = "";

			while ((newline = bf.readLine()) != null) {
				if (newline.equals("<body>")) {
					newline += "\n" + DIVData;
				}
				results += newline + "\n";
				Bfw.write(newline);

			}

		} catch (Exception e) {

		}

		System.out.println("得到的JSP文件数据为：" + results);

	}

	public void webDataDispose() {
		String results = "";
		String DIVData = HSR.getParameter("webdata");
		System.out.println("得到的数据是:" + DIVData);
		/*
		 * try { URL DownLoadURL=new
		 * URL("http://fanyi.baidu.com/?aldtype=16047#zh/en/"+DIVData);
		 * System.out.println("得到的翻译地址是:"+DownLoadURL);
		 * 
		 * HttpURLConnection
		 * Http=(HttpURLConnection)DownLoadURL.openConnection();
		 * Http.setRequestMethod("POST");
		 * 
		 * InputStream input =Http.getInputStream(); InputStreamReader isr=new
		 * InputStreamReader(input); BufferedReader Bf =new BufferedReader(isr);
		 * 
		 * FileWriter Fw=new FileWriter("D:\\FY.Jsp"); BufferedWriter output=new
		 * BufferedWriter(Fw); String newLin="";
		 * 
		 * 
		 * byte[] data = new byte[8000];
		 * 
		 * while((newLin=Bf.readLine())!=null){
		 * 
		 * results+=newLin+"\n"; System.out.println("测试"); }
		 * output.write(results); output.newLine(); output.flush(); } catch
		 * (MalformedURLException e) { // TODO Auto-generated catch block
		 * e.printStackTrace(); } catch (ProtocolException e) { // TODO
		 * Auto-generated catch block e.printStackTrace(); } catch (IOException
		 * e) { // TODO Auto-generated catch block e.printStackTrace(); }
		 */

	}

	public static String getTranslateinfo(String query) {
		TransApi api = new TransApi(APP_ID, SECURITY_KEY);

		String TranslateinfoData = api.getTransResult(query, "auto", "en");
		int TempIndexData = TranslateinfoData.indexOf("dst");
		String TempStringData = TranslateinfoData.substring(TempIndexData + 5);

		int TempNunmber2 = TempStringData.indexOf("\"");
		int TempNunmber3 = TempStringData.lastIndexOf("\"");
		TempStringData = TempStringData.substring(TempNunmber2 + 1,
				TempNunmber3);

		return TempStringData;
	}

	/*
	 * private static String JsonToString(String jstring) { try { JSONObject obj
	 * = new JSONObject(); JSONArray array = obj.getJSONArray("trans_result");
	 * obj = array.getJSONObject(0); String word = obj.getString("dst"); return
	 * word; } catch (JSONException e) { // TODO Auto-generated catch block
	 * e.printStackTrace(); } return ""; }
	 */
	public void getPetVOClassInfo() {

		String results = "";
		String Petdescription = HSR.getParameter("Petdescription");
		String PetName = HSR.getParameter("PetName");
		String baseicinfoNameArray = HSR.getParameter("baseicinfoNameArray");
		System.out.println("得到的数组是" + baseicinfoNameArray);

		System.out.println("得到的宠物名字是:" + PetName);
		System.out.println("得到的宠物描述信息是:" + Petdescription);
		List<String> baseicinfoNameJOSNArray = JSON.parseArray(
				baseicinfoNameArray, String.class);
		List<String> TempString = new ArrayList<String>();
		TempString.add("PetID");
		TempString.add("PetName");
		TempString.add("JeiShao");

		for (int i = 0; i < baseicinfoNameJOSNArray.size(); i++) {
			System.out.println("得到的Json数据是:" + baseicinfoNameJOSNArray.get(i));
			String PetTranslateinfo = WebDataDispose
					.getTranslateinfo(baseicinfoNameJOSNArray.get(i));
			PetTranslateinfo = PetTranslateinfo.replace(" ", "_");
			PetTranslateinfo = PetTranslateinfo.replace(",", "");
			PetTranslateinfo = PetTranslateinfo.replace("'", "");
			PetTranslateinfo = PetTranslateinfo.replace(".", "");
			PetTranslateinfo = PetTranslateinfo.toLowerCase();
			System.out.println("得到的翻译后的结果：" + PetTranslateinfo);

			TempString.add(PetTranslateinfo);
		}

		System.out.println("数组的长度是" + TempString.size());
		PropertyToDatabase PTD = new PropertyToDatabase();
		List<String> GettempString = PTD.GetProperty();
		System.out.println(GettempString.size());
		List<String> NewTempString = new ArrayList<String>();
		boolean B = false;
		for (int i = 0; i < TempString.size(); i++) {

			for (int j = 0; j < GettempString.size(); j++) {

				if (TempString.get(i).trim()
						.equals(GettempString.get(j).trim())) {
					System.out.println("重复字段名;b的值是" + B);

				} else {
					B = true;
				}

			}
			if (B == true) {
				NewTempString.add(TempString.get(i).trim());
			}
			B = false;

		}
		PTD.WritetProperty(NewTempString);
		/*
		 * CreatVOClass CVF = new CreatVOClass();
		 * CVF.CreatVOClassFile(TempString);
		 */
	}

	public void GetAllPetData() throws UnsupportedEncodingException {
		System.out.println("test");
		String baidubaikebriefIntroduction="";
		String petcnName="";
		try {
			ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
			Ps = (PetServer) act.getBean("petServerBa");
			pess=(PetEntryStatisticsServer)act.getBean("PetEntryStatisticsServerBean");
			petis=(PetIMGServer)act.getBean("PetIMGServerBean");
			String[] baidubaikebaseicinfoData= HSR.getParameterValues("baidubaikebaseicinfoData");
			baidubaikebriefIntroduction = HSR.getParameter("baidubaikebriefIntroduction");
			String[] boqiijianbriefintroductioninfo=HSR.getParameterValues("boqiijianbriefintroductioninfo");
			String[] boqiidetailedattribute=HSR.getParameterValues("boqiidetailedattribute");
			String exhibitionIMG=HSR.getParameter("PetDisplayIMGPaht");
			System.out.println("得到的展示图片地址是：>>"+exhibitionIMG);
			String[] PetEntryStatisticsAarray=HSR.getParameterValues("PetEntryStatisticsAarray");
		petcnName = HSR.getParameter("petcnName");
		
		System.out.println("百度百科1>>"+baidubaikebaseicinfoData[0].trim()+"百度百科2>>"+baidubaikebaseicinfoData[1].trim());
		System.out.println("波奇网1>>"+boqiijianbriefintroductioninfo[0]+"波奇网2>>"+boqiijianbriefintroductioninfo[1]); 
		/*	List<String> baseicinfoNameJOSNArray = JSON.parseArray (baseicinfo[1], String.class);*/
		/*读取百度百科数据*/
		PetDataVOClass DPVOC = new PetDataVOClass();
		int PetID=NumberSupport.Random(100000);
		DPVOC.setPetID(PetID);
		
		DPVOC.setExhibitionIMG(exhibitionIMG);
		
		String[] EntityNameArrary=HSR.getParameterValues("EntityNameArrary");
		for(int s=0;s<EntityNameArrary.length;s++){
			System.out.println(EntityNameArrary[s]);
			if("中文学名".equals(EntityNameArrary[s])){
				DPVOC.setChinesename(baidubaikebaseicinfoData[s].trim());/*中文学名*/
			}else if("别    称".equals(EntityNameArrary[s])){
				System.out.println("验证通过1");
				DPVOC.setDontsaid(baidubaikebaseicinfoData[s].trim());/*别称*/
			}
			else if("界".equals(EntityNameArrary[s])){
				DPVOC.setCircles(baidubaikebaseicinfoData[s].trim());/*界*/
			}
			else if("门".equals(EntityNameArrary[s])){
				DPVOC.setDoor(baidubaikebaseicinfoData[s].trim());/*门*/
			}		 
			else if("亚    门".equals(EntityNameArrary[s])){
				System.out.println("验证通过x");
				DPVOC.setSubdoor(baidubaikebaseicinfoData[s].trim());/*门*/
			}
			else if("亚    纲".equals(EntityNameArrary[s])){
				System.out.println("验证通过2");
				DPVOC.setSubang(baidubaikebaseicinfoData[s].trim());/*亚纲*/
			}
			else if("纲".equals(EntityNameArrary[s])){
				DPVOC.setGang(baidubaikebaseicinfoData[s].trim());/*纲*/
			}
			else if("目".equals(EntityNameArrary[s])){
				DPVOC.setItem(baidubaikebaseicinfoData[s].trim());/*目*/
			}
			else if("亚    目".equals(EntityNameArrary[s])){
				System.out.println("验证通过3");
				DPVOC.setSubOrder(baidubaikebaseicinfoData[s].trim());/*亚目*/
			}
			else if("科".equals(EntityNameArrary[s])){
				DPVOC.setSection(baidubaikebaseicinfoData[s].trim());/*科*/
			}
			else if("亚    科".equals(EntityNameArrary[s])){
				System.out.println("验证通过4");
				DPVOC.setSubfamily(baidubaikebaseicinfoData[s].trim());/*亚科*/
			}
			else if("属".equals(EntityNameArrary[s])){
				DPVOC.setGenus(baidubaikebaseicinfoData[s].trim());/*属*/
			}
			else if("种".equals(EntityNameArrary[s])){
				DPVOC.setSpecies(baidubaikebaseicinfoData[s].trim());/*种*/
			}
			else if("亚    种".equals(EntityNameArrary[s])){
				System.out.println("验证通过5");
				DPVOC.setSubSpecies(baidubaikebaseicinfoData[s].trim());/*亚种*/
			}
			}
		DPVOC.setPetcnName(petcnName.trim());/*宠物名字*/
		
		DPVOC.setBriefIntroduction(baidubaikebriefIntroduction);/*宠物简介*/
		
		DPVOC.setPetenName(boqiijianbriefintroductioninfo[0]);/*英文名字*/
		DPVOC.setDisposition(boqiijianbriefintroductioninfo[1]);/*性格*/
		DPVOC.setAncestralHome(boqiijianbriefintroductioninfo[2]);/*祖籍*/
		DPVOC.setEaseOfDisease(boqiijianbriefintroductioninfo[3]);/*易患病*/
		DPVOC.setLifeAge(boqiijianbriefintroductioninfo[4]);/*寿命*/
		DPVOC.setPrice(boqiijianbriefintroductioninfo[5]);/*价格*/
		DPVOC.setMorphologicalCharacter(boqiidetailedattribute[1]);/*形态特征*/
		DPVOC.setCharacterCharacteristics(boqiidetailedattribute[2]);/*性格特点*/
		DPVOC.setConservationKnowledge(boqiidetailedattribute[3]);/*养护知识*/
		DPVOC.setFeedingPoints(boqiidetailedattribute[4]);/*喂食要点*/
		Ps.savePetData(DPVOC);
		int timesOfBrowsing=Integer.parseInt(PetEntryStatisticsAarray[0].substring(5));
		int rankTheRanking=Integer.parseInt(PetEntryStatisticsAarray[1].substring(7));
		int relevantArticles=Integer.parseInt(PetEntryStatisticsAarray[2]);
		int iInterrelatedQuestionsAndAnswers=Integer.parseInt(PetEntryStatisticsAarray[3]);
		int collectionNumber=Integer.parseInt(PetEntryStatisticsAarray[4]);
		/*设置宠物词条相关数据*/
		int petEntryStatisticsID=NumberSupport.Random(100000);
		pes.setPetEntryStatisticsID(petEntryStatisticsID);/*设置词条ID*/
		pes.setiInterrelatedQuestionsAndAnswers(iInterrelatedQuestionsAndAnswers);/*相关问答*/
		pes.setCollectionNumber(collectionNumber);/*收藏数*/
		pes.setRankTheRanking(rankTheRanking);/*分类排行*/
		pes.setRelevantArticles(relevantArticles);/*相关文章*/
		pes.setTimesOfBrowsing(timesOfBrowsing);/*浏览量*/
		pes.setPdvoc(DPVOC);
		pess.savePetEntryStatistics(pes);
		
		String FileDirectory="H:\\java\\PetManagerProject\\WebContent\\img\\PetIMG\\Dog\\";
		String FileOutputPath="";
		String DBPath="";
		String PetIMGFileName="";
		PetTypeImgerDownload pid=new PetTypeImgerDownload();
		String[] boqiiIMGArray=HSR.getParameterValues("PetIMGArray");
	
		for(int x=0;x<=boqiiIMGArray.length;x++){
			
			int PetIMGID=NumberSupport.Random(100000);
			PetIMG pimg=new PetIMG();
			if(x==boqiiIMGArray.length-1){
				FileOutputPath=FileDirectory+"ExhibitionIMG"+PetID+x+".jpg";/*设置展示图片*/
				DBPath="../ExhibitionIMG"+PetID+x+".jpg";
				PetIMGFileName="ExhibitionIMG"+PetID+x+".jpg";
				DPVOC=Ps.finPetForID(PetID);
				DPVOC.setExhibitionIMG(DBPath);
				Ps.update(DPVOC);
			}
			else{
				FileOutputPath=FileDirectory+"img"+PetID+x+".jpg";
				DBPath="../img"+PetID+x+".jpg";
				PetIMGFileName="img"+PetID+x+".jpg";
			}
			pid.GetTypeImgerToNewWork(boqiiIMGArray[x],FileDirectory,FileOutputPath);
				pimg.setpIMGID(PetIMGID);
				pimg.setpDVOC(DPVOC);
			 /* pimg.setFileHeight(fileHeight);
				pimg.setFileWidth(fileWidth);*/
				pimg.setFileName(PetIMGFileName);
				pimg.setFilePath(DBPath);
				
				petis.savePetIMG(pimg);
				
		}
		/*设置宠物相关图片
		 * 
		 * pimg.setpIMGID(PetIMGID);
		pimg.setpDVOC(DPVOC);
		pimg.setFileHeight(fileHeight);
		pimg.setFileWidth(fileWidth);
		pimg.setFileName(fileName);
		pimg.setFilePath(filePath);*/
	/*	pess.s
		petis*/
		System.out.println("完成");
		
		} catch (BeansException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void HanderAllPetTypeInfo(){
	
		System.out.println("全部宠物信息抓取");
		/*	原开始位置<!--主题内容开始-->
			原开始位置<!--主题内容结束-->*/

			
			/*1.从输入的网址中获取源代码*/
			HttpServletRequest HSR = ServletActionContext.getRequest();
			HttpServletResponse HSP = ServletActionContext.getResponse();
			try {
				HSR.setCharacterEncoding("UTF-8");
				HSP.setContentType("text/html;charset=UTF-8");
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			String UrlPath = HSR.getParameter("InputUrlPaht");
			String StartPosition=HSR.getParameter("StartPosition");
			String StartPositionOffsetCorrection=HSR.getParameter("StartPositionOffsetCorrection");
			String EndPosition=HSR.getParameter("EndPosition");
			String EndPositionOffsetCorrection=HSR.getParameter("EndPositionOffsetCorrection");
			System.out.println("得到的开始位置字符是："+StartPosition+"得到的结束位置字符是："+EndPosition);
			System.out.println("得到的网页路径为：" + UrlPath);
			String getTempString = "";
			DLTest DLT = new DLTest();
			if (UrlPath != null && !("".equals(UrlPath.trim()))) {
				getTempString = DLT.Download(UrlPath);
				

				int indexof = getTempString.indexOf(StartPosition);
				System.out.println("得到的开始位置是："+indexof);
				int lasteindexof = getTempString.lastIndexOf(EndPosition);
				System.out.println("得到的结束位置是："+lasteindexof);
				getTempString = getTempString.substring(indexof, lasteindexof);
				
				
				System.out.println("数据产生");

			}/*else if(StartPositionOffsetCorrection!=null||EndPositionOffsetCorrection!=null){
				
				getTempString = getTempString.substring(indexof, lasteindexof);
			}*/
			PrintWriter pw = null;
		

			try {
				pw = HSP.getWriter();
				
				pw.write(getTempString);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			/* HSR.setAttribute("GetSr", getTempString); */
			
		
	}
	public void GetAllPetInfoForUrl() {
		
		System.out.println("全部宠物信息抓取");
	/*	原开始位置<!--主题内容开始-->
		原开始位置<!--主题内容结束-->*/
		
		HttpServletRequest HSR = ServletActionContext.getRequest();
		HttpServletResponse HSP = ServletActionContext.getResponse();
		try {
			HSR.setCharacterEncoding("UTF-8");
			HSP.setContentType("text/html;charset=UTF-8");
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		String UrlPath = HSR.getParameter("InputUrlPaht");
		String StartPosition=HSR.getParameter("StartPosition");
		String StartPositionOffsetCorrection=HSR.getParameter("StartPositionOffsetCorrection");
		String EndPosition=HSR.getParameter("EndPosition");
		String EndPositionOffsetCorrection=HSR.getParameter("EndPositionOffsetCorrection");
		System.out.println("得到的开始位置字符是："+StartPosition+"得到的结束位置字符是："+EndPosition);
		System.out.println("得到的网页路径为：" + UrlPath);
		String getTempString = "";
		DLTest DLT = new DLTest();
		if (UrlPath != null && !("".equals(UrlPath.trim()))) {
			getTempString = DLT.Download(UrlPath);
			

			int indexof = getTempString.indexOf(StartPosition);
			System.out.println("得到的开始位置是："+indexof);
			int lasteindexof = getTempString.lastIndexOf(EndPosition);
			System.out.println("得到的结束位置是："+lasteindexof);
			getTempString = getTempString.substring(indexof, lasteindexof);
			
			
			System.out.println("数据产生");

		}
		PrintWriter pw = null;
	

		try {
			pw = HSP.getWriter();
			
			pw.write(getTempString);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		/* HSR.setAttribute("GetSr", getTempString); */
		
	}
public String  GetUrlSourece() {
		
		System.out.println("全部宠物信息抓取");
	/*	原开始位置<!--主题内容开始-->
		原开始位置<!--主题内容结束-->*/
		
		HttpServletRequest HSR = ServletActionContext.getRequest();
		HttpServletResponse HSP = ServletActionContext.getResponse();
		try {
			HSR.setCharacterEncoding("UTF-8");
			HSP.setContentType("text/html;charset=UTF-8");
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		String UrlPath = HSR.getParameter("InputUrlPaht");
		
		String StartPositionOffsetCorrection=HSR.getParameter("StartPositionOffsetCorrection");
		
		String EndPositionOffsetCorrection=HSR.getParameter("EndPositionOffsetCorrection");
		/*System.out.println("得到的开始位置字符是："+StartPosition+"得到的结束位置字符是："+EndPosition);*/
		System.out.println("得到的网页路径为：" + UrlPath);
		String getTempString = "";
		DLTest DLT = new DLTest();
		if (UrlPath != null && !("".equals(UrlPath.trim()))) {
			getTempString = DLT.Download(UrlPath);
			

			/*int indexof = getTempString.indexOf(StartPosition);
			System.out.println("得到的开始位置是："+indexof);
			int lasteindexof = getTempString.lastIndexOf(EndPosition);
			System.out.println("得到的结束位置是："+lasteindexof);
			getTempString = getTempString.substring(indexof, lasteindexof);*/
			
			
			System.out.println("数据产生");

		}
		PrintWriter pw = null;
	

		try {
			pw = HSP.getWriter();
			
			pw.write(getTempString);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		/* HSR.setAttribute("GetSr", getTempString); */
		return getTempString;
	}

	public void saveAllPetTypeInfoToDB() {
		
		ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
		Pts = (PetTypeServer) act.getBean("petTypeServerBa");
		
		String[] PetTypeIMG = HSR.getParameterValues("IMGData");
		String[] PetTypeName = HSR.getParameterValues("NameData");
		String tempURLData = HSR.getParameter("InputUrlPaht");
		String voltage = HSR.getParameter("maxPage");
		
		int voltagemaxPageInt = Integer.parseInt(voltage);
		int index = tempURLData.lastIndexOf("/");
		String BaceURLPath = tempURLData.substring(0, index);
		System.out.println("得到的备份路径是：" + BaceURLPath);
		tempURLData = tempURLData.substring(index + 1);
		int ThisPageInt = 1;
		
		System.out.println("当前页码的最大值是"+voltagemaxPageInt);
		
		System.out.println("判断条件是否成立"+(tempURLData.indexOf("=")!=-1));
		if(tempURLData.indexOf("=")!=-1){
			int thisPageNumberForT1=tempURLData.indexOf("=");/*取出原始页码*/
			
			String ThisPageNumberString = tempURLData.substring(thisPageNumberForT1+1);
			ThisPageNumberString=ThisPageNumberString.trim();
			
			System.out.println("原始页面数据"+thisPageNumberForT1);
			ThisPageInt=Integer.valueOf(ThisPageNumberString).intValue();
			System.out.println("从参数中获取的页面数据为"+ThisPageInt);
			
		/*	第二种方法：i=Integer.valueOf(s).intValue();*/
			if (ThisPageInt >= voltagemaxPageInt) {
				
				ThisPageInt=voltagemaxPageInt;
				tempURLData = "/?p="+ThisPageInt;
				System.out.println("超过页面最大值");
				
			} else {
				tempURLData = "/?p=" + (++ThisPageInt);
				
			}
		}else{
			
			 tempURLData = "/?p=" + (++ThisPageInt);
			 System.out.println("这是首页！");
		}
		System.out.println("经过处理的数据为：" + tempURLData);

		BaceURLPath += tempURLData;
		System.out.println("传入JSP的地址" + BaceURLPath);

		try {
			HSR.setCharacterEncoding("UTF-8");
			HSP.setContentType("text/html;charset=UTF-8");
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		int rusulte = Pts.GetPetTypeMaxID();
		PetTypeImgerDownload PTIMD = new PetTypeImgerDownload();
		String TetTypeImage = "";
		String DBOutputPath="";
		String FileOutputPath="";
		int petID=0;
		for (int i = 0; i < PetTypeIMG.length; i++) {
			 petID=(rusulte + 1) + i;
			DBOutputPath="../img/BaiKe/LogoIMGData/Imger"+petID+".jpg";
			FileOutputPath="H:\\java\\PetManagerProject\\WebContent\\img\\BaiKe\\LogoIMGData\\Imger"+(rusulte + 1)+".jpg";
			 PTIMD.GetTypeImgerToNewWork(PetTypeIMG[i],
				"",FileOutputPath);
			PetType PT = new PetType((rusulte + 1) + i, PetTypeName[i],
					TetTypeImage);

			Pts.save(PT);
		}
		try {
			JSONObject object = new JSONObject();
			object.put("status", "OK");
			object.put("page", BaceURLPath);
			object.put("thisPageNumber", ThisPageInt);
			
			

			PrintWriter out = HSP.getWriter();
			out.write(object.toString());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public String GetResult() {
		System.out.println("方法测试");
		try {
			/*
			 * JSONObject object=new JSONObject(); object.put("status", "OK");
			 * object.put("page", "8");
			 */

			PrintWriter out = HSP.getWriter();

			out.write("");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "OK";

	}
}
