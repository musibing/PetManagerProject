package com.musibing.Bean;
import java.util.List;
import javax.annotation.Resource;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.musibing.server.NotificationInterfaceService;
import com.musibing.vo.NotificationInterface;
@Service("notificationInterfaceServiceBean")
@Transactional
public class NotificationInterfaceServiceBean  implements NotificationInterfaceService{
@Resource
SessionFactory factory;
@Resource
NotificationInterface NotificationInterface;
@Transactional
public void  saveNotificationInterface(NotificationInterface NotificationInterface){
factory.getCurrentSession().save(NotificationInterface);}
public List<NotificationInterface> viewAllNotificationInterface(){
return (List<NotificationInterface>) factory.getCurrentSession().createQuery("from NotificationInterface").list();
}
public int selectMaxNotificationInterfaceID(){
return (int)factory.getCurrentSession().createQuery("select max(NotificationInterfaceID) from NotificationInterface").uniqueResult();
}
@Transactional
public void updateNotificationInterface(NotificationInterface NotificationInterface){
factory.getCurrentSession().update(NotificationInterface);
};
public List<NotificationInterface> viewNotificationInterfaceByAccountID(int accountID){
return (List<NotificationInterface>) factory.getCurrentSession().createQuery("from NotificationInterface where accountVO.accountId=?").setInteger(0, accountID).list();}
}
