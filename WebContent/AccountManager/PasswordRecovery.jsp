<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>宠物之约</title>
<link type="text/css" rel="stylesheet"
	href="../CssLibraries/Public/Version1/Bottom.css">
<link type="text/css" rel="stylesheet"
	href="../CssLibraries/Public/Version2/Logo.css">
<link type="text/css" rel="stylesheet"
	href="../CssLibraries/Public/Version1/Navigation.css">
<link type="text/css" rel="stylesheet"
	href="../CssLibraries/Public/Version2/Top.css">
    <link type="text/css" rel="stylesheet"
	href="../CssLibraries/Public/Version2/Center.css">
<link type="text/css" rel="stylesheet" href="PasswordRecovery.css">
<script src="../jquery/jquery-1.7.2.js"></script>
<script>
	var _hmt = _hmt || [];
	(function() {
		var hm = document.createElement("script");
		hm.src = "https://hm.baidu.com/hm.js?b8c358b26d18dee09914931b71cac447";
		var s = document.getElementsByTagName("script")[0];
		s.parentNode.insertBefore(hm, s);
	})();
	$(function(){
		
		$("#SendMSMCode").click(function(){
			var accuntTelphoneNumber=$("#accuntTelphoneNumber").val();
	
			alert(accuntTelphoneNumber);
			if(accuntTelphoneNumber==""){
				
				alert("请输入手机号");
			}else{
				alert("手机号");

				$.ajax({
							url : "..//sendSMSValidateCode.action",
							data : {
								"accuntTelphoneNumber":accuntTelphoneNumber,
								
							},
							scriptCharset : 'utf-8',
							contentType : "application/x-www-form-urlencoded; charset=utf-8",
							type : "post",
							success : function(str) {
							
							}

						})
			}
			
			
		})
		$("#userinputcode").blur(function(){
		var userinputcode=$("#userinputcode").val();
		var actionadd=$("#submitform").attr("action");
		actionadd=actionadd+userinputcode;
		$("#submitform").attr("action",actionadd);
			
		})
		$("#confirmPassWord").blur(function(){
			
			var nwePassWord=$("#nwePassWord").val();
			var confirmPassWord=$("#confirmPassWord").val();
		
			if(confirmPassWord!=nwePassWord){
				
				$("#PassWordCheckResult").append("输入的密码不一致");
			
				}else{
					$("#PassWordCheckResult").append("密码输入正确");
					var actionadd=$("#submitform").attr("action");
					alert(1);
					actionadd=actionadd+"&userConfirmPassWord="+confirmPassWord;
					alert(2);
					$("#submitform").attr("action",actionadd);
					alert(3);
				}
			})
		
	})
</script>
</head>
<body>

	<div id="zongbiao">


		<div id="top">
			<div id="topControl">
				
				<div class="topleftclass">宠物之家</div>
				<div class="topleftclass">宠物商城</div>
				<div class="topleftclass">宠物服务</div>
				<div class="topleftclass">宠物论坛</div>
				<div class="topleftclass">宠物百科</div>
				<div id="topcenter"></div>
				<div class="toprightclass">
					<a href="login.jsp">登录</a>
				</div>
				<div class="toprightclass">
					<a href="../register/register.jsp">注册</a>
				</div>
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

						<div id="UserCenterTitle">密码找回</div>
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
					<div id="centerIMG">
						<img src="../img/login/log_n.jpg" width="480" height="380"
							id="centerIMGSrc">
					</div>
					<div id="centermanager">
						<div id="tips">用户密码找回</div>
						<!--id tips end-->
						<s:form action="../accountPasswordModify?userinputcode=" id="submitform" namespace="/" method="post">
							
							<div class="center">
								用户名:
								<s:textfield cssClass="input" name="uvo.accountId"
								
									id="accountLoginid"></s:textfield>
							</div>
							<div class="center">
								手机号:
								<s:textfield cssClass="input" name="uvo.telphoneNumber" id="accuntTelphoneNumber"></s:textfield>
							</div>
                            
							<div class="center">
								验证码:
								<s:textfield cssClass="input" id="userinputcode"></s:textfield>
                                <input type="button" value="发送验证码" id="SendMSMCode">
							</div>
                            <div class="center">新密码:<input type="text" id="nwePassWord"></div>
							<div class="center">确认密码:<input type="text" id="confirmPassWord"><span id="PassWordCheckResult"></span></div>
							<div class="center"></div>
							<div class="center">
								<input type="submit" class="but" id="submitModify" value="登录"><input
									type="reset" class="but" id="res" value="取消">
							</div>
						</s:form>
					</div>
					<!--id centermanager end-->
				</div>
				<!--id zhubiao end-->
				<!---center end-->
			</div>
           
			<div id="bottom">
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
	</div>
	<!--id zongbiao end-->
</body>
</html>