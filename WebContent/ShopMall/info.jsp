<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link type="text/css" rel="stylesheet" href="info.css">
<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/Version1/Bottom.css">
<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/Version1/Logo.css">
<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/Version1/Navigation.css">
<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/Version1/Top.css">
<script src="../jquery/jquery-1.7.2.js"></script>
<script>
/* 	var _hmt = _hmt || [];
	(function() {
		var hm = document.createElement("script");
		hm.src = "https://hm.baidu.com/hm.js?b8c358b26d18dee09914931b71cac447";
		var s = document.getElementsByTagName("script")[0];
		s.parentNode.insertBefore(hm, s);
	})(); */
	$(function() {
		$("#searchText").change(function(){
			
		
			var searchTextValue=$("#searchText").val();
			
			$("#searchTager").attr("href","../searchProductBuyList.action?searchTextValue="+searchTextValue)
		})
		
		
		})
	
</script>
<script>
function load(){
	/*用户收藏开始*/
	var AccountcollectStatus=$("#AccountCollect").text();
	
	if(AccountcollectStatus.trim()=="OK"){
		$("#AccountCollect").css("background-position" ,"-163px -62px");
		
	}else{
			$("#AccountCollect").css("background-position" ,"-163px -12px");
			}
	$("#AccountCollect").text("");
	/*用户收藏结束*/	

$AllMarkScore=$(".Data_List").find(".MarkScore");

var MarkScoreData="";
	var lev1=0;
	var lev2=0;
	var lev3=0;
for(var j=0;j<$AllMarkScore.length;j++){
	var $Fraction_All=$(".Data_List").eq(j).find(".Fraction_Content_Control").find("span");
	MarkScoreData=$AllMarkScore.eq(j).text();

	if(MarkScoreData=="1分"){
			
				$Fraction_All.eq(0).attr("class","Fraction_All");
			lev1++;
			
	}else if(MarkScoreData=="1.5分"){
		lev1++;
		
		$Fraction_All.eq(0).attr("class","Fraction_All");
		$Fraction_All.eq(1).attr("class","Fraction_Half");
	
	}
	else if(MarkScoreData=="2分"){
		lev1++;
		$Fraction_All.eq(0).attr("class","Fraction_All");
		$Fraction_All.eq(1).attr("class","Fraction_All");
	
	}
else if(MarkScoreData=="2.5分"){
		lev2++;
		$Fraction_All.eq(0).attr("class","Fraction_All");
		$Fraction_All.eq(1).attr("class","Fraction_All");
		$Fraction_All.eq(2).attr("class","Fraction_Half");
	
	}else if(MarkScoreData=="3分"){
		lev2++;
		$Fraction_All.eq(0).attr("class","Fraction_All");
		$Fraction_All.eq(1).attr("class","Fraction_All");
		$Fraction_All.eq(2).attr("class","Fraction_All");
	}else if(MarkScoreData=="3.5分"){
		lev2++;
		$Fraction_All.eq(0).attr("class","Fraction_All");
		$Fraction_All.eq(1).attr("class","Fraction_All");
		$Fraction_All.eq(2).attr("class","Fraction_All");
		$Fraction_All.eq(3).attr("class","Fraction_Half");
	
	}else if(MarkScoreData=="4分"){
		lev3++;
		$Fraction_All.eq(0).attr("class","Fraction_All");
		$Fraction_All.eq(1).attr("class","Fraction_All");
		$Fraction_All.eq(2).attr("class","Fraction_All");
		$Fraction_All.eq(3).attr("class","Fraction_All");
	}else if(MarkScoreData=="4.5分"){
		lev3++;
		$Fraction_All.eq(0).attr("class","Fraction_All");
		$Fraction_All.eq(1).attr("class","Fraction_All");
		$Fraction_All.eq(2).attr("class","Fraction_All");
		$Fraction_All.eq(3).attr("class","Fraction_All");
		$Fraction_All.eq(4).attr("class","Fraction_Half");
	}
	else if(MarkScoreData=="5分"){
		lev3++;
		$Fraction_All.eq(0).attr("class","Fraction_All");
		$Fraction_All.eq(1).attr("class","Fraction_All");
		$Fraction_All.eq(2).attr("class","Fraction_All");
		$Fraction_All.eq(3).attr("class","Fraction_All");
		$Fraction_All.eq(4).attr("class","Fraction_All");
	}
		
	}
	
	
	var judgedMarkTotal=$("#judgedMarkTotal").text();
	
	
		
		
	
	
	}
$("window").ready(function(e) {
	
/*	var ContentHeight=${sessionScope.ContentIMGHeight};*/
/* 	var ProductID=${sessionScope.ProductInfo.productID}; */
	var SmallIMGSrc=$(".SmallImgData").eq(0).find("img").attr("src");
	
	$("#SmallIMGShow").attr("src",SmallIMGSrc);
	var Height=parseInt(ContentHeight);
/* 	$("#Content_Data").height(Height+1220); */
	/* $("#Content").height(Height+6067); */
	function trim(x){
		
		 return x.replace(/^\s+|\s+$/gm,'');
	}

		
		
		$("#BuyCar").click(function(){
		
			var $AllBrandDl=$("#CommodityInfo").find("dl");
				
			for(var x=0;x<$AllBrandDl.length;x++){
					if(x==1){
					productID=$AllBrandDl.eq(x).find("dd").text();
					
					
					
					
					}
				}
				
		var Price=$("#Price").text();
			
			
			
			
			roductID=trim(productID);
			
			Price=trim(Price);
			var BuyProductNumber=$("#BuyProductNumber").val();
			
			BuyProductNumber=trim(BuyProductNumber);
			 var ActionPath="..//BuyProductForNow.action?BuyProductNumber="+BuyProductNumber+"&ProductID="+productID+"&Price="+Price;
			
			$("#ActionPath").attr("href",ActionPath); 
			
				alert(BuyProductNumber);
			/* $.ajax({
				url : "..//BuyProductForNow.action",
				data : {
					"ProductID":productID,
					"Price":Price,
					"BuyProductNumber" :BuyProductNumber,},
					scriptCharset : 'utf-8',
					contentType : "application/x-www-form-urlencoded; charset=utf-8",
				type : "post",
				traditional : true,  传数组进后台需要设置该属性 
				success : function(str) {
					return;
					
			}

			}) */  

			})
			
		$("#AddBuyCar").click(function () {
			var $AllBrandDl=$("#CommodityInfo").find("dl");
				var productID="";
			for(var x=0;x<$AllBrandDl.length;x++){
					if(x==1){
					productID=$AllBrandDl.eq(x).find("dd").text();
					
					
					
					
					}
				}
				
		var Price=$("#Price").text();
			
			
			
			
			roductID=trim(productID);
			
			Price=trim(Price);
			
			
			var BuyProductNumber=$("#BuyProductNumber").val();/*获取购买数量*/
			 $.ajax({
					url : "..//AddProductToBuyCar.action",
					data : {
						"ProductID":productID,
						"Price":Price,
						"BuyProductNumber" :BuyProductNumber,},
						scriptCharset : 'utf-8',
						contentType : "application/x-www-form-urlencoded; charset=utf-8",
					type : "post",
					traditional : true, 
					success : function(str) {
						return;
						
				}

				})
			})
	
})
window.onload = function() {
/* aler(12);
var SmallIMGSrc=(".ImgData").eq(0).attr("src");
alert(SmallIMGSrc);
("#SmallIMGShow").attr("src",SmallIMGSrc);
alert("成功"); */
}; 

</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>宠物情报系统</title>

</head>
<body onload="load()">
	<!--top Start-->
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
	<!--top End-->
	<!--logo Start-->
	<div id="logo">
		<div id="logoControl">

			<div id="logoimg">
				<img src="../img/index/logo.jpg">
			</div>
			<div id="searchTestGl">
				<div id="searchTextDiv">
					<input id="searchText" type="text" />
				</div>
				<div id="searchButtonDiv">
					<a href="#" id="searchTager"><input id="searchButton" type="button" value="搜索"/></a>
                    				
				</div>
			</div>
			<div id="PetHomeAPP">
				<img src="../img/ShopMall/logo.gif" width="230" height="90"
					id="PetHomeAPPIMG">
			</div>
		</div>
	</div>
	<!--logo End-->
	<!--Navigation Start-->
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
	<!--Navigation End-->
    <!--location Start-->

  
    <div id="location">
   <div id="Control">
    <a href="#">
   首页</a>
   <i class="arrow_right"> > </i>
    <a href="#">
   狗狗专区</a>
   <i class="arrow_right"> > </i>
    <a href="#">
   狗狗主粮</a>
   <i class="arrow_right"> > </i>
   <a href="#">
   <s:property value="#session.ProductInfo.productName"></s:property></a>
    </div>
    
    
    </div>
    <!--location End-->
   
    
      <!--Content Start-->
    <div id="Content">
    <div id="ContentControl">
	<!--CommodityData Start-->
    
    
    <div id="Data_Top">
    <!--商品图片开始-->
    <div id="CommodityIMG">
    
     <img id="SmallIMGShow" src="" width="360" height="360">
     
<div id="SmallImg">
  <span class="Prev">
    
    </span>
    <s:iterator value="#session.SmallPIMG" var="SmallPIMG">
  <div class="SmallImgData">
        <img src="<s:property value='#SmallPIMG.filePath'></s:property>">
        </div>
       </s:iterator> 
   
      <span class="Next">
      
      </span>
    </div>
       <div id="Share">
       <span>分享到：</span><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间" data-bd="act:click" data-bd-event="value:3986|type:goods|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E5%9B%BE%E7%89%87%E4%B8%8B%E5%88%86%E4%BA%AB"></a>
       
       <a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博" data-bd="act:click" data-bd-event="value:3986|type:goods|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E5%9B%BE%E7%89%87%E4%B8%8B%E5%88%86%E4%BA%AB"></a>
       <a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博" data-bd="act:click" data-bd-event="value:3986|type:goods|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E5%9B%BE%E7%89%87%E4%B8%8B%E5%88%86%E4%BA%AB"></a>
       <a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网" data-bd="act:click" data-bd-event="value:3986|type:goods|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E5%9B%BE%E7%89%87%E4%B8%8B%E5%88%86%E4%BA%AB"></a>
       <a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信" data-bd="act:click" data-bd-event="value:3986|type:goods|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E5%9B%BE%E7%89%87%E4%B8%8B%E5%88%86%E4%BA%AB"></a>
       <a href="#" class="bds_more" data-cmd="more" data-bd="act:click" data-bd-event="value:3986|type:goods|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E5%9B%BE%E7%89%87%E4%B8%8B%E5%88%86%E4%BA%AB"></a>
       
      </div>
      </div>
     
    <!--商品图片结束-->
    <div id="Data_Top_Center">
   <div id="CommodityName">
  <s:property value="#VarData.productName"></s:property>
   </div>
   
    <div id="CommodityPrice">
    <div id="RetailPrice">
 	<span>价格：</span><span id="Price">￥ <s:property value="#session.ProductInfo.retailPrice"></s:property></span> <span id="Specifications">14.35元/斤：工厂指导价<s:property value="#session.ProductInfo.mSRP"></s:property></span>
    </div>
    <div id="CommodityMSRP">			
 	<span>价格：</span><span id="MSRP">￥<s:property value="#session.ProductInfo.manufacturerGuidancePrice"></s:property></span>
    </div>
    </div>
   <div id="DistributionLocality">
   </div>
   <div class="DistributionLocality">
   <span>配送至：</span><select>
   <option>北京</option>
   <option>上海</option>
   			</select>						
            <span id="InventoryStatus">有货共:<s:property value="#VarData.distributionLocality"></s:property>件;</span>
            <span id="SupportCoupons">
            支持使用优惠券
            </span>
   </div>
   <div class="Suit">
    <span class="">套  装:</span>
   <span class="BorderD1">单包装</span>
   <span class="BorderD1">两包装</span>
   </div>
    <div class="BuyNumber">
  <span>购买数量：</span>
  <div id="BuyNumberControl">
  <div id="Plus" class="Width20">
  +
   
  </div>
  <div id="InputBuyNumber"> <input type="text" id="BuyProductNumber"></div>
  <div id="Reduce" class="Width20">
  -
  </div>
  </div>
   </div>
   <div class="Buy">
   <div class="BuyOrder">
   <a href="#" id="ActionPath"><input type="button" value="立即购买" id="BuyCar"></a>
   </div>
   <div class="AddShopCar">
    <input type="button" value=""  id="AddBuyCar">
   </div>
   <div id="AccountCollect">
	<s:property value='#session.AccountcollectStatus.collectSataus'></s:property>
   </div>
   </div>
   </div>
     <div id="Data_Top_Right">
     <div id="CommodityService">
    <div class="CommodityServiceControl">
    <div class="CommodityServiceIMG">
      <img src="../img/ShopMall/CommodityService/btn_z.jpg" width="51" height="51">
      </div>
      <div class="CommodityServiceText">
      100%<br>
正品保障
      </div>
      
      </div>
          <div class="CommodityServiceControl">
    <div class="CommodityServiceIMG">
      <img src="../img/ShopMall/CommodityService/btn_c.jpg" width="54" height="51"></div>
      <div class="CommodityServiceText">
      7省<br>
满59免运费

      </div>
      
      </div>
          <div class="CommodityServiceControl">
    <div class="CommodityServiceIMG">
      <img src="../img/ShopMall/CommodityService/btn_q.jpg" width="54" height="51"></div>
      <div class="CommodityServiceText">
     
7天<br>
无忧退换
      </div>
      
      </div>
      </div>
      <div id="CommodityInfo">
      <dl>
      <dt>
      所属品牌：
      </dt>
      <dd>
      <s:property value="#session.ProductInfo.brandName"></s:property>
      </dd>
      </dl>
       <dl>
      <dt>
      商品编号：
      </dt>
      <dd>
    
      <s:property value="#session.ProductInfo.productID"></s:property>
     
      </dd>
      </dl>
     <dl>
      <dt>
      已售：
      </dt>
      <dd>
     <s:property value="#session.ProductInfo.salesVolumes"></s:property>件
      </dd>
      </dl>
        <dl class="height40 BorderS1">
      <dt>
     满意指数：
      </dt>
      <dd>
    <div class="Fraction_Content_Control">
    <span class="Fraction_All"></span>
    <span class="Fraction_All"></span>
    <span class="Fraction_All"></span>
    <span class="Fraction_All"></span>
     <span class="Fraction_Half"></span>
     </div>
      </dd>
      <dd>
      <s:property value="#session.ProductInfo.evaluationIndex"></s:property>
      %
      </dd>
      <br>
      
      <dd class="width120">
      已有<s:property value='#session.judgedMarkTotal'></s:property>人评论
      </dd>
      </dl>
      
      <dl>
      <dt>
      授权认证：
      </dt>
      <dd>授权文件</dd>
      </dl>
      <dl class="height40">
      <dt class="height40">
      <span id="ASK">
      对商品有疑问？</span></dt>
      <dd class="height40"><a href="#"></a></dd>
      </dl>
      </div>
      <div id="PetHomeApp">
        <div id="AppIMG">
                        <img src="../img/ShopMall/app_ShopSmall.jpg" width="70" height="70"></div>
                       	<div id="AppName">
                            客户端下载
                        </div>
                         <div class="AppTitle">
                         注册立享270
                        </div>
                        <div class="AppTitle">
                        首单再送330
                        </div>
      </div>
    </div>
    </div><!--DataTop End-->
    
    <!--Data_Content End-->
    
    
    
    </div>
    <div id="Data_Content">
    <div id="Content_List">
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
</div>
   
    <div id="Content_Control">
    <div id="Content_Data">
    
    <div id="Content_Title_Control">
   <div class="Title BorderTop2">
   商品介绍
   </div>
    <div class="Title">
    商品评论(829)
   </div>
    <div class="Title">
    售后服务
   </div>
    <div class="Title">
   商品咨询
   (20)</div>
   </div>
   <div id="Content_Information">
   <div id="Content_Information_IMG">
    <img src="../img/ShopMall/CommodityInfo/CommmodityInfoShow.jpg" width="950" height="360">
    </div>
    <div id="Commodity_Information">
    <div class="Information_DataSource">
      <div class="Title">
      <div class="TitleText">
      <span>
    产品信息
    </span>
   <span class="English_TitleText">Product Information</span>
   </div>
    </div>
     
     <div id="Information_DataSource_Content">
     
     
     
     <div class="IDCData">
     
     <div class="IDCData_Title">
       <img src="../img/ShopMall/CommodityInfo/CommmodityIntroductions.jpg" width="760" height="47">
       <br>
       <br>
       
宝路 幼犬粮肉类奶蔬菜谷物配方狗粮
		
       </div>
     <div class="IDCData_Content">
     <div class="InfoControl">
     <div class="Info">
     所属品牌：<s:property value="#session.ProductInfo.brandName"></s:property>
     </div>
     <div class="Info">
 
产品规格:<s:property value="#session.ProductInfo.specifications"></s:property>
     </div>
     <div class="Info">
     适用犬类:<s:property value="#session.ProductInfo.applicableObject"></s:property>
     </div>
     </div>
     <div class="InfoIMG">
     <img src="../img/ShopMall/CommodityInfo/ShopMallDogC6.jpg" width="340" height="340">
     </div></div>
     <div class="InfoText">
     <s:property value="#VarData.productDescribe"></s:property>
     </div><!--InfoText End-->
     
     </div><!--InfoText End-->
     
     
     </div><!--Information_DataSource_Content End-->
     
     
    </div>
    </div><!--Commodity_Information End-->
    <div id="Product_Advantage">
  <div class="Information_DataSource">
      <div class="Title">
      <div class="TitleText">
      <span>
    产品优势
    </span>
   <span class="English_TitleText">Product Advantage</span>
   </div>
    </div>
     
     <div id="Product_Advantage_DataSource_Content">
     
     
     
     <div class="IDCData">
     
     
     <div class="IDCData_Content">
      <s:iterator value="#session.ContentPIMG" var="ContentPIMG">
     <img src="<s:property value='#ContentPIMG.filePath'></s:property>">
      </s:iterator>
     
      </div>
   
     
     </div><!--Information_DataSource End-->
     
     
     </div>
     
     
    </div><!--Information_DataSource End-->
    </div>
    </div><!--Content_Information End-->
    <!--Product_Advantage End-->
    </div><!---Content Data End-->
    
    
    <div id="CommodityJudged">
    <!--Public_Tiltle Start-->
   <div class="Public_Tiltle">
   <span class="SpanTiltle">
   商品评价</span></div>
   <!--Public_Tiltle End-->
   <div id="Total">
   <div id="Fraction">
   <div id="Fraction_score">
   
   <span id="F_Score"><s:property value='#session.judgedMarkNumber'></s:property></span>%
   </div>
    <div class="Fraction_content">
    <div class="Fraction_Content_Control">
    <span class="Fraction_All"></span>
    <span class="Fraction_All"></span>
    <span class="Fraction_All"></span>
    <span class="Fraction_All"></span>
     <span class="Fraction_Half"></span>
     </div>
   </div>
    <div id="Fraction_UserNumber">
    共 <div id="judgedMarkTotal"><s:property value='#session.judgedMarkTotal'></s:property></div> 人评论
   </div>
   </div>
     <div id="Statistics">
     <div class="Line">
     <div class="LineText">
     好评(<s:property value='#session.judgedMarkNumberLev3'></s:property>):
     </div>
     <div class="LineControl">
     <div class="precent" style="width:<s:property value='#session.judgedMarkNumberLev3Value'></s:property>px;">
     </div>
     </div>
     </div>
     <div class="Line">
     <div class="LineText">
     中评(<s:property value='#session.judgedMarkNumberLev2'></s:property>))：
     </div>
 <div class="LineControl">
     <div class="precent" style="width:<s:property value='#session.judgedMarkNumberLev2Value'></s:property>px;">
     </div>
     </div>
     </div>
     <div class="Line">
     <div class="LineText">
     差评(<s:property value='#session.judgedMarkNumberLev1'></s:property>))：
     </div>
      <div class="LineControl">
     <div class="precent" style="width:<s:property value='#session.judgedMarkNumberLev1Value'></s:property>px;">
     </div>
     </div>
     </div>
     
     
   </div>
   <div id="Explain">
   <dl>
   <dt>
   <strong>评论获取萌宠豆</strong>
   </dt>
   <dd>
   · 下单用户才能发表评论
   </dd>
   <dd>
   · 1豆=0.1元

   </dd>
   <dd>
  
· 精华评论更有额外豆奖励
   </dd>
   </dl>
   </div>
   </div><!--Total End-->
   <div id="Com_Jud_Content">
   <div id="Com_Jud_Tag"><!--Total End-->
   
   <div class="Jud_Tag_List">
   全部(<s:property value='#session.judgedMarkTotal'></s:property>)
   </div>
    <div class="Jud_Tag_List">
   好评(<s:property value='#session.judgedMarkNumberLev3'></s:property>)
   </div>
    <div class="Jud_Tag_List">
   中评(<s:property value='#session.judgedMarkNumberLev2'></s:property>)
   </div>
    <div class="Jud_Tag_List">
   差评(<s:property value='#session.judgedMarkNumberLev1'></s:property>)
   </div>
    <div class="Jud_Tag_List">
   晒单(34)
   </div>
   <div class="Jud_Tag_Select">
   <select>
   <option>推荐排序</option>
   <option>时间排序</option>
   </select>
   </div>
   </div>
   
   <div id="Com_Jud_Content_Data">
      <s:iterator value="#session.JudgedForProductID" var="lidata">
   
   <div class="Data_List">
   <div class="Data_List_Left">
   <div class="UserIMG">
  <img src="../img/ShopMall/User1.gif" width="40" height="40"></div>
<div class="UserName"><s:property value='#session.JudgedForProductID.productoderlist.productoderID.accountId.accountId'></s:property></div>
<span class="UserGrade">
<s:property value='#session.JudgedForProductID.productoderlist.productoderID.accountId.accountGrade'></s:property>
</span>
   </div>
   <div class="Data_List_Right">
   
<div class="JudgedMark">




<dl>
<dt>
评分:
</dt>
<dd>

    <div class="Fraction_Content_Control">
    <span class=""></span>
    <span class=""></span>
    <span class=""></span>
    <span class=""></span>
     <span class=""></span>
     </div>
  <span class="MarkScore c4490f7"><s:property value='#lidata.judgedMark'></s:property></span>
   
    <span class="c4490f7">奖励<s:property value='#lidata.productoderlist.number'></s:property>个萌宠豆</span>
   </dd>
   </dl>

</div>

<dl>
<dt>
内容：
</dt>
<dd>
<span class="JudgedText">
<s:property value='#lidata.judgedContent'></s:property>
</span>
</dd>
</dl>
<dl>
<dt>
晒单：
</dt>
<dd>
<div class="CommodityIMG">

  <img src="../img/ShopMall/s1.jpg" width="60" height="60"></div>
   
   
</dd>
</dl>
</div>
   </div>
   
   </s:iterator>
   </div>
   
   </div>
   
    </div><!--CommodityJudged End-->
    
    <div id="After_Sale_Servie">
     <!--Public_Tiltle Start-->
   <div class="Public_Tiltle">
   <span class="SpanTiltle">
   售后服务</span></div>
   <!--Public_Tiltle End-->
    <div id="ASS_Content">
    <dl>
    <dt class="a">
    
    </dt>
    <dd class="Title">
    正品保障
    </dd>
    <dd>
    精选挑选供货商，严格审核产品质量和源头，承诺假一罚十。
    </dd>
    </dl>
     <dl>
    <dt class="b">
    
    </dt>
    <dd class="Title">
    7天免费退换货
    </dd>
    <dd>
    商品存在质量、外包装、性能上的问题，7天无条件退换货。
    </dd>
    </dl>
     <dl>
    <dt class="c">
    
    </dt>
    <dd class="Title">
    正规发票正规发票
    </dd>
    <dd>
    宠物之家为所有客户开具发票，作为客户质保凭证，请顾客自行保留原件作为后续质保之需。
    </dd>
    </dl>
    <dl class="Height177">
       <dd class="Title Width948">
    退换货运费规定
    </dd>
    <dd class="Width948">
    ① 凡是由商品质量问题导致的退换货，相应产生的运费由波奇网承担。
    </dd>
   <dd class="Width948">② 非质量问题的商品退换货，运费由客户承担。
    </dd>
    <dd class="Width948">
    ③ 退货而产生的运费会在商品退款时扣除。
    </dd>
    </dl>
    <dl class="Height133">
        <dd class="Title Width948">
    温馨提示
    </dd>
    <dd class="Width948 height50">
由于部分商品包装更换较为频繁，因此您收到的货品有可能与图片不完全一致，请您以收到的商品实物为准，同时我们会尽量做到及时更新。由此给您带来的不便请多多谅解，谢谢！。
    </dd>
    
    </dl>
    
    </div>
    
    
    
    </div>
    <div id="Commodity_Consultation">
 <!--Public_Tiltle Start-->
   <div class="Public_Tiltle">
   <span class="SpanTiltle">
   商品咨询</span></div>
   <!--Public_Tiltle End-->
    <div class="Content">
    <div class="Ask_List">
    <div class="Ask_Net">
    网　　友：1476252100.683542016-10-12 14:12:09
    </div>
    <div class="Ask_Que">
    宠友提问：你好，我准备购买宝路1.32KG的幼犬粮4袋，请问广东包邮吗
    </div>
    <div class="Ask_Replay">
    回复：亲爱的家长，您好，目前广东地区是实付金额（使用完优惠券的金额需达到包邮的范围）满59元免运费，按照您的描述，您购买四袋商品是可以包邮的，后续有问题您可以随时联系我们，祝您和宝贝生活愉快！
    </div>
     </div>
     <div class="Ask_List">
    <div class="Ask_Net">
  网　　友：1428070266.671982015-06-03 18:08:43
    </div>
    <div class="Ask_Que">
   宠友提问：呵呵，21。6元了，这么便宜，生产日期是什么时候的？是不是要过期了呢？
    </div>
    <div class="Ask_Replay">
    回复：您好，目前此款商品是在做活动哦，所以价格有所下降，生产日期是2014年10月，保质期18个月，亲可以放心购买哦，如果还有什么问题可以联系我们在线客服，谢谢您的光临，祝您生活愉快！
    
    </div>
     </div>
     <div class="Ask_List">
    <div class="Ask_Net">
  网　　友：♚零笙2014-11-16 13:05:12
    </div>
    <div class="Ask_Que">
   宠友提问：2个月大的萨摩耶可以吃不？
    </div>
    <div class="Ask_Replay">
    波奇回复：您好，此款商品不分犬种的噢。如果其他问题可以联系我们在线客服咨询，感谢您对波奇商城的支持！祝您生活愉快！
    </div>
     </div>
     <div class="Ask_List">
    <div class="Ask_Net">
  网　　友：快乐的人_qq1392014-11-11 10:55:28
    </div>
    <div class="Ask_Que">
   宠友提问：请问这个狗粮是小粒的还是大粒的
    </div>
    <div class="Ask_Replay">
    回复：您好，此商品颗粒为中等颗粒。如果其他问题可以联系我们在线客服咨询，感谢您对波奇商城的支持！祝您生活愉快！
    
    </div>
     </div>
     <div class="Ask_List">
    <div class="Ask_Net">
  网　　友：ggbyron@163.com2014-09-21 13:19:00
    </div>
    <div class="Ask_Que">
   宠友提问：9月18买了二袋，送的钙奶棒没有到货，什么情况？
    </div>
    <div class="Ask_Replay">
    回复：您好，因没有您的订单信息无法查看您的订单，如有关于订单的操作，您可以联系在线客服咨询解决！非常感谢您对波奇商城的支持，祝您生活愉快！
    </div>
     </div>
     <div class="Ask_List">
    <div class="Ask_Net">
  网　　友：1410408967.354722014-09-19 13:06:50
    </div>
    <div class="Ask_Que">
    宠友提问：我买了两袋狗粮，另外还买了两袋奶棒，是不是就不能再送奶棒了？可是这个不是在做活动吗？为什么不送了？
   
    </div>
    <div class="Ask_Replay">
    波奇回复：您好，因没有您的订单信息无法查看您的订单，如有关于订单的操作，您可以联系在线客服咨询解决！非常感谢您对波奇商城的支持，祝您生活愉快！
    </div>
     </div>
     <div class="Ask_List">
    <div class="Ask_Net">
  网　　友：159213202832014-09-03 20:06:20
    </div>
    <div class="Ask_Que">
   宠友提问：您好，我收到短信说送我15元现金券，为什么在优惠券里找不着，烦请帮我查一下，谢谢
    </div>
    <div class="Ask_Replay">
    回复：您好，使用现金卷在购物的过程中，提交订单那步是可以使用的，如果无法使用的情况下，可以联系在线客服协助！非常感谢您对波奇商城的支持，祝您生活愉快！
    </div>
     </div>
     <div class="Ask_List">
    <div class="Ask_Net">
  网　　友：happyeveryday302@126.com2014-08-05 13:17:40
    </div>
    <div class="Ask_Que">
   宠友提问：西高白地梗幼犬吃哪种狗粮较好？
    </div>
    <div class="Ask_Replay">
    波奇回复：您好，不同商品针对或者作用面都不太一样，具体详情您可以咨询在线客服了解详情！非常感谢您对波奇商城的支持，祝您生活愉快！
    </div>
     </div>
     
     
     <div id="Publish_Consultation">
     <form>
     <strong>发表咨询：</strong>
     <div id="ConsultationTips">声明：您的咨询问题客服将在1-2个工作日内回复您；订单查询 、物流配送 、退换货 、商品损坏等售后问题请直接拨打400-820-6098。</div>
     <div id="Publish_Consultation_TextAare">
    
     <textarea></textarea>
     </div>
     <div id="Submit_Publish_Consultation">
     <input type="submit" value="提交咨询" >
     </div>
     </form>
     </div>
    </div>
    
    
    </div>
    
    
    
    </div>
    
    </div>
    </div> <!--CommodityData End-->
    
    
 
     
	<!--bottom Start-->
	<div id="bottom">
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

	<!--bottom End-->


</body>
</html>