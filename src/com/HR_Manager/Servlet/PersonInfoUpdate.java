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
import com.HR_JavaBean.vo.PersonInfo;

@WebServlet("/PersonInfoUpdate")
public class PersonInfoUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		
		String PeridStr=request.getParameter("userid");
		System.out.println("得到的ID是："+PeridStr);
		String Username=request.getParameter("usernam");
		String Perpassword=request.getParameter("passwords");
		String[] PersexStr=request.getParameterValues("usersex");
		String 	Birthdays=request.getParameter("year");
		String 	months=request.getParameter("months");
		String 	days=request.getParameter("days");
		Birthdays=Birthdays+"-"+months+"-"+days;
		
		Date Birthday=Date.valueOf(Birthdays);
		String isadminStr=request.getParameter("isadmin");
		String Userinfo=request.getParameter("userinfo");
		int Perid=0;
		int PerSex=0;
		int isadmin=0;
		if(PeridStr!=null){
			Perid=Integer.parseInt(PeridStr);
		}if(PersexStr!=null){
			for(int i=0;i<PersexStr.length;i++){
				PerSex=Integer.parseInt(PersexStr[i]);
			}
		}if(isadminStr!=null){
			isadmin=Integer.parseInt(isadminStr);
		}
		PersonInfo perinfo=new PersonInfo();
		perinfo.setId(Perid);
		perinfo.setUsername(Username);
		perinfo.setUsrpasswords(Perpassword);
		perinfo.setUsersex(PerSex);
		perinfo.setUserbirthday(Birthday);
		perinfo.setIsadmin(isadmin);
		perinfo.setUserinfo(Userinfo);
		DaoInterface daoInter=Factory.getdaointerface();
		ServletContext context=request.getServletContext();
		String FactoryPath=context.getContextPath();
		int resutl=0;
		String SendPath="";
		try {
			resutl=daoInter.PersonInfoUpdate(perinfo);
		} catch (Exception e) {
			
			e.printStackTrace();
		}if(resutl!=0){
			SendPath=FactoryPath+"/SelectAllPersonInfo";
			
		}else{
			
			SendPath=FactoryPath+"/HRPersonInfoManager/PersonInfoUpdate.jsp";
		}
		response.sendRedirect(SendPath);
		
	}

}
