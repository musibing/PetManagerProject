<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人帐户</title>

<link type="text/css" rel="stylesheet" href="PersionCenterPublic.css">
<link type="text/css" rel="stylesheet" href="PersionAccount.css">
</head>
<body>
<!--数据源开始-->
<div id="dataDourceControl">
	<div class="datacontent">
		<div class="datacontentTitle">帐户余额</div>
		<div class="datacontentLine">
			帐户可用余额:<span id="accountMoney" class="maginright120">￥<s:property value='#session.payAccount.money'></s:property></span> <span >宠物豆：<span  class="kidneyBean"><s:property value='#session.payAccount.kidneyBean'></s:property></span></span></div>
		</div>
		<div class="datacontentLine">
			手机已经绑定<a href="#" class="maginright120">修改手机号</a> <span
				class="colorRed">未设置支付密码</span><a href="#">点击设置</a>
		</div>
	</div>
	<div class="accountDataTotal datacontent">
		<div class="datacontentTitle">帐户明细</div>
		<div class="title">
			<div class="titleClass">支出明细</div>
			<div class="titleClass">收入明细</div>
			<div class="titleClass searchTime">
				<select name="select">
					<option>最近一周</option>
					<option>最近一个月</option>
					<option>半年</option>
				</select>
			</div>

		</div>
		<div id="dataSource">
			<div id="dataSourceTitle"  class="dataSourceLineControl">

				<div class="dataSourceTitleContent width170">订单编号</div>
				<div class="dataSourceTitleContent width110">交易时间</div>
				<div class="dataSourceTitleContent">交易类型</div>
				<div class="dataSourceTitleContent width122">支出金额</div>
				<div class="dataSourceTitleContent width122">状态</div>
				<div class="dataSourceTitleContent width122">备注</div>
			</div>


			<div id="contentBody">暂无支出明细</div>
		</div>

	</div>

</div>
<!--数据源结束-->
</body>
</html>