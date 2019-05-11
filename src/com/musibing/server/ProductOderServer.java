package com.musibing.server;


import java.util.List;

import com.musibing.vo.AccountVO;
import com.musibing.vo.Product;
import com.musibing.vo.ProductOder;

public interface ProductOderServer {
	public void SaveProductOder(ProductOder pOder);
	public void UpdateProductOder(ProductOder pOder);
	public List<ProductOder>  SelectAllProductOderForAccoun(AccountVO AVO);
	public ProductOder SelectAllProductOderForAccounSimple(AccountVO AVO);
	public List<ProductOder>  SelectAllProductOder();
	public ProductOder SelectProductOderForProductOderID(int freshProductOderID);
	public int SelectMaxProductOderID();
	public List<ProductOder> viewProductOderByAccountID(int accountID);
	
}
