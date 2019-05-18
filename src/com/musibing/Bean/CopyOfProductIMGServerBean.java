/*package com.musibing.Bean;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.musibing.server.CopyOfProductIMGServer;
import com.musibing.server.ProductIMGServer;
import com.musibing.server.ProductServer;
import com.musibing.vo.AccountVO;
import com.musibing.vo.CopyOfProduct;
import com.musibing.vo.CopyOfProductIMG;
import com.musibing.vo.Product;
import com.musibing.vo.ProductIMG;
@Service("CopyOfProductIMGServerBean")
@Transactional 
public class CopyOfProductIMGServerBean implements CopyOfProductIMGServer{
	@Resource
	SessionFactory factory;
	ProductIMG Pimg;
public void saveProductImgData(CopyOfProductIMG pd) {
		System.out.println("pd:>>>>"+pd);
		
		try {
			factory.getCurrentSession().merge(pd);
		} catch (HibernateException e) {
		
			e.printStackTrace();
		}
		System.out.println("完成存储");
		
	}
public List<CopyOfProductIMG> SelecProductImgDatForID(CopyOfProduct Pd) {
		System.out.println("PD的属性是"+Pd);
		
			return factory.getCurrentSession().createQuery("from ProductIMG Where product="+Pd.getProductID()+"").list();
		}



	@Override
	public void updateProductImgData(CopyOfProductIMG Pimg) {
		
		factory.getCurrentSession().update(Pimg);
	}
}
*/