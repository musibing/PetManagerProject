package com.HR_Manager.Servlet;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.HR_DaoInterface.dao.DaoInterface;
import com.HR_Factory.factory.Factory;
import com.HR_JavaBean.vo.Securitycode;

@WebServlet("/Security_code")
public class Security_code extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int rand=(int)(1+Math.random()*(10-1+1));
		String SecuritycodeStrPath="";
		Securitycode sc=new Securitycode();
		DaoInterface DaoInter=Factory.getdaointerface();
		ServletContext Context=request.getServletContext();
		
		try {
			sc=DaoInter.GetSecuritycode(rand);
		} catch (Exception e1) {
			
			e1.printStackTrace();
		}
		SecuritycodeStrPath=sc.getIMGPath();
		Context.setAttribute("Securitycode", sc.getIMGName());
		try {
			response.setContentType("image/*");
			FileInputStream AccountIncoInput=new FileInputStream(SecuritycodeStrPath);
			OutputStream ToClient=response.getOutputStream();
			byte ImgData[]=new byte[1024];
			int leng=0;
			while((leng=AccountIncoInput.read(ImgData))!=-1){
				ToClient.write(ImgData,0,leng);
			}
			ToClient.flush();
			AccountIncoInput.close();
			ToClient.close();
		} catch (Exception e) {
			PrintWriter toClient=response.getWriter();
			response.setContentType("text/html");
			toClient.write("图像加载失败！");
			toClient.close();
			e.printStackTrace();
		}
	}

}
