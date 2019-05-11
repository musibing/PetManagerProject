package com.HR_Manager.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CheckTelNumberAjax")
public class CheckTelNumberAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		String TelnumberStr=request.getParameter("Telnumber");
		
		PrintWriter out=response.getWriter();
		if(TelnumberStr!=null){
			char[] telchararray=TelnumberStr.toCharArray();
			if(telchararray.length!=11){
				 if(telchararray[0]!=1){
			for(int i=0;i<telchararray.length;i++){
			if(telchararray[i]>='0'&&telchararray[i]>='9'){
				out.write("手机号码中包含特殊符号<br>");
				
			}else{
				out.write("手机号码正确<br>");
			}
			
			}
			out.write("手机号码没有以1开始<br>");
			}
			out.write("你输入的手机号不足11位<br>");
			}
		}
	}

}
