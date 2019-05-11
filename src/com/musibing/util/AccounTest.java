package com.musibing.util;

import java.io.File;

import org.junit.Test;

public class AccounTest {
@Test
public void testIMG(){
	String basePath="I:/Java_Resoure/PetManagerProject/WebContent/img/Account/";
File baseflie=new File(basePath);
String[] file=baseflie.list();
for(int x=0;x<file.length;x++){
	String filename=basePath+(602000001+x)+".jpg";
File files=new File(basePath+file[x]);

if(!files.isDirectory()){
	files.renameTo(new File(filename));
	
}
}
}
}
