package com.HR_Manager.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.HR_DaoInterface.dao.DaoInterface;
import com.HR_Factory.factory.Factory;

@WebServlet("/SelectMaxID")
public class SelectMaxID extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		String SendPathStr=request.getParameter("SendPath");
		DaoInterface DaoInter=Factory.getdaointerface();
		String RewardsInfoInputPath="/HRRewards/HRRewardsinfoInput.jsp";
		
		String SendPath="";
		if(RewardsInfoInputPath.equals(SendPathStr)){
			SendPath=SendPathStr;
		}
		String sql="select max(id) from hrrewards";
		int MaxID=0;
		try {
			MaxID=DaoInter.SelectMaxID(sql);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		String FactoryPath=request.getContextPath();
		HttpSession session=request.getSession();
		session.setAttribute("MaxID", (MaxID+1));
		response.sendRedirect(FactoryPath+SendPath);
	}

}
