package com.musibing.Bean;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.musibing.server.ProductJudgedService;
import com.musibing.vo.ProductJudged;
@Service("ProductJudgedServiceBean")
@Transactional 
public class ProductJudgedServiceBean implements ProductJudgedService{

	@Resource
	SessionFactory factory;
	@Transactional
	public void SaveProductJudged(ProductJudged productjudged) {
		factory.getCurrentSession().save(productjudged);
		
	}

	
	public int SelectMaxProductJudgedID() {
		
		return (int)factory.getCurrentSession().createQuery("select max(judgedID) from ProductJudged").uniqueResult();
	}


	
	public List JudgedStatistics(int productID) {
		return (List)factory.getCurrentSession().createQuery("select max(judgedID) from ProductJudged where ").list();
	
	}
	public List<ProductJudged> JudgedForProductID(int productID){
		return (List)factory.getCurrentSession().createQuery(" from ProductJudged as productJudged where productJudged.productoderlist in (select productOderListID from ProductOderList as  productOderList where productOderList.productID=?)").setInteger(0, productID).list();
		
	}

}
