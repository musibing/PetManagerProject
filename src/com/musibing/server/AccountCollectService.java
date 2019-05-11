package com.musibing.server;

import java.util.List;

import com.musibing.vo.AccountCollect;

public interface AccountCollectService {
	public List<AccountCollect> ViewAllAccountCollect();
	public AccountCollect ViewAccountCollectForParameterID(String HQL);
	

}
