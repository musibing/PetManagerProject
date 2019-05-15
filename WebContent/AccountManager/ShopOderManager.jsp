<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>商城订单管理</title>
<link type="text/css" rel="stylesheet" href="index.css">
<link type="text/css" rel="stylesheet" href="PersionCenterPublic.css">
<link type="text/css" rel="stylesheet" href="ShopOderManager.css">
</head>
<body>
<!--数据源开始-->
 <div class="shopOder datacontent">
    <div class="datacontentTitle">
    商城订单</div>
    <div class="title">
    <div class="titleClass">
    全部
    </div>
      <div class="titleClass">
    侍付款
    </div>
      <div class="titleClass">
    待发货
    </div>
      <div class="titleClass">
  	待评价
    </div>
     <div class="titleClass search">
     <div id="searchControl">
  	<input type="text" class="oderinfotext" value="订单编号/商品名称"><input type="button" class="odersearch" value="搜索订单"> 
    </div>
    </div>
    </div>
    <div id="dataSource">
    <div id="dataSourceTitle" class="dataSourceLineControl">
    
   
     <div class="dataSourceTitleContent ProductID">订单编号
    </div>
     <div class="dataSourceTitleContent ProductInfo">
     商品信息
    </div>
     <div class="dataSourceTitleContent">
      订单金额
     
    </div>
    <div class="dataSourceTitleContent ">
    收货人
    </div>
    
    
    <div class="dataSourceTitleContent">
   订单状态
    </div>
    <div class="dataSourceTitleContent">
   操作
    </div>
    </div>
    
    
    <div id="contentBody">
<!--     暂无订单数据,去<a href="../BusinessesService/MapMode.jsp">宠物商城</a>看看吧! -->
    <s:iterator value="#session.ProductOderlistByAccountID" var="lidata">
    <div class="dataSourceLineControl">
    
   
     <div class="dataSourceContentData ProductID">
     <s:property value='#lidata.productOderID'></s:property>
    
    </div>
     <div class="dataSourceContentData ProductInfo">
  订单备注:
    <s:property value='#lidata.oderTips'></s:property>

    </div>
     <div class="dataSourceContentData">
     								
      <s:property value="#lidata.oderPrice"></s:property>
     
    </div>
    <div class="dataSourceContentData">
    <s:property value="#lidata.accountId.accountName"></s:property>
    </div>
    
    
    <div class="dataSourceContentData">
   <select>
     <option value="">
     已完成
     </option>
      <option  value="">
    侍付款 
     </option>
      <option  value="">
     待发货 
     </option>
      <option  value="">
     待评价
     </option>
     </select>
    </div>
    </div>
    
    
    </s:iterator>
    </div>
    </div>
 </div>
 <!--数据源结束-->
</body>
</html>