<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet" href="ManagerSystemPublic.css">
<link type="text/css" rel="stylesheet" href="ProductOptically.css">
<title>订单管理</title>
</head>
<body>
<div id="CenterTitle">
				<div id="CTImg">
					<img src="../img/WebINCO/ICO_Palce.png" width="20" height="20">
				</div>
				<div id="CTText">你前的位置:首页&gt;订单管理&gt;新建订单</div>
				<div id="CTKong"></div>
				<div id="CTTime">2016年06月06日&nbsp18:00 星期二</div>
			</div>
<div id="ProductOptically">

<div id="Content">
<div id="Title">
新建订单
</div>
<div id="SonTitle">
<div class="SonTitle">
新建订单
</div>
<div class="SonTitle">
订单列表
</div>
<div class="SonTitle">
售后订单
</div>
<div class="SonTitle">
快递订单
</div>
<div class="SonTitle">
订单导出
</div>
</div>
<form action="../SaveOderInfo" namespace="/"  method="post">
<div id="DataInput">

<div class="DataInputLine">

<div class="AttrbuteName">订单编号:</div><input type="text" class="inputTextBorderColorCCC" name="poder.productOderID"></input>
</div>									

<div class="DataInputLine">

<div class="AttrbuteName">价格:</div><input type ="text" class="inputTextBorderColorCCC" name="poder.oderPrice"></input>
</div>
<div class="DataInputLine">

<div class="AttrbuteName">邮政编码:</div><input type ="text" class="inputTextBorderColorCCC" name="poder.mailCode"/>
</div>

<div class="DataInputLine">

<div class="AttrbuteName">地址:</div><input type ="text" class="inputTextBorderColorCCC  inputTextAddress" name="poder.oderAddress"/>
</div>

<div class="DataInputLine">
<div class="AttrbuteName">收货人:</div><input type ="text" class="inputTextBorderColorCCC" name="poder.personName"/>
</div>
<div class="DataInputLine">
<div class="AttrbuteName">联系方式:</div><input type ="text" class="inputTextBorderColorCCC" name="poder.personTel"/>
</div>
<div class="DataInputLine TextareaControl">

<div class="AttrbuteName TextareaControl">备注:</div><textarea class="TextareaData" name="poder.productDescribe"></textarea>
</div>
<div class="DataInputLine">
<input type="submit" class="inputButtonColorBule" value="保存数据">
</div>
</div>

</form>
</div>

</div>
</body>
</html>