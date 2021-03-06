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
import com.HR_JavaBean.vo.HRRewardsinfo;


@WebServlet("/SelectAllHRRewardsinfo")
public class SelectAllHRRewardsinfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		HttpSession session=request.getSession();
		DaoInterface DaoInter=Factory.getdaointerface();
		int rows=5;
		int thispage=1;
		int Maxcount=0;
		int getJspPage=0;
		String getpage=request.getParameter("page");
		if(getpage!=null){
			getJspPage=Integer.parseInt(getpage);
		}
		int MaxPage=0;
		List<HRRewardsinfo> AllPersonInfolist=new ArrayList<HRRewardsinfo>();
		try {
			Maxcount=DaoInter.GetHRRewardsinfoMaxCount();
			MaxPage=Maxcount%rows>0?Maxcount/rows+1:Maxcount/rows;
			session.setAttribute("MaxPages", MaxPage);
			if(getJspPage<1){
				thispage=1;
			}else if(getJspPage>MaxPage){
				thispage=MaxPage;
			}else{
				thispage=getJspPage;
			}
			session.setAttribute("thispages", thispage);
			AllPersonInfolist=DaoInter.SlectAllHRRewardsinfo(thispage, rows);
			} catch (Exception e) {
			e.printStackTrace();
		}
		String ContextPath=request.getContextPath();
		
		session.setAttribute("AllRewardsInfo", AllPersonInfolist);
		response.sendRedirect(ContextPath+"/HRRewards/HRRewardsinfoview.jsp");
		
		
		
		
	}

}
