package com.musibing.Bean;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.musibing.server.CopyOfProductServer;
import com.musibing.server.ProductServer;
import com.musibing.vo.AccountVO;
import com.musibing.vo.CopyOfProduct;
import com.musibing.vo.CopyOfProductIMG;
import com.musibing.vo.Product;
import com.musibing.vo.ProductIMG;
@Service("CopyOfProductServerBean")
@Transactional 
public class CopyOfProductServerBean implements CopyOfProductServer{
	@Resource
	SessionFactory factory;
	CopyOfProductIMG Pimg;

	
	public CopyOfProduct slectProductOfID(int ProductID) {
		CopyOfProduct pd=(CopyOfProduct)factory.getCurrentSession().get(CopyOfProduct.class,ProductID);
		
		return pd;
		
	}


	@Transactional
	public void saveProductData(CopyOfProduct pd) {
		System.out.println("pd:>>>>"+pd);
		
		try {
			factory.getCurrentSession().save(pd);
		} catch (HibernateException e) {
		
		}
		System.out.println("完成存储");
		
	}


	
	public List<CopyOfProduct> viewAllProductInfo() {
		return factory.getCurrentSession().createQuery("from CopyOfProductServer").list();
		
	}


	
	public List<CopyOfProduct> viewAllProductForBranName(String brandName) {
		return factory.getCurrentSession().createQuery("from CopyOfProductServer where brandName=?").setString(0, brandName).list();

	}


	@Transactional
	public void updateProductData(CopyOfProduct pd) {
		 factory.getCurrentSession().update(pd);
		
	}


	

	

}
