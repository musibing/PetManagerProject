package com.musibing.server;

import java.util.List;

import com.musibing.vo.PetDataVOClass;
import com.musibing.vo.PetIMG;

public interface PetIMGServer {
public void savePetIMG(PetIMG petimg);
public List<PetIMG> findAllPetImg(PetDataVOClass pdvoc);
public void updatePetIMG(PetIMG petimg);
}
