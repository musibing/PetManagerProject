package com.HR_Dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.HR_DaoInterface.dao.DaoInterface;
import com.HR_Factory.factory.Factory;
import com.HR_JavaBean.vo.Employinfo;
import com.HR_JavaBean.vo.HRPayInfo;
import com.HR_JavaBean.vo.HRRewardsinfo;
import com.HR_JavaBean.vo.HRtrainInfo;
import com.HR_JavaBean.vo.Jobinfo;
import com.HR_JavaBean.vo.PersonInfo;
import com.HR_JavaBean.vo.Securitycode;

public class DaoInterfaceImpl implements DaoInterface {
	private static DaoInterfaceImpl DaoInter=null;
	Connection conn=null;
	PreparedStatement pt=null;
	ResultSet rs=null;
	int Result=0;
	@Override
	public int AddEmploryInfo(Employinfo info) throws Exception {
		String Sql="insert into hremploy value(?,?,?,?,?,?,?,?,?,?,?,(select date_format(now(),'%Y-%m-%d')),?,?,?)";
		conn=Factory.getConn();
		 pt=conn.prepareStatement(Sql);
		 pt.setInt(1, info.getEmployid());
		 pt.setString(2, info.getEmployName());
		 pt.setInt(3, info.getEmploySex());
		 pt.setInt(4, info.getEmployAge());
		 pt.setString(5,info.getProfessional());
		 
		 pt.setString(7,info.getJobinfodata());
		 pt.setString(8,info.getEcdtion());
		 pt.setString(9, info.getSchool());
		
		 pt.setString(11,info.getEmailAddress());
		 pt.setString(12, info.getEmployinfo());
		
		 pt.setString(14, "");
		 System.out.println(">>>>>"+pt);
		 Result=pt.executeUpdate();
		 pt.close();
		 conn.close();
		return Result;
		
	}
	@Override
	public int EmplroyInfoUpdate(Employinfo info) throws Exception {
		String sql="update hremploy set  name=?,sex=?,age=?,job=?,specialty=?,experience=?,studydffort=?,school=?,tel=?,email=?,isstock=?,accountincopath='' where id=?";
		conn=Factory.getConn();
		pt=conn.prepareStatement(sql);
		pt.setString(1,info.getEmployName());
		pt.setInt(2,info.getEmploySex());
		pt.setInt(3, info.getEmployAge());
		
		pt.setString(5, info.getProfessional());
		pt.setString(6, info.getJobinfodata());
		pt.setString(7, info.getEcdtion());
		pt.setString(8, info.getSchool());
		
		pt.setString(10, info.getEmailAddress());
		
		pt.setInt(12, info.getEmployid());
		Result=pt.executeUpdate();
		pt.close();
		conn.close();
		return Result;
	}

	@Override
	public int AccountIncoUpload(int AccountId, String Incopath) {
		String sql="update hremploy set accountincopath=? where id=?";
		conn=Factory.getConn();
		try {
			pt=conn.prepareStatement(sql);
				pt.setString(1,Incopath);
				pt.setInt(2,AccountId);
				Result=pt.executeUpdate();
				pt.close();
				conn.close();
				pt.close();
				conn.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		return Result;
	}
	@Override
	public int AddPersonInfo(PersonInfo person) throws Exception {
		String sql="insert into hrperinfo value(?,?,?,?,?,(select date_format(now(),'%Y-%m-%d')),?,?,'')";
		conn=Factory.getConn();
		pt=conn.prepareStatement(sql);
		pt.setInt(1, person.getId());
		pt.setString(2, person.getUsername());
		pt.setString(3, person.getUsrpasswords());
		pt.setInt(4, person.getUsersex());
		pt.setDate(5, person.getUserbirthday());
		pt.setInt(6, person.getIsadmin());
		pt.setString(7, person.getUserinfo());
		Result=pt.executeUpdate();
		pt.close();
		conn.close();
		return Result;
	}
	@Override
	public int AddTrainInfo(HRtrainInfo trainInfo) throws Exception {
		String sql="insert into hrtrain value(?,?,?,?,?,?,?,?,(select date_format(now(),'%Y-%m-%d')),?,?,?);";
		conn=Factory.getConn();
		pt=conn.prepareStatement(sql);
		pt.setInt(1, trainInfo.getTrainid());
		pt.setString(2, trainInfo.getTrainnmae());
		pt.setString(3, trainInfo.getPurpose());
		pt.setDate(4, trainInfo.getBegintime());
		pt.setDate(5, trainInfo.getEndtime());
		pt.setString(6, trainInfo.getTraindata());
		pt.setString(7, trainInfo.getTeacher());
		pt.setInt(8, trainInfo.getEploryid());
		pt.setInt(9, trainInfo.getIsfinish());
		pt.setString(10,trainInfo.getTrainffect());
		pt.setString(11, trainInfo.getTraininfo());
		Result=pt.executeUpdate();
		pt.close();
		conn.close();
		return Result;
	}
	@Override
	public int AddRewardsInfo(HRRewardsinfo Rewardinfo) throws Exception {
		String sql="insert into hrrewards value(?,?,?,?,(select date_format(now(),'%Y-%m-%d')),?,?,?)";
		conn=Factory.getConn();
		pt=conn.prepareStatement(sql);
		pt.setInt(1, Rewardinfo.getRewardId());
		pt.setString(2, Rewardinfo.getRewardName());
		pt.setString(3, Rewardinfo.getReason());
		pt.setString(4, Rewardinfo.getExplains());
		pt.setInt(5, Rewardinfo.getEmploryId());
		pt.setInt(6, Rewardinfo.getHrewardstype());
		pt.setInt(7, Rewardinfo.getRewardsnumber());
		Result=pt.executeUpdate();
		pt.close();
		conn.close();
		return Result;
	}
	@Override
	public int AddPayInfo(HRPayInfo Payinfo) throws Exception {
		String sql="insert into hrpay value(?,?,?,?,?,?,?,?,?,?,?);";
		conn=Factory.getConn();
		pt=conn.prepareStatement(sql);
		pt.setInt(1, Payinfo.getPayid());
		pt.setInt(2, Payinfo.getEpmlyid());
		pt.setString(3, Payinfo.getBasicNumber());
		pt.setFloat(4, Payinfo.getEatNumber());
		pt.setFloat(5, Payinfo.getHouseNumber());
		pt.setDate(6, Payinfo.getGranttim());
		pt.setFloat(7, Payinfo.getScot());
		pt.setFloat(8, Payinfo.getDuty());
		pt.setFloat(9, Payinfo.getRewards());
		pt.setFloat(10, Payinfo.getOther());
		pt.setFloat(11, Payinfo.getTotalize());
		Result=pt.executeUpdate();
		pt.close();
		conn.close();
		return Result;
	}
	@Override
	public Securitycode GetSecuritycode(int random) throws Exception {
		Securitycode Sc=new Securitycode();
		String sql="select * from Securitycode where FileID=?";
		conn=Factory.getConn();
		pt=conn.prepareStatement(sql);
		pt.setInt(1, random);
		rs=pt.executeQuery();
		while(rs.next()){
			Sc.setIMGName(rs.getString(2));
			Sc.setIMGPath(rs.getString(3));
			
		}
		rs.close();
		pt.close();
		conn.close();
		return Sc;
	}
	@Override
	public PersonInfo GetUserInfo(int UserId) throws Exception {
		PersonInfo per=new PersonInfo();
		String sql="select * from hrperinfo where id=?";
		conn=Factory.getConn();
		pt=conn.prepareStatement(sql);
		pt.setInt(1, UserId);
		System.out.println(pt);
		rs=pt.executeQuery();
		while(rs.next()){
			per.setId(rs.getInt(1));
			per.setUsername(rs.getString(2));
			per.setUsrpasswords(rs.getString(3));
			per.setUsersex(rs.getInt(4));
			per.setUserbirthday(rs.getDate(5));
			per.setCreatetime(rs.getDate(6));
			per.setIsadmin(rs.getInt(7));
			per.setUserinfo(rs.getString(8));
			per.setAccountIncoPath(rs.getString(9));
			System.out.println(rs.getString(1));
		}
		rs.close();
		pt.close();
		conn.close();
		return per;
	}
	@Override
	public int CheckUserInfo(int UserId, String Passwords) throws Exception {
		String sql="select count(*) from hrperinfo where id=? and password=?";
		conn=Factory.getConn();
		pt=conn.prepareStatement(sql);
		pt.setInt(1, UserId);
		pt.setString(2, Passwords);
		rs=pt.executeQuery();
		while(rs.next()){
			Result=rs.getInt(1);
		}
		rs.close();
		pt.close();
		conn.close();
		return Result;
	}
	@Override
	public List<PersonInfo> SelectAllPersonInfo(int index,int rows) throws Exception {
		List<PersonInfo> AllPersoninfolist=new ArrayList<PersonInfo>();
	String sql="select * from hrperinfo limit ?,?";
		conn=Factory.getConn();
		pt=conn.prepareStatement(sql);
		pt.setInt(1, (index-1)*rows);
		pt.setInt(2, rows);
	System.out.println(pt);
		rs=pt.executeQuery();
		while(rs.next()){
			PersonInfo per=new PersonInfo();
			per.setId(rs.getInt(1));
			per.setUsername(rs.getString(2));
			per.setUsrpasswords(rs.getString(3));
			per.setUsersex(rs.getInt(4));
			per.setUserbirthday(rs.getDate(5));
			per.setCreatetime(rs.getDate(6));
			per.setIsadmin(rs.getInt(7));
			per.setUserinfo(rs.getString(8));
			per.setAccountIncoPath(rs.getString(9));
			AllPersoninfolist.add(per);
		}
		rs.close();
		pt.close();
		conn.close();
		return AllPersoninfolist;
	
	}
	@Override
	public int GetPersonInfoMaxCount() throws Exception {
		String sql="select count(*) from hrperinfo";
		conn=Factory.getConn();
		pt=conn.prepareStatement(sql);
		rs=pt.executeQuery();
		while(rs.next()){
			Result=rs.getInt(1);
		}
		rs.close();
		pt.close();
		conn.close();
		return Result;
	}
	@Override
	public int PersonInfoRemove(int PersonID) throws Exception {
		String sql="delete from hrperinfo where id=?";
		conn=Factory.getConn();
		pt=conn.prepareStatement(sql);
		pt.setInt(1, PersonID);
		Result=pt.executeUpdate();
	
		pt.close();
		conn.close();
		return Result;
	}
	@Override
	public int PersonInfoUpdate(PersonInfo person) throws Exception {
		String sql="update hrperinfo set username=?,password=?,sex=?,birthday=?,isadmin=?,content=? where id=?";
		conn=Factory.getConn();
		pt=conn.prepareStatement(sql);
		pt.setString(1, person.getUsername());
		pt.setString(2,person.getUsrpasswords());
		pt.setInt(3, person.getUsersex());
		pt.setDate(4,person.getUserbirthday());
		pt.setInt(5, person.getIsadmin());
		pt.setString(6,person.getUserinfo());
		pt.setInt(7, person.getId());
		Result=pt.executeUpdate();
		pt.close();
		conn.close();
		return Result;
	}
	@Override
	public List<Employinfo> SelectAllHREmplory(int index, int page)
			throws Exception {
		
		List<Employinfo> list=new ArrayList<Employinfo>();
		String sql="select  id,name,sex,age,job,specialty,experience,studydffort,school,tel,email,content,isstock,accountincopath,jobname from hremploy,jobinfo where job=jobid limit ?,?;";
		conn=Factory.getConn();
		pt=conn.prepareStatement(sql);
		pt.setInt(1,(index-1)*page);
		pt.setInt(2,page);
		rs=pt.executeQuery();
		while(rs.next()){
			Employinfo Empl=new Employinfo();
			Empl.setEmployid(rs.getInt(1));
			Empl.setEmployName(rs.getString(2));
			Empl.setEmploySex(rs.getInt(3));
			Empl.setEmployAge(rs.getInt(4));
			
			Empl.setProfessional(rs.getString(6));
			Empl.setJobinfodata(rs.getString(7));
			Empl.setEcdtion(rs.getString(8));
			Empl.setSchool(rs.getString(9));
			
			Empl.setEmailAddress(rs.getString(11));
			Empl.setEmployinfo(rs.getString(12));
			
			Empl.setAccountIncoPath(rs.getString(14));
		
			list.add(Empl);
		}
		rs.close();
		pt.close();
		conn.close();
		return list;
	}
	@Override
	public int GetEmployinfoMaxCount() throws Exception {
		String sql="select count(*) from hremploy";
		conn=Factory.getConn();
		pt=conn.prepareStatement(sql);
		rs=pt.executeQuery();
		while(rs.next()){
			Result=rs.getInt(1);
		}
		rs.close();
		pt.close();
		conn.close();
		return Result;
	}
	@Override
	public int EmployInfoRemove(int EmployID) throws Exception {
		String sql="delete from hremploy where id=?";
		conn=Factory.getConn();
		pt=conn.prepareStatement(sql);
		pt.setInt(1, EmployID);
		Result=pt.executeUpdate();
		pt.close();
		conn.close();
		return Result;
	}
	@Override
	public List<Employinfo> SelectAllHREmploryDataBase(int index, int page)
			throws Exception {

		List<Employinfo> list=new ArrayList<Employinfo>();
		String sql="select  id,name,sex,age,job,specialty,experience,studydffort,school,tel,email,content,isstock,accountincopath,jobname from hremploy,jobinfo where job=jobid and isstock=1 limit ?,?;";
		conn=Factory.getConn();
		pt=conn.prepareStatement(sql);
		pt.setInt(1,(index-1)*page);
		pt.setInt(2,page);
		System.out.println(">>:>>>>"+pt);
		rs=pt.executeQuery();
		while(rs.next()){
			Employinfo Empl=new Employinfo();
			Empl.setEmployid(rs.getInt(1));
			Empl.setEmployName(rs.getString(2));
			Empl.setEmploySex(rs.getInt(3));
			Empl.setEmployAge(rs.getInt(4));
		
			Empl.setProfessional(rs.getString(6));
			Empl.setJobinfodata(rs.getString(7));
			Empl.setEcdtion(rs.getString(8));
			Empl.setSchool(rs.getString(9));
			
			Empl.setEmailAddress(rs.getString(11));
			Empl.setEmployinfo(rs.getString(12));
			
			Empl.setAccountIncoPath(rs.getString(14));
			
			list.add(Empl);
			System.out.println(">?>>>>>>>>");
		}
		rs.close();
		pt.close();
		conn.close();
		return list;
	}
	@Override
	public List<HRtrainInfo> SelectAllHRtrainInfoInfo(int index, int page)
			throws Exception {
		List<HRtrainInfo> list=new ArrayList<HRtrainInfo>();
		
		String sql="select hrtrain.id,name,purpose,begintime,endtime,datum,teacher,student,hrtrain.createtime,educate,effect,summarize,username from hrtrain,hrperinfo where student=hrperinfo.id limit ?,?";
		conn=Factory.getConn();
		pt=conn.prepareStatement(sql);
		pt.setInt(1, (index-1)*page);
		pt.setInt(2, page);
		rs=pt.executeQuery();
		while(rs.next()){
			HRtrainInfo traininfo=new HRtrainInfo();
			traininfo.setTrainid(rs.getInt(1));
			traininfo.setTrainnmae(rs.getString(2));
			traininfo.setPurpose(rs.getString(3));
			traininfo.setBegintime(rs.getDate(4));
			traininfo.setEndtime(rs.getDate(5));
			traininfo.setTraindata(rs.getString(6));
			traininfo.setTeacher(rs.getString(7));
			traininfo.setEploryid(rs.getInt(8));
			traininfo.setCreatetime(rs.getDate(9));
			traininfo.setIsfinish(rs.getInt(10));
			traininfo.setTrainffect(rs.getString(11));
			traininfo.setTraininfo(rs.getString(12));
			traininfo.setEployname(rs.getString(13));
			list.add(traininfo);
			}
		rs.close();
		pt.close();
		conn.close();
		
		return list;
	}
	@Override
	public int GetHRtrainInfoMaxCount() throws Exception {
		String sql="select count(*) from hrtrain";
		conn=Factory.getConn();
		pt=conn.prepareStatement(sql);
		rs=pt.executeQuery();
		while(rs.next()){
			Result=rs.getInt(1);
		}
		rs.close();
		pt.close();
		conn.close();
		return Result;
	}
	@Override
	public int HRtrainInfoUpdate(HRtrainInfo TrainInfo) throws Exception {
		String sql="update hrtrain set name=?,purpose=?,begintime=?,endtime=?,datum=?,teacher=?,student=?,educate=?,effect=?,summarize=? where id=?;";
		conn=Factory.getConn();
		pt=conn.prepareStatement(sql);
		pt.setString(1, TrainInfo.getTrainnmae());
		pt.setString(2, TrainInfo.getPurpose());
		pt.setDate(3, TrainInfo.getBegintime());
		pt.setDate(4, TrainInfo.getEndtime());
		pt.setString(5, TrainInfo.getTraindata());
		pt.setString(6, TrainInfo.getTeacher());
		pt.setInt(7, TrainInfo.getEploryid());
		pt.setInt(8, TrainInfo.getIsfinish());
		pt.setString(9, TrainInfo.getTrainffect());
		pt.setString(10, TrainInfo.getTraininfo());
		pt.setInt(11, TrainInfo.getTrainid());
		System.out.println(pt);
		Result=pt.executeUpdate();
		
		pt.close();
		conn.close();
		return Result;
	}
	@Override
	public int HRtrainInfoRemove(int HRTrainID) throws Exception {
		String sql="delete from hrtrain where id=?;";
		conn=Factory.getConn();
		pt=conn.prepareStatement(sql);
		pt.setInt(1, HRTrainID);
		Result=pt.executeUpdate();
		pt.close();
		conn.close();
		return Result;
	}
	@Override
	public List<HRRewardsinfo> SlectAllHRRewardsinfo(int index, int page)
			throws Exception {
		String sql="select hrrewards.id,name,reason,explains,hrrewards.createtime,hrewardstype,rewardsnumber,username,hrperinfo.id from hrrewards,hrperinfo where hrpersonid=hrperinfo.id limit ?,?";
		List<HRRewardsinfo> list=new ArrayList<HRRewardsinfo>();
		conn=Factory.getConn();
		pt=conn.prepareStatement(sql);
		pt.setInt(1, (index-1)*page);
		pt.setInt(2, page);
		rs=pt.executeQuery();
		while(rs.next()){
		HRRewardsinfo Rewaidsinfo=new HRRewardsinfo();
		Rewaidsinfo.setRewardId(rs.getInt(1));
		Rewaidsinfo.setRewardName(rs.getString(2));
		Rewaidsinfo.setReason(rs.getString(3));
		Rewaidsinfo.setExplains(rs.getString(4));
		Rewaidsinfo.setCreatetime(rs.getDate(5));
		Rewaidsinfo.setHrewardstype(rs.getInt(6));
		Rewaidsinfo.setRewardsnumber(rs.getInt(7));
		Rewaidsinfo.setEmploryName(rs.getString(8));
		Rewaidsinfo.setEmploryId(rs.getInt(9));
		list.add(Rewaidsinfo);
		}
		rs.close();
		pt.close();
		conn.close();
		return list;
	}
	@Override
	public int GetHRRewardsinfoMaxCount() throws Exception {
		String sql="select count(*) from hrrewards;";
		conn=Factory.getConn();
		pt=conn.prepareStatement(sql);
		rs=pt.executeQuery();
		while(rs.next()){
			Result=rs.getInt(1);
		}
		rs.close();
		pt.close();
		conn.close();
		return Result;
	}
	@Override
	public int HRRewardsinfoUpdate(HRRewardsinfo Rewardsinfo) throws Exception {
		String sql="update hrrewards set name=?,reason=?,explains=?,hrpersonid=?,hrewardstype=?,rewardsnumber=? where id=?;";
		conn=Factory.getConn();
		pt=conn.prepareStatement(sql);
		pt.setString(1, Rewardsinfo.getRewardName());
		pt.setString(2, Rewardsinfo.getReason());
		pt.setString(3, Rewardsinfo.getExplains());
		pt.setInt(4, Rewardsinfo.getEmploryId());
		pt.setInt(5, Rewardsinfo.getHrewardstype());
		pt.setInt(6, Rewardsinfo.getRewardsnumber());
		pt.setInt(7, Rewardsinfo.getRewardId());
		
		Result=pt.executeUpdate();
		
		pt.close();
		conn.close();
		return Result;
	}
	@Override
	public int HRRewardsinfoRemove(int HRRewardsID) throws Exception {
		String sql="delete from hrrewards where id=?;";
		conn=Factory.getConn();
		pt=conn.prepareStatement(sql);
		pt.setInt(1, HRRewardsID);
		Result=pt.executeUpdate();
		pt.close();
		conn.close();
		return Result;
	}
	@Override
	public List<HRPayInfo> SelectAllPayInfo(int index, int page)
			throws Exception {
		String sql="select hrpay.id,personid,basic,eat,house,granttime,scot,duty,pumishment,other,totalize,username from hrpay,hrperinfo where hrpay.personid=hrperinfo.id limit ?,?";
		List<HRPayInfo> list=new ArrayList<HRPayInfo>();
		conn=Factory.getConn();
		pt=conn.prepareStatement(sql);
		pt.setInt(1, (index-1)*page);
		pt.setInt(2, page);
		rs=pt.executeQuery();
		while(rs.next()){
			HRPayInfo PayInfo=new HRPayInfo();
			PayInfo.setPayid(rs.getInt(1));
			PayInfo.setEpmlyid(rs.getInt(2));
			PayInfo.setBasicNumber(rs.getString(3));
			PayInfo.setEatNumber(rs.getFloat(4));
			PayInfo.setHouseNumber(rs.getFloat(5));
			PayInfo.setGranttim(rs.getDate(6));
			PayInfo.setScot(rs.getFloat(7));
			PayInfo.setDuty(rs.getFloat(8));
			PayInfo.setRewards(rs.getFloat(9));
			PayInfo.setOther(rs.getFloat(10));
			PayInfo.setTotalize(rs.getFloat(11));
			PayInfo.setEpmlyname(rs.getString(12));
		list.add(PayInfo);
		}
		rs.close();
		pt.close();
		conn.close();
		return list;
	
	}
	@Override
	public int GetHRPayInfoMaxCount() throws Exception {
		String sql="select count(*) from hrpay;";
		conn=Factory.getConn();
		pt=conn.prepareStatement(sql);
		rs=pt.executeQuery();
		while(rs.next()){
			Result=rs.getInt(1);
		}
		rs.close();
		pt.close();
		conn.close();
		return Result;
		
	}
	@Override
	public int HRPayInfoUpdate(HRPayInfo Payinfo) throws Exception {
		String sql="update hrpay set personid=?,basic=?,eat=?,house=?,granttime=?,scot=?,duty=?,pumishment=?,other=?,totalize=? where id=?;";
		conn=Factory.getConn();
		pt=conn.prepareStatement(sql);
		pt.setInt(1,Payinfo.getEpmlyid());
		pt.setString(2, Payinfo.getBasicNumber());
		pt.setFloat(3, Payinfo.getEatNumber());
		pt.setFloat(4, Payinfo.getHouseNumber());
		pt.setDate(5, Payinfo.getGranttim());
		pt.setFloat(6, Payinfo.getScot());
		pt.setFloat(7, Payinfo.getDuty());
		pt.setFloat(8, Payinfo.getRewards());
		pt.setFloat(9, Payinfo.getOther());
		pt.setFloat(10, Payinfo.getTotalize());
		pt.setInt(11, Payinfo.getPayid());
		Result=pt.executeUpdate();
		pt.close();
		conn.close();
		return Result;
	}
	@Override
	public int HRPayInfoRemove(int HRPayInfoID) throws Exception {
		String sql="delete from hrpay where id=?;";
		conn=Factory.getConn();
		pt=conn.prepareStatement(sql);
		pt.setInt(1, HRPayInfoID);
		Result=pt.executeUpdate();
		pt.close();
		conn.close();
		return Result;
		
	}
	@Override
	public List<PersonInfo> SelectAllHRPersonInfo() throws Exception {
		List<PersonInfo> list=new ArrayList<PersonInfo>();
		
		String sql="select id,username,AccountIncoPath from hrperinfo;";
		conn=Factory.getConn();
		pt=conn.prepareStatement(sql);
		rs=pt.executeQuery();
		while(rs.next()){
			PersonInfo Person=new PersonInfo();
			Person.setId(rs.getInt(1));
			Person.setUsername(rs.getString(2));
			Person.setAccountIncoPath(rs.getString(3));
			list.add(Person);
		}
		rs.close();
		pt.close();
		conn.close();
		return list;
	}
	@Override
	public List<Jobinfo> SelectAllJobinfo() throws Exception {
		List<Jobinfo> list=new ArrayList<Jobinfo>();
		String sql="select * from jobinfo;";
		conn=Factory.getConn();
		pt=conn.prepareStatement(sql);
		rs=pt.executeQuery();
		while(rs.next()){
			Jobinfo job=new Jobinfo();
			job.setJobid(rs.getInt(1));
			job.setJobname(rs.getString(2));
			list.add(job);
		}
		rs.close();
		pt.close();
		conn.close();
		return list;
	}
	@Override
	public int SelectMaxID(String Sql) throws Exception {
	
	conn=Factory.getConn();
	pt=conn.prepareStatement(Sql);
	rs=pt.executeQuery();
	while(rs.next()){
		Result=rs.getInt(1);
	}
	rs.close();
	pt.close();
	conn.close();
	return Result;
	}
	@Override
	public int CheckUserName(String Sql, String CheckID) throws Exception {
		
		conn=Factory.getConn();
		pt=conn.prepareStatement(Sql);
		pt.setString(1, CheckID);
		rs=pt.executeQuery();
		while(rs.next()){
			Result=rs.getInt(1);
		}
		
		rs.close();
		pt.close();
		conn.close();
		return Result;
		
	}
	@Override
	public List<HRPayInfo> SelectUserPayInfo(int UserID) throws Exception {
		conn=Factory.getConn();
		String sql="select hrpay.id,personid,basic,eat,house,granttime,scot,duty,pumishment,other,totalize,username from hrpay,hrperinfo where hrpay.personid=hrperinfo.id and hrpay.personid=?";
		List<HRPayInfo> list=new ArrayList<HRPayInfo>();
		conn=Factory.getConn();
		pt=conn.prepareStatement(sql);
		pt.setInt(1, UserID);
		
		rs=pt.executeQuery();
		while(rs.next()){
			HRPayInfo PayInfo=new HRPayInfo();
			PayInfo.setPayid(rs.getInt(1));
			PayInfo.setEpmlyid(rs.getInt(2));
			PayInfo.setBasicNumber(rs.getString(3));
			PayInfo.setEatNumber(rs.getFloat(4));
			PayInfo.setHouseNumber(rs.getFloat(5));
			PayInfo.setGranttim(rs.getDate(6));
			PayInfo.setScot(rs.getFloat(7));
			PayInfo.setDuty(rs.getFloat(8));
			PayInfo.setRewards(rs.getFloat(9));
			PayInfo.setOther(rs.getFloat(10));
			PayInfo.setTotalize(rs.getFloat(11));
			PayInfo.setEpmlyname(rs.getString(12));
		list.add(PayInfo);
		}
		rs.close();
		pt.close();
		conn.close();
		return list;
		
	}
	@Override
	public List<HRRewardsinfo> SelectUserHRRewardsinfo(int UserID)
			throws Exception {
		String sql="select hrrewards.id,name,reason,explains,hrrewards.createtime,hrewardstype,rewardsnumber,username,hrperinfo.id from hrrewards,hrperinfo where hrpersonid=hrperinfo.id and hrpersonid=?;";
		List<HRRewardsinfo> list=new ArrayList<HRRewardsinfo>();
		conn=Factory.getConn();
		pt=conn.prepareStatement(sql);
		pt.setInt(1, UserID);
		rs=pt.executeQuery();
		while(rs.next()){
		HRRewardsinfo Rewaidsinfo=new HRRewardsinfo();
		Rewaidsinfo.setRewardId(rs.getInt(1));
		Rewaidsinfo.setRewardName(rs.getString(2));
		Rewaidsinfo.setReason(rs.getString(3));
		Rewaidsinfo.setExplains(rs.getString(4));
		Rewaidsinfo.setCreatetime(rs.getDate(5));
		Rewaidsinfo.setHrewardstype(rs.getInt(6));
		Rewaidsinfo.setRewardsnumber(rs.getInt(7));
		Rewaidsinfo.setEmploryName(rs.getString(8));
		Rewaidsinfo.setEmploryId(rs.getInt(9));
		list.add(Rewaidsinfo);
		}
		rs.close();
		pt.close();
		conn.close();
		return list;
	}
	@Override
	public List<HRtrainInfo> SelectUsesrHRtrainInfoInfo(int UserID)
			throws Exception {
List<HRtrainInfo> list=new ArrayList<HRtrainInfo>();
		
		String sql="select hrtrain.id,name,purpose,begintime,endtime,datum,teacher,student,hrtrain.createtime,educate,effect,summarize,username from hrtrain,hrperinfo where student=hrperinfo.id and hrperinfo.id=?";
		conn=Factory.getConn();
		pt=conn.prepareStatement(sql);
		
		pt.setInt(1, UserID);
		rs=pt.executeQuery();
		while(rs.next()){
			HRtrainInfo traininfo=new HRtrainInfo();
			traininfo.setTrainid(rs.getInt(1));
			traininfo.setTrainnmae(rs.getString(2));
			traininfo.setPurpose(rs.getString(3));
			traininfo.setBegintime(rs.getDate(4));
			traininfo.setEndtime(rs.getDate(5));
			traininfo.setTraindata(rs.getString(6));
			traininfo.setTeacher(rs.getString(7));
			traininfo.setEploryid(rs.getInt(8));
			traininfo.setCreatetime(rs.getDate(9));
			traininfo.setIsfinish(rs.getInt(10));
			traininfo.setTrainffect(rs.getString(11));
			traininfo.setTraininfo(rs.getString(12));
			traininfo.setEployname(rs.getString(13));
			list.add(traininfo);
			}
		rs.close();
		pt.close();
		conn.close();
		
		return list;
	}
	@Override
	public List<PersonInfo> SelectUserPersonInfo(int UserID) throws Exception {
		List<PersonInfo> AllPersoninfolist=new ArrayList<PersonInfo>();
		String sql="select * from hrperinfo where id=?";
			conn=Factory.getConn();
			pt=conn.prepareStatement(sql);
			pt.setInt(1, UserID);
		
			rs=pt.executeQuery();
			while(rs.next()){
				PersonInfo per=new PersonInfo();
				per.setId(rs.getInt(1));
				per.setUsername(rs.getString(2));
				per.setUsrpasswords(rs.getString(3));
				per.setUsersex(rs.getInt(4));
				per.setUserbirthday(rs.getDate(5));
				per.setCreatetime(rs.getDate(6));
				per.setIsadmin(rs.getInt(7));
				per.setUserinfo(rs.getString(8));
				per.setAccountIncoPath(rs.getString(9));
				AllPersoninfolist.add(per);
			}
			rs.close();
			pt.close();
			conn.close();
			return AllPersoninfolist;
	}
	public static DaoInterfaceImpl getDaoInter() {
		return DaoInter;
	}
	public static void setDaoInter(DaoInterfaceImpl daoInter) {
		DaoInter = daoInter;
	}
	


}
