package com.HR_Manager.Servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.HR_Factory.factory.Factory;

@WebServlet("/AccountIncoUpload")
public class AccountIncoUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext Context=request.getServletContext();

		String FactoryPath=Context.getContextPath();
	int loginAccountID=(int)Context.getAttribute("loginID");
	DiskFileItemFactory DiskFile=new DiskFileItemFactory();
	DiskFile.setSizeThreshold(100);
	File Incofile=new File("D:\\HRAccount\\INCO");
	String SavaIncoPath=Incofile.getPath();
	if(!Incofile.exists()){
		Incofile.mkdirs();
	}
	DiskFile.setRepository(Incofile);
	String SendPath="";
	ServletFileUpload IncoFileUpload=new ServletFileUpload(DiskFile);
	IncoFileUpload.setHeaderEncoding("utf-8");
	IncoFileUpload.setFileSizeMax(1024*1024*1024);
	int result=0;
	try {
		List<FileItem> IncoUploadItem=new ArrayList<FileItem>();
		IncoUploadItem=IncoFileUpload.parseRequest(request);
		
		for(FileItem Item:IncoUploadItem){
			
			if(Item.isFormField()){
			
			}else{
				String path=Item.getName();
				String IncoSuffix=path.substring(path.lastIndexOf(".")+1);
				String IncoPath=SavaIncoPath+"\\"+loginAccountID+"."+IncoSuffix;
				InputStream in=Item.getInputStream();
				OutputStream out=new FileOutputStream(IncoPath);
				byte[] data=new byte[1024];
				int leng=0;
				while((leng=in.read(data))!=-1){
					out.write(data,0,leng);
				}out.close();
				in.close();
				result=Factory.getdaointerface().AccountIncoUpload(loginAccountID, IncoPath);
			
			}
		}
		
		
	} catch (FileUploadException x) {
		x.printStackTrace();
	}
	if(result!=0){
		String[] FileList=Incofile.list();
		for(int x=0;x<FileList.length;x++){
			String path=FileList[x].substring(FileList[x].lastIndexOf(".")+1);
			if("tmp".equals(path)){
				File deltempfil=new File("H:\\file\\"+FileList[x]);
				deltempfil.delete();
			}
		}
		SendPath=FactoryPath+"/HRemployManager/RemployDataBaseView.jsp";
		
	}else{
		SendPath=FactoryPath+"/HRemployManager/RemployInfoInput.jsp";
	}
	response.sendRedirect(SendPath);
	}

}
