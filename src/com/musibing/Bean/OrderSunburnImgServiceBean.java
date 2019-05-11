package com.musibing.Bean;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.musibing.server.OrderSunburnImgService;
import com.musibing.vo.AccountVO;
import com.musibing.vo.OrderSunburnImg;

@Service("OrderSunburnImgService")
@Transactional
public class OrderSunburnImgServiceBean implements OrderSunburnImgService{
@Resource
SessionFactory factory;
OrderSunburnImg Uvo;
	
	public void SeavOrderSunburnImg(OrderSunburnImg orderSunburnImg) {
		factory.getCurrentSession().save(orderSunburnImg);
		
		
	}

	
	public int SelectMaxOderSunburnImg() {
		
		return (int)factory.getCurrentSession().createQuery("select max(orderSunburnImgID) from OrderSunburnImg").uniqueResult();
	}
	public OrderSunburnImg SelectOrderSunburnImgForOrderSunburnImgID(int orderSunburnImgID){
		
		
		return (OrderSunburnImg)factory.getCurrentSession().createQuery("from OrderSunburnImg where orderSunburnImgID=?").setInteger(0, orderSunburnImgID).uniqueResult();
	
		
	}


	




	public void UpdateOrderSunburnImgInfo(OrderSunburnImg orderSunburnImg) {
		factory.getCurrentSession().update(orderSunburnImg);
		
	}

}
