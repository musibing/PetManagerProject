package com.musibing.server;

import com.musibing.vo.OrderSunburnImg;

public interface OrderSunburnImgService{
public void SeavOrderSunburnImg(OrderSunburnImg orderSunburnImg);
public int SelectMaxOderSunburnImg();
public OrderSunburnImg SelectOrderSunburnImgForOrderSunburnImgID(int orderSunburnImgID);
public void UpdateOrderSunburnImgInfo(OrderSunburnImg orderSunburnImg);
}
