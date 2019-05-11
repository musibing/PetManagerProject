package com.musibing.server;

import java.util.List;
public interface PublicService {
	public Object findOject(int PetTypeID);
	public void deleteOject(int... PetTypeID);
	public void updateOject(Object Pvo);
	public void saveOject(Object Pvo);
	
}
