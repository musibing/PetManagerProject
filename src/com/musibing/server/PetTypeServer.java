package com.musibing.server;

import java.util.List;

import com.musibing.vo.PetDataVOClass;
import com.musibing.vo.PetType;

public interface PetTypeServer {
	public PetType finPet(int PetTypeID);
	public void deletePet(int... PetTypeID);
	public void update(PetType Pvo);
	public void save(PetType Pvo);
	public List<PetTypeServer> ViewAllPetTypeForPage(int ThisPage,int MaxConent);
	public int GetPetTypeMaxID();
}
