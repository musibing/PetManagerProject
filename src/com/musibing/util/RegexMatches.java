package com.musibing.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegexMatches {
	 public static void main( String args[] ){
		 
	      // 按指定模式在字符串查找
	     String line="<div class=\"doc-img\">  "
	     		+ "<a target=\"_blank\" href=\"http://tupian.baike.com/doc/%E7%95%AA%E8%8C%84%5B%E8%8C%84%E7%A7%91%E8%8C%84%E5%B1%9E%E6%A4%8D%E7%89%A9%5D/a0_42_45_50200009239445155046452347480_jpg.html\" title=\"\"><img src=\"http://a0.att.hudong.com/42/45/50200009239445155046452347480_s.jpg\" alt=\"\" title=\"\"></a><a target=\"_blank\" href=\"http://tupian.baike.com/doc/%E7%95%AA%E8%8C%84%5B%E8%8C%84%E7%A7%91%E8%8C%84%E5%B1%9E%E6%A4%8D%E7%89%A9%5D/a0_42_45_50200009239445155046452347480_jpg.html\" class=\"card\"><em></em>番茄[茄科茄属植物]图册</a>"
	     		+ "</div>";

	     String pattern = "<div class=\"doc-img\">.+<img src=\".+alt";
	     
	      // 创建 Pattern 对象
	      Pattern r = Pattern.compile(pattern);
	 
	      // 现在创建 matcher 对象
	      Matcher m = r.matcher(line);
	      if (m.find( )) {
	         System.out.println("Found value: " + m.group(0) );
	       
	         
	      } else {
	         System.out.println("NO MATCH");
	      }
	   }
}
