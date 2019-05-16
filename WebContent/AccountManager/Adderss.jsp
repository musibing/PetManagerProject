<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>收货地址管理</title>
<link type="text/css" rel="stylesheet" href="PersionCenterPublic.css">
<link type="text/css" rel="stylesheet" href="Address.css">
</head>
<body>
<!--数据源开始-->
<div class="datacontent">
		<div id="addressAddControl">
		<div class="datacontentTitle">收货地址</div>
		<div class="datacontentLine">
		<input type="submit" value="新增收货地址" class="PersionDataSubmit"> <a href="AddressOptically.jsp" id="AddressOptically" class="AxajGetDataSource">新增收货地址</a>
		</div>
        </div>
		<div id="addressViewControl">
		<div class="datacontentTitle">地址预览</div>
<s:iterator value="#session.addressListdefaultValue" var="lidata">
		<div id="View">
        <div id="Viewtitle">
         <s:property value='#lidata.takeDeliveryPersionName'></s:property>-默认收货地址
        </div>
        <div id="ViewContent">
        <div class="datacontentLine addressdatacontentLine">
        <div class="attrbuteName">
        收货人:
        </div>
        <s:property value='#lidata.takeDeliveryPersionName'></s:property>
       </div>
        <div class="datacontentLine addressdatacontentLine">
        <div class="attrbuteName">
        所在地区:
        </div>
        <s:property value='#lidata.address'></s:property>
       </div>
        <div class="datacontentLine addressdatacontentLine">
        <div class="attrbuteName">
        街道地址:
        </div>
       <s:property value='#lidata.address'></s:property>

       </div>
        <div class="datacontentLine addressdatacontentLine">
        <div class="attrbuteName">
        手机号码:
        </div>
        <s:property value='#lidata.telphoneNumber'></s:property>

       </div>
        <div class="datacontentLine addressdatacontentLine">
        <div class="attrbuteName">
        邮政编码:
        </div>
         <s:property value='#lidata.postalCode'></s:property>
      
       </div>
         <div class="datacontentSelect optically">
       
       
       <a href="#" class="selectInco">删除</a>
       <a href="#">编辑</a>
       </div>
        </div>
	</div>
</s:iterator>
    <div class="datacontentTitle">地址列表预览</div>
<div id="dataSourceContentControl">
    <div id="dataSourceTitle" class="dataSourceLineControl">
    
   
     <div class="dataSourceTitleContent ProductID">
     地址编号
    </div>
     <div class="dataSourceTitleContent ProductInfo"><span class="attrbuteName">地址</span></div>
     <div class="dataSourceTitleContent"><span class="attrbuteName">手机号码</span></div>
    <div class="dataSourceTitleContent"><span class="attrbuteName">收货人</span></div>
    <div class="dataSourceTitleContent"><span class="attrbuteName">邮政编码</span></div>
    <div class="dataSourceTitleContent">
   操作
    </div>
    </div>
    <s:iterator value="#session.addressList" var="lidata">
    <div class="dataSourceLineControl">
    
   
     <div class="dataSourceContentData ProductID">
   <s:property value='#lidata.addressListID'></s:property>
    
    </div>
     <div class="dataSourceContentData ProductInfo">
  
     <s:property value='#lidata.address'></s:property>

    </div>
     <div class="dataSourceContentData">
     								
     <s:property value='#lidata.telphoneNumber'></s:property>
     
    </div>
    <div class="dataSourceContentData">
     <s:property value='#lidata.takeDeliveryPersionName'></s:property>
    </div>
    
    
    <div class="dataSourceContentData">
         <s:property value='#lidata.postalCode'></s:property>
    </div>
    </div>
    
  
 </s:iterator>
    </div>
    </div>
	</div>
	<!--数据源结束-->
</body>
</html>