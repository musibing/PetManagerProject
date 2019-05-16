package com.musibing.Bean;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.musibing.server.AddressListService;
import com.musibing.vo.AccountVO;
import com.musibing.vo.AddressList;

@Service("addressListServiceBean")
@Transactional
public class AddressListServiceBean implements AddressListService{
	@Resource
	SessionFactory factory;
	@Resource
	AddressList addressList;
	@Transactional
	public void saveAddressList(AddressList addressList) {
		factory.getCurrentSession().save(addressList);
		
	}

	public List<AddressList> viewAllAddressList() {
		
		return (List<AddressList>) factory.getCurrentSession().createQuery("from AddressList").list();
	}
	
	public int selectMaxAddressListID() {
		
		return (int)factory.getCurrentSession().createQuery("select max(addressListID) from AddressList").uniqueResult();
	}
	@Transactional
	public void updateAddressList(AddressList addressList) {
		factory.getCurrentSession().update(addressList);
		
	}
	
	public List<AddressList> viewAddressListByAccountID(int accountID) {
		// TODO Auto-generated method stub
		return (List<AddressList>) factory.getCurrentSession().createQuery("from AddressList where takeDeliveryPersion.accountId=?").setInteger(0, accountID).list();
	}
}
