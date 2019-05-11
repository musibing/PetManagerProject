<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
		<div id="View">
        <div id="Viewtitle">
        母四兵-默认收货地址
        </div>
        <div id="ViewContent">
        <div class="datacontentLine addressdatacontentLine">
        <div class="attrbuteName">
        收货人:
        </div>
        母四兵
       </div>
        <div class="datacontentLine addressdatacontentLine">
        <div class="attrbuteName">
        所在地区:
        </div>
        皿川省成都市新都区
       </div>
        <div class="datacontentLine addressdatacontentLine">
        <div class="attrbuteName">
        街道地址:
        </div>
        工业大道西段199号1栋2单元304室
       </div>
        <div class="datacontentLine addressdatacontentLine">
        <div class="attrbuteName">
        手机号码:
        </div>
        15528296986
       </div>
        <div class="datacontentLine addressdatacontentLine">
        <div class="attrbuteName">
        邮政编码:
        </div>
        628300
       </div>
         <div class="datacontentSelect optically">
       
       
       <a href="#" class="selectInco">删除</a>
       <a href="#">编辑</a>
       </div>
        </div>
	</div>
    </div>
	</div>
	<!--数据源结束-->
</body>
</html>