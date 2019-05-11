<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">


<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/Version1/Bottom.css">
<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/Version1/Logo.css">
<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/Version1/Navigation.css">
<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/Version1/Top.css">
<link type="text/css" rel="stylesheet" href="index.css">
<title>宠物之家官方网站</title>
<script src="../jquery/jquery-1.7.2.js"></script>
<script>
function load(){
	  
	
	}
	
	$(function() {
		$.ajax({
				url : "..//UserLoginStatusCheck.action",
				data : {
					},
					scriptCharset : 'utf-8',
					contentType : "application/x-www-form-urlencoded; charset=utf-8",
				type : "post",
				traditional : true,
				success : function(str) {
					
					if(str!="null"){
						$("#Remvoe").remove();
					$("#accontid").html(str);
					$("#ChengWidth").css("width",120);
					
						}
					
			}

			})	
		$("#searchText").change(function(){
			
		
			var searchTextValue=$("#searchText").val();
			
			$("#searchTager").attr("href","../searchProductBuyList.action?searchTextValue="+searchTextValue)
			
			
		/* 	$.ajax({
										url : "..//searchProductBuyList.action",
										data : {
											
											"searchTextValue" : searchTextValue,
									
										},
										scriptCharset : 'utf-8',
										contentType : "application/x-www-form-urlencoded; charset=utf-8",
										type : "post",
								
										traditional : true,
										success : function(str) {
											
											
											}
				
				
				}) */
			
			
				
			
			
			
			
			
			
			})
		
	})
	
</script>
<%
	String[] AnimalClassification = { "Dog", "Cat", "Aquarium",
			"Crawler" };
	request.setAttribute("Animal", AnimalClassification);
%>
</head>
<frameset rows="750,1800,360" frameborder="NO" border="0"   framespacing="0">
<frame src="top.jsp" scrolling="no" noresize></frame>
<frame src="center.jsp" name="centertager" scrolling="yes" noresize></frame>
<frame src="bottom.jsp" scrolling="no" ></frameset>


<!-- scrolling="no" 去框架滚动条-->
<noframes></noframes>
<body onload="load()">

<!--bottomControl Start--><!--bottomControl end-->






    
    
</body>
<script>
/* var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?b8c358b26d18dee09914931b71cac447";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})(); */
</script>
</html>