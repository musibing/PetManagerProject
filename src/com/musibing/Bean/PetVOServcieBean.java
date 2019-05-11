package com.musibing.Bean;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.musibing.server.PetVOServcie;
import com.musibing.vo.PetDataVOClass;
@Service("PetVOServcieBean")
@Transactional 
public class PetVOServcieBean implements PetVOServcie{
	@Resource
	SessionFactory factory;
	
	public List<PetDataVOClass> ViewAllPetVOClass() {
		
		 return factory.getCurrentSession().createQuery("from PetDataVOClass").list();
	}
	public void UpdatePetVOClass(PetDataVOClass petdatavoclass){
		factory.getCurrentSession().update(petdatavoclass);
	}
	public void SavePetVOClass(PetDataVOClass petdatavoclass){
		factory.getCurrentSession().save(petdatavoclass);
	}
}
