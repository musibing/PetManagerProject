package com.musibing.server;

import java.util.List;

import com.musibing.vo.AddressList;

public interface AddressListService {
	public void  saveAddressList(AddressList addressList);
	public List<AddressList> viewAllAddressList();
	public int selectMaxAddressListID();
	public void updateAddressList(AddressList addressList);
	public List<AddressList> viewAddressListByAccountID(int accountID);
}
