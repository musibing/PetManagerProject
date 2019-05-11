<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>宠物之约</title>

<script src="../jquery/jquery-1.7.2.js"></script>
<link type="text/css" rel="stylesheet" href="OrderSettlement.css">
<link type="text/css" rel="stylesheet" href="OderSuccess.css">

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
	<div id="zongbiao">


		<div id="top">
			<div id="topcontrol">
				<div id="topleft" class="MaginLeftWidth"></div>
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

			<div id="logoControl">
				<div id="centerleft" class="MaginLeftWidth"></div>
				<div id="logoimg">
					<img src="../img/index/logo.jpg">
				</div>
				<div id="searchTestGl">
					<div id="UserConterControl">

						<div id="UserCenterTitle">订单状态</div>
					</div>
					<div id="UserLogin">
						<div id="UserLogin_Tip"></div>
						<div id="Setp">
							<div class="process_buycar w116">我的购物车</div>
							<div class="process_order Center">核对订单信息</div>
							<div class="process_success w116">订单提交成功</div>
						</div>
					</div>
				</div>

			</div>
			<div id="zhubiaocontrol">
				<div class="zhubiaokong MaginLeftWidth"></div>
				<div class="Title">订单提交成功</div>
				<div id="zhubiao">
				  <div id="ControlComponent"><div id="Result"><img src="../img/System/Success/good-or-tick.png" width="50" height="50"><span>订单提交成功,请耐心等待收货</span></div></div>
				</div>
				<!--id zhubiao end-->
				<!---center end-->
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
	</div>
	<!--id zongbiao end-->
</body>


</html>