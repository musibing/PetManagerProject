package com.musibing.server;

import java.util.List;

import com.musibing.vo.FreshProduct;

public interface FreshProductSerivce {
	public void FreshProduct(com.musibing.vo.FreshProduct pd);
	public int SelectFreshMaxProductID();
	public List<FreshProduct> SelectAllFreshProduct();
	public FreshProduct SelectFreshProductForFreshProductID(int FreshProductID);
}
