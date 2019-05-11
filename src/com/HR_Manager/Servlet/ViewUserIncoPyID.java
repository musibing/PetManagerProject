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
@WebServlet("/ViewUserIncoPyID")
public class ViewUserIncoPyID extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext context=request.getServletContext();
		String AccountIncoStrPath=(String)context.getAttribute("AccountIncoPath");
		try {
			response.setContentType("image/*");
			FileInputStream AccountIncoInput=new FileInputStream(AccountIncoStrPath);
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
