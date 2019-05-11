package com.musibing.server;

import java.util.List;

import com.musibing.vo.ProductJudged;

public interface ProductJudgedService {
	public void SaveProductJudged(ProductJudged productjudged);
	public int SelectMaxProductJudgedID();
	public List JudgedStatistics(int productID);
	public List<ProductJudged> JudgedForProductID(int productID);
	
}
