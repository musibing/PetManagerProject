package com.musibing.util.system;

import java.io.File;
import java.io.FileOutputStream;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Text;



public class CreatXMLFile {


	public static void main(String[] args) {
		CreatXMLFile xm=new CreatXMLFile();
	xm.CreatXMLFiles();
	}
	
public void CreatXMLFiles(){
	try {
		DocumentBuilderFactory fct=DocumentBuilderFactory.newInstance();
		DocumentBuilder bui=fct.newDocumentBuilder();
		Document doc=bui.newDocument();
		Element ImgFile=doc.createElement("ImgFiles");
		Element ImgFile1=doc.createElement("ImgFile");
		Element ImgFile2=doc.createElement("ImgFile");
		Attr Path1=doc.createAttribute("id");
		Attr Path2=doc.createAttribute("id");
		  Element name1=doc.createElement("name");
          Text na1=doc.createTextNode("龙大哥");
          Element name2=doc.createElement("name");
          Text na2=doc.createTextNode("龙大爷");
		Path2.setNodeValue("data2");
		
		Path1.setNodeValue("data1");
		  doc.appendChild(ImgFile);
		  ImgFile.appendChild(ImgFile1);
		  ImgFile1.appendChild(name1);
		  ImgFile1.setAttributeNode(Path1);
                  name1.appendChild(na1);
                  
                  TransformerFactory ttf = TransformerFactory.newInstance();
                  
                      Transformer tf = ttf.newTransformer();
                      tf.setOutputProperty(OutputKeys.INDENT, "yes");
                      tf.transform(new DOMSource(doc), new StreamResult("E:/data.xml"));
                  
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
}
