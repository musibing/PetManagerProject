package com.musibing.server;

import com.musibing.vo.AccountRecords;

public interface AccountRecordsService {
public void saveAccountRecords(AccountRecords ars);
public int SelectAccountRecordsMaxID();
public void UpdateAccountRecords(AccountRecords ars);
public AccountRecords SelectAccountRecordsIDForAccountRecordsID(int AccountRecordsID);
}
