<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet" href="ManagerSystemPublic.css">
<link type="text/css" rel="stylesheet" href="ProductOptically.css">
<title>商品上下架</title>
<script src="../jquery/jquery-1.7.2.js"></script>

<script>
$("window").ready(function(e) {
$("#serachProductByIDSubmit").click(function(){
	
	var InputPorductID=$("#serachProductIDInputText").val();
	$.ajax({
		
				url : "..//ViewProductForID.action",
				data : {
					"PorductID":InputPorductID
					
					},
					scriptCharset : 'utf-8',
					contentType : "application/x-www-form-urlencoded; charset=utf-8",
					type : "post",
					traditional : true, /*传数组进后台需要设置该属性*/
					success : function(str) {
					
						
					
																				
			}

	})
	
	
	document.getElementById("PorductInfoView").innerHTML="商品ID：<s:property value='#session.ProductInfo.productID'></s:property><br>商品名字：<s:property value='#session.ProductInfo.productName'></s:property><br>商品售价：<s:property value='#session.ProductInfo.retailPrice'></s:property><br>商品品牌：<s:property value='#session.ProductInfo.brandName'></s:property><br>商品规格：<s:property value='#session.ProductInfo.specifications'></s:property>";
	
			
	})

})
</script>
</head>
<body>
<div id="CenterTitle">
				<div id="CTImg">
					<img src="../img/WebINCO/ICO_Palce.png" width="20" height="20">
				</div>
				<div id="CTText">你前的位置:首页&gt;商品管理&gt;商品上下架</div>
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
<form action="../productUporDownline" method="post">
<div id="DataInput">

<div class="DataInputLine">

<div class="AttrbuteName">商品ID:</div><input type="text" class="inputTextBorderColorCCC" id="serachProductIDInputText" name="pd.productID"></input>
<input type="button" class="inputButtonColorBule" id="serachProductByIDSubmit" value="查询商品">
</div>
<!--商品信息展示公共代码开始-->
<div id="PorductInfoView">
商品ID：
商品名字：
商品售价：
商品品牌：
商品规格：
商品描述信息：


</div>
<!--商品信息展示公共代码结束-->
<div class="DataInputLine">
  <input type="submit" class="inputButtonColorBule" value="上架商品">
   <input type="submit" class="inputButtonColorBule" value="下架架商品">
</div>
</div>

</form>
</div>

</div>
</body>
</html>