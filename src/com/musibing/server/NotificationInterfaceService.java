package com.musibing.server;
import java.util.List;
import com.musibing.vo.NotificationInterface;
public interface NotificationInterfaceService {
public void  saveNotificationInterface(NotificationInterface NotificationInterface);
public List<NotificationInterface> viewAllNotificationInterface();
public int selectMaxNotificationInterfaceID();
public void updateNotificationInterface(NotificationInterface NotificationInterface);
public List<NotificationInterface> viewNotificationInterfaceByAccountID(int accountID);
}