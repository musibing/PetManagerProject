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

<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?b8c358b26d18dee09914931b71cac447";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
$(function() {
	/* $("#SettlementOrder").click(function(){
		
		var herf="../SettlementOrder?BuyCarListID=";
		
		$("#SettlementOrderTage").attr("herf",herf);
		
		}) */
})
</script>


</head>
<body onload="load()">
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

						<div id="UserCenterTitle">结算中心</div>
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
				<div class="Title">核对订单信息</div>
				<div id="zhubiao">

					<div id="OrderData">
						<div id="Address" class="LineControl">
							<div class="Title">收货人信息</div>
							<div class="Content">
								<div class="InputAddress"><s:property value='#session.AccountInfo.address'></s:property></div>

							</div>

						</div>
						<div id="PayMode" class="LineControl">
							<div class="Title">支付方式</div>
							<div class="Content">

								<div class="Tyep1">在线支付</div>
								<div class="Tyep1">银行汇款</div>
							</div>
						</div>
						<div id="DistributionMode" class="LineControl">
							<div class="Title">配送方式</div>
							<div class="Content">

								<div class="Type2">

									<strong>波奇商城合作快递<!-- 费用：0元 (由波奇指定合作快递发货) --></strong> <span
										class="OrderFreight">费用：0元 (由波奇指定合作快递发货)</span>

								</div>
							</div>
						</div>
						<div id="InvoiceInformation" class="LineControl">
							<div class="Title">发票信息</div>
							<div class="Content">
								<div class="Tyep1">不需要发票</div>
								<div class="Tyep1">纸质发票</div>
								<div class="Tyep1">电子发票</div>

							</div>
						</div>
						<div id="Title" class="LineControl">购物商品数据</div>
						<div id="BuyCarData" class="LineControl">
							<div id="BuyCarControl">
								<div class="BTitle">
									<div id="TitleControl">
										<div class="Tag1">
											<a href="#" class="Incos Checked">全选</a>
										</div>
										<div class="Tag2">商品</div>
										<div class="Tag1">重量</div>
										<div class="Tag1">价格(￥)</div>
										<div class="Tag1">优惠</div>
										<div class="Tag1">数量</div>
										<div class="Tag1">小计</div>
										<div class="Tag1">操作</div>
									</div>
								</div>
								<div id="Content">
								<s:iterator value="#session.ListData" var="ProductInfo">
									<div class="BTitle">
										<div class="Tag1">
											<a href="#" class="Incos Checked"></a>
											<img src="<s:property value='#ProductInfo.productID.exhibitionIMGPath'></s:property>">
										</div>
										<div class="Tag2"><s:property value='#ProductInfo.productID.productName'></s:property></div>
										<div class="Tag1"><s:property value='#ProductInfo.productID.specifications'></s:property></div>
										<div class="Tag1 CRed">￥<s:property value='#ProductInfo.productID.retailPrice'></s:property></div>
										<div class="Tag1"></div>
										<div class="Tag1"><s:property value='#ProductInfo.number'></s:property></div>
										<div class="Tag1 CRed">
											<b>￥<s:property value='#ProductInfo.dealPrice'></s:property>
											
											</b>
										</div>
										<div class="Tag1">
											<a href="#">收藏商品</a><br>
											<a href="#">删除商品</a>

										</div>
									</div><!--BTitle END-->
							</s:iterator>

								</div>
							</div>
						</div>
						<div id="ControlComponentInfo">
							<div class="Title">订单结算</div>
							<div id="UseTicket">
								<dl>+ 使用优惠券抵扣部分金额</dl>
								<dl>+ 使用红包抵扣部分金额
								</dl>
								<dl>+ 使用萌宠豆
								</dl>
							</div>
							<div class="OrderInfo">
								<dl>
								  重量总计:20kg
								</dl>
								<dl>
								  运费(详情):￥0.00
								</dl>
								<dl>
								  节省:￥0.00
								</dl>
								<dl>
								  运费抵扣金额:￥0.00
								</dl>
								<dl>
								优惠券抵扣金额:￥0.00
								</dl>
								<dl>
								红包抵扣金额:￥0.00
								</dl>
								<dl>全球购商品税费:￥0.00
								</dl>
                                <dl>全球购商品税费:￥0.00
								</dl>
							</div>
						</div>
						<!--OrderInfo　End-->
					</div>
					<div id="ControlComponent">
						<div class="Tag1">
							
					  </div>
						<div class="Tag1"></div>
						<div class="Tag1">
							
						</div>
						<div id="OrderView">
                        <div id="PayMoney">
                        <strong>应付总金额</strong>
                        <span class="CRed FS16">
                      	  ￥<s:property value='#session.OderData.oderPrice'></s:property>
                        </span>
                        </div>
							<div id="OrderSettlement">
								<a id="SettlementOrderTage" href="../SettlementOrder?BuyCarListID=<s:property value='#session.BuyCarList.buyCarListID'></s:property>
                                
                          "    "><input type="button" value="结算订单" id="SettlementOrder "></input></a>
							</div>
						</div>
					</div>
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

	<!--id zongbiao end-->
</body>

</html>