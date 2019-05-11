package com.HR_Manager.Servlet;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.HR_DaoInterface.dao.DaoInterface;
import com.HR_Factory.factory.Factory;
import com.HR_JavaBean.vo.HRtrainInfo;

@WebServlet("/HRTrainInfoUpdate")
public class HRTrainInfoUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		String trainidStr=request.getParameter("trainid");
		String trainnmae=request.getParameter("trainnmae");
		String purpose=request.getParameter("purpose");
		String 	teacher=request.getParameter("teacher");
		String 	student=request.getParameter("EmploryID");
		String Birthdays=request.getParameter("year");
		String months=request.getParameter("months");
		String 	days=request.getParameter("days");
		Birthdays=Birthdays+"-"+months+"-"+days;
		Date begintime=Date.valueOf(Birthdays);
		Birthdays="";
		 	Birthdays=request.getParameter("yearend");
		 	months=request.getParameter("monthsend");
		 	days=request.getParameter("daysend");
		 	Birthdays=Birthdays+"-"+months+"-"+days;
			Date endtime=Date.valueOf(Birthdays);
		String isfinishStr=request.getParameter("isfinish");
		String traindata=request.getParameter("traindata");
		int trainid=0;
		int isfinish=0;
		int Emploryid=0;
		if(trainidStr!=null){
			trainid=Integer.parseInt(trainidStr);
		}if(isfinishStr!=null){
			isfinish=Integer.parseInt(isfinishStr);
		}
		if(student!=null){
			Emploryid=Integer.parseInt(student);
			System.out.println(">>>>>:"+Emploryid);
		}
		String traineffect=request.getParameter("traineffect");
		String traininfo=request.getParameter("traininfo");
	HRtrainInfo trainInfo=new HRtrainInfo();
	trainInfo.setTrainid(trainid);
	trainInfo.setTrainnmae(trainnmae);
	trainInfo.setPurpose(purpose);
	trainInfo.setTeacher(teacher);
	trainInfo.setEndtime(endtime);
	trainInfo.setBegintime(begintime);
	trainInfo.setEploryid(Emploryid);
	trainInfo.setIsfinish(isfinish);
	trainInfo.setTraindata(traindata);
	trainInfo.setTrainffect(traineffect);
	trainInfo.setTraininfo(traininfo);
	
	DaoInterface daoInter=Factory.getdaointerface();
		ServletContext context=request.getServletContext();
		String FactoryPath=context.getContextPath();
		int resutl=0;
		String SendPath="";
		try {
			resutl=daoInter.HRtrainInfoUpdate(trainInfo);
		} catch (Exception e) {
			
			e.printStackTrace();
		}if(resutl!=0){
			SendPath=FactoryPath+"/SelectAllTrainPlanInfo";
			
		}else{
			
			SendPath=FactoryPath+"/HRtrain/HRtrainplanInput.jsp";
		}
		response.sendRedirect(SendPath);
		
	}

}
