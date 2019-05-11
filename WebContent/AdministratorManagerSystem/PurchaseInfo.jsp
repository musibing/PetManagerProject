<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet" href="ManagerSystemPublic.css">
<link type="text/css" rel="stylesheet" href="ProductOptically.css">
<link type="text/css" rel="stylesheet" href="PurchaseInfo.css">
<title>菜菜农全球订单监控中心</title>
</head>
<body>
<div id="CenterTitle">
				<div id="CTImg">
					<img src="../img/WebINCO/ICO_Palce.png" width="20" height="20">
				</div>
				<div id="CTText">你前的位置:首页&gt;订单管理&gt;全球订单监控中心</div>
				<div id="CTKong"></div>
				<div id="CTTime">2016年06月06日&nbsp18:00 星期二</div>
			</div>
<div id="ProductOptically">

<div id="Content">
<div id="Title">
采购汇总
</div>
<div id="SonTitle">
<div class="SonTitle">
全球业务汇总
</div>
<div class="SonTitle">
  <a href="PurchaseInfo.jsp">采购汇总 </a></div>
<div class="SonTitle">
分拣汇总
</div>
<div class="SonTitle">
实时订单状态
</div>
<div class="SonTitle">
数据导出
</div>
</div>
<form action="../SaveOderInfo" namespace="/"  method="post">
<div id="OderDataOpteratveControl">
<div class="OderDataOpteratveLine  OderDataOpteratveTitle">
<div class="OderDataOpteratveDataSourceTitleSonTags OderDataOpteratveDataSourcePulicSonTags">商品ID</div>
<div class="OderDataOpteratveDataSourceTitleSonTags OderDataOpteratveDataSourcePulicSonTags">商品名称</div>
<div class="OderDataOpteratveDataSourceTitleSonTags SonTagsWidth560 OderDataOpteratveDataSourcePulicSonTags">订单需求总数</div>
<!-- <div class="OderDataOpteratveDataSourceTitleSonTags OderDataOpteratveDataSourcePulicSonTags">收货人</div>
<div class="OderDataOpteratveDataSourceTitleSonTags OderDataOpteratveDataSourcePulicSonTags">金额</div>
<div class="OderDataOpteratveDataSourceTitleSonTags OderDataOpteratveDataSourcePulicSonTags">全部状态</div>
<div class="OderDataOpteratveDataSourceTitleSonTags OderDataOpteratveDataSourcePulicSonTags">操作</div> -->
</div>




<s:iterator value="#session.AllProductPurchaseOder" var="VarData" >

<div class="OderDataOpteratveLine">
<s:iterator value="#VarData" var="VarData1" status="idx">
<s:if test="#idx.index==1">
<div class="OderDataOpteratveDataSourceContentTags ContentTagsWidth420 OderDataOpteratveDataSourcePulicSonTags"><s:property value='#VarData1'></s:property><%-- <s:property value='#VarData'></s:property> --%>
</div>
</s:if>
<s:else>
<div class="OderDataOpteratveDataSourceContentTags OderDataOpteratveDataSourcePulicSonTags"><s:property value='#VarData1.productID'></s:property><%-- <s:property value='#VarData'></s:property> --%>
</div>
<div class="OderDataOpteratveDataSourceContentTags OderDataOpteratveDataSourcePulicSonTags"><s:property value='#VarData1.productName'></s:property><%-- <s:property value='#VarData'></s:property> --%>
</div>

</s:else>

</s:iterator> 
<br>




</div>

</s:iterator>
</div>

</form>
</div>

</div>
</body>
</html>