package com.musibing.Bean;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.musibing.server.AccountServer;
import com.musibing.vo.AccountVO;
import com.musibing.vo.BuyCar;


/*@Resource(name="accountServerBa")*/
@Service("accountServerBa")
@Transactional
public class AccountServerBa implements AccountServer{
	@Resource
	SessionFactory factory;
	@Resource
	AccountVO Uvo;
	
	public AccountVO finOrUser(String UserName) {
		
		AccountVO Uvo=(AccountVO)factory.getCurrentSession().get(AccountVO.class,UserName);
		return Uvo;
	}
	public AccountVO findForAccountID(int avo){
		AccountVO Uvo=(AccountVO)factory.getCurrentSession().get(AccountVO.class,avo);
		return Uvo;
	}
	@Transactional
	public void deletePet(String... name) {
		
		
	}

	@Transactional
	public void update(AccountVO avo) {
		factory.getCurrentSession().update(avo);
		
	}

	@Transactional
	public void save(AccountVO uvo) {
		factory.getCurrentSession().save(uvo);
		
	}

	
	public List<AccountVO> ViewAllUser() {
	
	List<AccountVO> li=new ArrayList<AccountVO>();
	try {
		Query qu = factory.getCurrentSession().createQuery("FROM AccountVO");
		System.out.println((qu==null)+"《》"+(li=null));
		li = qu.list();
		
	} catch (HibernateException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return li;
		
	}


	
	public String UserNameCheck(String PetName) {
		int rusult=1;
		String hql ="FROM AccountVO WHERE accountName=?";
		
	
		Query li=factory.getCurrentSession().createQuery(hql);
		
		li.setParameter(0, PetName);
		AccountVO ls=(AccountVO)li.uniqueResult();
		
		
		
		return ls.getAccountName();
	}


	
	public AccountVO AccountLoginCheck(int accountID) {
		
		String Hql="from AccountVO where accountId=?";
		/*AccountVO Uvo=(AccountVO)factory.getCurrentSession().get(AccountVO.class,accountName);*/;
		AccountVO accountvo=null;
		try {
			accountvo=(AccountVO)factory.getCurrentSession().get(AccountVO.class, accountID);
	
		} catch (HibernateException e) {
			
			e.printStackTrace();
		}

		return accountvo;
	}


	@Override
	public int AccountRoleCheck(int AccountID) {
		int rolerusult=0;
		String Hql="FROM AccountVO WHERE userId=?";
		Query li=factory.getCurrentSession().createQuery(Hql);
		li.setParameter(0, AccountID);
		
		List<Object[]> ls=li.list();
	
		if(ls.size()!=0){
		
			
			
		}
		
		return 0;
	}


	@Transactional
	public AccountVO findForAccontID(int AccountID) {
		
		return (AccountVO)factory.getCurrentSession().get(AccountVO.class,AccountID);
	}

	public int SelectMaxAccountID() {
	
		return 	(int)factory.getCurrentSession().createQuery("select Max(accountId) from AccountVO ").list().get(0);
	}


	public BuyCar ViewAccountForBuyCarID(){
		return 	(BuyCar)factory.getCurrentSession().createQuery("select aVO from AccountVO").uniqueResult();
	}
	


}
