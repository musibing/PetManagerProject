package com.HR_DaoInterface.dao;

import java.util.List;

import com.HR_JavaBean.vo.Employinfo;
import com.HR_JavaBean.vo.HRPayInfo;
import com.HR_JavaBean.vo.HRRewardsinfo;
import com.HR_JavaBean.vo.HRtrainInfo;
import com.HR_JavaBean.vo.Jobinfo;
import com.HR_JavaBean.vo.PersonInfo;
import com.HR_JavaBean.vo.Securitycode;

public interface DaoInterface {

public int AddEmploryInfo(Employinfo info) throws Exception;
public int EmplroyInfoUpdate(Employinfo info)throws Exception;
public int AccountIncoUpload(int AccountId,String Incopath);
public int AddPersonInfo(PersonInfo person)throws Exception;
public int AddTrainInfo(HRtrainInfo trainInfo)throws Exception;
public int AddRewardsInfo(HRRewardsinfo Rewardinfo)throws Exception;
public int AddPayInfo(HRPayInfo Payinfo)throws Exception;
public Securitycode GetSecuritycode(int random)throws Exception;
public PersonInfo GetUserInfo(int UserId)throws Exception;
public int CheckUserInfo(int UserId,String Pawords)throws Exception;
public List<PersonInfo> SelectAllPersonInfo(int index,int page)throws Exception;
public int GetPersonInfoMaxCount()throws Exception;
public int PersonInfoRemove(int PersonID)throws Exception;
public int PersonInfoUpdate(PersonInfo person)throws Exception;
public List<Employinfo> SelectAllHREmplory(int index,int page)throws Exception;
public int GetEmployinfoMaxCount()throws Exception;
public int EmployInfoRemove(int EmployID)throws Exception;
public List<Employinfo> SelectAllHREmploryDataBase(int index,int page)throws Exception;
public List<HRtrainInfo> SelectAllHRtrainInfoInfo(int index,int page)throws Exception;
public int GetHRtrainInfoMaxCount()throws Exception;
public int HRtrainInfoUpdate(HRtrainInfo TrainInfo)throws Exception;
public int HRtrainInfoRemove(int HRTrainID)throws Exception;
public List<HRRewardsinfo> SlectAllHRRewardsinfo(int index,int page)throws Exception;
public int GetHRRewardsinfoMaxCount()throws Exception;
public int HRRewardsinfoUpdate(HRRewardsinfo Rewardsinfo)throws Exception;
public int HRRewardsinfoRemove(int HRRewardsID)throws Exception;
public List<HRPayInfo> SelectAllPayInfo(int index,int page)throws Exception;
public int GetHRPayInfoMaxCount()throws Exception;
public int HRPayInfoUpdate(HRPayInfo Payinfo)throws Exception;
public int HRPayInfoRemove(int HRPayInfoID)throws Exception;
public List<PersonInfo> SelectAllHRPersonInfo()throws Exception;
public List<Jobinfo> SelectAllJobinfo()throws Exception;
public int SelectMaxID(String sql)throws Exception;
public int CheckUserName(String Sql,String CheckID)throws Exception;
public List<PersonInfo> SelectUserPersonInfo(int UserID)throws Exception;
public List<HRPayInfo>  SelectUserPayInfo(int UserID)throws Exception;
public List<HRRewardsinfo> SelectUserHRRewardsinfo(int UserID)throws Exception;
public List<HRtrainInfo> SelectUsesrHRtrainInfoInfo(int UserID)throws Exception;
}
