package com.musibing.action;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class JSONTest extends ActionSupport {

	private static final long serialVersionUID = -3817979001580253164L;
	HttpServletRequest HSR = ServletActionContext.getRequest();
	HttpServletResponse HSP = ServletActionContext.getResponse();

	public void getJSON() {

		JSONObject objecx = new JSONObject();
		System.out.println("1>>>");
		try {
			objecx.put("statusTotal", "OK");
			objecx.put("dataTotal", "8");
			PrintWriter out = HSP.getWriter();
			System.out.println("3>>>");
			out.write(objecx.toString());

			System.out.println("得到的JSONObject对象的值是：" + objecx.toString());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
