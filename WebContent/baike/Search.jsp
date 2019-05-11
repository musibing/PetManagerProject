<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="../jquery/jquery-1.7.2.js"></script>
<script>
	var _hmt = _hmt || [];
	(function() {
		var hm = document.createElement("script");
		hm.src = "https://hm.baidu.com/hm.js?b8c358b26d18dee09914931b71cac447";
		var s = document.getElementsByTagName("script")[0];
		s.parentNode.insertBefore(hm, s);
	})();

	$(function() {

		$("#ViewControlButton")
				.click(
						function() {
							var ViewControlTypeData = document
									.getElementsByName("ViewControlRadio");
							for (var i = 0; i < ViewControlTypeData.length; i++) {
								if (ViewControlTypeData[i].checked) {
									ViewTypeData = ViewControlTypeData[i].value;
								}
							}
							if (ViewTypeData == "List") {

								var $ResultDataViewControl = $("#ResultDataViewControl>div");
								var ControlDivHeight = 0;
								ControlDivHeight = (50 * ($ResultDataViewControl.length))
										+ $ResultDataViewControl.length;

								var CenterControlHeight = $("#center").height();

								if (ControlDivHeight >= 1200) {
									var newHeight = 0;
									newHeight = CenterControlHeight
											+ (ControlDivHeight - 1200);

									$("#center").css("height", newHeight + 502);
									$(".BaiKeControl").css("height", 1200 + 50);
									$(".BaikeControlBody").css("height",
											1050 + 50);
								}

								for (var i = 0; i < $ResultDataViewControl.length; i++) {

									var $ResultDivIMGID = $ResultDataViewControl
											.eq(i)
											.find("img[class=ResultDivIMGID]");
									var $ResultText = $ResultDataViewControl
											.eq(i)
											.find("div[class=ResultText]")
											.find("div[class=ResultTextClass]");
									var $ResultIMGContrl = $ResultDataViewControl
											.eq(i).find("div[class=ResultIMG]");
									var $ResultTextControl = $ResultDataViewControl
											.eq(i)
											.find("div[class=ResultText]");
									$ResultDivIMGID.eq(0).attr({
										"width" : "70",
										"height" : "50"
									});

									$ResultTextControl.eq(0).css({
										"width" : "1129",
										"height" : "50",
										"float" : "left",
										"float" : "left"
									});
									$ResultIMGContrl.eq(0).css({
										"width" : "70",
										"height" : "50",
										"float" : "left"
									});

									$ResultDataViewControl.eq(i).css({
										"width" : "1200",
										"height" : "50",
										"border-top" : "1px solid #cdcbcb"
									});
									for (var a = 0; a < $ResultText.length; a++) {
										if (!(a == ($ResultText.length - 1))) {

											$ResultText
													.eq(a)
													.css(
															{
																"width" : "160",
																"height" : "50",
																"float" : "left",
																"border-left" : "1px solid #cdcbcb"
															});
										} else {

											$ResultText
													.eq(a)
													.css(
															{
																"width" : "800",
																"height" : "50",
																"float" : "left",
																"border-left" : "1px solid #cdcbcb"
															});

										}
									}

									if (i == ($ResultDataViewControl.length - 1)) {

										$("#ResultDataViewControl")
												.css(
														{
															"border-left" : "1px solid #cdcbcb",
															"border-right" : "1px solid #cdcbcb",
															"border-bottom" : "1px solid #cdcbcb",
															"height" : ControlDivHeight
														});

									}

								}
							} else {/*结果等于缩略图*/
								var $ResultClassControl = $(".ResultClassControl");

								var $ResultDivIMGID = null;
								var $ResultText = null;
								var $ResultIMGContrl = null;
								var $ResultTextControl = null;

								for (var i = 0; i < $ResultClassControl.length; i++) {

									if (!(i == 0)) {

										$ResultDivIMGID = $ResultClassControl
												.eq(i)
												.find(
														"img[class=ResultDivIMGID]");
										$ResultText = $ResultClassControl
												.eq(i)
												.find("div[class=ResultText]")
												.find(
														"div[class=ResultTextClass]");
										$ResultIMGContrl = $ResultClassControl
												.eq(i).find(
														"div[class=ResultIMG]");
										$ResultTextControl = $ResultClassControl
												.eq(i)
												.find("div[class=ResultText]");

										$ResultDivIMGID.eq(0).attr({
											"width" : "180",
											"height" : "135"
										});

										$ResultIMGContrl.eq(0).css({
											"width" : "180",
											"height" : "135"
										});

										$ResultClassControl.eq(i).css({
											"width" : "180",
											"height" : "170",
											"border" : "1px solid #cdcbcb",
											"margin-left" : "9px",
											"margin-top" : "9px"
										});

										for (var a = 0; a < $ResultText.length; a++) {
											if (a == 0) {
												var $IMGclone = $ResultIMGContrl
														.eq(0).clone(true);
												$ResultText.eq(a).parent()
														.before($IMGclone);

											} else if (a == 1) {

												var $ResultTextClone = $ResultText
														.eq(a).clone(true);
												$ResultText
														.eq(a)
														.parent()
														.parent()
														.append(
																$ResultTextClone);

												$ResultText.eq(a).css({
													"width" : "180",
													"height" : "130"
												});
											} else {

											}
											$ResultText.eq(a).remove();
										}
										$ResultIMGContrl.eq(0).remove();

										$ResultTextControl.get(0).remove();

										$ResultClassControl
												.eq(i)
												.wrap(
														"<div class='dataControl'></div>");

									} else {

										$ResultClassControl.eq(i).remove();

									}

								}
								/**/

								var $ClassControl = $(".ResultClassControl>div");
								for (var i = 1; i <= $ClassControl.length; i++) {
									if ($ClassControl.eq(i).attr("class") != "ResultIMG") {

										$ClassControl.eq(i).css({
											"width" : "180",
											"height" : "35"
										});

									} else {
										$ClassControl.eq(i).css({
											"width" : "180",
											"height" : "135"
										});
									}
								}
								var $dataControl = $(".dataControl");
								for (var i = 0; i < $dataControl.length; i++) {
									$dataControl.eq(i).css({
										"width" : "200",
										"height" : "190",
										"float" : "left"
									});
								}

							}
						})

	})
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet" href="Search.css">
<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/Version1/Bottom.css">
<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/Version1/Logo.css">
<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/Version1/Navigation.css">
<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/Version1/Top.css">
<title>宠物情报系统</title>
<%
	String[] AnimalClassification = { "Dog", "Cat", "Aquarium",
			"Crawler" };
	request.setAttribute("Animal", AnimalClassification);
%>
</head>
<body>
	<div id="top">
		<div id="topContorl">

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
	<div id="center">
		<div id="logo">
			<div id="logoControl">

				<div id="logoimg">
					<img src="../img/index/logo.jpg">
				</div>
				<div id="searchTestGl">
					<div id="searchTextDiv">
						<input id="searchText"></input>
					</div>
					<div id="searchButtonDiv">
						<button id="searchButton" value="search">搜索</button>
					</div>
				</div>
				<div id="PetHomeAPP">
					<img src="../img/ShopMall/logo.gif" width="230" height="90"
						id="PetHomeAPPIMG">
				</div>
			</div>
		</div>
		<div id="Navigation">
			<div id="NavigationControl">

				<div class="Navigation2 NavigationWidth">
                <div id="ALLCommodityControl">
					<span id="ALLCommodityText">全部分类商品</span>
					<div id="ALLCommodityICO">
						<div id="ALLCommodityICOIMG"></div>
					</div>
                    </div>
				</div>
				<div class="Navigation2 Nvaindex">首页</div>
				<div class="Navigation2">狗狗</div>
				<div class="Navigation2">猫猫</div>
				<div class="Navigation2">小宠</div>
				<div class="Navigation2">水族</div>
				<div class="Navigation3">全球购</div>
				<div class="Navigation4">创意生活馆</div>
				<div class="Navigation3">品牌馆</div>
				<div class="Navigation4">宠物服务</div>
				<div id="Shop_Car">
					<div id="CarIMGControl">
						<div id="Sop_CarIMG"></div>
					</div>
					<p id="Shop_CarText">
						购物车 <span id="total">0</span>
					</p>
				</div>
			</div>
		</div>



		<!--End-->
		<div class="BaiKeControl">
			<div id="BaiKeNavigation">首页|<a href="../ViewAllPetInfo">宠物大全</a>|狗狗分类搜索</div>
			<div class="BaiKeControlTitle">
				<div id="BaiKeControlTitleClassControl">
					<div class="BaiKeControlTitleClass" id="BaiKeControlTitleTieBie">
						<div class="BaiKeControlTitleIMG">
							<img src="../img/BaiKe/Search/Dog.png" width="40" height="40">
						</div>
						<div class="BaiKeControlTitleText">狗狗</div>
					</div>
					<div class="BaiKeControlTitleClass">
						<div class="BaiKeControlTitleIMG">
							<img src="../img/BaiKe/Search/Cat.png" width="40" height="40">
						</div>
						<div class="BaiKeControlTitleText">猫咪</div>
					</div>
					<div class="BaiKeControlTitleClass">
						<div class="BaiKeControlTitleIMG">
							<img src="../img/BaiKe/Search/ShuiZu.png" width="40" height="40">
						</div>
						<div class="BaiKeControlTitleText">水族</div>
					</div>
					<div class="BaiKeControlTitleClass">
						<div class="BaiKeControlTitleIMG">
							<img src="../img/BaiKe/Search/XiaoChong.png" width="40"
								height="40">
						</div>
						<div class="BaiKeControlTitleText">小宠</div>
					</div>
					<div class="BaiKeControlTitleClass">
						<div class="BaiKeControlTitleIMG">
							<img src="../img/BaiKe/Search/PaiChong.png" width="40"
								height="40">
						</div>
						<div class="BaiKeControlTitleText">爬虫</div>
					</div>
				</div>
			</div>
			<div class="BaikeControlBody">
				<div id="ScreenControl">
					<div class="ScreenClass">

						<div class="ScreenTitle">体型:</div>

						<div class="ScreenSonClass">全部</div>
						<div class="ScreenSonClass">小型犬</div>
						<div class="ScreenSonClass">中型犬</div>
						<div class="ScreenSonClass">大型犬</div>


					</div>

					<div class="ScreenClass">
						<div class="ScreenTitle">功能:</div>

						<div class="ScreenSonClass">全部</div>
						<div class="ScreenSonClass">伴侣犬</div>
						<div class="ScreenSonClass">牧羊犬</div>
						<div class="ScreenSonClass">梗类犬</div>
						<div class="ScreenSonClass">守卫犬</div>
						<div class="ScreenSonClass">枪猎犬</div>
						<div class="ScreenSonClass">工作犬</div>
						<div class="ScreenSonClass">看家犬</div>

					</div>
					<div class="ScreenClass">
						<div class="ScreenTitle">毛长:</div>
						<div class="ScreenSonClass">全部</div>
						<div class="ScreenSonClass">无毛犬</div>
						<div class="ScreenSonClass">短毛犬</div>
						<div class="ScreenSonClass">长毛犬</div>
					</div>
					<div class="ScreenClass">
						<div class="ScreenTitle">掉毛程度：</div>
						<div class="ScreenSonClass">全部</div>
						<div class="ScreenSonClass">不掉毛</div>
						<div class="ScreenSonClass">掉毛少</div>
						<div class="ScreenSonClass">掉毛多</div>
					</div>
					<div class="ScreenClass">
						<div class="ScreenTitle">友善程序:</div>
						<div class="ScreenSonClass">全部</div>
						<div class="ScreenSonClass">非常友善</div>
						<div class="ScreenSonClass">一般友善</div>
						<div class="ScreenSonClass">不友善</div>
					</div>
					<div class="ScreenClass">
						<div class="ScreenTitle">饲养难度:</div>
						<div class="ScreenSonClass">全部</div>
						<div class="ScreenSonClass">容易饲养</div>
						<div class="ScreenSonClass">普通饲养</div>
						<div class="ScreenSonClass">难饲养</div>
					</div>
				</div>
				<div id="ResultDataViewControl">
				  <s:iterator value="#session.AllPetInfo" var="VarData">


					  <div class="ResultClassControl">
							<div class="ResultIMG">
								<img src="<s:property value='#VarData.exhibitionIMG'></s:property>" class="ResultDivIMGID">

						</div>
							<div class="ResultText">
								<div class="ResultTextClass">
                                
                                <a href="../selectPetForID?PetID=<s:property value='#VarData.petID'></s:property>">
									<s:property value="#VarData.petcnName"></s:property></a>
								</div>
								
							</div>
						</div>
					</s:iterator>
				</div>

				<div id="ViewControlForTatol">
					<div id="ResultTitle">
						<div id="ResultTotal">
							<div id="ResultNumberTitle">找到51条查询结果</div>
							<div id="ResultPaginationControl">
								<div class="ControlPage">上一页</div>
								<div class="PaginationClass">1</div>
								<div class="PaginationClass">2</div>
								<div class="ControlPage">下一页</div>
							</div>
						</div>

					</div>
					<!--end-->


					<!--view_end-->

				</div>

			</div>
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




</body>
</html>