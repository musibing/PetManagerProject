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
import com.HR_JavaBean.vo.HRPayInfo;

@WebServlet("/HRPayInfoUpdate")
public class HRPayInfoUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		DaoInterface daoInter=Factory.getdaointerface();
		ServletContext context=request.getServletContext();
		String FactoryPath=context.getContextPath();
		int resutl=0;
		String SendPath="";
		String payidStr=request.getParameter("payid");
		int payid=0;
		if(payidStr!=null){
			payid=Integer.parseInt(payidStr);
		}
		 String epmlyidStr=request.getParameter("HRepmlyID");
		 int epmlyid=0;
		 if(epmlyidStr!=null){
			 epmlyid=Integer.parseInt(epmlyidStr);
		 }
		String basepaynumber=request.getParameter("basepaynumber");
		String eatnumberStr=request.getParameter("eatnumber");
		float eatnumber = Float.valueOf(eatnumberStr);
		String houesnumberStr=request.getParameter("houesnumber");
		float houesnumber = Float.valueOf(houesnumberStr);
		String yearStr=request.getParameter("year");
		String monthStr=request.getParameter("months");
		String dayStr=request.getParameter("days");
		yearStr=yearStr+"-"+monthStr+"-"+dayStr;
		Date granttim=Date.valueOf(yearStr);
		String perfectStr=request.getParameter("perfect");
		float perfect = Float.valueOf(perfectStr);
		String taxesStr=request.getParameter("taxes");
		float taxes = Float.valueOf(taxesStr);
		String eypayStr=request.getParameter("eypay");
		float eypay = Float.valueOf(eypayStr);
		String rewardStr=request.getParameter("reward");
		float reward = Float.valueOf(rewardStr);
		String totalpayStr=request.getParameter("totalpay");
		float totalpay = Float.valueOf(totalpayStr);
		HRPayInfo Payinfo=new HRPayInfo();
		Payinfo.setPayid(payid);
		Payinfo.setEpmlyid(epmlyid);
		Payinfo.setBasicNumber(basepaynumber);
		Payinfo.setEatNumber(eatnumber);
		Payinfo.setHouseNumber(houesnumber);
		Payinfo.setGranttim(granttim);
		Payinfo.setScot(perfect);
		Payinfo.setDuty(taxes);
		Payinfo.setOther(eypay);
		Payinfo.setRewards(reward);
		Payinfo.setTotalize(totalpay);
		try {
			resutl=daoInter.HRPayInfoUpdate(Payinfo);
		} catch (Exception e) {
			
			e.printStackTrace();
		}if(resutl!=0){
			SendPath=FactoryPath+"/HRPayManager/PayDataView.jsp";
		}else{
			SendPath=FactoryPath+"/HRPayManager/HRPayInfoInput.jsp";
		}
		response.sendRedirect(SendPath);
	}

}
