package com.musibing.Bean;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.musibing.server.BuyCarServer;
import com.musibing.vo.AccountVO;
import com.musibing.vo.BuyCar;
@Service("buyCarServerBean")
@Transactional 
/*@Resource(name="accountServerBa")*/
public class BuyCarServerBean implements BuyCarServer {
	@Resource
	SessionFactory factory;
	AccountVO Uvo;
	@Transactional
	public void AddBuyCar(BuyCar BC) {
		factory.getCurrentSession().save(BC);
		
	}

	public BuyCar SelectBuyCarForID(int BuyCarID) {
		System.out.println(">>>"+factory.getCurrentSession().get(BuyCar.class, BuyCarID));
		return (BuyCar)factory.getCurrentSession().get(BuyCar.class, BuyCarID);
		
	}

	@Transactional
	public void UpdateBuyCar(BuyCar BC) {
		factory.getCurrentSession().update(BC);
		
	}

	
	public int SelectMaxBuyCarID() {
		
		return (int)factory.getCurrentSession().createQuery("Select Max(buyCarID) from BuyCar").list().get(0);
		
	}

	
	public AccountVO ViewAccountForBuyCarID() {
		return 	(AccountVO)factory.getCurrentSession().createQuery("select bc.aVO from BuyCar as bc").uniqueResult();
	
	}
	public BuyCar ViewAllBuyCar(){
		return 	(BuyCar)factory.getCurrentSession().createQuery("from BuyCar").list().get(0);
	}


	public BuyCar SelectBuyCarForAccountID(int AccountID) {
	
		return (BuyCar)factory.getCurrentSession().createQuery("from BuyCar as bc where aVO.accountId=?").setInteger(0, AccountID).uniqueResult();
	}
	

}
