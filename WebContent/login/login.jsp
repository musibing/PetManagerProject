<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>宠物之约</title>
<link type="text/css" rel="stylesheet" href="login.css">
<link type="text/css" rel="stylesheet"
	href="../CssLibraries/Public/Version1/Bottom.css">
<link type="text/css" rel="stylesheet"
	href="../CssLibraries/Public/Version2/Logo.css">
<link type="text/css" rel="stylesheet"
	href="../CssLibraries/Public/Version1/Navigation.css">
	<link type="text/css" rel="stylesheet"
	href="../CssLibraries/Public/Version2/Center.css">
<link type="text/css" rel="stylesheet"
	href="../CssLibraries/Public/Version2/Top.css">
<script src="../jquery/jquery-1.7.2.js"></script>
<script>

$(function() {

$("#userloginid").blur(function(){
	
	var accountid=$("#userloginid").val();
	
		$.ajax({
										url : "..//SelectAccountIMGForAccountID.action",
										data : {
											
											"accountid" : accountid,
									
										},
										scriptCharset : 'utf-8',
										contentType : "application/x-www-form-urlencoded; charset=utf-8",
										type : "post",
								
										traditional : true,
										success : function(str) {
											
											$("#userIMGData").attr("src",str);
											}
				
				
				})
	})

})


</script>
</head>
<body>
<div id="zongbiao">


	<div id="top">
		<div id="topControl">

			<div class="topleftclass"><a href="../index/index.jsp">宠物之家</a></div>
		<div class="topleftclass"><a href="../SelectClassificationProductForArrayList">宠物商城</a></div>
		<div class="topleftclass"><a href="../BusinessesService/MapMode.jsp">宠物服务</a></div>
		<div class="topleftclass">宠物论坛</div>
		<div class="topleftclass"><a href="../SelectArticleByBaiKeiIndex">宠物百科</a></div>
		<div id="topcenter"></div>
		<div class="toprightclass" id="ChengWidth"><a href="../login/login.jsp" id="accontid">登录</a></div>
		<div class="toprightclass" id="Remvoe"><a href="../register/register.jsp">注册</a></div>
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

						<div id="UserCenterTitle">用户登录</div>
					</div>
					<div id="UserLogin">
						<div id="UserLogin_Tip">
							没有帐户,点击这里<a href="../register/register.jsp">注册</a>
						</div>
					</div>
				

			</div>
            </div>
        <div id="zhubiaocontrol">

<div id="zhubiao">
<div id="centerIMG"><img src="../img/login/log_n.jpg" width="480" height="380" id="centerIMGSrc"></div>
<div id="centermanager">
<div id="tips">
用户登录
</div><!--id tips end-->
<s:form action="../LoginCheckAction" namespace="/" method="post">
<div class="userIMG">
<img src="" id="userIMGData">
</div>

<div class="center">
登录名称:<s:textfield cssClass="input" name="uvo.accountId" id="userloginid"></s:textfield>
</div>
<div class="center">
登录密码:<s:password cssClass="input" name="uvo.passWord" id="userpass"></s:password>
</div>
<div class="center">

</div>
<div class="center">
<input type="submit" class="but" id="sub" value="登录"><input type="reset" class="but" id="res" value="取消">
</div>
</s:form>
</div><!--id centermanager end-->
</div><!--id zhubiao end--><!---center end-->
</div>
</div>
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

					<div id="BeianInfoControl">Copyright © 2007-2018 Boqii.com
						All Rights Reserved 光橙（上海）信息科技有限公司 版权所有</div>
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

</body>
</html>