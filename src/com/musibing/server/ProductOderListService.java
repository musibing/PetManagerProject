package com.musibing.server;

import java.util.List;

import org.hibernate.Query;

import com.musibing.vo.AccountVO;
import com.musibing.vo.BuyCarList;
import com.musibing.vo.ProductOder;
import com.musibing.vo.ProductOderList;

public interface ProductOderListService {
	public void SaveProductOderList(ProductOderList productOderList);
	public List<ProductOderList> SelectAllProductOderList();
	public int SelectMAXProductOderListID();
	public List<Object[]> SelectAllProductOderOderByProductID();
	public ProductOderList viewProductOderListByProductOderListID(int productOderListID);
	public List<ProductOderList> SelectAllForProductOderID(int ProductOderID);
	public List<ProductOderList> viewProductOderListByAccountID(List<ProductOder> productOderID);
	/*public List<ProductOder>  SelectAllProductOderForAccoun(AccountVO accountVO);
	public ProductOder SelectAllProductOderListForAccounSimple(AccountVO accountVO);*/
	public void updateProductOderList(ProductOderList productOderList);
	public List<Object[]> viewTempData();
}
