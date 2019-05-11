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

<frameset rows="145px,700px" frameborder="NO" border="0"   framespacing="0">

<frame src="top.jsp" frameborder="no" scrolling="no" noresize></frame>

<frameset cols="430px,1195px">
<frame src="left.jsp" frameborder="no" scrolling="yes" noresize></frame>
<frame src="center.jsp" name="righttager" scrolling="yes" frameborder="no" noresize></frame>
</frameset>
<frameset rows="145px,700px" frameborder="yes" border="1"   framespacing="0">
<frame src="down.jsp" frameborder="no" scrolling="yes" noresize></frame>
</frameset>
<!-- scrolling="no" 去框架滚动条-->
</frameset><noframes></noframes>
<body>

</body>
</html>