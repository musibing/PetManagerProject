package com.musibing.server;

import com.musibing.vo.AccountVO;
import com.musibing.vo.BuyCar;

public interface BuyCarServer {
	public void AddBuyCar(BuyCar BC);
	public BuyCar SelectBuyCarForID(int BuyCarID);
	public void UpdateBuyCar(BuyCar BC);
	public int SelectMaxBuyCarID();
	public AccountVO ViewAccountForBuyCarID();
	public BuyCar ViewAllBuyCar();
	public BuyCar SelectBuyCarForAccountID(int AccountID);
}
