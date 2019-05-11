<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <%@ taglib uri="/struts-tags" prefix="s"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet" href="index.css">
<title>宠物之家后台管理系统</title>
<script src="../jquery/jquery-1.7.2.js"></script>
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?b8c358b26d18dee09914931b71cac447";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>
</head>
<body>
	<div id="top">
		<div id="topleft"></div>
		<div class="topleftclass">宠物之家</div>
		<div class="topleftclass">宠物商城</div>
		<div class="topleftclass">宠物服务</div>
		<div class="topleftclass">宠物论坛</div>
		<div class="topleftclass">宠物百科</div>
		<div id="topcenter"></div>
		<div class="toprightclass">登录</div>
		<div class="toprightclass">注册</div>
		<div class="toprightclass">微博</div>
		<div class="toprightclass">微信</div>
		<div class="toprightclass">手机版</div>
		<div id="topright"></div>
	</div>
	<div id="AnimalClassification">
    
    <div id="AdminiLoginCheck">
    
    <s:form id="CheckFrom" action="../petPacke/CheckAdminAcctount" namespace="/petPacke" method="post">
用户帐户:<s:textfield name="userVO.userID" id="Adminloginid"></s:textfield><span id="userinfo"></span>

<br>

登录密码:<s:textfield name="userVO.passWord"></s:textfield>
<br>

   <input type="submit" class="but" id="sub" value="校验"><input type="reset" class="but" id="res" value="取消">

    </s:form>
    
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
</body>
</html>