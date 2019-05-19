<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="../jquery/jquery-1.7.2.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>宠物情报系统</title>
<%
	String[] AnimalClassification = { "Dog", "Cat", "Aquarium",
			"Crawler" };
	request.setAttribute("Animal", AnimalClassification);
%>
</head>
<body onload="load()">
	<div id="top">
		<div id="topContorl">

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
						<a href="#" id="searchTager"><button id="searchButton" value="search">搜索</button></a>
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
			<div class="Navigation2"><a href="../SelectClassificationProductForTags?ProductTagVelName=狗狗专区">狗狗</a></div>
			<div class="Navigation2"><a href="../SelectClassificationProductForTags?ProductTagVelName=猫咪专区">猫猫</a></div>
			<div class="Navigation2"><a href="../SelectClassificationProductForTags?ProductTagVelName=小宠专区">小宠</a></div>
			<div class="Navigation2"><a href="../SelectClassificationProductForTags?ProductTagVelName=水族专区">水族</a></div>
			<div class="Navigation3">全球购</div>
			<div class="Navigation4">创意生活馆</div>
			<div class="Navigation3">品牌馆</div>
			<div class="Navigation4">宠物服务</div>
			<div id="Shop_Car">
				<div id="CarIMGControl">
					<div id="Sop_CarIMG"></div>
				</div>
				<div id="Shop_CarText">
					<a href="../ViewBuyCarList" class="BuyCarHref">购物车</a> <div class="BuyCarTotalNumber"><s:property value='#session.BuyCarNumber'></s:property>
					</div>
				</div>
			</div>
		</div>
	</div>

<div id="ContentManagerControl">
<div id="ContentManager">
		<!--End-->
        <div id="Content_List">
        <div id="Correlation_Classification">
     <!--公共标题开始-->
    <div class="TitleV1">
    <div class="TitleV1Control"><span class="PublicSonClassificationContentTitle">狗狗</span>商品</div>
    </div>
   <!--公共标题结束-->
    <div class="PublicClassificationDataControl">
<div class="PublicSonClassificationConetentControl">

<div class="PublicSonClassificationContentTitle">
狗狗主粮

</div>
<div class="PublicSonClassificationContentData">
<a href="../SelectClassificationProductForTagVel?ProductTagVelName=进口粮">进口狗粮</a>
</div>

<div class="PublicSonClassificationContentData">
  <a href="../SelectClassificationProductForTagVel?ProductTagVelName=国产粮">国产狗粮</a></div>
<div class="PublicSonClassificationContentData">
<a href="../SelectClassificationProductForTagVel?ProductTagVelName=处方粮">处方狗粮</a>
</div>
<div class="PublicSonClassificationContentData">
<a href="../SelectClassificationProductForTagVel?ProductTagVelName=冻干粮">

冻干狗粮
</a>
</div>

</div>
<div class="PublicSonClassificationConetentControl">
<div class="PublicSonClassificationContentTitle">狗狗零食</div>
<div class="PublicSonClassificationContentData">
<a href="../SelectClassificationProductForTagVel?ProductTagVelName=罐头湿粮">
罐头湿粮</a>
</div>

<div class="PublicSonClassificationContentData">
<a href="../SelectClassificationProductForTagVel?ProductTagVelName=肉类零食">
肉类零食
</a>
</div>
<div class="PublicSonClassificationContentData">
<a href="../SelectClassificationProductForTagVel?ProductTagVelName=磨牙洁齿">
磨牙洁齿
</a>
</div>
<div class="PublicSonClassificationContentData">
<a href="../SelectClassificationProductForTagVel?ProductTagVelName=奶酪饼干">
奶酪饼干
</a>
</div>
</div>
<div class="PublicSonClassificationConetentControl">
<div class="PublicSonClassificationContentTitle">
<a href="../SelectClassificationProductForTagVel?ProductTagVelName=医疗护理">
医疗护理
</a>
</div>
<div class="PublicSonClassificationContentData">
<a href="../SelectClassificationProductForTagVel?ProductTagVelName=皮肤治疗">
皮肤治疗</a>
</div>
<div class="PublicSonClassificationContentData">
<a href="../SelectClassificationProductForTagVel?ProductTagVelName=综合护理">
综合护理
</a>
</div>
<div class="PublicSonClassificationContentData">
<a href="../SelectClassificationProductForTagVel?ProductTagVelName=内外驱虫">
内外驱虫
</a></div>
<div class="PublicSonClassificationContentData">
<a href="../SelectClassificationProductForTagVel?ProductTagVelName=常备药品">

常备药品
</a>
</div>
</div>
<div class="PublicSonClassificationConetentControl">

<div class="PublicSonClassificationContentTitle">
营养保健</div>
<div class="PublicSonClassificationContentData">
<a href="../SelectClassificationProductForTagVel?ProductTagVelName=美毛护肤">
美毛护肤
</a>
</div>

<div class="PublicSonClassificationContentData">
<a href="../SelectClassificationProductForTagVel?ProductTagVelName=补钙健骨">
补钙健骨
</a>
</div>
<div class="PublicSonClassificationContentData">
<a href="../SelectClassificationProductForTagVel?ProductTagVelName=肠胃调理">
肠胃调理
</a>
</div>
<div class="PublicSonClassificationContentData">
<a href="../SelectClassificationProductForTagVel?ProductTagVelName=综合营养">
综合营养
</a></div>



</div>
<div class="PublicSonClassificationConetentControl">

<div class="PublicSonClassificationContentTitle">
生活日用</div>
<div class="PublicSonClassificationContentData">

狗狗餐具
</div>

<div class="PublicSonClassificationContentData">
狗狗住所
</div>
<div class="PublicSonClassificationContentData">
排便清洁
</div>
<div class="PublicSonClassificationContentData">
服装饰品
</div>


</div>
<div class="PublicSonClassificationConetentControl">

<div class="PublicSonClassificationContentTitle">
出行装备</div>
<div class="PublicSonClassificationContentData">
航空箱包
</div>

<div class="PublicSonClassificationContentData">
索引系列
</div>
<div class="PublicSonClassificationContentData">
胸背套装
</div>
<div class="PublicSonClassificationContentData">
项圈狗牌
</div>


</div>
<div class="PublicSonClassificationConetentControl">

<div class="PublicSonClassificationContentTitle">狗狗美容</div>
<div class="PublicSonClassificationContentData">
洗护香波
</div>

<div class="PublicSonClassificationContentData">
梳剪工具
</div>
<div class="PublicSonClassificationContentData">洗澡用品</div>


</div>
</div>
<div class="PublicSonClassificationConetentControl">

<div class="PublicSonClassificationContentTitle">
狗狗玩具</div>
<div class="PublicSonClassificationContentData">
益智玩具
</div>

<div class="PublicSonClassificationContentData">
磨牙玩具
</div>
<div class="PublicSonClassificationContentData">训练玩具</div>
<div class="PublicSonClassificationContentData">
漏食玩具
</div>

</div>
</div>
    <div id="ProductRecommend">
    <!--公共标题开始-->
    <div class="TitleV1">
    <div class="TitleV1Control">
    同类产品推荐
    </div>
    </div>
   <!--公共标题结束-->
   <div class="Data_Soure_Control">
   <dl>
   <dd class="ThumbImg"><img src="../img/ShopMall/ProductRecommend/thumb1.jpg" width="170" height="170"></dd>
    <dd>
    
    <span class="FontSize15">¥</span> <span class="Price FontSize15">549.00</span><span class="MarginLeft60 FontSize12"> 已售:</span><span class="Sales_volume FontSize12">2907</span>
    </dd>
    <dd class="name">
    冠能PRO PLAN 赛犬配方全价狗粮12kg
    </dd> 
   
   </dl>
   <dl>
   <dd class="ThumbImg"><img src="../img/ShopMall/ProductRecommend/thumb2.jpg" width="170" height="170"></dd>
    <dd>
    
    <span class="FontSize15">¥</span> <span class="Price FontSize15">96.00</span><span class="MarginLeft60 FontSize12"> 已售:</span><span class="Sales_volume FontSize12">211</span>
    </dd>
    <dd class="name">
    新食代 小型犬幼犬小颗粒软粮800g
    </dd> 
   
   </dl>
   <dl>
   <dd class="ThumbImg"><img src="../img/ShopMall/ProductRecommend/thumb3.jpg" width="170" height="170"></dd>
    <dd>
    
    <span class="FontSize15">¥</span> <span class="Price FontSize15">429.00</span><span class="MarginLeft60 FontSize12"> 已售:</span><span class="Sales_volume FontSize12">101</span>
    </dd>
    <dd class="name">
   伯纳天纯 小型犬成犬粮10kg 360配方升级款
    </dd> 
   
   </dl>
   <dl>
   <dd class="ThumbImg"><img src="../img/ShopMall/ProductRecommend/thumb4.jpg" width="170" height="170"></dd>
    <dd>
    
    <span class="FontSize15">¥</span> <span class="Price FontSize15">549.00</span><span class="MarginLeft60 FontSize12"> 已售:</span><span class="Sales_volume FontSize12">84</span>
    </dd>
    <dd class="name">伯纳天纯 中大型犬幼犬粮15kg 360配方升级款</dd> 
   
   </dl>
   <dl>
   <dd class="ThumbImg"><img src="../img/ShopMall/ProductRecommend/thumb1.jpg" width="170" height="170"></dd>
    <dd>
    
    <span class="FontSize15">¥</span> <span class="Price FontSize15">549.00</span><span class="MarginLeft60 FontSize12"> 已售:</span><span class="Sales_volume FontSize12">2907</span>
    </dd>
    <dd class="name">
    冠能PRO PLAN 赛犬配方全价狗粮12kg
    </dd> 
   
   </dl>
   </div>
    
    </div><!--ProductRecommend End-->
    <div id="HotBrand">
        <!--公共标题开始-->
    <div class="TitleV1">
    <div class="TitleV1Control">
    同类产品推荐
    </div>
    </div>
   <!--公共标题结束-->
   <dl class="BorderBottomS1 BorderRightS1">
     <img src="../img/ShopMall/HotBrand/thumb1.jpg">
   </dl>
   <dl class="BorderBottomS1">
    <img src="../img/ShopMall/HotBrand/thumb2.png">
  </dl>
   <dl class="BorderRightS1">
    <img src="../img/ShopMall/HotBrand/thumb3.jpg">
  </dl>
   <dl>
    <img src="../img/ShopMall/HotBrand/thumb4.jpg">
  </dl>
    </div>
    
</div>
		<div class="BaiKeControl">
			<div id="BaiKeNavigation">首页|宠物大全|狗狗分类搜索</div>
			
			<div class="BaikeControlBody">
            <form action="../selectProductByAttrbuteArrayList" method="post" id="actionForm">
				<div id="ScreenControl">
					<div class="ScreenClass">

						<div class="ScreenTitle" name="BranName">品牌:</div>

						<div class="ScreenSonClass"><input  type="checkbox" name="BranName" value="冠能">冠能</input></div>
						<div class="ScreenSonClass"><input  type="checkbox" name="BranName" value="法国皇家">皇家</input></div>
						<div class="ScreenSonClass"><input  type="checkbox" name="BranName" value="宝路">宝路</input></div>
						<div class="ScreenSonClass"><input  type="checkbox" name="BranName" value="伯纳天纯">伯纳天纯</input> </div>
					

					</div>

					<!-- <div class="ScreenClass">
						<div class="ScreenTitle">犬种:</div>

						<div class="ScreenSonClass"> 贵宾</div>
						<div class="ScreenSonClass">金毛</div>
						<div class="ScreenSonClass"> 拉布拉多</div>
						<div class="ScreenSonClass">比熊</div>
						<div class="ScreenSonClass"> 哈士奇</div>
						<div class="ScreenSonClass">吉娃娃</div>
						<div class="ScreenSonClass">柴犬</div>
						<div class="ScreenSonClass"> 博美</div>

					</div>
					<div class="ScreenClass">
						<div class="ScreenTitle">产地:</div>
						<div class="ScreenSonClass">中国</div>
						<div class="ScreenSonClass">美国</div>
						<div class="ScreenSonClass">加拿大</div>
						<div class="ScreenSonClass">长毛犬</div>
					</div> -->
					<div class="ScreenClass">
                    <div class="ScreenTitle" >犬种</div>
							<div class="ScreenSonClass" ><input  type="checkbox" name="applicableObject" value="小型犬">小型犬</input></div>
						<div class="ScreenSonClass"><input  type="checkbox" name="applicableObject" value="中型犬">中型犬</input></div>
						<div class="ScreenSonClass"><input  type="checkbox" name="applicableObject" value="大型犬">大型犬</input></div>
						<div class="ScreenSonClass"><input  type="checkbox" name="applicableObject" value="幼犬">幼犬</input> </div>
					</div>
					<!-- <div class="ScreenClass">
					  <div class="ScreenTitle">口味:</div>
						<div class="ScreenSonClass">鸡肉</div>
						<div class="ScreenSonClass">鱼肉</div>
						<div class="ScreenSonClass">期他</div>
						<div class="ScreenSonClass">牛肉</div>
					</div> -->
                    <div class="ScreenClass">
						<div class="ScreenTitle">规格:</div>
                        <div class="ScreenSonClass"><input  type="checkbox" name=" packageType" value="1.5/5">小包(1.5-5kg)</input></div>
                        <div class="ScreenSonClass"><input  type="checkbox" name="packageType" value="5.1/10">中包(5.1-10kg)</input></div>
                        <div class="ScreenSonClass"><input  type="checkbox" name="packageType" value="/10">大包(10.1以上)</input></div>
                        <div class="ScreenSonClass"><input  type="checkbox" name="packageType" value="1.5/">超小包(1.5kg以下)</input></div>
                        
						
					</div>
                    <div id="OrderBy">
              <p> 排序：</p><a href="#">综合排序</a>
               		<a href="#">销量</a>
                    <a href="#">人气</a>
                    <a href="#">价格</a>
                    <a href="#">新品</a>
                    <a href="#">评论</a>
                    <div class="select"></div>
                    <span>只看有货</span>
                    <div class="select"></div>
                    <span>全球购</span>
                    <span id="NumberTotal">共278件商品</span>
                   <div id="bottonUIControl">
						<input type="submit" id="searchButton" value="检索"></input>
					</div>
                </div>
				</div>
			</form>
              
              
              
				<div id="ResultDataViewControl">

												
					<s:iterator value="#session.SearchResultList" var="VarData">
                     <div class="ResultClassControl">
						
				<a href="../ViewProductForID?PorductID=<s:property value='#VarData.productID'></s:property>"  class="ResultTextClassA"><img src="<s:property value='#VarData.exhibitionIMGPath'></s:property>" width="220" height="220"
									class="ProductIMGfilePath"></a>

							
						  <div class="ResultText">

								<div class="ResultTextClass ProductPrice">
									价格:￥<s:property value="#VarData.retailPrice"></s:property>
								</div>
								<div class="ResultTextClass">
									规格：<s:property value="#VarData.specifications"></s:property>
								</div>
								<div class="ResultTextClass productName">
									<s:property value="#VarData.productName"></s:property>
								</div>
								<div class="ResultTextClass">
									已售:<s:property value="#VarData.salesVolumes"></s:property>
								</div>
                                <div class="ResultTextClass">
									已有:<s:property value="#VarData.evaluationIndex"></s:property>人评价
								</div>
						  </div>
						</div>
                        
					</s:iterator>
				</div>

				<div id="ViewControlForTatol">
					<div id="ResultTitle">
						<div id="ResultTotal">
							<div id="ResultNumberTitle">找到:<s:property value="#session.ResultNumber"></s:property>条查询结果</div>
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
        </div>
	
	<div id="bottomControl">
	  <div id="bottomCenterControl">
	    <div class="bottomLink"><a href="javascript:void(0)" name="AboutUS" class="GetHtmlData" onclick="getTageName(this)">关于我们</a></div>
	    <div class="bottomLink"><a href="javascript:void(0)" name="Link" class="GetHtmlData" onclick="getTageName(this)">友情链接</a></div>
	    <div class="bottomLink"><a href="javascript:void(0)" name="Complaints" class="GetHtmlData" onclick="getTageName(this)">诚聘英才</a></div>
	    <div class="bottomLink"><a href="javascript:void(0)" name="ContactUS" class="GetHtmlData" onclick="getTageName(this)">联系我们</a></div>
	    <div class="bottomLink"><a href="javascript:void(0)" name="sietmap" class="GetHtmlData" onclick="getTageName(this)">网站地图</a></div>
	    <div class="bottomLink"><a href="javascript:void(0)" name="Complaints" class="GetHtmlData" onclick="getTageName(this)">意见反馈</a></div>
	    <div class="bottomLink"><a href="javascript:void(0)" name="Complaints" class="GetHtmlData" onclick="getTageName(this)">帮助中心</a></div>
	    <div id="bottomLinkID" class="bottomLink">客服热线：400-820-6098</div>
	    <div id="bottomBeianControl">
	      <div class="bottomBaian"> <img src="../img/beian/beian.png" width="20" height="20">沪公网安备
	        31011502004955号 </div>
	      <div class="bottomBaian">沪ICP备13034501号-2</div>
	      <div class="bottomBaian">增值电信业务经营许可证： 沪B2-20140120</div>
        </div>
	    <div id="BeianInfoControl">Copyright © 2007-2018 Boqii.com All
	      Rights Reserved 光橙（上海）信息科技有限公司 版权所有</div>
	    <div id="BeianImgControl">
	      <div class="BeianImg"> <img src="../img/beian/foot_gs.png" width="100" height="35"> </div>
	      <div class="BeianImg"> <img src="../img/beian/foot_cx.png" width="100" height="35"> </div>
	      <div class="BeianImg"> <img src="../img/beian/foot_kx.png" width="100" height="35"> </div>
	      <div class="BeianImg"> <img src="../img/beian/foot_zx.png" width="100" height="35"> </div>
        </div>
      </div>
</div>
</body>
<script>
function load(){
	
		var $allproductName=$(".productName");	 
		for(var j=0;j<$allproductName.length;j++){
			var temp=$allproductName.eq(j).text()
			$allproductName.eq(j).html(temp);
			
			
			}
				$.ajax({
				url : "..//UserLoginStatusCheck.action",
				data : {
					},
					scriptCharset : 'utf-8',
					contentType : "application/x-www-form-urlencoded; charset=utf-8",
				type : "post",
				traditional : true,
				success : function(str) {
					if(str!="null"){
					$("#Remvoe").remove();
					$("#accontid").html(str);
					$("#ChengWidth").css("width",120);
					}
			}

			}) 
	}
	var _hmt = _hmt || [];
/* 	(function() {
		var hm = document.createElement("script");
		hm.src = "https://hm.baidu.com/hm.js?b8c358b26d18dee09914931b71cac447";
		var s = document.getElementsByTagName("script")[0];
		s.parentNode.insertBefore(hm, s);
	})();
 */
	$(function() {
		$("#searchText").change(function(){
			
		
			var searchTextValue=$("#searchText").val();
			
			$("#searchTager").attr("href","../searchProductBuyList.action?searchTextValue="+searchTextValue)
		})

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
<link type="text/css" rel="stylesheet" href="Search.css">
<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/Version1/Bottom.css">
<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/Version1/Logo.css">
<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/Version1/Navigation.css">
<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/Version1/Top.css">
<link type="text/css" rel="stylesheet" href="ProductSearch.css">
</html>