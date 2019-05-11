package com.musibing.Bean;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.annotation.Resource;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.musibing.server.ProductIMGServer;
import com.musibing.server.ProductServer;
import com.musibing.vo.AccountVO;
import com.musibing.vo.Product;
import com.musibing.vo.ProductIMG;
@Service("productimgServerBean")
@Transactional 
public class ProductIMGServerBean implements ProductIMGServer{
	@Resource
	SessionFactory factory;
	ProductIMG Pimg;
	public void saveProductImgData(ProductIMG pd) {
		
		try {
			factory.getCurrentSession().merge(pd);
		} catch (HibernateException e) {
		
			e.printStackTrace();
		}
		System.out.println("完成存储");
		
	}

public List<ProductIMG> SelecProductImgDatForID(Product Pd) {
		System.out.println("ProductID的属性是"+Pd.getProductID());
		
			return factory.getCurrentSession().createQuery("from ProductIMG Where product="+Pd.getProductID()+"").list();
		}
@Override
	public void updateProductImgData(ProductIMG Pimg) {
		
		factory.getCurrentSession().update(Pimg);
	}


public List<ProductIMG> SelectAllProductIMGData() {
	return factory.getCurrentSession().createQuery("form ProductIMG").list();
	
}
public int selectMaxContenetNumber(){
	return (int)factory.getCurrentSession().createQuery("select max(pIMGID) from CopyOfProductIMG").list().get(0);
}
}
