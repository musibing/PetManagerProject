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
<body onload="load()">
<div id="topManager">
	<div id="top">
		<div id="topContorl">

			<div class="topleftclass"><a href="../index/index.jsp">宠物之家</a></div>
		<div class="topleftclass"><a href="../SelectClassificationProductForArrayList">宠物商城</a></div>
		<div class="topleftclass"><a href="../BusinessesService/MapMode.jsp">宠物服务</a></div>
		<div class="topleftclass">宠物论坛</div>
		<div class="topleftclass"><a href="../SelectArticleByBaiKeiIndex">宠物百科</a></div>
		<div id="topcenter"></div>
		<div class="toprightclass" id="ChengWidth"><a href="../login/login.jsp" id="accontid">登录</a></div>
		<div class="toprightclass" id="Remvoe"><a href="../register/register.jsp">注册</a></div>
			<div class="toprightclass">微博</div>
			<div class="toprightclass">微信</div>
			<div class="toprightclass">手机版</div>

		</div>
	</div>

		<div id="logo">
			<div id="logoControl">

				<div id="logoimg">
					<img src="../img/index/logo.jpg">
				</div>
				<div id="searchTestGl">
					<div id="searchTextDiv">
						<input id="searchText"></input>
					</div>
					<div id="searchButtonDiv">
						<a href="#" id="searchTager"><button id="searchButton" >搜索</button></a>
					</div>
				</div>
				<div id="PetHomeAPP">
					<img src="../img/ShopMall/logo.gif" width="230" height="90"
						id="PetHomeAPPIMG">
				</div>
			</div>
		</div>
  <div id="Navigation">
		<div id="NavigationControl">

			<div class="Navigation2 NavigationWidth">
				<div id="ALLCommodityControl">
					<span id="ALLCommodityText">全部分类商品</span>
					<div id="ALLCommodityICO">
						<div id="ALLCommodityICOIMG"></div>
					</div>
				</div>
			</div>
			<div class="Navigation2 Nvaindex">首页</div>
			<div class="Navigation2"><a href="../SelectClassificationProductForTags?ProductTagVelName=狗狗专区">狗狗</a></div>

			<div class="Navigation2"><a href="../SelectClassificationProductForTags?ProductTagVelName=猫咪专区">猫猫</a></div>
			<div class="Navigation2"><a href="../SelectClassificationProductForTags?ProductTagVelName=小宠专区">小宠</a></div>
			<div class="Navigation2"><a href="../SelectClassificationProductForTags?ProductTagVelName=水族专区">水族</a></div>
			<div class="Navigation3">全球购</div>
			<div class="Navigation4">创意生活馆</div>
			<div class="Navigation3">品牌馆</div>
			<div class="Navigation4">宠物服务</div>
			<div id="Shop_Car">
				<div id="CarIMGControl">
					<div id="Sop_CarIMG"></div>
				</div>
				<div id="Shop_CarText">
					<a href="../ViewBuyCarList" class="BuyCarHref">购物车</a> <div class="BuyCarTotalNumber"><s:property value='#session.BuyCarNumber'></s:property>
					</div>
				</div>
			</div>
		</div>
  </div>
	 
        

	
    
    
    </div>
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