package com.musibing.Bean;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;



import com.musibing.server.EmployinfoService;
import com.musibing.vo.AccountVO;
import com.musibing.vo.BuyCar;
import com.musibing.vo.Employinfo;
@Service("employinfoServiceBean")
@Transactional 
public class EmployinfoServiceBean implements EmployinfoService{
	@Resource
	SessionFactory factory;
	Employinfo el;
	@Transactional
	public void SaveEmployInfo(Employinfo el) {
		factory.getCurrentSession().save(el);
		
	}
	
	
}
