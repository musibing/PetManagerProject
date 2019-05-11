package com.musibing.util.file;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.imageio.ImageIO;

public class GetIMGInfo {
	public List getIMGInfo(String FilePath){
		List imginfo = new ArrayList();
		try {
			
			InputStream in=new FileInputStream(new File(FilePath));
			System.out.println("test");
			BufferedImage buf=ImageIO.read(in);
			int OldHeight=buf.getHeight();
			int OldWidth=buf.getWidth();
			System.out.println("数据检查："+"高度"+OldHeight+"宽度"+OldWidth);
			imginfo.add(OldHeight);
			imginfo.add(OldWidth);
		} catch (Exception e) {
			
			e.printStackTrace();
		} 
		return imginfo;
	}

}
