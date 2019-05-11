package com.musibing.server;

import java.util.List;
import java.util.Set;

import com.musibing.vo.Product;
import com.musibing.vo.ProductIMG;

public interface ProductIMGServer {

public void saveProductImgData(ProductIMG Pimg);
public List<ProductIMG> SelecProductImgDatForID(Product Pd);
public void updateProductImgData(ProductIMG Pimg);
public List<ProductIMG> SelectAllProductIMGData();
public int selectMaxContenetNumber();
}
