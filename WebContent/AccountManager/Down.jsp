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

    <div id="bottomControl">
			<div id="bottomCenterControl">
				<div class="bottomLink">关于宠家</div>
				<div class="bottomLink">友情链接</div>
				<div class="bottomLink">诚聘英才</div>
				<div class="bottomLink">联系我们</div>
				<div class="bottomLink">网站地图</div>
				<div class="bottomLink">意见反馈</div>
				<div class="bottomLink">帮助中心</div>
				<div id="bottomLinkID" class="bottomLink">客服热线：400-820-6098</div>
				<div id="bottomBeianControl">
					<div class="bottomBaian">
						<img src="../img/beian/beian.png" width="20" height="20">沪公网安备
						31011502004955号
					</div>
					<div class="bottomBaian">沪ICP备13034501号-2</div>
					<div class="bottomBaian">增值电信业务经营许可证： 沪B2-20140120</div>
				</div>

				<div id="BeianInfoControl">Copyright © 2007-2018 Boqii.com All
					Rights Reserved 光橙（上海）信息科技有限公司 版权所有</div>
				<div id="BeianImgControl">
					<div class="BeianImg">
						<img src="../img/beian/foot_gs.png" width="100" height="35">
					</div>
					<div class="BeianImg">
						<img src="../img/beian/foot_cx.png" width="100" height="35">
					</div>
					<div class="BeianImg">
						<img src="../img/beian/foot_kx.png" width="100" height="35">
					</div>
					<div class="BeianImg">
						<img src="../img/beian/foot_zx.png" width="100" height="35">
					</div>

				</div>
	  </div>
    </div>
</body>
</html>