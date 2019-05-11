package com.musibing.Bean;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.musibing.server.PublicService;
import com.musibing.vo.Product;
@Service("publicServiceBean")
@Transactional 
public class PublicServiceBean implements PublicService{
	@Resource
	SessionFactory factory;
	
	public Object findOject(int ObjectID) {
		
		return factory.getCurrentSession().get(Product.class,ObjectID);
	}

	
	public void deleteOject(int... PetTypeID) {
		// TODO Auto-generated method stub
		
	}

	
	public void updateOject(Object Pvo) {
		// TODO Auto-generated method stub
		
	}

	
	public void saveOject(Object Pvo) {
		// TODO Auto-generated method stub
		
	}

}
