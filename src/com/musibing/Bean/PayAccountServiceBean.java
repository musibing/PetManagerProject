package com.musibing.Bean;

import java.util.List;
import javax.annotation.Resource;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.musibing.server.PayAccountService;
import com.musibing.vo.PayAccount;

@Service("payAccountServiceBean")
@Transactional
public class PayAccountServiceBean implements PayAccountService {
	@Resource
	SessionFactory factory;
	@Resource
	PayAccount PayAccount;

	@Transactional
	public void savePayAccount(PayAccount PayAccount) {
		factory.getCurrentSession().save(PayAccount);
	}

	public List<PayAccount> viewAllPayAccount() {
		return (List<PayAccount>) factory.getCurrentSession().createQuery("from PayAccount").list();
	}

	public int selectMaxPayAccountID() {
		return (int) factory.getCurrentSession()
				.createQuery("select max(PayAccountID) from PayAccount")
				.uniqueResult();
	}

	@Transactional
	public void updatePayAccount(PayAccount PayAccount) {
		factory.getCurrentSession().update(PayAccount);
	};

	public PayAccount viewPayAccountByAccountID(int accountID) {
		return (PayAccount) factory.getCurrentSession()
				.createQuery("from PayAccount where accountVO.accountId=?")
				.setInteger(0, accountID).uniqueResult();
	}
}
