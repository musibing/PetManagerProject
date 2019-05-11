package com.HR_Manager.Servlet;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.HR_DaoInterface.dao.DaoInterface;
import com.HR_Factory.factory.Factory;
import com.HR_JavaBean.vo.PersonInfo;

@WebServlet("/ViewUserIncoPyIDforAjax")
public class ViewUserIncoPyIDforAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
	ServletContext context=request.getServletContext();
		String FactotyPath=context.getContextPath();
	String UseridStr=request.getParameter("Userid");
	int Userid=0;
		if(UseridStr!=null){
			Userid=Integer.parseInt(UseridStr);
		}
		System.out.println("得到的用户ID是:"+Userid);
		DaoInterface DaoInter=Factory.getdaointerface();
		PersonInfo per=new PersonInfo();
		try {
			per=DaoInter.GetUserInfo(Userid);
		} catch (Exception e1) {
			
			e1.printStackTrace();
		}
		System.out.println(per.getId()+":"+per.getUsername()+":"+per.getUserbirthday());
		String AccountIncoStrPath=per.getAccountIncoPath();
		int FactoryPathLength=FactotyPath.length();
		System.out.println("工程序路径是："+FactotyPath+"工程的长度是："+FactoryPathLength);
		int index=AccountIncoStrPath.indexOf(FactotyPath);
		AccountIncoStrPath=AccountIncoStrPath.substring(index);
		int imgindex=AccountIncoStrPath.indexOf("/img");
		AccountIncoStrPath=AccountIncoStrPath.substring(imgindex);
		AccountIncoStrPath=".."+AccountIncoStrPath;
		System.out.println("得到工程名在路径中第一次现的位置是："+index);
		
		if(AccountIncoStrPath.trim()==null||"".equals(AccountIncoStrPath.trim())){
			AccountIncoStrPath="../img/login/default.png";
		}
		System.out.println("得到的用户图像的路径是:"+AccountIncoStrPath);
		try {
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			out.write(AccountIncoStrPath);
			out.close();
			AccountIncoStrPath=null;
			
		} catch (Exception e) {
			PrintWriter toClient=response.getWriter();
			response.setContentType("text/html");
			toClient.write("图像加载失败！");
			toClient.close();
			e.printStackTrace();
		}
		
		
		
		
	}

}
