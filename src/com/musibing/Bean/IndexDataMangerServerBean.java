package com.musibing.Bean;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.musibing.server.IndexDataManagerServer;
import com.musibing.vo.IndexCat;
@Service("indexDataManagerServerBa")
@Transactional
public class IndexDataMangerServerBean implements  IndexDataManagerServer{
@Resource SessionFactory factory;
	@SuppressWarnings("unchecked")
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<IndexCat> ViewAllCatData() {
		
		return factory.getCurrentSession().createQuery("from IndexCat").list();
	}

}
