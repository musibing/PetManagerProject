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
import com.HR_JavaBean.vo.PersonInfo;

@WebServlet("/HRPayManagerInfoInputCheck")
public class HRPayManagerInfoInputCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		String SendPath=request.getParameter("SendPath");
		System.out.println("支付管理信息输入前检查Servlet得到的发送路径是："+SendPath);
		String sql="select max(id) from hrpay";
		int MaxID=0;
		DaoInterface DaoInter=Factory.getdaointerface();
		List<PersonInfo> list=new ArrayList<PersonInfo>();
		try {
			list=DaoInter.SelectAllHRPersonInfo();
			MaxID=DaoInter.SelectMaxID(sql);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		HttpSession session=request.getSession();
		String FactoryPath=request.getContextPath();
		session.setAttribute("MaxID", MaxID+1);
		session.setAttribute("AllPersonInfo", list);
		response.sendRedirect(FactoryPath+SendPath);
	}

}
