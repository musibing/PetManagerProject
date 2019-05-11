package com.musibing.util.lucene;

import java.nio.file.FileSystems;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.cjk.CJKAnalyzer;
import org.apache.lucene.analysis.core.SimpleAnalyzer;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.StringField;
import org.apache.lucene.document.TextField;
import org.apache.lucene.document.Field.Store;
import org.apache.lucene.index.DirectoryReader;
import org.apache.lucene.index.IndexReader;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.index.IndexWriterConfig.OpenMode;
import org.apache.lucene.queryparser.classic.MultiFieldQueryParser;
import org.apache.lucene.queryparser.classic.QueryParser;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.search.TopDocs;
import org.apache.lucene.search.highlight.Formatter;
import org.apache.lucene.search.highlight.Fragmenter;
import org.apache.lucene.search.highlight.Highlighter;
import org.apache.lucene.search.highlight.QueryScorer;
import org.apache.lucene.search.highlight.Scorer;
import org.apache.lucene.search.highlight.SimpleFragmenter;
import org.apache.lucene.search.highlight.SimpleHTMLFormatter;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.musibing.server.AccountServer;
import com.musibing.server.FreshProductSerivce;
import com.musibing.server.ProductOderListService;
import com.musibing.server.ProductOderServer;
import com.musibing.server.ProductServer;
import com.musibing.vo.AccountVO;
import com.musibing.vo.FreshProduct;
import com.musibing.vo.Product;
import com.musibing.vo.ProductOder;
import com.musibing.vo.ProductOderList;




public class PorductInterface {
	@Resource
	 Product pt;
	AccountVO accountvo;
	FreshProduct fp;
	ProductOder po;
	AccountServer as;
	FreshProductSerivce fps;
	ProductOderList prl;
 ProductServer ps;
	ProductOderListService pols;
	ProductOderServer productOderServer;
	
	
	@Test
	public  void intiControl(){
		ApplicationContext act = new ClassPathXmlApplicationContext("beans.xml");
		ps=(ProductServer)act.getBean("productServerBean");
	/*	fps=(FreshProductSerivce)act.getBean("FreshProductSerivceBean");
		pols=(ProductOderListService)act.getBean("productOderListServiceBean");
		as=(AccountServer)act.getBean("accountServerBa");
		productOderServer=(ProductOderServer)act.getBean("productOderServerBean");*/
	
	}
	
	public static final String INDEX_PATH="I:\\LunceneData\\ProductInfo";
	public static final String SCAN_PATH="E:\\text";
	public static void main(String[] args) {
		
/*creatDataFromLocation();*/
	
			}
	
	
	
	public void creatDataFromLocation(){
		intiControl();
		IndexWriter indexWriter=null;
		try {
			Directory directory=FSDirectory.open(FileSystems.getDefault().getPath(INDEX_PATH));
			Analyzer analyzer=new CJKAnalyzer();
			IndexWriterConfig indexWriterConfig=new IndexWriterConfig(analyzer);
			indexWriterConfig.setOpenMode(OpenMode.CREATE_OR_APPEND);
			
			
			
			indexWriter=new IndexWriter(directory,indexWriterConfig);
	       
	           
	            
	           List<Product> li=ps.viewAllProductInfo();
	            
	            for(int j=0;j<li.size();j++){
	            	
	            	 Document document = new Document();
	            	
	            	document.add(new StringField("id", String.valueOf(li.get(j).getProductID()),Store.YES));
		            document.add(new TextField("fileName", li.get(j).getProductName(), Store.YES));
		         
		            indexWriter.addDocument(document);
		            indexWriter.commit();
		            System.out.println("***"+li.get(j).getProductName()+"id:"+li.get(j).getProductID());
		          
	            }
	           System.out.println("操作完成！");
	            indexWriter.close();
	          
	           
	            
	           
	           
	       
	       
	      
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}public  Map searchIndex(String searchTextValue){
		Map<Integer, String> searchValueMap = new HashMap<Integer, String>();
		try {
			intiControl();
		
			
			Directory  directory =FSDirectory.open(Paths.get(INDEX_PATH));
			
			IndexReader indexReader=DirectoryReader.open(directory);
			IndexSearcher indexSearcher=new IndexSearcher(indexReader);
			Analyzer analyzer=new CJKAnalyzer();
			QueryParser queryParser=new MultiFieldQueryParser(new String[]{"fileName"},analyzer);
			Query query=queryParser.parse(searchTextValue);
			
			 Formatter Formatter = new SimpleHTMLFormatter("<span style=\"color:red\">","</span>");
			 Scorer fragmentscorer = new QueryScorer(query);
			 Highlighter highlighter = new Highlighter(Formatter, fragmentscorer);
			 Fragmenter fragmenter=new SimpleFragmenter(100);/**/
			
			 highlighter.setTextFragmenter(fragmenter);
			 TopDocs topDocs=indexSearcher.search(query, 5000);
			 
			 ScoreDoc[] scoreDocs=topDocs.scoreDocs;
			 System.out.println(scoreDocs.length);
			 for (int i=0;i<scoreDocs.length;i++) {
				
				 int id=scoreDocs[i].doc;
				 
				 System.out.println("ID检查"+id);
				 
				 Document documents=indexSearcher.doc(id);
				 System.out.print("文件名:"+documents.get("fileName"));									
				String fileNameChange=highlighter.getBestFragment(analyzer, "fileName", documents.get("fileName"));
					System.out.println("文件ID:"+documents.get("id"));
					System.out.println("高辆>>"+fileNameChange);
					
					searchValueMap.put(Integer.parseInt(documents.get("id")), fileNameChange);
					
					
			}
			 
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return searchValueMap;
		
	}
}
