package com.HR_Factory.factory;

import java.sql.Connection;

import HR_Util.com.MySqlConnectionUtil;

import com.HR_Dao.Impl.DaoInterfaceImpl;
import com.HR_DaoInterface.dao.DaoInterface;




public class Factory {
	
	public static Connection getConn(){
	return new MySqlConnectionUtil().getConn();
	} 
	private static DaoInterface daointer=new DaoInterfaceImpl();
	public static DaoInterface getdaointerface(){
		return daointer;
		}
	

}
