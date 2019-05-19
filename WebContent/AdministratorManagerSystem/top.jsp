<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
<title>宠物之家后台管理系统</title>
<script src="../jquery/jquery-1.7.2.js"></script>
<script>
$(function() {
$.ajax({
				url : "..//UserLoginStatusCheck.action",
				data : {
					},
					scriptCharset : 'utf-8',
					contentType : "application/x-www-form-urlencoded; charset=utf-8",
				type : "post",
				traditional : true,
				success : function(str) {
					
					if(str!=null){
						$("#Remvoe").remove();
					$("#accontid").html(str);
					$("#ChengWidth").css("width",120);
					
						}
					
			}

			})	
/* $(".AxajGetDataSource").click(function(){
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
						dataType : "json", 
						type : "post",
						traditional : true, 传数组进后台需要设置该属性 
						success : function(str) {
							$("#data").html(str);
								
							
						}

					})
	}) */
})
</script>
</head>
<body>
<div id="TopManager">
	<div id="top">
		<div id="topContorl">

			<div class="topleftclass"><a href="../index/index.jsp">宠物之家</a></div>
		<div class="topleftclass"><a href="../SelectClassificationProductForArrayList">宠物商城</a></div>
		<div class="topleftclass"><a href="../BusinessesService/MapMode.jsp"  >宠物服务</a></div>
		<div class="topleftclass">宠物论坛</div>
		<div class="topleftclass"><a href="../SelectArticleByBaiKeiIndex"> 宠物百科SSSSSSSSSSS</a></div>
		<div id="topcenter"></div>
		<div class="toprightclass" id="ChengWidth"><a href="../login/login.jsp" id="accontid">登录</a></div>
		<div class="toprightclass" id="Remvoe"><a href="../register/register.jsp">注册</a></div>
			<div class="toprightclass">微博</div>
			<div class="toprightclass">微信</div>
			<div class="toprightclass">手机版</div>

		</div>
	</div>
	
    <div id="shoulder">
    <div id="Control">
    <div id="logoimg">
      <img src="../img/Logo/logo.png" width="164" height="90"> 
      </div>
      <div id="nva">
      <ui>
      <li>
      我的波奇
      </li>
      <li>
      社区主页
      </li>
      <li>
       <a href="center.jsp" id="PersionData" target="righttager"> 个人设置</a>
     
      </li>
      <li>
      消息
      </li>
      </ui>
      </div>
     <div id="SerchInfo">
     <div id="SerchControl">
     <input type="text" id="SearchKeyword" >
    <div class="SearchSubmit"></div>
    </div>
    </div>
    </div>
    
   
    </div>
    
    </div>
</body>
</html>