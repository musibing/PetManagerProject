package com.musibing.Bean;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.musibing.server.ProductOderServer;
import com.musibing.vo.AccountVO;
import com.musibing.vo.Product;
import com.musibing.vo.ProductOder;

@Service("productOderServerBean")
@Transactional
public class ProductOderServerBean implements ProductOderServer{
	@Resource
	SessionFactory factory;
	ProductOder Poder;
	@Transactional
	public void SaveProductOder(ProductOder pOder) {
		factory.getCurrentSession().save(pOder);
		
	}
	@Transactional
	public void UpdateProductOder(ProductOder pOder) {
		factory.getCurrentSession().update(pOder);
		
	}
	public List<ProductOder> SelectAllProductOderForAccoun(AccountVO AVO) {	
		System.out.println(AVO.getAccountId());
					
		String SQL="select * from productoder  where accountId=(select ACCOUNTID from accountvo where ACCOUNTID=?)";
		String HQL1="from ProductOder por  where por.accountId.accountId=?";
		String HQL2="from ProductOder por left outer join por.accountId where por.accountId.accountId=?";
		List<ProductOder> AllProductOderForAccoun=new ArrayList<ProductOder>();
		try {
			AllProductOderForAccoun=factory.getCurrentSession().createQuery(HQL1).setInteger(0, AVO.getAccountId()).list();
		} catch (HibernateException e) {
			
			e.printStackTrace();
		}
		return AllProductOderForAccoun;
	}
	public ProductOder SelectAllProductOderForAccounSimple(AccountVO AVO) {	
		System.out.println(AVO.getAccountId());
					
		String SQL="select * from productoder  where accountId=(select ACCOUNTID from accountvo where ACCOUNTID=?)";
		String temp="from ProductOder por  where por.accountId.accountId=?";
		String HQL="from ProductOder por left outer join por.accountId where por.accountId.accountId=?";
	ProductOder AllProductOderForAccoun=new ProductOder();
		try {
			AllProductOderForAccoun=(ProductOder) factory.getCurrentSession().createQuery(temp).setInteger(0, AVO.getAccountId()).uniqueResult();
		} catch (HibernateException e) {
			
			e.printStackTrace();
		}
		return AllProductOderForAccoun;
	}
	public ProductOder SelectProductOderForProductOderID(int ProductOderID){
		String HQL="from ProductOder where productOderID=?";
		
	return (ProductOder)factory.getCurrentSession().createQuery(HQL).setInteger(0, ProductOderID).uniqueResult();
		
	}


	public List<ProductOder> SelectAllProductOder() {
		String HQL="from ProductOder";
		
		return (List<ProductOder>)factory.getCurrentSession().createQuery(HQL).list();
		
	}

	
	public int SelectMaxProductOderID() {
		String HQL="select max(productOderID) from ProductOder";
							
		return (int)factory.getCurrentSession().createQuery(HQL).uniqueResult();
	}
	public List<ProductOder> viewProductOderByAccountID(int accountID){
		
		return (List<ProductOder>)factory.getCurrentSession().createQuery("from ProductOder where accountId.accountId=?").setInteger(0, accountID).list();
	}
}
