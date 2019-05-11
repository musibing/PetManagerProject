package com.HR_Manager.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.HR_DaoInterface.dao.DaoInterface;
import com.HR_Factory.factory.Factory;

@WebServlet("/PersonUsernameCheck")
public class PersonUsernameCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doPost(request,response);	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		String sql="select count(*) from hrperinfo where username=?";
		String CheckID=request.getParameter("CheckID");
		int Result=0;
		DaoInterface DaoInter=Factory.getdaointerface();
		try {
			Result=DaoInter.CheckUserName(sql, CheckID);
		} catch (Exception e) {
			
		}
		PrintWriter out=response.getWriter();
		if(Result==0){
			out.write("true");
			
		}else{
			out.write("false");
		}
		
	}

}
