package com.musibing.action.Util;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hibernate.mapping.Array;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.musibing.action.WebDataDispose;
import com.musibing.server.AccountServer;
import com.musibing.server.PetServer;
import com.musibing.server.PetTypeServer;
import com.musibing.vo.AccountVO;
import com.musibing.vo.PetDataVOClass;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class TraningEntityAttribute extends ActionSupport {
	@Resource
	AccountServer Us;
	AccountVO UVO;
	PetServer Ps;
	PetTypeServer Pts;
	PetDataVOClass PDVO;

	HttpServletRequest HSR = ServletActionContext.getRequest();
	HttpServletResponse HSP = ServletActionContext.getResponse();
	HttpSession HSession = HSR.getSession();
	public void TraningEntityAttribute(){
		try {
			System.out.println(">>>1");
			HSR.setCharacterEncoding("UTF-8");
			HSP.setContentType("text/html;charset=UTF-8");
			
			String[] TraningEntityAttributeName=HSR.getParameterValues("baseicinfoNameArray");
			String briefIntroduction=HSR.getParameter("briefIntroduction");/*宠物简介*/
			String petcnName=HSR.getParameter("petcnName");
		System.out.println(TraningEntityAttributeName[0]);
			
		System.out.println(TraningEntityAttributeName.length);
			
			
			
			
		/*	String[] TraningEntityAttributeNameEN=new String[20];
			WebDataDispose wdd=new WebDataDispose();
			System.out.println(">>>2");
			File fl=new File("H:\\TraningEntityAttributeNameEN.txt");
			FileWriter fw=new FileWriter(fl);
			System.out.println(">>>3:"+TraningEntityAttributeName.length);
			int  tempIndex=0;
			char tempAttribute='.';
			if(!fl.exists()){
				fl.createNewFile();
			}else{
				for(int x=0;x<TraningEntityAttributeName.length;x++){
					System.out.println("TraningEntityAttributeName:>>"+TraningEntityAttributeName[x]);
					TraningEntityAttributeNameEN[x]=wdd.getTranslateinfo(TraningEntityAttributeName[x]);
					System.out.println("TraningEntityAttributeNameEN:>>"+TraningEntityAttributeNameEN[x]);
					
							if((tempIndex=TraningEntityAttributeNameEN[x].indexOf(" "))!=0){
								tempAttribute=TraningEntityAttributeNameEN[x].charAt(tempIndex+1);
								System.out.println("得到首字母是："+tempAttribute);
								
								System.out.println(">"+(tempAttribute-=32));
							}
							fw.write(TraningEntityAttributeNameEN[x]+"\n");
				}
				fw.flush();
				fw.close();
			}*/
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		
		
	

}
}
