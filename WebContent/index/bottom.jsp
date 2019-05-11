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
<body >

<!--bottomControl Start-->
<div id="bottomControl">
		<div id="bottomCenterControl">
			<div class="bottomLink"><a href="../WebsiteAbout/AboutUS.html" name="AboutUS" class="GetHtmlData" onclick="getTageName(this)" target="centertager">关于我们</a></div>
			<div class="bottomLink"><a href="../WebsiteAbout/Link.html" name="Link" class="GetHtmlData" onclick="getTageName(this)" target="centertager">友情链接</a></div>
			<div class="bottomLink"><a href="../WebsiteAbout/Complaints.html" name="Complaints" class="GetHtmlData" onclick="getTageName(this)" target="centertager">诚聘英才</a></div>
			<div class="bottomLink"><a href="../WebsiteAbout/ContactUS.html" name="ContactUS" class="GetHtmlData" onclick="getTageName(this)"target="centertager">联系我们</a></div>
			<div class="bottomLink"><a href="../WebsiteAbout/sietmap.jsp" name="sietmap" class="GetHtmlData" onclick="getTageName(this)" target="centertager">网站地图</a></div>
			<div class="bottomLink"><a href="../WebsiteAbout/Complaints.html" name="Complaints" class="GetHtmlData" onclick="getTageName(this)" target="centertager">意见反馈</a></div>
			<div class="bottomLink"><a href="../WebsiteAbout/Complaints.html" name="Complaints" class="GetHtmlData" onclick="getTageName(this)" target="centertager">帮助中心</a></div>
			<div id="bottomLinkID" class="bottomLink">客服热线：400-820-6098</div>
			<div id="bottomBeianControl">
				<div class="bottomBaian">
					<img src="../img/beian/beian.png" width="20" height="20">沪公网安备
					31011502004955号
				</div>
				<div class="bottomBaian">沪ICP备13034501号-2</div>
				<div class="bottomBaian">增值电信业务经营许可证： 沪B2-20140120</div>
			</div>

			<div id="BeianInfoControl">Copyright © 2007-2018 Boqii.com All
				Rights Reserved 光橙（上海）信息科技有限公司 版权所有</div>
			<div id="BeianImgControl">
				<div class="BeianImg">
					<img src="../img/beian/foot_gs.png" width="100" height="35">
				</div>
				<div class="BeianImg">
					<img src="../img/beian/foot_cx.png" width="100" height="35">
				</div>
				<div class="BeianImg">
					<img src="../img/beian/foot_kx.png" width="100" height="35">
				</div>
				<div class="BeianImg">
					<img src="../img/beian/foot_zx.png" width="100" height="35">
				</div>

			</div>
		</div>
</div>
<!--bottomControl end-->
    
    
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