package com.musibing.util;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;







import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.musibing.server.ArticleService;
import com.musibing.server.PetServer;
import com.musibing.server.PetIMGServer;
import com.musibing.vo.PetDataVOClass;
import com.musibing.vo.PetIMG;

public class tempPetIMGFilePathChange {
	@Resource
	static PetIMG pimg;
	static PetIMGServer pimgserver;
	static PetServer pets;
	static PetDataVOClass petvo;
	
	
	public static void main(String[] args) {
		String PetIDStr="91100001";
		int PetID=0;
		List<PetIMG> list=new ArrayList<PetIMG>();
		
		ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
		pimgserver = (PetIMGServer) act.getBean("PetIMGServerBean");
		pets = (PetServer) act.getBean("petServerBean");
		
	for(int i=11;i<=23;i++){
		if(i>=10){
			PetIDStr="9110000";
		}
		PetIDStr+=i;
		System.out.println(PetIDStr);
		PetID=Integer.parseInt(PetIDStr);
		System.out.println(PetID);
		petvo=pets.finPetForID(PetID);
		System.out.println("数据结果"+petvo);
		list=pimgserver.findAllPetImg(petvo);
		
	for(int a=0;a<list.size();a++){
		
		if(list.get(a).getFileName().indexOf("petEntryStatistics")!=-1){
			StringBuffer bf=new StringBuffer(list.get(a).getFilePath());
			bf=bf.insert(3, "img/");
			pimg=list.get(a);
			pimg.setFilePath(bf.toString());
			pimgserver.updatePetIMG(pimg);
			
		}
	}
	PetIDStr="9110000";
	}

	}

}
