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
import com.HR_JavaBean.vo.Employinfo;

@WebServlet("/RemployInfoAdd")
public class RemployInfoAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		String EmployIDStr=request.getParameter("EmployID");
		String EmployName=request.getParameter("username");
		String EmployYear=request.getParameter("year");
		String[] usersexstr=request.getParameterValues("usersex");
		String Professional=request.getParameter("Professional");
		String JobInfo=request.getParameter("JobInfo");
		String School=request.getParameter("School");
		String Ecdtion=request.getParameter("Ecdtion");
		String EmailAddress=request.getParameter("EmailAddress");
		String TelNumberStr=request.getParameter("TelNumber");
		String Jobinfodata=request.getParameter("Jobinfodata");
		String Employinfo=request.getParameter("Employinfo");
		String[] Employdatabeseinfo=request.getParameterValues("isdatabase");
		int EmployID=0;
		int EmployAge=0;
		int Employsex=0;
		long TelNumber=0;
		int isdatabse=0;
		int JobId=0;
		if(JobInfo!=null){
			JobId=Integer.parseInt(JobInfo);
		}
		if(EmployIDStr!=null){
			EmployID=Integer.parseInt(EmployIDStr);
		}if(EmployYear!=null){
			EmployAge=Integer.parseInt(EmployYear);
		}if(usersexstr!=null){
			for(int i=0;i<usersexstr.length;i++){
				Employsex=Integer.parseInt(usersexstr[i]);
			}
		}if(TelNumberStr!=null){
			
			TelNumber=Long.parseLong(TelNumberStr);
		}if(TelNumberStr==null){
			TelNumber=10086;
		}
		
		
		if(Employdatabeseinfo!=null){
			for(int i=0;i<usersexstr.length;i++){
				isdatabse=Integer.parseInt(Employdatabeseinfo[i]);
				
			}
			
		}if(Employdatabeseinfo==null){
			isdatabse=0;
			}
		Employinfo info=new Employinfo();
		info.setEmployid(EmployID);
		info.setEmployName(EmployName);
		info.setEmployAge(EmployAge);
		info.setEmploySex(Employsex);
		info.setProfessional(Professional);
		info.setJobinfodata(Jobinfodata);
		info.setEcdtion(Ecdtion);
		info.setSchool(School);
		info.setEmailAddress(EmailAddress);
		info.setEmployinfo(Employinfo);
		
		DaoInterface daointerface=Factory.getdaointerface();
		int result=0;
		try {
			result=daointerface.AddEmploryInfo(info);
		} catch (Exception e) {
			e.printStackTrace();
		}
		ServletContext context=request.getServletContext();
		String ProjectPath=context.getContextPath();
		String sendpath="";
		if(result!=0){
			sendpath=ProjectPath+"/SelectHREmplory";
		}else{
			sendpath=ProjectPath+"/HRemployManager/RemployInfoInput.jsp";
		}
		context.setAttribute("loginID", EmployID);
		response.sendRedirect(sendpath);
	}

}


