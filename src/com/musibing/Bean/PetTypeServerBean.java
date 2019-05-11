package com.musibing.Bean;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.musibing.server.PetTypeServer;
import com.musibing.vo.PetDataVOClass;
import com.musibing.vo.PetType;

@Service("petTypeServerBa")

@Transactional
public class PetTypeServerBean implements PetTypeServer {
	@Resource
	SessionFactory factory;

	@Transactional(propagation = Propagation.NOT_SUPPORTED)
	public PetType finPet(int PetTypeID) {
		
		return null;
	}

	@Transactional
	public void deletePet(int... PetTypeID) {
		
	}

	@Transactional
	public void update(PetType Pvo) {
		

	}

	@Transactional
	public void save(PetType Pvo) {
		
		factory.getCurrentSession().save(Pvo);

	}

	@Transactional(propagation = Propagation.NOT_SUPPORTED)
	public List<PetTypeServer> ViewAllPetTypeForPage(int ThisPage,int MaxConent) {
		return factory.getCurrentSession().createQuery("from PetType").setFirstResult(ThisPage).setMaxResults(MaxConent).list();
	}

	@Transactional(propagation = Propagation.NOT_SUPPORTED)
	public int GetPetTypeMaxID() {
		int rusult = 0;
		String hql = "select max(petTypeID) from PetType";
		Query li = factory.getCurrentSession().createQuery(hql);
		
		List<Object[]> ls = li.list();

		if (ls.size() == 0) {
			rusult = 0;

		} else {
			for (int i = 0; i < ls.size(); i++) {
				
				
				rusult = Integer.parseInt(String.valueOf(ls.get(i))); 

		
			}

		}

		return rusult;
	}

}
