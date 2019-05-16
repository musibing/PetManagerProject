<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>地址管理</title>
<link type="text/css" rel="stylesheet" href="PersionCenterPublic.css">
<link type="text/css" rel="stylesheet" href="index.css">
<link type="text/css" rel="stylesheet" href="PersionCenter.css">
<link type="text/css" rel="stylesheet" href="ShopOderManager.css">
<link type="text/css" rel="stylesheet" href="Coupons.css">
<link type="text/css" rel="stylesheet" href="PersionAccount.css">
<link type="text/css" rel="stylesheet" href="SafetySetting.css">
<link type="text/css" rel="stylesheet" href="PersionData.css">
<link type="text/css" rel="stylesheet" href="AddressView.css">
<link type="text/css" rel="stylesheet" href="Address.css">

<script src="../jquery/jquery-1.7.2.js"></script>
<script>
$(function() {

$(".AxajGetDataSource").click(function(){
	var RequestPage="ShopOderManager.jsp";
	var TempData=".jsp";
	  var eve = window.event || evnt;

  var obj = eve.srcElement||eve.target;

	RequestPage=obj.id+TempData;

  $.ajax({
		
						url : "..//FileForAajx.action",
						data : {
							
						 	"RequestPage":RequestPage,
							
						},
						scriptCharset : 'utf-8',
						contentType : "application/x-www-form-urlencoded;charset=utf-8",
						/* dataType : "json", */
						type : "post",
						traditional : true,/* 传数组进后台需要设置该属性 */
						success : function(str) {
							$("#data").html(str);
								
							
						}

					})
	})
})
</script>
</head>
<body>
<!--数据源开始-->

    <div id="contentControl">
   
      <div class="datacontent addressOpticallyBody">
      <s:form action="../saveAddressList" method="post">
       <div  id="datacontentControl">
		<div class="datacontentTitle">收货地址</div>
		<div class="datacontentLine">
		<div class="attrbuteName">
		收货人姓名:
		</div>
         <input type="text" class="inputText" name="addressList.takeDeliveryPersionName">
		</div>
		<div class="datacontentLine">
		<div class="attrbuteName">
		所在地区:
		</div>
		<select class="addselect" name="placeOfOwnership" >
        
        <option>
        四川
        </option>
        <option>
        广东
        </option>
        <option>
        上海
        </option>
        </select>
		</div>
		<div class="datacontentLine">
		<div class="attrbuteName">
		街道地址:
		</div>
        <input type="text" class="inputText width300" name="addressList.address">
		</div>
		<div class="datacontentLine">
		<div class="attrbuteName">
		手机号码:
		</div>
        <input type="text" class="inputText" name="addressList.mobileTelphoneNumber">
        <div class="attrbuteName maginLeft20">
		或固定电话:
		</div>
        <input type="text" class="inputText" name="addressList.telphoneNumber">
        <span class="tips">
        tips:正确的固定电话格式:021-36154686
        </span>
		</div>
		<div class="datacontentLine">
		<div class="attrbuteName">
		邮政编码:
		</div>
        <input type="text" class="inputText" name="addressList.postalCode">
		</div>
		<div class="datacontentLine">
        <input type="checkbox"  name="addressList.defaultValue">设置为默认收货地址
        </div>
        <div class="datacontentLine">
        <input type="submit" value="保存地址" class="PersionDataSubmit MaginLeft100">
        </div>
	</div>
    </s:form>
    </div>
    </div>
    


	<!--数据源结束-->
</body>
</html>