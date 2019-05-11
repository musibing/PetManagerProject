package com.musibing.server;

import java.util.List;

import com.musibing.vo.BuyCarList;

public interface BuyCarListServer {
	public BuyCarList SelectBuyCarListForID(int BuyCarListID);
	public List<BuyCarList> SelectBuyCarListForBuyCarID(int BuyCarID);
	public void SaveBuyCarList(BuyCarList buyCarList);
	public int SelectMaxBuyCarListID();
}
