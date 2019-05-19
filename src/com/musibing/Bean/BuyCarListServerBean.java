package com.musibing.Bean;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.musibing.server.BuyCarListServer;
import com.musibing.vo.AccountVO;
import com.musibing.vo.BuyCarList;
@Service("buyCarListServerBean")
@Transactional 
public class BuyCarListServerBean implements BuyCarListServer{
	@Resource
	SessionFactory factory;
	BuyCarList bul;

	public BuyCarList SelectBuyCarListForID(int BuyCarListID) {
		System.out.println("ID:"+BuyCarListID);
		return (BuyCarList)factory.getCurrentSession().get(BuyCarList.class,BuyCarListID );
	
	}

	
	public List<BuyCarList> SelectBuyCarListForBuyCarID(int BuyCarID) {
		return (List<BuyCarList>)factory.getCurrentSession().createQuery("from BuyCarList as bc where  bc.buyCarID.buyCarID=?").setInteger(0, BuyCarID).list();
	}


	
	public void SaveBuyCarList(BuyCarList buyCarList) {
		
	factory.getCurrentSession().save(buyCarList);
	
		
	}
	public int SelectMaxBuyCarListID(){
		
		return (int)factory.getCurrentSession().createQuery("select max(buyCarListID) from BuyCarList").uniqueResult();
	}


	
	public long viewBuyCarListProductNumberByByCarID(int buyCarID) {
		
		return (long)factory.getCurrentSession().createQuery("select count(buyCarListID) from BuyCarList where buyCarID.buyCarID=?").setInteger(0, buyCarID).uniqueResult();
	}
	
	

}
