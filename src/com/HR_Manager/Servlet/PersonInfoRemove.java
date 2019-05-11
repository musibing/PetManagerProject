package com.HR_Manager.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.HR_DaoInterface.dao.DaoInterface;
import com.HR_Factory.factory.Factory;

@WebServlet("/PersonInfoRemove")
public class PersonInfoRemove extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request,response);
	}
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		String PersonIDStr=request.getParameter("PersonID");
		int PersonID=0;
		int result=0;
		if(PersonIDStr!=null){
		PersonID=Integer.parseInt(PersonIDStr);
		DaoInterface daoInter=Factory.getdaointerface();
		try {
			result=daoInter.PersonInfoRemove(PersonID);
		} catch (Exception e) {
		
			e.printStackTrace();
		}
		String SendPath="";
		String FactoryPath=request.getContextPath();
		if(result!=0){
			SendPath=FactoryPath+"/SelectAllPersonInfo";
		}else{
			SendPath=FactoryPath+"/HRPersonInfoManager/PersonInfoView.jsp";
		}
		response.sendRedirect(SendPath);
		
		}
		
	}

}
