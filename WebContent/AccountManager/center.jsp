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

<link type="text/css" rel="stylesheet" href="ShopOderManager.css">
<link type="text/css" rel="stylesheet" href="Coupons.css">
<link type="text/css" rel="stylesheet" href="PersionAccount.css">
<link type="text/css" rel="stylesheet" href="SafetySetting.css">
<link type="text/css" rel="stylesheet" href="AddressView.css">
<link type="text/css" rel="stylesheet" href="Address.css">
<link type="text/css" rel="stylesheet" href="PersionData.css">
<link type="text/css" rel="stylesheet" href="PersionCenter.css">
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

   
      <div id="data">
        <div id="userinfoManager">
    
    <div class="userinfo">
   <div id="userImg">
   <img src="<s:property value='#session.AccountInfo.accountIMGPath'></s:property>"  id="userLogoImg" >
     
     </div>
   <div id="userinfoData">
   <div class="userinfoDataContent">
   <span id="accountName"><s:property value="#session.AccountInfo.accountName"></s:property></span> 欢迎回来!
   </div>
   <div class="userinfoDataContent">
   会员级别:<span id="accountLeve"><s:property value="#session.AccountInfo.accountGrade"></s:property></span>(经验值30,还差270点可以升级到V2)
   </div>
   <div class="userinfoDataContent">
   <p id="leveTitle">
   帐户安全等级:
   </p><div class="leve leveColor">
   弱
   </div>
   <div class="leve">
   中
   </div>
    <div class="leve">
   强
   </div>
   </div>
   <div d>
   </div>
    </div>
    <div class="usermoney">
    
    <dt>
    我的资金
   </dt>
   <dl>
   现金余额:￥0.00
   </dl>
   <dl>
   波奇豆：10
   </dl>
   <dl>
   可用优惠券：2
   </dl>
   
   
    </div>
    </div>
    
    </div>
    <div class="useroder">
    <div class="oderContentControl">
    <div class="shopoder oderContent">
    <div class="oderContentTitle">
    商城订单
    </div>
    <div class="oderContentClass">
    <div class="oderContentClassData">
    <div class="allOder oderContentClassDataImg">
    
    </div>
    <div class="oderContentClassDataText">
    全部订单
    </div>
    </div>
    <div class="oderContentClassData">
     <div class="watingPay oderContentClassDataImg">
    </div>
    <div class="oderContentClassDataText">
    侍付款
    </div>
    </div>
    <div class="oderContentClassData">
     <div class="doen oderContentClassDataImg">
    </div>
    <div class="oderContentClassDataText">
    已完成
    </div>
    </div>
    <div class="oderContentClassData">
     <div class="judged oderContentClassDataImg">
    </div>
    <div class="oderContentClassDataText">
    待评价
    </div>
    </div>
    </div>
    </div>
     <div class="serviceoder oderContent">
     <div class="oderContentTitle">
   服务订单
   </div>
   <div class="oderContentClass">
       <div class="oderContentClassData">
    <div class="allOder oderContentClassDataImg">
    
    </div>
    <div class="oderContentClassDataText">
    全部订单
    </div>
    </div>
    <div class="oderContentClassData">
     <div class="watingPay oderContentClassDataImg">
    </div>
    <div class="oderContentClassDataText">
    侍付款
    </div>
    </div>
    <div class="oderContentClassData">
     <div class="watingUseing oderContentClassDataImg">
    </div>
    <div class="oderContentClassDataText">
    已使用
    </div>
    </div>
    <div class="oderContentClassData">
     <div class="judged oderContentClassDataImg">
    </div>
    <div class="oderContentClassDataText">
    待评价
    </div>
    </div>
    </div>
    </div>
    
    </div>
    <div class="shopoder datacontent">
    <div class="datacontentTitle">
    <div class="datacontentTitleText">
    近期商城实物订单
    </div>
    <div class="datacontentTitleMore">
    查看全部商城实物订单>>
    </div>
    </div>
    </div>
    <div class="shopoder datacontent">
   
        <div class="datacontentTitle">
    <div class="datacontentTitleText">
    近期服务订单
    </div>
    <div class="datacontentTitleMore">
    查看全服务订单>>
    </div>
    </div>
    <div class="dataSource">
    暂无订单数据,去<a href="../BusinessesService/MapMode.jsp">宠物服务</a>看看吧! </div>
    </div>
    </div>
    <div class="userCollect datacontent">
    <div class="datacontentTitle">
    用户收藏
 </div>
    </div>
    <div class="userlove datacontent">
    <div class="datacontentTitle">
    用户喜欢
    </div>
    </div>
    <div class="userlove datacontent">
    <div class="datacontentTitle">
    浏览历史
    </div>
    </div>
  </div>
    </div>
    
    
    
    
	</div>
    </div>
</body>
</html>