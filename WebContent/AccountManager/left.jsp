<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link type="text/css" rel="stylesheet" href="PersionCenterPublic.css">
<link type="text/css" rel="stylesheet" href="index.css">
<link type="text/css" rel="stylesheet" href="PersionCenter.css">
<link type="text/css" rel="stylesheet" href="ShopOderManager.css">
<link type="text/css" rel="stylesheet" href="Coupons.css">
<link type="text/css" rel="stylesheet" href="PersionAccount.css">
<link type="text/css" rel="stylesheet" href="SafetySetting.css">
<link type="text/css" rel="stylesheet" href="AddressView.css">
<link type="text/css" rel="stylesheet" href="Address.css">
<link type="text/css" rel="stylesheet" href="PersionData.css">
</head>

<body>

<div id="content">
    
    <div id="ListtitleControl">
    <div class="oderManager listTitleManager">
    <div class="listTitle">
    交易管理
    </div>
    <div class="listTitleContent">
    <a href="../viewProductOderByAccounID" id="ShopOderManager" target="righttager">商城订单</a>
    </div>
    <div class="listTitleContent">

   <a href="ServiceOderManager.jsp" id="ServiceOderManager" target="righttager"> 服务订单</a>
    </div>
    <div class="listTitleContent">
   <a href="ExitPorductContent.jsp" id="ExitPorductContent" target="righttager">退货记录</a>
    
    </div>
    <div class="listTitleContent">
  
  <a href="GetPorductContent.jsp" id="GetPorductContent" target="righttager">到货记录</a>
    </div>
    <div class="listTitleContent">
     <a href="../viewProductCollectListInfoByAccountID" id="ShopCollect" target="righttager">我的收藏</a>
    				 	
    </div>
    </div>
    <div class="meonyManager listTitleManager">
       <div class="listTitle">
    资金管理
    </div>
    <div class="listTitleContent">
   <a href="PersionAccount.jsp" id="PersionAccount" target="righttager">余额</a>
    </div>
    <div  class="listTitleContent"><a href="Coupons.jsp" id="Coupons" target="righttager">我的优惠券</a></div>
    </div>
    <div class="messingManager listTitleManager">
       <div class="listTitle">
   消息管理
    </div>
    <div class="listTitleContent">
    咨询消息
    </div>
    <div class="listTitleContent">
   系统消息
    </div>
    <div class="listTitleContent">
   私信
    
    </div>
   
    </div>
    <div class="persionSeeting listTitleManager">
       <div class="listTitle">
    个人设置
    </div>
    <div class="listTitleContent">
   <a href="SafetySetting.jsp" id="SafetySetting" target="righttager" > 安全设置</a>
    </div>
    <div class="listTitleContent">
    <a href="Adderss.jsp" id="Adderss" class="AxajGetDataSource" target="righttager"> 收货地址</a>
    </div>
    <div class="listTitleContent">
    发票抬头
    
    </div>
    <div class="listTitleContent">
   绑定帐号
    </div>
   
    </div>
    </div>
   </div>
  </body>
</html>