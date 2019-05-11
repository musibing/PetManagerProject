package com.musibing.action;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.musibing.server.IndexDataManagerServer;
import com.musibing.vo.IndexCat;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
@Controller
@Scope("prototype")
public class SelectIndexCatData extends ActionSupport {
	@Resource IndexDataManagerServer IDMS;
	private IndexCat IDC;
	HttpServletRequest HSR = ServletActionContext.getRequest();
	HttpServletResponse HSP = ServletActionContext.getResponse();
	HttpSession HSession=HSR.getSession();
	
	public IndexCat getIDC() {
		return IDC;
	}
	public void setIDC(IndexCat iDC) {
		IDC = iDC;
	}
public String execute(){
	try {
		HSP.getWriter().write("Error");
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	ActionContext.getContext().put("IndexCatData", IDMS.ViewAllCatData());
	return "list";
}
	
}
