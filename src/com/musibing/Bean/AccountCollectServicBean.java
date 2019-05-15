package com.musibing.Bean;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.musibing.server.AccountCollectService;
import com.musibing.vo.AccountCollect;
@Service("accountCollectServicBean")
@Transactional 
public class AccountCollectServicBean implements AccountCollectService{
	@Resource
	SessionFactory factory;
	
	public List<AccountCollect> ViewAllAccountCollect() {
		
		return factory.getCurrentSession().createQuery("from AccountCollect").list();
	}

	
	public AccountCollect ViewAccountCollectForParameterID(String HQL) {
		return (AccountCollect)factory.getCurrentSession().createQuery(HQL).uniqueResult();
	}


	
	public List<AccountCollect> ViewAccountCollectListForParameterID(String HQL) {
		
		return factory.getCurrentSession().createQuery(HQL).list();
	}
	
	

}
