package com.HR_Manager.Servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.HR_DaoInterface.dao.DaoInterface;
import com.HR_Factory.factory.Factory;
import com.HR_JavaBean.vo.HRRewardsinfo;

@WebServlet("/HRRewardsInfo")
public class HRRewardsInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		DaoInterface daoInter=Factory.getdaointerface();
		ServletContext context=request.getServletContext();
		String FactoryPath=context.getContextPath();
		int resutl=0;
		String SendPath="";
		String RewardsStr=request.getParameter("Rewardsid");
		int Rewards=0;
		if(RewardsStr!=null){
			Rewards=Integer.parseInt(RewardsStr);
		}
		String Rewardsnmae=request.getParameter("Rewardsnmae");
		String Rewardscause=request.getParameter("Rewardscause");
		String Rewardsexplain=request.getParameter("Rewardsexplain");
		String RewardsEmploryIDStr=request.getParameter("RewardsEmploryID");
		int RewardsEmploryID=0;
		if(RewardsEmploryIDStr!=null){
			RewardsEmploryID=Integer.parseInt(RewardsEmploryIDStr);
		}
		String RewardTypeStr=request.getParameter("RewardType");
		int RewardType=0;
		if(RewardTypeStr!=null){
			RewardType=Integer.parseInt(RewardTypeStr);
		}
		String RewardsNumberStr=request.getParameter("RewardsNumber");
		int RewardsNumber=0;
		if(RewardsNumberStr!=null){
			RewardsNumber=Integer.parseInt(RewardsNumberStr);
		}
		HRRewardsinfo rewardsinfo=new HRRewardsinfo();
		rewardsinfo.setRewardId(Rewards);
		rewardsinfo.setRewardName(Rewardsnmae);
		rewardsinfo.setReason(Rewardscause);
		rewardsinfo.setExplains(Rewardsexplain);
		rewardsinfo.setEmploryId(RewardsEmploryID);
		rewardsinfo.setHrewardstype(RewardType);
		rewardsinfo.setRewardsnumber(RewardsNumber);
		try {
			resutl=daoInter.AddRewardsInfo(rewardsinfo);
		} catch (Exception e) {
			
			e.printStackTrace();
		}if(resutl!=0){
			SendPath=FactoryPath+"/SelectAllHRRewardsinfo";
		}else{
			SendPath=FactoryPath+"/HRRewards/HRRewardsinfoInput.jsp";
		}
		response.sendRedirect(SendPath);
	}

}
