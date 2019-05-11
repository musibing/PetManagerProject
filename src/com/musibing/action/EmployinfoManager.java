package com.musibing.action;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Scope;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;

import com.musibing.server.AccountRecordsService;
import com.musibing.server.AccountServer;
import com.musibing.server.BuyCarListServer;
import com.musibing.server.BuyCarServer;
import com.musibing.server.EmployinfoService;

import com.musibing.server.ProductOderServer;
import com.musibing.server.ProductServer;
import com.musibing.vo.AccountRecords;
import com.musibing.vo.AccountVO;
import com.musibing.vo.Employinfo;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class EmployinfoManager extends ActionSupport{
	
	private static final long serialVersionUID = 4261904672330975966L;
	@Resource
	Employinfo el;
	EmployinfoService es;
	private File uploadImage;//得到上传的文件
	  private String uploadImageContentType;//得到文件的类型
	  private String uploadImageFileName;//得到文件的名称
	
	HttpServletRequest HSR = ServletActionContext.getRequest();
	HttpServletResponse HSP = ServletActionContext.getResponse();
	HttpSession HSession = HSR.getSession();
	public Employinfo getEl() {
		return el;
	}
	public void setEl(Employinfo el) {
		this.el = el;
	}
	public File getUploadImage() {
		return uploadImage;
	}
	public void setUploadImage(File uploadImage) {
		this.uploadImage = uploadImage;
	}
	public String getUploadImageContentType() {
		return uploadImageContentType;
	}
	public void setUploadImageContentType(String uploadImageContentType) {
		this.uploadImageContentType = uploadImageContentType;
	}
	public String getUploadImageFileName() {
		return uploadImageFileName;
	}
	public void setUploadImageFileName(String uploadImageFileName) {
		this.uploadImageFileName = uploadImageFileName;
	}
	public void saveEmployeeData(){
		
		System.out.println(uploadImageFileName);
	
		
		ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
	System.out.println(el);
		
		es=(EmployinfoService)act.getBean("employinfoServiceBean");
		try {
			HSR.setCharacterEncoding("UTF-8");
				HSP.setContentType("text/html;charset=UTF-8");
		} catch (UnsupportedEncodingException e) {
		
			e.printStackTrace();
		}
		es.SaveEmployInfo(el);
		
		String path="H:\\EmpleyeInfoImg";
		File destFile=new File(path,uploadImageFileName);
		if(!destFile.exists()){
			destFile.mkdir();
		}
			try {
				
				FileUtils.copyFile(uploadImage, destFile);
				
			} catch (Exception e) {
				
				e.printStackTrace();
			}
		
	}
	
}
