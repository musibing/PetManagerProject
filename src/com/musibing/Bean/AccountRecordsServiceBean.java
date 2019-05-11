package com.musibing.Bean;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.musibing.server.AccountRecordsService;
import com.musibing.vo.AccountRecords;
import com.musibing.vo.BuyCarList;
@Service("accountRecordsService")
@Transactional 
public class AccountRecordsServiceBean implements AccountRecordsService{
	@Resource
	SessionFactory factory;
	
	public void saveAccountRecords(AccountRecords ars) {

		factory.getCurrentSession().save(ars);
		
	}public int SelectAccountRecordsMaxID(){
		return (int)factory.getCurrentSession().createQuery("select Max(accountRecordsID) from AccountRecords ").list().get(0);
	}
	
	public void UpdateAccountRecords(AccountRecords ars) {
		factory.getCurrentSession().update(ars);
		
		
	}
	
	public AccountRecords SelectAccountRecordsIDForAccountRecordsID(int AccountRecordsID) {
		
		return (AccountRecords)factory.getCurrentSession().get(AccountRecords.class, AccountRecordsID);
	}

}
