<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet" href="PersionCenterPublic.css">
<link type="text/css" rel="stylesheet" href="ShopCollect.css">
<title>商户收藏</title>
</head>
<body>
<!--数据源开始-->
<div class="ShopCollect datacontent">
    <div class="datacontentTitle">
    我的收藏</div>
    <div class="title">
    <div class="titleClass">
    收藏的商品
    </div>
      <div class="titleClass">
     收藏的品牌
    </div>
      <div class="titleClass">
     收藏的商户
    </div>
     <div class="titleClass">
    
    </div>
    
     <div class="titleClass search">
     <div id="test">
  	<input type="text" class="oderinfotext" value="订单编号/商品名称"><input type="button" class="odersearch" value="搜索收藏"> 
    </div>
    </div>
    </div>
    <div id="dataSource">
    <div id="sonTitle">
    
   
     <div class="sonTitleContent ProductID">
     商户编号
    </div>
     <div class="sonTitleContent ShopInfo">
     商户信息
    </div>
     <div class="sonTitleContent borderleftandright1">
    在线状态
     
    </div>
    <div class="sonTitleContent width122">
    
   信用等级
    </div>
    
    
    <div class="sonTitleContent width122">
   操作
    </div>
    </div>
    
    
    <div id="contentBody">
    暂无订单数据,去<a href="../BusinessesService/MapMode.jsp">宠物商城</a>看看吧!
    
    </div>
    </div>
    
    </div>
    <!--数据源结束-->
</body>
</html>