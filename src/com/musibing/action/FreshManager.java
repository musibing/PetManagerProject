package com.musibing.action;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Scope;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;

import com.musibing.server.AccountServer;
import com.musibing.server.FreshProductSerivce;
import com.musibing.server.OrderSunburnImgService;
import com.musibing.server.ProductIMGServer;
import com.musibing.server.ProductOderServer;
import com.musibing.server.ProductServer;
import com.musibing.util.FileBuffer;
import com.musibing.util.FileDownForUrl;
import com.musibing.util.file.PetTypeImgerDownload;
import com.musibing.vo.AccountVO;
import com.musibing.vo.FreshProduct;
import com.musibing.vo.Product;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class FreshManager extends ActionSupport {
	@Resource
	FreshProduct fp;
	FreshProductSerivce fps;

	public FreshProduct getFp() {
		return fp;
	}

	public void setFp(FreshProduct fp) {
		this.fp = fp;
	}

	HttpServletRequest HSR = ServletActionContext.getRequest();
	HttpServletResponse HSP = ServletActionContext.getResponse();

	public void ActionInit() {
		ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");

		fps = (FreshProductSerivce) act.getBean("FreshProductSerivceBean");
		try {
			HSR.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {

			e.printStackTrace();
		}
		HSP.setContentType("text/html;charset=UTF-8");
	}

	public void SaveAllFreshData() {
		System.out.println("方法调用开始");
		String FreshIMGPath = "";
		int ProductID = 0;

		ActionInit();

		System.out.println("方法调用,得到的ID最大值是：" + ProductID);
		String[] FireshNameData = HSR.getParameterValues("FireshNameData");
		String[] FireshPriceData = HSR.getParameterValues("FireshPriceData");
		String[] FireshIMGPaht = HSR.getParameterValues("FireshIMGPaht");
		String basePath = "X:\\Java_Resoure\\CaiCaiLon\\WebContent\\img\\Fresh\\Product\\";
		for (int x = 0; x < FireshNameData.length; x++) {

			/*
			 * if(FireshNameData[x].indexOf("（")!=(-1)||FireshNameData[x].indexOf
			 * ("(")!=(-1)){ System.out.println("判断方法");
			 * if(FireshNameData[x].indexOf("（")!=(-1)){ FireshNameData[x]
			 * =FireshNameData[x].substring(0, FireshNameData[x].indexOf("（"));
			 * }else{ FireshNameData[x] =FireshNameData[x].substring(0,
			 * FireshNameData[x].indexOf("(")); }
			 * 
			 * 
			 * }
			 */
			System.out.println("产品名字是:" + FireshNameData[x]);
			String CharCode = "";
			/*
			 * try { CharCode =URLEncoder.encode(FireshNameData[x], "UTF-8"); }
			 * catch (UnsupportedEncodingException e) { // TODO Auto-generated
			 * catch block e.printStackTrace(); }
			 */

			/*
			 * FreshIMGPath=FireshIMGPaht[x];
			 * 
			 * FileBuffer fb=new FileBuffer(); String UrlData=""; try { UrlData
			 * = fb.getTempFileDataForURL(FreshIMGPath);
			 * 
			 * if(UrlData==null){ System.out.println("UrlData数据空"); continue;
			 * }else if("".equals(UrlData.trim())){
			 * System.out.println("UrlData数据空白"); continue; } } catch (Exception
			 * e) { System.out.println("UrlData异常"); continue;
			 * 
			 * }
			 * 
			 * int StratIndex=0; int EndIndex=0;
			 * StratIndex=UrlData.indexOf("doc-img");
			 * EndIndex=UrlData.indexOf("alt" ,StratIndex);
			 * UrlData=UrlData.substring(StratIndex, EndIndex);
			 * 
			 * UrlData=UrlData.substring(UrlData.indexOf("img src=")+9,
			 * UrlData.length()-2); String basePath=
			 * "X:\\Java_Resoure\\CaiCaiLon\\WebContent\\img\\Fresh\\Product\\";
			 */

			/*
			 * UrlData=UrlData.substring(UrlData.indexOf("doc-img"),
			 * UrlData.indexOf("alt"));
			 */

			/*
			 * String pattern = "<div class=\"doc-img\">.+alt";
			 * 
			 * // 创建 Pattern 对象 Pattern r = Pattern.compile(pattern);
			 * 
			 * // 现在创建 matcher 对象 Matcher m = r.matcher(UrlData);
			 * 
			 * if (m.find( )) { System.out.println("Found value: " + m.group(0)
			 * );//
			 * 
			 * 
			 * } else { System.out.println("NO MATCH"); }
			 */
			String tempPrice = FireshPriceData[x].substring(1);
			System.out.println("临时价格是：" + tempPrice);
			ProductID = fps.SelectFreshMaxProductID();
			System.out.println("方法调用,得到的ID最大值是：" + ProductID);

			PetTypeImgerDownload pptd = new PetTypeImgerDownload();
			fp.setProductName(FireshNameData[x]);
			fp.setPrice(Double.parseDouble(tempPrice));
			fp.setProductID(ProductID + 1);
			System.out.println("转化陈功" + FireshIMGPaht[x]);
			String FireshIMGPahtStr = "http://www.365mcc.com/"
					+ (FireshIMGPaht[x].toString());
			System.out.println("错误检查");
			pptd.GetTypeImgerToNewWork(FireshIMGPahtStr, basePath, basePath
					+ (ProductID + 1) + ".jpg");
			System.out.println("生成图片成功");
			fp.setImgPath("../img/Fresh/Product/" + (ProductID + 1) + ".jpg");

			fps.FreshProduct(fp);
		}
	}

	public static String getUnicode(String source) {
		String returnUniCode = null;
		String uniCodeTemp = null;
		for (int i = 0; i < source.length(); i++) {
			uniCodeTemp = "\\u" + Integer.toHexString((int) source.charAt(i));// 使用char类的charAt()的方法
			returnUniCode = returnUniCode == null ? uniCodeTemp : returnUniCode
					+ uniCodeTemp;
		}
		System.out.print(source + " 's unicode = " + returnUniCode);
		return returnUniCode;// 返回一个字符的unicode的编码值
	}

	public String SelectAllFreshProducts() {
		ActionInit();
		List<FreshProduct> li=new ArrayList<FreshProduct>();
		try {
			li = new ArrayList<FreshProduct>();
			li=fps.SelectAllFreshProduct();
			for(int x=0;x<li.size();x++){
				System.out.println(li.get(x).getImgPath());
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		HSR.getSession().setAttribute("AllFreshProductsData", li);
		return "OK";
	}
}
