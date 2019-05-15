<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link type="text/css" rel="stylesheet" href="PersionCenterPublic.css">
<link type="text/css" rel="stylesheet" href="ProductCollect.css">
<title>商品收藏</title>
</head>
<body>
<div class="ProductCollect datacontent">
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
    <div id="dataSourceTitle" class="dataSourceLineControl">
    
   
     <div class="dataSourceTitleContent ProductID">
     商品编号
    </div>
     <div class="dataSourceTitleContent ProductInfo">
     商品信息
    </div>
     <div class="dataSourceTitleContent">
     价格
     
    </div>
    <div class="dataSourceTitleContent ">
    库存状态
    </div>
    
    
    <div class="dataSourceTitleContent">
   操作
    </div>
    </div>
    
    
    <div id="contentBody">
<!--     暂无订单数据,去<a href="../BusinessesService/MapMode.jsp">宠物商城</a>看看吧! -->
    <s:iterator value="#session.AccountCollectStatus" var="lidata">
    <div class="dataSourceLineControl">
    
   
     <div class="dataSourceContentData ProductID">
     <s:property value='#lidata.product.productID'></s:property>
    
    </div>
     <div class="dataSourceContentData ProductInfo">
      <s:property value='#lidata.product.productName'></s:property>
    </div>
     <div class="dataSourceContentData">
     <s:property value='#lidata.product.retailPrice'></s:property>
     
    </div>
    <div class="dataSourceContentData">
    有货
    </div>
    
    
    <div class="dataSourceContentData">
   取消收藏
    </div>
    </div>
    
    
    </s:iterator>
    </div>
    </div>
    
    </div>
</body>
</html>