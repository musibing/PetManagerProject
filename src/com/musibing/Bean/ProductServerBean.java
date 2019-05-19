package com.musibing.Bean;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.musibing.server.ProductServer;
import com.musibing.vo.Product;
import com.musibing.vo.ProductIMG;
@Service("productServerBean")
@Transactional 
public class ProductServerBean implements ProductServer{
	@Resource
	SessionFactory factory;
	ProductIMG Pimg;
public Product slectProductOfID(int ProductID) {
		
		return (Product)factory.getCurrentSession().get(Product.class,ProductID);
	}
@Transactional
	public void saveProductData(Product pd) {
		
		try {
			factory.getCurrentSession().save(pd);
		} catch (HibernateException e) {
		
		}
		System.out.println("完成存储");
	}
public List<Product> viewAllProductInfo() {
		return factory.getCurrentSession().createQuery("from Product").list();
	    }

public List<Product> viewAllProductForBranName(String brandName) {
		return factory.getCurrentSession().createQuery("from Product where brandName=?").setString(0, brandName).list();

	}

public void updateProductData(Product pd) {
		 factory.getCurrentSession().update(pd);
		
	}

public int viewMaxSalesVolumes() {
	
	return (int)factory.getCurrentSession().createQuery("select max(salesVolumes) from Product").list().get(0);
}
public int viewMaxContents(){
	factory.getCurrentSession().createQuery("select count(*) from Product");
	return 2;
}

public List<Product> viewMaxSalesVolumesTop() {
	
	return factory.getCurrentSession().createQuery("from Product as pd order by pd.salesVolumes desc").list();
}

public int SelectMaxProductID() {
	
	return (int)factory.getCurrentSession().createQuery("select max(productID) from Product").uniqueResult();
}

public List<Product> ViewAllProductForProductClassification(String classificationName) {
	
	 return (List<Product>)factory.getCurrentSession().createQuery("from Product where tagVelTOP=? ORDER BY salesVolumes DESC").setString(0,classificationName).setFirstResult(0).setMaxResults(8).list();
}

public List<Product> ViewClassificationProductForTagVel(String productTagVelName) {
	return (List<Product>)factory.getCurrentSession().createQuery("from Product where tagVel2=? ORDER BY salesVolumes DESC").setString(0,productTagVelName).setFirstResult(0).setMaxResults(24).list();
	
}

public List<Product> ViewHotProcut() {

	return (List<Product>)factory.getCurrentSession().createQuery("from Product ORDER BY salesVolumes DESC").setFirstResult(0).setMaxResults(6).list();
}

public List<Product> ViewClassificationProductForTagVel1(
		String productTagVelName) {
	return (List<Product>)factory.getCurrentSession().createQuery("from Product where tagVel1=? ORDER BY salesVolumes DESC").setString(0,productTagVelName).setFirstResult(0).setMaxResults(24).list();

}

public List<Product> ViewRecommendProductForArrayList(String productTagVelTOP) {

	 return (List<Product>)factory.getCurrentSession().createQuery("from Product where tagVelTOP=? ORDER BY evaluationIndex DESC").setString(0,productTagVelTOP).setFirstResult(0).setMaxResults(6).list();
}

public List<Product> ViewHotProcutForClassificationPage(int startPage,int endPage) {
	
	return (List<Product>)factory.getCurrentSession().createQuery("from Product ORDER BY salesVolumes DESC").setFirstResult(startPage).setMaxResults(endPage).list();
}

public List<Product> SelectClassificationProductForTags(String HQL) {
	
	return (List<Product>)factory.getCurrentSession().createQuery(HQL).setFirstResult(0).setMaxResults(24).list();
}

public List<Product> selectProductByAttrbuteArrayList(String HQL) {
	
	return (List<Product>)factory.getCurrentSession().createQuery(HQL).list();
}


	

}
