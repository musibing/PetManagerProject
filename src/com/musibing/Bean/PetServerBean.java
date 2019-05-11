package com.musibing.Bean;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.musibing.server.PetServer;
import com.musibing.vo.PetDataVOClass;


@Service("petServerBean")
@Transactional
public class PetServerBean implements PetServer{
@Resource SessionFactory factory;
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public PetDataVOClass finPetForID(int PetID) {
	return (PetDataVOClass)factory.getCurrentSession().get(PetDataVOClass.class, PetID);	
		
	}
	@Transactional
	public void deletePet(int... PetID) {
		for(int PetIDInt:PetID){

			factory.getCurrentSession().delete(factory.getCurrentSession().load(PetDataVOClass.class, PetIDInt));
			}	
	}

	@Transactional
	public void update(PetDataVOClass Pvo) {
		factory.getCurrentSession().merge(Pvo);
		
	}

	@Transactional
	public void savePetData(PetDataVOClass Pvo) {
		try {
			factory.getCurrentSession().save(Pvo);
			System.out.println("存储完成！");
		} catch (HibernateException e) {
			
			e.printStackTrace();
		}
	
		
	}

	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<PetDataVOClass> ViewPetForPage() {
		
		return factory.getCurrentSession().createQuery("from PetDataVOClass").setMaxResults(12).list();
	
	}
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<PetDataVOClass> ViewAllPet() {
		
		return factory.getCurrentSession().createQuery("from PetDataVOClass").list();
	
	}
}
