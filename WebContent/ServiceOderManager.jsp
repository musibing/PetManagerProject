<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>商城订单管理</title>

<link type="text/css" rel="stylesheet" href="PersionCenterPublic.css">
<link type="text/css" rel="stylesheet" href="ServiceOderManager.css">
</head>
<body>
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
     <div id="test">
  	<input type="text" class="oderinfotext" value="订单编号/商品名称"><input type="button" class="odersearch" value="搜索订单"> 
    </div>
    </div>
    </div>
    <div id="dataSource">
    <div id="sonTitle">
    
    <div class="sonTitleContent width350">
    订单信息
    </div>
     <div class="sonTitleContent borderleftandright1">
     收货人
    </div>
     <div class="sonTitleContent">
     订单金额
    </div>
     <div class="sonTitleContent borderleftandright1">
     
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
    <div class="sonTitleContent width122">
     操作
    </div>
    </div>
    
    
    <div id="contentBody">
    暂无订单数据,去<a href="../BusinessesService/MapMode.jsp">宠物服务</a>看看吧!
    
    </div>
    </div>
    
    </div>
    </div>
 <div class="userlove datacontent">
    <div class="datacontentTitle">
    用户喜欢
    </div>
    </div>
</body>
</html>