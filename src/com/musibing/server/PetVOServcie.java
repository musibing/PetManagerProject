package com.musibing.server;

import java.util.List;

import com.musibing.vo.PetDataVOClass;

public interface PetVOServcie {
	
	public List<PetDataVOClass> ViewAllPetVOClass();
	public void UpdatePetVOClass(PetDataVOClass petdatavoclass);
	public void SavePetVOClass(PetDataVOClass petdatavoclass);
}
