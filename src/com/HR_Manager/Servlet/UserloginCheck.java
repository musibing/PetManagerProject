package com.HR_Manager.Servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.HR_Dao.Impl.DaoInterfaceImpl;
import com.HR_DaoInterface.dao.DaoInterface;
import com.HR_JavaBean.vo.PersonInfo;

@WebServlet("/UserloginCheck")
public class UserloginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PersonInfo per=new PersonInfo();
		ServletContext context=request.getServletContext();
		String FactoryPath=context.getContextPath();
	
		String useridStr=request.getParameter("userid");
		int UserId=0;
		if(useridStr!=null){
			UserId=Integer.parseInt(useridStr.trim());
		}
		
		String formuserpassord=request.getParameter("password");
		
		if(formuserpassord!=null){
			formuserpassord=formuserpassord.trim();
		}
		DaoInterface DaoInter=new DaoInterfaceImpl();
		int Result=0;
		String sendPath="";
		try {
			Result=DaoInter.CheckUserInfo(UserId, formuserpassord);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		int Isadmin=0;
	HttpSession Session=request.getSession();
		if(Result!=0){
			try {
				per=DaoInter.GetUserInfo(UserId);
			} catch (Exception e) {
				
				e.printStackTrace();
			}
			
			Isadmin=per.getIsadmin();
			System.out.println("是否为管理员："+Isadmin);
			if(Isadmin==1){
				sendPath=FactoryPath+"/HRindex/HRIndex.jsp";
			}else{
				String Path="/Normal/HRIndex.jsp";
				sendPath=FactoryPath+"/SelectNormalUserInfo";
				context.setAttribute("SendPath", Path);
				
			}
			Session.setAttribute("loginUserinfo", per);
			Session.setAttribute("AccountIncoPath", per.getAccountIncoPath());
			context.setAttribute("AccountIncoPath", per.getAccountIncoPath());
		}else{
			sendPath=FactoryPath+"/HRlogin/login.jsp";
		}
		response.sendRedirect(sendPath);
		}
	}

