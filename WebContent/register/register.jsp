<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="../jquery/jquery-1.7.2.js"></script>
<script>
var _hmt = _hmt || [];

$(function(){
	$("#userloginid").blur(function(){
		
		var userloginid=$("#userloginid").val();
		
		userloginid=userloginid.trim();
	if(userloginid==null||userloginid==""){
			$("#userinfo").append("<font color='red' size='1'>用户名不能为空！</font>");
			return;
			} 
			
		$.ajax({
			url:"..//petKongjian/UserManage_UserIDCheck.action",
			type:"post",
			data:{"userloginidvalue":userloginid},
			
			success:function(str){
				
				if(str=="true"){
					/* alert("值是"+userloginid); */
				$("#userinfo").append("<font color='green' size='1'>用户名可以注册！</font>");
					$("#sub").removeAttr("disabled");
				}else{
					$("#userinfo").append("<font color='red' size='1'>用户名重复不能注册！</font>");
					$("#sub").attr("disabled","disabled");
					}
					
				}
			})	
		
		})
	$("#userloginid").focus(function(){
		$("#userinfo").text("");
		
		})
	$("#inputsmscode").blur(function(){
		
		var userloginid=$("#inputsmscode").val();
		
		 $.ajax({
			url:"../petKongjian/UserManage_scodecheck.action",
			type:"post",
			data:{"inputsmscode":userloginid},
			
			success:function(str){
			
				if(str=="true"){
					
				$("#scodeinfo").append("<font color='green' size='1'>验证码正确！</font>");
					$("#sub").removeAttr("disabled");
				}else{
					$("#scodeinfo").append("<font color='red' size='1'>验证码错误！</font>");
					$("#sub").attr("disabled","disabled");
					}
					
				}
				
		 })

	
})
})
	function sendmsm(){
	 var telephonenumber=$("#telphoneNumber").val();
		 $.ajax({
			
			url:"../petKongjian/UserManage_sendMobileCode.action",
			type:"post",
			data:{"telphoneNumber":telephonenumber},
			
			success:function(str){
				
				if(str=="true"){
					
				$("#msminfo").append("<font color='green' size='1'>短信发送成功！</font>");
					$("#sub").removeAttr("disabled");
				}else{
					$("#scodeinfo").append("<font color='red' size='1'>短信发送失败！</font>");
					$("#sub").attr("disabled","disabled");
					}
					
				}
			})	
		
	}

 

</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>宠物之约</title>
<link type="text/css" rel="stylesheet" href="register.css">
<link type="text/css" rel="stylesheet"
	href="../CssLibraries/Public/Version2/Top.css">
    <link type="text/css" rel="stylesheet"
	href="../CssLibraries/Public/Version2/Logo.css">
    	<link type="text/css" rel="stylesheet"
	href="../CssLibraries/Public/Version2/Center.css">
   <link type="text/css" rel="stylesheet"
	href="../CssLibraries/Public/Version1/Bottom.css"> 
</head>
<body>
<div id="zongbiao">


	<div id="top">
    
    <div id="topControl">
		
		<div class="topleftclass"><a href="../index/index.jsp">宠物之家</a></div>
		<div class="topleftclass"><a href="../ShopMall/ShopMall.jsp">宠物商城</a></div>
		<div class="topleftclass"><a href="../BusinessesService/MapMode.jsp">宠物服务</a></div>
		<div class="topleftclass">宠物论坛</div>
		<div class="topleftclass"><a href="../baike/BaiKeIndex.jsp">宠物百科</a></div>
		<div id="topcenter"></div>
		<div class="toprightclass"><a href="../login/login.jsp">登录</a></div>
		<div class="toprightclass"><a href="../register/register.jsp">注册</a></div>
		<div class="toprightclass">微博</div>
		<div class="toprightclass">微信</div>
		<div class="toprightclass">手机版</div>
		</div>
	</div>
<div id="CenterControl">
<div id="logo">
			<div id="logoControl">
				
				<div id="logoimg">
					<img src="../img/index/logo.jpg">
				</div>
			
					<div id="UserConterControl">

						<div id="UserCenterTitle">用户注册</div>
					</div>
					<div id="UserLogin">
						<div id="UserLogin_Tip">
							已经注册账户,点击这里<a href="../login/login.jsp">登录</a>
						</div>
					</div>
				

			</div>
            </div>
        <div id="zhubiaocontrol">

<div id="zhubiao">
<div id="centerIMG"><img src="../img/login/log_n.jpg" width="480" height="380" id="centerIMGSrc"></div>
<div id="centermanager">
<div id="tips">
用户注册
</div><!--id tips end-->
<s:form action="../UserManage_saveUserData" namespace="/" method="post">
<div class="center">

用户名：<s:textfield name="uvo.accountName" id="userloginid" ></s:textfield ><span id="userinfo"></span>
</div>
<div class="center">
登录密码:<s:password name="uvo.passWord"></s:password>
</div>
<div class="center">
用户住址:<s:textfield  name="uvo.address"></s:textfield>
</div>
<div class="center">
电子邮箱:<s:textfield  name="uvo.email"></s:textfield >
</div>
<div class="center">
手机号码:<s:textfield  name="uvo.telphoneNumber" id="telphoneNumber"></s:textfield >
</div>
<div class="center">
验证码:<s:textfield   id="inputsmscode"></s:textfield ><input type="button" id="scodebt" value="发送验证码" onclick="sendmsm()"><span id="msminfo"></span><span id="scodeinfo"></span>
</div>
<input type="submit" class="but" id="sub" value="注册"><input type="reset" class="but" id="res" value="取消">
</s:form>
</div><!--id centermanager end-->
</div><!--id zhubiao end--><!---center end-->
</div>
<div id="bottomControl">
		<div id="bottomCenterControl">
			<div class="bottomLink"><a href="../WebsiteAbout/AboutUS.html">关于宠家</a></div>
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
</div>
</div><!--id zongbiao end-->
</body>
</html>