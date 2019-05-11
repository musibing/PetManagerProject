package com.HR_Manager.Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.HR_DaoInterface.dao.DaoInterface;
import com.HR_Factory.factory.Factory;
import com.HR_JavaBean.vo.HRPayInfo;
import com.HR_JavaBean.vo.HRRewardsinfo;
import com.HR_JavaBean.vo.HRtrainInfo;
import com.HR_JavaBean.vo.PersonInfo;

@WebServlet("/SelectNormalUserInfo")
public class SelectNormalUserInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		String SendPath="";
		ServletContext Context=request.getServletContext();
		String SendStr=(String)Context.getAttribute("SendPath");
		
		String SendPathParam=request.getParameter("SendPath");
		
		HttpSession session=request.getSession();
		PersonInfo per=new PersonInfo();
		per=(PersonInfo)session.getAttribute("loginUserinfo");
		
	String UserIDParam=request.getParameter("UserID");
	
		int UserID=0;
		if(SendStr!=null){
			SendPath=SendStr;
	}if(SendPathParam!=null){
		SendPath=SendPathParam;
	}
		
		if(per!=null){
			UserID=per.getId();
		}if(UserIDParam!=null){
			UserID=Integer.parseInt(UserIDParam);
		}
		 
		DaoInterface DaoInter=Factory.getdaointerface();
		
		List<PersonInfo> personinfo=new ArrayList<PersonInfo>();
		List<HRPayInfo> payinfo=new ArrayList<HRPayInfo>();
		List<HRRewardsinfo> Rewardsinfo=new ArrayList<HRRewardsinfo>();
		List<HRtrainInfo> traininfo=new ArrayList<HRtrainInfo>();
		try {
			personinfo=DaoInter.SelectUserPersonInfo(UserID);
			 payinfo=DaoInter.SelectUserPayInfo(UserID);
			 Rewardsinfo=DaoInter.SelectUserHRRewardsinfo(UserID);
			 traininfo=DaoInter.SelectUsesrHRtrainInfoInfo(UserID);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		String FactoryPath=request.getContextPath();
		session.setAttribute("UserPersonInfo", personinfo);
		session.setAttribute("UserPayInfo", payinfo);
		session.setAttribute("UserRewardsInfo", Rewardsinfo);
		session.setAttribute("UsertrainInfo", traininfo);
		
		response.sendRedirect(FactoryPath+SendPath);
		
	}

}
