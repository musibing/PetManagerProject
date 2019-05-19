package com.musibing.server;

import java.util.List;

import com.musibing.vo.Product;
import com.musibing.vo.ProductIMG;

public interface ProductServer {
public Product slectProductOfID(int ProductID);
public void saveProductData(Product pd);
public List<Product> viewAllProductInfo();
public List<Product> viewAllProductForBranName(String brandName);
public void updateProductData(Product pd);
public int viewMaxSalesVolumes();
public List<Product> viewMaxSalesVolumesTop();
public int SelectMaxProductID();
public List<Product> ViewAllProductForProductClassification(String classificationName);
public List<Product> ViewClassificationProductForTagVel(String productTagVelName);
public List<Product> ViewHotProcut();
public List<Product> ViewHotProcutForClassificationPage(int startPage,int endPage);
public List<Product> ViewClassificationProductForTagVel1(String productTagVelName);
public List<Product> SelectClassificationProductForTags(String HQL);
public List<Product> ViewRecommendProductForArrayList(String productTagVelTOP);
public List<Product> selectProductByAttrbuteArrayList(String HQL);


}
