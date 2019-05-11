package com.musibing.action;
/*import java.io.File;*/
import java.io.File;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import org.apache.commons.io.FileUtils;
/*import org.apache.commons.io.FileUtils;*/
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
@Controller
@Scope("prototype")
public class FielUploadTest extends ActionSupport{
	
	private File uploadImage;//得到上传的文件*/	 
	private String uploadImageContentType;//得到文件的类型
	private String uploadImageFileName;//得到文件的名称
	HttpServletRequest HSR = ServletActionContext.getRequest();
	HttpServletResponse HSP = ServletActionContext.getResponse();
	HttpSession HSession = HSR.getSession();
	public FielUploadTest(){
		
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




	public String FileUploadTest()throws Exception{
		System.out.println(">>>>>>!"+uploadImageFileName);
		String path="H:\\testData";
		File destFile=new File(path,uploadImageFileName);
		  System.out.println("test1");
	
			
			
			try {
				System.out.println(">>>>>>2");
				FileUtils.copyFile(uploadImage, destFile);
				System.out.println(">>>>>>3");
			} catch (Exception e) {
				
				e.printStackTrace();
			}
			return "data";
	  }
	
}
