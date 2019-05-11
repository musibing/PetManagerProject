package com.musibing.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.musibing.server.AccountServer;
import com.musibing.util.FileBuffer;
import com.musibing.vo.AccountVO;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class GetHtmlData extends ActionSupport {
	@Resource
	AccountServer Us;
	AccountVO uvo;

	HttpServletRequest HSR = ServletActionContext.getRequest();
	HttpServletResponse HSP = ServletActionContext.getResponse();
	HttpSession HSession = HSR.getSession();

	public AccountVO getUvo() {
		return uvo;
	}

	public void setUvo(AccountVO uvo) {
		this.uvo = uvo;
	}

	public void getHtmlData() {
		System.out.println("测试");
		String FilePath="";
		if("sietmap".equals(HSR.getParameter("FileName"))){
			 FilePath = "H:\\java\\PetManagerProject\\WebContent\\WebsiteAbout\\"
					+ HSR.getParameter("FileName") + ".jsp";
		}else{
			 FilePath = "H:\\java\\PetManagerProject\\WebContent\\WebsiteAbout\\"
					+ HSR.getParameter("FileName") + ".html";
		}
	
		System.out.println("测试" + FilePath);

		FileBuffer fb = new FileBuffer();
		String FileData = fb.getTempFileData(FilePath);

		int StartNumber = FileData.indexOf("WACControlTitle");
		int EndNumber = FileData.indexOf("WACControrContent_end");
		System.out.println("得到的开始位置是：" + StartNumber + "结束位置：" + EndNumber);

		FileData = FileData.substring(StartNumber - 9, EndNumber + 25);

		System.out.println(FileData);

		try {
			HSR.setCharacterEncoding("UTF-8");
			HSP.setContentType("text/html;charset=UTF-8");
			PrintWriter out = HSP.getWriter();

			out.write(FileData);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
