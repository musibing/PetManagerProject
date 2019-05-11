package com.musibing.server;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.musibing.vo.AccountVO;
import com.musibing.vo.BuyCar;

public interface AccountServer {
	public AccountVO findForAccountID(int AccountID);
	public AccountVO finOrUser(String UserName);
	public void deletePet(String... name);
	public void update(AccountVO Pvo);
	public void save(AccountVO Pvo);
	public List<AccountVO> ViewAllUser();
	public String UserNameCheck(String PetName);
	public AccountVO AccountLoginCheck(int accountID);
	public int AccountRoleCheck(int AccountID);
	public int SelectMaxAccountID();
	public BuyCar ViewAccountForBuyCarID();

}
