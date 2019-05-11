package com.musibing.util;

import static org.junit.Assert.*;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.musibing.server.ArticleService;
import com.musibing.server.PetVOServcie;
import com.musibing.vo.PetDataVOClass;

public class PetVOClass {
	@Resource
	PetDataVOClass pdvo;
	PetVOServcie petvoservice;
	
	
	@Test
	public void test1() {
		ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
		petvoservice = (PetVOServcie) act.getBean("PetVOServcieBean");
		List<PetDataVOClass> list=petvoservice.ViewAllPetVOClass();
		for(int x=0;x<list.size();x++){
			if(x<=22){
				list.get(x).setExhibitionIMG("../img/PetIMG/Dog/baseic/"+list.get(x).getPetID()+"baseic0.jpg");
				
				
			}else if(x>=22&&x<=33){
				
				list.get(x).setExhibitionIMG("../img/PetIMG/Cat/baseic/"+list.get(x).getPetID()+"baseic0.jpg");
			}else{
				list.get(x).setExhibitionIMG("../img/PetIMG/Crawler/baseic/"+list.get(x).getPetID()+"baseic0.jpg");
				
			}
			
			petvoservice.UpdatePetVOClass(list.get(x));
		}
	}

}
