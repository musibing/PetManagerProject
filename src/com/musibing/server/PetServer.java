package com.musibing.server;

import java.util.List;
import com.musibing.vo.PetDataVOClass;
public interface PetServer {
public PetDataVOClass finPetForID(int PetID);
public void deletePet(int... PetID);
public void update(PetDataVOClass Pvo);
public void savePetData(PetDataVOClass Pvo);
public List<PetDataVOClass> ViewPetForPage();
public List<PetDataVOClass> ViewAllPet();
}
