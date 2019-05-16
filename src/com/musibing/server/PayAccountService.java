package com.musibing.server;

import java.util.List;
import com.musibing.vo.PayAccount;

public interface PayAccountService {
	public void savePayAccount(PayAccount PayAccount);

	public List<PayAccount> viewAllPayAccount();

	public int selectMaxPayAccountID();

	public void updatePayAccount(PayAccount PayAccount);

	public List<PayAccount> viewPayAccountByAccountID(int accountID);
}