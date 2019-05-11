package com.HR_Manager.Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.HR_DaoInterface.dao.DaoInterface;
import com.HR_Factory.factory.Factory;

@WebServlet("/HRRewardsinfoRemove")
public class HRRewardsinfoRemove extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		String RewardIdStr=request.getParameter("RewardId");
		int RewardId=0;
		int result=0;
		if(RewardIdStr!=null){
			RewardId=Integer.parseInt(RewardIdStr);
		DaoInterface daoInter=Factory.getdaointerface();
		try {
			result=daoInter.HRRewardsinfoRemove(RewardId);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		String SendPath="";
		String FactoryPath=request.getContextPath();
		if(result!=0){
			SendPath=FactoryPath+"/SelectAllHRRewardsinfo";
		}else{
			SendPath=FactoryPath+"/SelectAllHRRewardsinfo";
		}
		response.sendRedirect(SendPath);
	}

}
}
