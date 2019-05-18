package com.musibing.Bean;
import java.util.List;
import javax.annotation.Resource;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.musibing.server.ClassificationTypeService;
import com.musibing.vo.ClassificationType;
@Service("classificationTypeServiceBean")
@Transactional
public class ClassificationTypeServiceBean  implements ClassificationTypeService{
@Resource
SessionFactory factory;
@Resource
ClassificationType ClassificationType;
@Transactional
public void  saveClassificationType(ClassificationType ClassificationType){
factory.getCurrentSession().save(ClassificationType);}
public List<ClassificationType> viewAllClassificationType(){
return (List<ClassificationType>) factory.getCurrentSession().createQuery("from ClassificationType").list();
}
public int selectMaxClassificationTypeID(){
return (int)factory.getCurrentSession().createQuery("select max(ClassificationTypeID) from ClassificationType").uniqueResult();
}
@Transactional
public void updateClassificationType(ClassificationType ClassificationType){
factory.getCurrentSession().update(ClassificationType);
};
public List<ClassificationType> viewClassificationTypeByAccountID(int accountID){
return (List<ClassificationType>) factory.getCurrentSession().createQuery("from ClassificationType where accountVO.accountId=?").setInteger(0, accountID).list();}
}
