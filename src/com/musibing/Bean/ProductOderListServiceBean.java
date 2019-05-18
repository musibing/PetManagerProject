package com.musibing.Bean;


import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.musibing.server.ProductOderListService;
import com.musibing.vo.BuyCarList;
import com.musibing.vo.ProductOder;
import com.musibing.vo.ProductOderList;
@Service("productOderListServiceBean")
@Transactional
public class ProductOderListServiceBean implements ProductOderListService{
	@Resource
	SessionFactory factory;
	ProductOderList PoderList;
	
	@Transactional
	public void SaveProductOderList(ProductOderList productOderList) {
		factory.getCurrentSession().save(productOderList);
		
	}

	
	public List<ProductOderList>  SelectAllProductOderList() {
		List<ProductOderList> ProductOderList=new ArrayList<ProductOderList>();
		ProductOderList=(List<ProductOderList>)factory.getCurrentSession().createQuery("from ProductOderList").list();
		
		return ProductOderList;
		
		
	}

	
	public int SelectMAXProductOderListID() {
		
		return (int)factory.getCurrentSession().createQuery("select max(productOderListID) from ProductOderList").uniqueResult();
	}
	public List<Object[]> SelectAllProductOderOderByProductID(){
		String tem="sum(pol.number),";
		
		
			System.out.println("对象是否为空："+factory==null);
			List<Object[]> li = factory.getCurrentSession().createQuery("select pol.freshProduct,sum(pol.number) from ProductOderList as pol  group by pol.freshProduct order by  pol.productOderListID DESC" ).list();
			
			return li;
		
		
		
	}



	public List<ProductOderList> SelectAllForProductOderID(int ProductOderID) {
		
		return factory.getCurrentSession().createQuery("from ProductOderList where productoderID.productOderID=?").setInteger(0, ProductOderID).list();
	}


	@Override
	public List<ProductOderList> viewProductOderListByAccountID(List<ProductOder> productOderID) {
		List<ProductOderList> productOderListByAccountID=new ArrayList<ProductOderList>();
		for (int i = 0; i < productOderID.size(); i++) {
			productOderListByAccountID=factory.getCurrentSession().createQuery("from ProductOderList where productoderID.productOderID=?").setInteger(0, productOderID.get(i).getProductOderID()).list();
			
		}
		
		return productOderListByAccountID;
	}


	@Override
	public ProductOderList viewProductOderListByProductOderListID(
			int productOderListID) {
		
		return (ProductOderList) factory.getCurrentSession().createQuery("from ProductOderList where productOderListID=?").setInteger(0, productOderListID).list();
	}


	
	public void updateProductOderList(ProductOderList productOderList) {
		factory.getCurrentSession().update(productOderList);
		
	}


	@Override
	public List<Object[]> viewTempData() {
		
		SQLQuery sq=(SQLQuery) factory.getCurrentSession().createSQLQuery("select productoderlist.PRODUCTODERLISTID,productoderlist.NUMBER,productoderlist.DEALPRICE,productoderlist.PRODUCTODERSTATUS,productoderlist.PRODUCTID,productoderlist.PRODUCTODERID  from productoderlist");
		 List<Object[]> list=new ArrayList<Object[]>();
		 list= sq.list();
	
		return list;
	}


	
	
}
