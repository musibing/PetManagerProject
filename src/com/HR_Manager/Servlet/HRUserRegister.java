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

@WebServlet("/HRUserRegister")
public class HRUserRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		ServletContext context=request.getServletContext();
		String CodeNmaeContext=(String)context.getAttribute("Securitycode");
		System.out.println("从上下文中得到的验证码名字是:"+CodeNmaeContext);
		String PeridStr=request.getParameter("userid");
		String Username=request.getParameter("usernam");
		String Perpassword=request.getParameter("passwords");
		String[] PersexStr=request.getParameterValues("usersex");
		String 	Birthdays=request.getParameter("year");
		String 	months=request.getParameter("months");
		String 	days=request.getParameter("days");
		Birthdays=Birthdays+"-"+months+"-"+days;
		String CodeName=request.getParameter("CodeName");
		System.out.println("从页面中得到的验证码名字是:"+CodeName);
		Date Birthday=Date.valueOf(Birthdays);
		String isadminStr=request.getParameter("isadmin");
		String Userinfo=request.getParameter("userinfo");
		String Iarege=request.getParameter("Iarege");
		System.out.println("页面中获得的阅读信息是:"+Iarege);
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
		
		String FactoryPath=context.getContextPath();
		int resutl=0;
		String SendPath="";
		
		try {
			if(CodeNmaeContext.equals(CodeName)&&"read".equals(Iarege)){
				resutl=daoInter.AddPersonInfo(perinfo);
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}if(resutl!=0){
			SendPath=FactoryPath+"/HRlogin/login.jsp";
			
		}else{
			SendPath=FactoryPath+"/HRRegister/HRRegister.jsp";
		}
		response.sendRedirect(SendPath);
		
	}

}
