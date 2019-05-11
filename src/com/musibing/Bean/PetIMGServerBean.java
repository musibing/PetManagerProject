package com.musibing.Bean;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.musibing.server.PetIMGServer;
import com.musibing.vo.PetDataVOClass;
import com.musibing.vo.PetIMG;


@Service("PetIMGServerBean")
@Transactional
public class PetIMGServerBean implements PetIMGServer {
	@Resource
	SessionFactory factory;
	PetDataVOClass pdvoc;
	@Transactional
	public void savePetIMG(PetIMG petIMG) {
		factory.getCurrentSession().save(petIMG);
		
	}
	
	public List<PetIMG> findAllPetImg(PetDataVOClass pdvoc) {
	
		return 	factory.getCurrentSession().createQuery("from PetIMG Where pDVOC="+pdvoc.getPetID()+"").list();
	}

	
	public void updatePetIMG(PetIMG petimg) {
		
		factory.getCurrentSession().update(petimg);
	}
	
	
}
