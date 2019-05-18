package com.musibing.server;
import java.util.List;
import com.musibing.vo.ClassificationType;
public interface ClassificationTypeService {
public void  saveClassificationType(ClassificationType ClassificationType);
public List<ClassificationType> viewAllClassificationType();
public int selectMaxClassificationTypeID();
public void updateClassificationType(ClassificationType ClassificationType);
public List<ClassificationType> viewClassificationTypeByAccountID(int accountID);
}