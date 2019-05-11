package com.musibing.util.file;

import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;

import javax.imageio.ImageIO;

import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;

public class PetTypeImgerDownload {
public void GetTypeImgerToNewWork(String IMGDownloadURLPath,String FileDirectory,String FileOutputPath){
	
	 

/*	try {下载图像失真，该方法已弃用
		URL DownLoadURL=new URL(IMGDownloadURLPath);
		 HttpURLConnection Http=(HttpURLConnection)DownLoadURL.openConnection();
		 Http.setRequestMethod("POST");
		InputStream in =Http.getInputStream();
		InputStream in=new FileInputStream(new File(path));
		BufferedImage buf=ImageIO.read(in);
		int OldHeight=buf.getHeight();
		int OldWidth=buf.getWidth();
		int NewHeight=0;
		int NewWidth=0;
		if(OldHeight!=IMGheight||OldWidth!=ImgWidth){
			BufferedImage imager=new BufferedImage(ImgWidth,IMGheight,BufferedImage.TYPE_INT_BGR);
			Graphics gar=imager.createGraphics();
			gar.drawImage(buf,0,0,ImgWidth,IMGheight,null);	
			OutputStream out=new FileOutputStream(new File(FileOutputPath));
			
		JPEGImageEncoder j=JPEGCodec.createJPEGEncoder(out);
			
			j.encode(imager);
			out.close();
		}
		
} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}*/
	try {
	URL DownLoadURL=new URL(IMGDownloadURLPath);
	URLConnection con = DownLoadURL.openConnection();    
    //设置请求超时为5s    
    con.setConnectTimeout(5*1000);    
    // 输入流    
    
    InputStream is = con.getInputStream();    
    
    // 1K的数据缓冲    
    byte[] bs = new byte[1024];    
    // 读取到的数据长度    
    int len;    
    // 输出的文件流    
   File sf=new File(FileDirectory);   
   System.out.println("图片路径:"+IMGDownloadURLPath);
   if(!sf.exists()){    
       sf.mkdirs();    
   }  
   OutputStream os=null;
   System.out.println("输出路径:"+FileOutputPath);
	os = new FileOutputStream(FileOutputPath);    
	    // 开始读取    
	    while ((len = is.read(bs)) != -1) {    
	      os.write(bs, 0, len);    
	    }    
	    // 完毕，关闭所有链接 
	    os.flush();
	    os.close();    
	    is.close();   
	  
   
	}catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} 
     
	
	
	
}
public static void main(String[] args) {
	/*PetTypeImgerDownload PTIMD=new PetTypeImgerDownload();
	PTIMD.GetTypeImgerToNewWork("http://img.boqiicdn.com/Data/BK/P/img74791405669415.jpg",1000);*/
}
}
