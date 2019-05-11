package com.musibing.server;

import java.util.List;

import org.springframework.stereotype.Service;

import com.musibing.vo.IndexCat;
import com.musibing.vo.AccountVO;

public interface IndexDataManagerServer {
	public List<IndexCat> ViewAllCatData();

}
