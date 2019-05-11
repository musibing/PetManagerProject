<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="Keywords" content="宠物,呆萌,萌宠,狗狗,猫猫,宠物之家"/>
<meta name="Description" content="宠物之家致力于为广大爱宠人士提供宠物信息查询、宠物相关服务商的查询" />
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
$("window").ready(function(e) {
	
    var $List=$("#ContentListControl").find(".ContentList");
    for(var s=0;s<$List.length;s++){
    	
    
	var $ContentListDatasA=$List.eq(s).find(".ContentListDatas").find("a");
	var ContentListDatasLength=$ContentListDatasA.length;
	var Number=0;
 
	for(var x=1;x<=ContentListDatasLength;x++){
	if(x%3==0){
		
		Number++;
		
	}else if(x==ContentListDatasLength){
		if(x==3){
			Number--;
			
		}else{
			Number++;
		}
		}
	}
/*alert("处理后个数："+ContentListDatasLength); */
	var height=$ContentListDatasA.eq(0).height();
/* 	alert("单个元素的高度的："+height); */
	ContentListDatasHeight=(height*Number);
	 
	 var $datas=$List.eq(s).find(".ContentListDatas");
	 /* $datas.eq(0).css({"width":"170","height":ContentListDatasHeight});
	  $List.eq(s).css({"width":"170","height":ContentListDatasHeight+35}); */
	 
    }
})
function load(){
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
					$("#ChengWidth").html(str);
					$("#ChengWidth").css("width",120);
					}
			}

			})  
	
	}
</script>

<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/Version1/Bottom.css">
<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/Version1/Logo.css">
<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/Version1/Navigation.css">
<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/Version1/Top.css">
<link type="text/css" rel="stylesheet" href="ShopMall.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>宠物情报系统</title>
<%
	String[] AnimalClassification = { "Dog", "Cat", "Aquarium",
			"Crawler" };
	request.setAttribute("Animal", AnimalClassification);
%>
</head>
<body onload="load()">
<div id="floatspanControl">
<div id="ViewControl">
	<div id="top">
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
		<!--Content Start-->
		<div id="Content">
			<div id="ContentControl">
				<div id="ContentCenter">

					<div id="ContentListControl">
						<div class="ContentList">
                      
							
								<div class="ContentListTitle">
									<div class="ContentListTitleICO">
										<div class="ContentListTitleICOIMG"></div>
									</div>
                                    <div class="ContentListTitleTextData">
						  <strong>狗狗</strong></div></div>
								<div class="ContentListDatas">
                                <div class="ContentListDatasLineControl">
									<a href="../SelectClassificationProductForTagVel1?ProductTagVelName=狗狗主粮">主食</a> <a href="../SelectClassificationProductForTagVel1?ProductTagVelName=狗狗零食">零食</a><a href="../SelectClassificationProductForTagVel1?ProductTagVelName=医疗护理">医疗</a></div> <div class="ContentListDatasLineControl"> <a href="../SelectClassificationProductForTagVel1?ProductTagVelName=营养保健">保健</a><a href="../SelectClassificationProductForTagVel1?ProductTagVelName=出行装备">出行</a> <a href="../SelectClassificationProductForTagVel1?ProductTagVelName=生活日用">日用</a></div> <div class="ContentListDatasLineControl"><a href="../SelectClassificationProductForTagVel1?ProductTagVelName=狗狗玩具">玩具</a>
                                    <a href="../SelectClassificationProductForTagVel1?ProductTagVelName=狗狗美容">美容</a></div>



								</div>


							<!---->
                            
						</div>
						<div class="ContentList">
							
								<div class="ContentListTitle">
									<div class="ContentListTitleICO">
										<div class="ContentListTitleICOIMG CatICOIMG"></div>
									</div>
                                    <div class="ContentListTitleTextData">
						  <strong>猫咪</strong></div></div>
								<div class="ContentListDatas">
                                <div class="ContentListDatasLineControl">
									<a href="../SelectClassificationProductForTagVel1?ProductTagVelName=猫咪主粮">主食</a> <a href="../SelectClassificationProductForTagVel1?ProductTagVelName=猫咪零食">零食</a><a href="../SelectClassificationProductForTagVel1?ProductTagVelName=医疗护理">医疗</a></div> <div class="ContentListDatasLineControl"> <a href="../SelectClassificationProductForTagVel1?ProductTagVelName=营养保健">保健</a><a href="../SelectClassificationProductForTagVel1?ProductTagVelName=出行装备">出行</a> <a href="../SelectClassificationProductForTagVel1?ProductTagVelName=生活日用">日用</a></div> <div class="ContentListDatasLineControl"><a href="../SelectClassificationProductForTagVel1?ProductTagVelName=猫咪玩具">玩具</a>
                                    <a href="../SelectClassificationProductForTagVel1?ProductTagVelName=猫咪美容">美容</a></div>



								</div>
							<!---->
						</div>
						<div class="ContentList">
							
								<div class="ContentListTitle">
									<div class="ContentListTitleICO">
										<div class="ContentListTitleICOIMG SmallPet"></div>
									</div><div class="ContentListTitleTextData">
						  <strong>小宠</strong></div></div>
								<div class="ContentListDatas">
                                <div class="ContentListDatasLineControl">
									<a href="../SelectClassificationProductForTagVel1?ProductTagVelName=兔子">兔子</a> <a href="../SelectClassificationProductForTagVel1?ProductTagVelName=鸟类">鸟类</a> <a href="../SelectClassificationProductForTagVel1?ProductTagVelName=龙猫">龙猫</a></div>
								</div>
							<!---->
						</div>
						<div class="ContentList">
							
								<div class="ContentListTitle">
									<div class="ContentListTitleICO">
										<div class="ContentListTitleICOIMG Weater"></div>
									</div>
                                    <div class="ContentListTitleTextData">
									<strong>水族</strong></div>
								</div><div class="ContentListDatas">
                                <div class="ContentListDatasLineControl">
									<a href="../SelectClassificationProductForTagVel1?ProductTagVelName=鱼粮">鱼食</a><a href="../SelectClassificationProductForTagVel1?ProductTagVelName=鱼缸">鱼缸</a> <a href="../SelectClassificationProductForTagVel1?ProductTagVelName=器材">器材</a></div><div class="ContentListDatasLineControl"><a href="../SelectClassificationProductForTagVel1?ProductTagVelName=药水">药水</a>
									<a href="../SelectClassificationProductForTagVel1?ProductTagVelName=造景">造景</a></div>
								</div>
							
						</div>
						<div class="ContentList BottonBorder0">
							
								<div class="ContentListTitle">
									<div class="ContentListTitleICO">
										<div class="ContentListTitleICOIMG Reptile"></div>
									</div>
                                    <div class="ContentListTitleTextData">
						  <strong>爬虫</strong></div></div>
								<div class="ContentListDatas" >
                                <div class="ContentListDatasLineControl">
									<a href="../SelectClassificationProductForTagVel1?ProductTagVelName=布艺生活">布艺</a><a href="../SelectClassificationProductForTagVel1?ProductTagVelName=装饰工艺">装饰</a> <a href="../SelectClassificationProductForTagVel1?ProductTagVelName=生活家居">家居</a></div>
								</div>
							
						</div>

					</div>
					<!--List End-->
					<div id="ContentCenterIMGControl">

						<img class="ContentCenterIMG"
							src="../img/ShopMall/guanggao/imgShopMaill000001.jpg" />

						<div id="ContentCenterListIMGControl">
							<img class="ContentCenterListIMG"
								src="../img/ShopMall/ContentCenterList1.jpg" /> 
                                
                            <img class="ContentCenterListIMG"
								src="../img/ShopMall/ContentCenterList2.jpg" /> 
                            <img
								class="ContentCenterListIMG"
								src="../img/ShopMall/ContentCenterList3.jpg" />

						</div>
				  </div>
					<!--Content End-->
					<div id="CenterLeft">
						<img src="../img/ShopMall/CenterLeft.jpg" width="200" height="200">					<div id="News">
                        <div id="NewsTitle">
                        <span id="NewsTitleText">新闻资讯</span>
                        <div class="NewsMore">
                         <span class="NewsMoreLeft"></span>
                          <span class="NewsMoreRight"></span>
                        </div>
                        
                        </div>
                        <div id="NewsContent">
                       <ui>
                        <li>
                       全球购囤货活动发货延缓说明
                       </li>
                         <li>
                      新疆部分区域快递停发通知（含全球购订单）
                       </li>
                         <li>
                     江浙沪皖京津粤满59元免运费
                       </li>
                       </ui>
                        </div>
                        </div><!--News End-->
                        <div id="Subscribe"><!--Subscribe Start-->
                        <div id="SubscribeTitle">
                        <h5>订阅促销信息</h5>
                        </div>
                        <div id="SubscribeContent">
                        <input type="text" id="SubscribeContentText" value="请输入的电子邮件地址"/><input type="button" id="SubscribeContentButton" value="订阅">
                        </div>
                        </div><!--Subscribe End-->
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
			  </div>
			</div>
		</div><!--Content End-->
 <div id="Commodity">       
<div id="CommodityControl">
<div id="HotCommodity">
<div class="Tile">
<div class="Text">
火爆商品
</div>
<div class="TileMore">
<a href="../AnotherBatchHotProduct">换一批</a>
</div>

</div>
<div class="Content">
   <s:iterator value="#session.HotProductList" var="lidata">
   <div class="ContentData">
<div class="ContentDataIMG"> <img src="<s:property value='#lidata.exhibitionIMGPath'></s:property>"></div>
<div class="ContentDataTitle">
<a href="../ViewProductForID?PorductID=<s:property value='#lidata.productID'></s:property>"><s:property value="#lidata.productName"></s:property></a>
</div>
<div class="ContentDataPrice"><span class="Price">¥ <s:property value='#lidata.retailPrice'></s:property></span> <span class="Total">已售<s:property value='#lidata.salesVolumes'></s:property></span>
</div>
</div>
 </s:iterator>
</div>
</div>
<div id="Brand">
<div class="Tile MT19">
<div class="Text">
知名品牌　放心选择
</div>
<div class="TileMore">更多品牌»</div>

</div>
<div class="Content">
<div class="ContentData">
  <img src="../img/ShopMall/Brand1.jpg" width="190" height="270"></div>
  <div class="ContentData">
  <div class="Height130"><img src="../img/ShopMall/Brand2-1.jpg" width="190" height="130"></div>
  <div class="Height130 MT10"><img src="../img/ShopMall/Brand2-2.jpg" width="190" height="130"></div>
  </div>
  <div class="ContentData"><img src="../img/ShopMall/Brand3.jpg" width="190" height="270"></div>
  <div class="ContentData">
  <div class="Height130"><img src="../img/ShopMall/Brand4-1.jpg" width="190" height="130"></div>
  <div class="Height130 MT10"><img src="../img/ShopMall/Brand4-2.jpg" width="190" height="130"></div>
  </div>
  <div class="ContentData">
<img src="../img/ShopMall/Brand5.jpg" width="190" height="270"></div>
<div class="ContentData">
  <div class="Height130"><img src="../img/ShopMall/Brand6-1.jpg" width="190" height="130"></div>
  <div class="Height130 MT10"><img src="../img/ShopMall/Brand6-2jpg.jpg" width="190" height="130"></div>
  </div>
</div>
</div><!--Ban End-->
<!--狗狗商品开始-->
<div id="dog">
<div class="CommodityData">
<div class="title">

				
		  <div class="titleName BackgroundW">
						<div class="TitleIMG"></div>
						<div class="TitleText">狗狗商品</div>
					</div>
			<div class="titcontent">
						
						<div class="Text">狗粮</div>
                        <div class="Text">湿粮</div>
                        <div class="Text">零食</div>
                        <div class="Text">保健品</div>
                        <div class="Text">医疗</div>
                        <div class="Text">沐浴露</div>
                        <div class="Text">日用品</div>
                         <div class="Text">美容</div>
                        <div class="Text">玩具</div>
                         <div class="Text Border0">衣服窝</div> 
					</div>
                    
                    
                    
                    
				
		
</div>

<div class="Content">
<div class="Man">
  <img src="../img/ShopMall/dog/Man/20190306Man1.jpg" width="190" height="480"></div>
  <div class="Center">
  <div class="CenterC1">
  
   <s:iterator value="#session.dogli" var="lidata">
   <div class="ContentData">
<div class="ContentDataIMG"> <img src="<s:property value='#lidata.exhibitionIMGPath'></s:property>"></div>
<div class="ContentDataTitle">
<a href="../ViewProductForID?PorductID=<s:property value='#lidata.productID'></s:property>"><s:property value="#lidata.productName"></s:property></a>
</div>
<div class="ContentDataPrice"><span class="Price">¥ <s:property value='#lidata.retailPrice'></s:property></span> <span class="Total">已售<s:property value='#lidata.salesVolumes'></s:property></span>
</div>
</div>
 </s:iterator>
 
  </div>
 
  <div class="CenterC2">
  <div class="BrandClass">
    <img src="../img/ShopMall/dog/Brand/Brand1.jpg">
    </div>
    <div class="BrandClass">
      <img src="../img/ShopMall/dog/Brand/Brand2.jpg" ></div>
    <div class="BrandClass">
   <img src="../img/ShopMall/dog/Brand/Brand3.jpg" >
    </div>
    <div class="BrandClass">
   <img src="../img/ShopMall/dog/Brand/Brand4.jpg" >
    </div>
    <div class="BrandClass">
   <img src="../img/ShopMall/dog/Brand/Brand5.jpg" >
    </div>
    <div class="BrandClass">
   <img src="../img/ShopMall/dog/Brand/Brand6.jpg" >
    </div>
    <div class="BrandClass">
   <img src="../img/ShopMall/dog/Brand/Brand7.jpg" >
    </div>
    <div class="BrandClass  Border0">
   <img src="../img/ShopMall/dog/Brand/Brand8.jpg" >
    </div>
  </div>
  
  </div>
  <div class="Right">
  <div class="R_Tit">
  推荐商品
  </div>
  
  <div class="R_Tit_Content">
   <s:iterator value="#session.dogRecommendli" var="lidata">
  <div class="Data">
    <img src="<s:property value='#lidata.exhibitionIMGPath'></s:property>">
    <div class="Name"><a href="../ViewProductForID?PorductID=<s:property value='#lidata.productID'></s:property>"><s:property value="#lidata.productName"></s:property></a></div>
    <div class="Price">¥ <s:property value='#lidata.retailPrice'></s:property></div>
    </div>
    </s:iterator>
  </div>

  </div>

</div>
</div>
</div><!--DogEnd-->
<div id="cat">
<div class="CommodityData">
<div class="title">

				
		  <div class="titleName BackgroundW">
						<div class="TitleIMG"></div>
						<div class="TitleText">猫猫商品</div>
					</div>
			<div class="titcontent">
						
						<div class="Text">狗粮</div>
                        <div class="Text">湿粮</div>
                        <div class="Text">零食</div>
                        <div class="Text">保健品</div>
                        <div class="Text">医疗</div>
                        <div class="Text">沐浴露</div>
                        <div class="Text">日用品</div>
                         <div class="Text">美容</div>
                        <div class="Text">玩具</div>
                         <div class="Text Border0">衣服窝</div> 
					</div>
                    
                    
                    
                    
				
		
</div>

<div class="Content">
<div class="Man">
  <img src="../img/ShopMall/dog/Man/20190306Man2.jpg" width="190" height="480"></div>
  <div class="Center">
  <div class="CenterC1">
   <s:iterator value="#session.catli" var="lidata">
    
      
  <div class="ContentData">
<div class="ContentDataIMG"> <img src="<s:property value='#lidata.exhibitionIMGPath'></s:property>"></div>
<div class="ContentDataTitle">
<a href="../ViewProductForID?PorductID=<s:property value='#lidata.productID'></s:property>"><s:property value="#lidata.productName"></s:property></a>

</div>
<div class="ContentDataPrice"><span class="Price">¥ <s:property value='#lidata.retailPrice'></s:property></span> <span class="Total">已售<s:property value='#lidata.salesVolumes'></s:property></span>
</div>
</div>
 </s:iterator>
  
  </div>
  <div class="CenterC2">
  <div class="BrandClass">
    <img src="../img/ShopMall/dog/Brand/Brand1.jpg">
    </div>
    <div class="BrandClass">
      <img src="../img/ShopMall/dog/Brand/Brand2.jpg" ></div>
    <div class="BrandClass">
   <img src="../img/ShopMall/dog/Brand/Brand3.jpg" >
    </div>
    <div class="BrandClass">
   <img src="../img/ShopMall/dog/Brand/Brand4.jpg" >
    </div>
    <div class="BrandClass">
   <img src="../img/ShopMall/dog/Brand/Brand5.jpg" >
    </div>
    <div class="BrandClass">
   <img src="../img/ShopMall/dog/Brand/Brand6.jpg" >
    </div>
    <div class="BrandClass">
   <img src="../img/ShopMall/dog/Brand/Brand7.jpg" >
    </div>
    <div class="BrandClass  Border0">
   <img src="../img/ShopMall/dog/Brand/Brand8.jpg" >
    </div>
  </div>
  
  </div>
  <div class="Right">
  <div class="R_Tit">
  推荐商品
  </div>


  <div class="R_Tit_Content">
    <s:iterator value="#session.catRecommendli" var="lidata">
  <div class="Data">
    <img src="<s:property value='#lidata.exhibitionIMGPath'></s:property>">
    <div class="Name"><a href="../ViewProductForID?PorductID=<s:property value='#lidata.productID'></s:property>"><s:property value="#lidata.productName"></s:property></a></div>
    <div class="Price">¥ <s:property value='#lidata.retailPrice'></s:property></div>
    </div>
    </s:iterator>
  </div>

  
  
  </div>

</div>
</div>
</div><!--DogEnd-->
<div id="smallPet">
<div class="CommodityData">
<div class="title">

				
		  <div class="titleName BackgroundW">
						<div class="TitleIMG"></div>
						<div class="TitleText">小宠商品</div>
					</div>
			<div class="titcontent">
						
						<div class="Text">狗粮</div>
                        <div class="Text">湿粮</div>
                        <div class="Text">零食</div>
                        <div class="Text">保健品</div>
                        <div class="Text">医疗</div>
                        <div class="Text">沐浴露</div>
                        <div class="Text">日用品</div>
                         <div class="Text">美容</div>
                        <div class="Text">玩具</div>
                         <div class="Text Border0">衣服窝</div> 
					</div>
                    
                    
                    
                    
				
		
</div>

<div class="Content">
<div class="Man">
  <img src="../img/ShopMall/dog/Man/20190306Man3.jpg" width="190" height="480"></div>
  <div class="Center">
  <div class="CenterC1">
  
   <s:iterator value="#session.smallli" var="lidata">
    
      
  <div class="ContentData">
<div class="ContentDataIMG"> <img src="<s:property value='#lidata.exhibitionIMGPath'></s:property>"></div>
<div class="ContentDataTitle">
<a href="../ViewProductForID?PorductID=<s:property value='#lidata.productID'></s:property>"><s:property value="#lidata.productName"></s:property></a>
</div>
<div class="ContentDataPrice"><span class="Price">¥ <s:property value='#lidata.retailPrice'></s:property></span> <span class="Total">已售<s:property value='#lidata.salesVolumes'></s:property></span>
</div>
</div>
 </s:iterator>
  
  </div>
  <div class="CenterC2">
  <div class="BrandClass">
    <img src="../img/ShopMall/dog/Brand/Brand1.jpg">
    </div>
    <div class="BrandClass">
      <img src="../img/ShopMall/dog/Brand/Brand2.jpg" ></div>
    <div class="BrandClass">
   <img src="../img/ShopMall/dog/Brand/Brand3.jpg" >
    </div>
    <div class="BrandClass">
   <img src="../img/ShopMall/dog/Brand/Brand4.jpg" >
    </div>
    <div class="BrandClass">
   <img src="../img/ShopMall/dog/Brand/Brand5.jpg" >
    </div>
    <div class="BrandClass">
   <img src="../img/ShopMall/dog/Brand/Brand6.jpg" >
    </div>
    <div class="BrandClass">
   <img src="../img/ShopMall/dog/Brand/Brand7.jpg" >
    </div>
    <div class="BrandClass  Border0">
   <img src="../img/ShopMall/dog/Brand/Brand8.jpg" >
    </div>
  </div>
  
  </div>
  <div class="Right">
  <div class="R_Tit">
  推荐商品
  </div>


  <div class="R_Tit_Content">
    <s:iterator value="#session.smallRecommendli" var="lidata">
  <div class="Data">
    <img src="<s:property value='#lidata.exhibitionIMGPath'></s:property>">
    <div class="Name"><a href="../ViewProductForID?PorductID=<s:property value='#lidata.productID'></s:property>"><s:property value="#lidata.productName"></s:property></a></div>
    <div class="Price">¥ <s:property value='#lidata.retailPrice'></s:property></div>
    </div>
  
</s:iterator>
  
  </div>
  </div>

</div>
</div>
</div>
<div id="crawler">
<div class="CommodityData">
<div class="title">

				
		  <div class="titleName BackgroundW">
						<div class="TitleIMG"></div>
						<div class="TitleText">水族商品</div>
					</div>
			<div class="titcontent">
						
						<div class="Text">狗粮</div>
                        <div class="Text">湿粮</div>
                        <div class="Text">零食</div>
                        <div class="Text">保健品</div>
                        <div class="Text">医疗</div>
                        <div class="Text">沐浴露</div>
                        <div class="Text">日用品</div>
                         <div class="Text">美容</div>
                        <div class="Text">玩具</div>
                         <div class="Text Border0">衣服窝</div> 
					</div>
                    
                    
                    
                    
				
		
</div>

<div class="Content">
<div class="Man">
  <img src="../img/ShopMall/dog/Man/20190306Man4.jpg" width="190" height="480"></div>
  <div class="Center">
  <div class="CenterC1">
    



<s:iterator value="#session.wtearli" var="lidata">
    
      
  <div class="ContentData">
<div class="ContentDataIMG"> <img src="<s:property value='#lidata.exhibitionIMGPath'></s:property>"></div>
<div class="ContentDataTitle">
<a href="../ViewProductForID?PorductID=<s:property value='#lidata.productID'></s:property>"><s:property value="#lidata.productName"></s:property></a>
</div>
<div class="ContentDataPrice"><span class="Price">¥ <s:property value='#lidata.retailPrice'></s:property></span> <span class="Total">已售<s:property value='#lidata.salesVolumes'></s:property></span>
</div>
</div>
 </s:iterator>



  </div>
  <div class="CenterC2">
  <div class="BrandClass">
    <img src="../img/ShopMall/dog/Brand/Brand1.jpg">
    </div>
    <div class="BrandClass">
      <img src="../img/ShopMall/dog/Brand/Brand2.jpg" ></div>
    <div class="BrandClass">
   <img src="../img/ShopMall/dog/Brand/Brand3.jpg" >
    </div>
    <div class="BrandClass">
   <img src="../img/ShopMall/dog/Brand/Brand4.jpg" >
    </div>
    <div class="BrandClass">
   <img src="../img/ShopMall/dog/Brand/Brand5.jpg" >
    </div>
    <div class="BrandClass">
   <img src="../img/ShopMall/dog/Brand/Brand6.jpg" >
    </div>
    <div class="BrandClass">
   <img src="../img/ShopMall/dog/Brand/Brand7.jpg" >
    </div>
    <div class="BrandClass  Border0">
   <img src="../img/ShopMall/dog/Brand/Brand8.jpg" >
    </div>
  </div>
  
  </div>
  <div class="Right">
  <div class="R_Tit">
  推荐商品
  </div>
  <div class="R_Tit_Content">
  <s:iterator value="#session.wtearRecommendli" var="lidata">

  <div class="Data">
    <img src="<s:property value='#lidata.exhibitionIMGPath'></s:property>">
    <div class="Name"><a href="../ViewProductForID?PorductID=<s:property value='#lidata.productID'></s:property>"><s:property value="#lidata.productName"></s:property></a></div>
    <div class="Price">¥ <s:property value='#lidata.retailPrice'></s:property></div>
    </div>
    </s:iterator>


  
  </div>
  </div>

</div>
</div>
</div>
<div id="reptile">
<div class="CommodityData">
<div class="title">

				
		  <div class="titleName BackgroundW">
						<div class="TitleIMG"></div>
						<div class="TitleText">爬虫商品</div>
					</div>
			<div class="titcontent">
						
						<div class="Text">狗粮</div>
                        <div class="Text">湿粮</div>
                        <div class="Text">零食</div>
                        <div class="Text">保健品</div>
                        <div class="Text">医疗</div>
                        <div class="Text">沐浴露</div>
                        <div class="Text">日用品</div>
                         <div class="Text">美容</div>
                        <div class="Text">玩具</div>
                         <div class="Text Border0">衣服窝</div> 
					</div>
                    
                    
                    
                    
				
		
</div>

<div class="Content">
<div class="Man">
  <img src="../img/ShopMall/dog/Man/20190306Man5.jpg" width="190" height="480"></div>
  <div class="Center">
  <div class="CenterC1">
  <s:iterator value="#session.mengli" var="lidata">
    
      
  <div class="ContentData">
<div class="ContentDataIMG"> <img src="<s:property value='#lidata.exhibitionIMGPath'></s:property>"></div>
<div class="ContentDataTitle">
<a href="../ViewProductForID?PorductID=<s:property value='#lidata.productID'></s:property>"><s:property value="#lidata.productName"></s:property></a>
</div>
<div class="ContentDataPrice"><span class="Price">¥ <s:property value='#lidata.retailPrice'></s:property></span> <span class="Total">已售<s:property value='#lidata.salesVolumes'></s:property></span>
</div>
</div>
 </s:iterator>
  </div>
  <div class="CenterC2">
  <div class="BrandClass">
    <img src="../img/ShopMall/dog/Brand/Brand1.jpg">
    </div>
    <div class="BrandClass">
      <img src="../img/ShopMall/dog/Brand/Brand2.jpg" ></div>
    <div class="BrandClass">
   <img src="../img/ShopMall/dog/Brand/Brand3.jpg" >
    </div>
    <div class="BrandClass">
   <img src="../img/ShopMall/dog/Brand/Brand4.jpg" >
    </div>
    <div class="BrandClass">
   <img src="../img/ShopMall/dog/Brand/Brand5.jpg" >
    </div>
    <div class="BrandClass">
   <img src="../img/ShopMall/dog/Brand/Brand6.jpg" >
    </div>
    <div class="BrandClass">
   <img src="../img/ShopMall/dog/Brand/Brand7.jpg" >
    </div>
    <div class="BrandClass  Border0">
   <img src="../img/ShopMall/dog/Brand/Brand8.jpg" >
    </div>
  </div>
  
  </div>
  <div class="Right">
  <div class="R_Tit">
  推荐商品
  </div>


 
  <div class="R_Tit_Content">
   <s:iterator value="#session.maoRecommendli" var="lidata">
  <div class="Data">
    <img src="<s:property value='#lidata.exhibitionIMGPath'></s:property>">
    <div class="Name"><a href="../ViewProductForID?PorductID=<s:property value='#lidata.productID'></s:property>"><s:property value="#lidata.productName"></s:property></a></div>
    <div class="Price">¥ <s:property value='#lidata.retailPrice'></s:property></div>
    </div>
    </s:iterator>


  
  </div>
  </div>
  </div>

</div>
</div>
</div>
<!--狗狗商品结束-->

    <!--Judged Start-->
<div id="HotJudged">
<div id="Judged">
<div id="Title">
<div id="TitleIMG">

</div>
<div id="Text">
热门评价
</div>
</div>
<div id="Content">
<div class="DataControl">
<div class="Data Border1">
<div class="Left">
<div class="UserIMG">
  <img src="../img/ShopMall/User1.gif" width="40" height="40"></div>
<div class="UserName">
mo***81
</div>
</div>
<div class="Center">
<div class="JudgedMark">
<div class="IMG">

</div>
<div class="Score">5.0分
</div>
</div>
<div class="JudgedText">
不错，狗狗吃了一个礼拜 食欲增加了 增加的我得负担有点重 哈哈 开玩笑 狗狗现在很好
</div>
</div>
<div class="CommodityIMG">
  <img src="../img/ShopMall/s1.jpg" width="60" height="60"></div>
</div>
<div class="Data">
<div class="Left">
<div class="UserIMG">
<img src="../img/ShopMall/User2.gif" width="40" height="40"></div>
<div class="UserName">
mo***81
</div>
</div>
<div class="Center">
<div class="JudgedMark">
<div class="IMG">

</div>
<div class="Score">5.0分
</div>
</div>
<div class="JudgedText">
买的时候还有点心疼价格太高，买了以后就后悔没早买，五米长的绳子可以避免遛狗被动踩草坪，狗狗玩起来也比较自由，强烈建议入手一个</div>
</div>
<div class="CommodityIMG">
  <img src="../img/ShopMall/s2.jpg" width="60" height="60"></div>
</div>
</div>
<div class="DataControl">
<div class="Data Border1">
<div class="Left">
<div class="UserIMG"><img src="../img/ShopMall/User3.jpg"></div>
<div class="UserName">
小熊猫
</div>
</div>
<div class="Center">
<div class="JudgedMark">
<div class="IMG">

</div>
<div class="Score">5.0分
</div>
</div>
<div class="JudgedText">
味道挺不错的，持续的时间也挺久，效果呢其实跟人用的驱蚊圈差不多吧。
</div></div>
<div class="CommodityIMG">
  <img src="../img/ShopMall/s3.jpg" width="60" height="60"></div>
</div>
<div class="Data">
<div class="Left">
<div class="UserIMG">
  <img src="../img/ShopMall/User1.gif" width="40" height="40"></div>
<div class="UserName">
mo***81
</div>
</div>
<div class="Center">
<div class="JudgedMark">
<div class="IMG">

</div>
<div class="Score">5.0分
</div>
</div>
<div class="JudgedText">
活动抢到手的，本来没有多大期望可是到手里以后发现包装好大!打开以后拼起来，很好很棒棒!</div>
</div>
<div class="CommodityIMG">
  <img src="../img/ShopMall/s4.jpg" width="60" height="60"></div>
</div>
</div><!--DataControl End-->
</div>
</div>

<div id="AttentionUS">
<div id="Title">

热门评价

</div>
<div id="Content">
<div class="Data">
<div class="WeixingIMG">
</div>
<div class="DataLeft">
<strong>官方微信</strong><br>
<p>公众号：</p>
<p>PetHome</p>
</div>
</div>
<div class="Data Border0">
<div class="WeBoIMG">
</div>
<div class="DataLeft">
<strong>官方微博</strong><br>
<p>宠物之家</p>
<div class="AttentionUSWebo">
</div>
</div>
</div>
</div>

</div>
<!--Judged end-->
</div><!--CommodityControl End-->
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
 </div>
</div>
<div id="floatspan">
<div id="AccountInfo" class="floatspan">

<div class="AccountHref" style="background-image:url(<s:property value='#session.AccountInfo.accountIMGPath'></s:property>)">

  </div>
  </div>

<div id="BuyCarFloat" class="floatspan">
<div class="BuyCarData floatspanimg"></div>
<div class="BuyCarFloatTextLine">购物车</div>
<div class="BuyCarTotalNumber"><s:property value='#session.BuyCarNumber'></s:property>
					</div>
   </div>

<div  class="floatspan">
<div class="PayAccount floatspanimg"></div>
资产

   </div>
<div  class="floatspan">
<div class="Collect floatspanimg"></div>
收藏

   </div> 
  <div class="floatspan">
  <div class="App floatspanimg"></div>
APP

   </div> 
    <div class="floatspan floatspan_top">
    <div class="Top floatspanimg"></div>
TOP

   </div>     
</div>
</div>
</body>
</html>