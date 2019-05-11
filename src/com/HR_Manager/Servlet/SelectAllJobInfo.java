package com.HR_Manager.Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.HR_DaoInterface.dao.DaoInterface;
import com.HR_Factory.factory.Factory;
import com.HR_JavaBean.vo.Jobinfo;



@WebServlet("/SelectAllJobInfo")
public class SelectAllJobInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		String SendPath=request.getParameter("SendPath");
		System.out.println("查询所有工作信息Servlet得到的发送地址是："+SendPath);
		String resetsaveID="/HRemployManager/RemployInfoUpdate.jsp";
		HttpSession session=request.getSession();
		if(resetsaveID.equals(SendPath)){
			resetsaveID=request.getParameter("EmployID");
			session.setAttribute("EmployID", resetsaveID);
		}
		DaoInterface DaoInter=Factory.getdaointerface();
		List<Jobinfo> list=new ArrayList<Jobinfo>();
		int Max=0;
		String sql="select max(id) from hremploy";
		try {
			list=DaoInter.SelectAllJobinfo();
			Max=DaoInter.SelectMaxID(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
		String FactoryPath=request.getContextPath();
		session.setAttribute("AllJobInfo", list);
		session.setAttribute("MaxID", (Max+1));
		response.sendRedirect(FactoryPath+SendPath);
	}

}
