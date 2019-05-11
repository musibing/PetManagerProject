<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet" href="ManagerSystemPublic.css">
<link type="text/css" rel="stylesheet" href="ProductOptically.css">
<title>商品管理</title>
</head>
<body>
<div id="CenterTitle">
				<div id="CTImg">
					<img src="../img/WebINCO/ICO_Palce.png" width="20" height="20">
				</div>
				<div id="CTText">你前的位置:首页&gt;商品管理&gt;商品添加</div>
				<div id="CTKong"></div>
				<div id="CTTime">2016年06月06日&nbsp;18:00 星期二</div>
			</div>
<div id="ProductOptically">

<div id="Content">
<div id="Title">
商品管理
</div>
<div id="SonTitle">
<div class="SonTitle">
商品添加
</div>
<div class="SonTitle">
商品上/下架
</div>
<div class="SonTitle">
商品信息更改
</div>
</div>
<form action="../sevePorductInfoForAdministratorInput" method="post">
<div id="DataInput">

<div class="DataInputLine">

<div class="AttrbuteName">商品名称:</div><input type="text" class="inputTextBorderColorCCC" name="pd.productName"></input>
</div>									

<div class="DataInputLine">

<div class="AttrbuteName">价格:</div><input type ="text" class="inputTextBorderColorCCC" name="pd.retailPrice"></input>
</div>
<div class="DataInputLine">

<div class="AttrbuteName">品牌:</div><input type ="text" class="inputTextBorderColorCCC" name="pd.brandName"/>
</div>

<div class="DataInputLine">

<div class="AttrbuteName">规格:</div><input type ="text" class="inputTextBorderColorCCC" name="pd.specifications"/>
</div>

<div class="DataInputLine">
<div class="AttrbuteName">上传图片信息:</div><input type="file" class="magingtop5" />
</div>
<div class="DataInputLine TextareaControl">

<div class="AttrbuteName TextareaControl">产品描述:</div><textarea class="TextareaData" name="pd.productDescribe"></textarea>
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