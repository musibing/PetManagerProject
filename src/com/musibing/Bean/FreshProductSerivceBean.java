package com.musibing.Bean;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.musibing.server.FreshProductSerivce;
import com.musibing.vo.ProductIMG;
@Service("FreshProductSerivceBean")
@Transactional 
public class FreshProductSerivceBean implements FreshProductSerivce{
	@Resource
	SessionFactory factory;
	com.musibing.vo.FreshProduct Pimg;
	@Override
	@Transactional
	public void FreshProduct(com.musibing.vo.FreshProduct pd) {
		factory.getCurrentSession().save(pd);
		
	}
	
	public int SelectFreshMaxProductID() {
	
		System.out.println("查询生最大值");
		List li=factory.getCurrentSession().createQuery("SELECT MAX(productID) FROM FreshProduct").list();
		System.out.println("集合为空："+(li.size()==0));
		return (int)li.get(0);
			 
	}

	
	public List<com.musibing.vo.FreshProduct> SelectAllFreshProduct() {
															 
		return factory.getCurrentSession().createQuery("from FreshProduct").list();
	}

	
	public com.musibing.vo.FreshProduct SelectFreshProductForFreshProductID(int FreshProductID) {
		return (com.musibing.vo.FreshProduct)factory.getCurrentSession().createQuery("from FreshProduct where productID=?").setInteger(0, FreshProductID).uniqueResult();
	
	}

}
