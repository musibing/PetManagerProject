<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>退货记录</title>
<link type="text/css" rel="stylesheet" href="PersionCenterPublic.css">
<link type="text/css" rel="stylesheet" href="ExitPorductContent.css">
</head>
<body>
 <!--数据源开始-->
<div class="ExitShopContent datacontent">
    <div class="datacontentTitle">
    退货记录</div>
    <div class="title">
    <div class="titleClass">
    全部
    </div>
      <div class="titleClass">
    近三个月
    </div>
      <div class="titleClass">
    近一年内
    </div>
      <div class="titleClass">
  	一年以上
    </div>
    
     <div class="titleClass search">
     <div id="searchControl">
  	<input type="text" class="oderinfotext" value="订单编号/商品名称"><input type="button" class="odersearch" value="搜索订单"> 
    </div>
    </div>
    </div>
    <div id="dataSource">
    <div id="dataSourceTitle" class="dataSourceLineControl">
    
   
     <div class="dataSourceTitleContent ProductID">
     商品编号
    </div>
     <div class="dataSourceTitleContent ProductInfo">
     商品信息
    </div>
     <div class="dataSourceTitleContent">
     退款金额 
     
    </div>
    <div class="dataSourceTitleContent">收款账户</div>
    <div class="dataSourceTitleContent">
    退款时间
    </div>
    <div class="dataSourceTitleContent">
   操作
    </div>
    </div>
    
    
    <div id="contentBody">
    暂无订单数据,去<a href="../BusinessesService/MapMode.jsp">宠物服务</a>看看吧!
    
    </div>
  </div>
    
    </div>
 <!--数据源结束-->
</body>
</html>