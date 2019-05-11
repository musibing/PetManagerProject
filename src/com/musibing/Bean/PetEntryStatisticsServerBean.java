package com.musibing.Bean;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.musibing.server.PetEntryStatisticsServer;
import com.musibing.vo.PetEntryStatistics;
import com.musibing.vo.ProductOder;

@Service("PetEntryStatisticsServerBean")
@Transactional
public class PetEntryStatisticsServerBean implements PetEntryStatisticsServer{
	@Resource
	SessionFactory factory;
	ProductOder Poder;
	
	
	@Transactional
	public void savePetEntryStatistics(PetEntryStatistics pess) {
		factory.getCurrentSession().save(pess);
		
	}

}
