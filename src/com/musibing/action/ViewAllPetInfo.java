package com.musibing.action;

import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Scope;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;

import com.musibing.server.AccountServer;
import com.musibing.server.PetServer;
import com.musibing.server.PetTypeServer;
import com.musibing.vo.AccountVO;
import com.musibing.vo.PetDataVOClass;
import com.musibing.vo.PetType;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class ViewAllPetInfo extends ActionSupport {
	@Resource
	AccountServer Us;
	AccountVO UVO;
	PetServer Ps;
	PetTypeServer Pts;
	PetType pt;

	HttpServletRequest HSR = ServletActionContext.getRequest();
	HttpServletResponse HSP = ServletActionContext.getResponse();
	HttpSession HSession = HSR.getSession();
	public PetType getPetDataVOClass() {
		return pt;
	}

	public void sePetType(PetType PT) {
		this.pt = PT;
	}
	public String ViewAllPet(){
		System.out.println("得到所有宠物信息方法测试");
		ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
		Pts = (PetTypeServer) act.getBean("petTypeServerBa");
		List<PetTypeServer> Lis=Pts.ViewAllPetTypeForPage(2,30);
	for (int i = 0; i < Lis.size(); i++) {
		System.out.println("得到的数据是："+Lis.get(i));	
	}
	
	try {
		HSR.setCharacterEncoding("UTF-8");
		HSP.setContentType("text/html;charset=UTF-8");
		HSR.setAttribute("Result", Lis);
		ServletActionContext.getRequest().getSession().setAttribute("ListData", Lis);

		System.out.println(Lis);
		
		/*PrintWriter PW=HSP.getWriter();
		PW.write("OK");*/
		
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return "OK";
		
	}

}
