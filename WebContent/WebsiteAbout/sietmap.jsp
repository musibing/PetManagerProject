<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="../jquery/jquery-1.7.2.js"></script>
<script>

/* $(function(){
	
})
 */

 $(document).ready(function () {
 		var $WACControrContentAll=$("div[id=WACControrContent]>div");
		
		for(var i=0;i<$WACControrContentAll.length;i++){
var $ShoppingMall=$("div[class=ShoppingMall]:eq("+i+")>div");/* 得到ShoppingMall下的所有 子元素 */
		var SitMapTitleHeight=0;
		SitMapTitleHeight=$ShoppingMall.eq(0).height();/* 得到SitMapTitle的高度 */
		alert("标题的高度是："+SitMapTitleHeight);
		var SitMapControlClassName=$ShoppingMall.eq(1).attr("class");/* 得到SitMapControl的Class属性 */
		var SitMapControlMarginTopHeight=$ShoppingMall.eq(1).css("margin-top");/* 获得SitMapControlMarginTo的高度 */
		 SitMapControlMarginTopHeight=SitMapControlMarginTopHeight.split("");
		alert("拆分的长度"+SitMapControlMarginTopHeight.length);
		for(var i=0;i<SitMapControlMarginTopHeight.length;i++){
			if(SitMapControlMarginTopHeight[i]>=0&&SitMapControlMarginTopHeight[i]<=9){
				
			}else{
				SitMapControlMarginTopHeight[i]="";
			}
			
		}
		alert("处理的的数据 "+SitMapControlMarginTopHeight);
		SitMapControlMarginTopHeight=SitMapControlMarginTopHeight.join("");
		var $SitMapControlAll=$("div[class="+SitMapControlClassName+"]:eq("+i+")>div");/* 得到SitMapControl下的所有 子元素 */
		var SitMapNavigationHeight=$SitMapControlAll.eq(0).height();/* 得到.SitMapNavigation下的高度 */
		var DataControlClassName=$SitMapControlAll.eq(1).attr("class");/* 得到SitMapControl的Class属性 */
		var $SitMapNavigationContent=$("div[class="+DataControlClassName+"]:eq("+i+")>div");/* 得到DataControl下的所有 子元素 */
		var SitMapNavigationContentHeight=$SitMapNavigationContent.eq(0).height();
		var SitMapNavigationContentNumber=$SitMapNavigationContent.length;
		SitMapControlHeight=((SitMapNavigationContentNumber*SitMapNavigationContentHeight)+(SitMapNavigationContentNumber*1))+SitMapNavigationHeight;
		DataControlHeight=((SitMapNavigationContentNumber*SitMapNavigationContentHeight)+(SitMapNavigationContentNumber*1));
		ShoppingMallHeight=(((SitMapControlHeight+SitMapTitleHeight)+parseInt(SitMapControlMarginTopHeight)));
		alert("SitMapControl高度是："+SitMapControlHeight);
		alert("DataControl高度是："+DataControlHeight);
		alert("ShoppingMallHeight高度是："+ShoppingMallHeight);
		$WACControrContentAll.eq(i).css("Height",ShoppingMallHeight);
		$ShoppingMall.eq(1).css("Height",SitMapControlHeight);
		$SitMapControlAll.eq(1).css("Height",DataControlHeight);
		}
		
		
		
	}); 
/*window.onload = function() { 
	alert($("div[class=SitMapTitle]:eq(0)").css("border-bottom-width"));//
	};  */
</script>
<link rel="stylesheet" href="WebAbout.css" type="text/css">
</head>
<body>
<div id="Web_About">
<div id="Kong"></div>
<div id="Web_About_Control">
<div id="Web_About_List">
<div class="List">
关于我们
</div>
<div class="List">
联系我们
</div>
<div class="List">
网站地图
</div>
<div class="List">
友情链接
</div>
<div class="List">
意见反馈
</div>
<div class="List">
帮助中心
</div>
<div class="List">
联系我们
</div>
</div><!--Web_About_List end-->
<div id="Web_About_Content">
<div id="WACControl">
<div id="WACControlTitle">

<div id="WACCHR">
</div>

<span id="WACCTitle">网站地图</span>

</div><!--WACControlTitle end-->

<div id="WACControrContent">
<div class="ShoppingMall">
<div class="SitMapTitle">
商城
</div>
<div class="SitMapControl">
<div class="SitMapNavigation">
<div class="SitMapNavigationTitle">
狗狗专区
</div>
<div class="SitMapNavigationTitle">
猫咪专区
</div>
<div class="SitMapNavigationTitle">
小宠专区
</div>
<div class="SitMapNavigationTitle">
水族专区
</div>
<div class="SitMapNavigationTitle">
萌宠周边
</div>
</div><!--SitMapNavigation end-->
<div class="DataControl">
<div class="SitMapNavigationContent">
<div class="SitMapNavigationContentControl">
<div class="SitMapNavigationContentTitle">
狗狗主粮

</div>
<div class="SitMapNavigationContentData">
进口狗粮
</div>

<div class="SitMapNavigationContentData">
国产狗粮
</div>
<div class="SitMapNavigationContentData">
处方狗粮
</div>
<div class="SitMapNavigationContentData">
冻干狗粮
</div>


</div><!--SitMapNavigationContentControl end-->
</div>
<div class="SitMapNavigationContent">
<div class="SitMapNavigationContentControl">
<div class="SitMapNavigationContentTitle">狗狗零食</div>
<div class="SitMapNavigationContentData">
罐头湿粮
</div>

<div class="SitMapNavigationContentData">
肉类零食
</div>
<div class="SitMapNavigationContentData">
磨牙洁齿
</div>
<div class="SitMapNavigationContentData">
奶酪饼干
</div>


</div>
</div>
<div class="SitMapNavigationContent">
<div class="SitMapNavigationContentControl">
<div class="SitMapNavigationContentTitle">
医疗护理

</div>
<div class="SitMapNavigationContentData">皮肤治疗</div>

<div class="SitMapNavigationContentData">
综合护理
</div>
<div class="SitMapNavigationContentData">内外驱虫</div>
<div class="SitMapNavigationContentData">
常备药品
</div>


</div>
</div>
<div class="SitMapNavigationContent">
<div class="SitMapNavigationContentControl">
<div class="SitMapNavigationContentTitle">
营养保健</div>
<div class="SitMapNavigationContentData">
美毛护肤
</div>

<div class="SitMapNavigationContentData">
补钙健骨
</div>
<div class="SitMapNavigationContentData">
肠胃调理
</div>
<div class="SitMapNavigationContentData">综合营养</div>


</div>
</div>
<div class="SitMapNavigationContent">
<div class="SitMapNavigationContentControl">
<div class="SitMapNavigationContentTitle">
生活日用</div>
<div class="SitMapNavigationContentData">
狗狗餐具
</div>

<div class="SitMapNavigationContentData">
狗狗住所
</div>
<div class="SitMapNavigationContentData">
排便清洁
</div>
<div class="SitMapNavigationContentData">
服装饰品
</div>
</div>

</div>
<div class="SitMapNavigationContent">
<div class="SitMapNavigationContentControl">
<div class="SitMapNavigationContentTitle">
出行装备</div>
<div class="SitMapNavigationContentData">
航空箱包
</div>

<div class="SitMapNavigationContentData">
索引系列
</div>
<div class="SitMapNavigationContentData">胸背套装</div>
<div class="SitMapNavigationContentData">
项圈狗牌
</div>

</div>
</div>
<div class="SitMapNavigationContent">
<div class="SitMapNavigationContentControl">
<div class="SitMapNavigationContentTitle">狗狗美容</div>
<div class="SitMapNavigationContentData">
洗护香波
</div>

<div class="SitMapNavigationContentData">
梳剪工具
</div>
<div class="SitMapNavigationContentData">洗澡用品</div>
<div class="SitMapNavigationContentData"></div>

</div>
</div>
<div class="SitMapNavigationContent">
<div class="SitMapNavigationContentControl">
<div class="SitMapNavigationContentTitle">
狗狗玩具</div>
<div class="SitMapNavigationContentData">
益智玩具
</div>

<div class="SitMapNavigationContentData">
磨牙玩具
</div>
<div class="SitMapNavigationContentData">训练玩具</div>
<div class="SitMapNavigationContentData">
漏食玩具
</div>

</div>
</div>
</div>
</div><!--SitMapNavigationContent end-->
</div><!--SitMapControl end-->

<div class="ShoppingMall">
<div class="SitMapTitle">服务</div>
<div class="SitMapControl">
<div class="SitMapNavigation">
<div class="SitMapNavigationTitle">
上海
</div>
<div class="SitMapNavigationTitle">
株洲
</div>
<div class="SitMapNavigationTitle">
大庆
</div>
<div class="SitMapNavigationTitle">
北京
</div>
<div class="SitMapNavigationTitle">
杭州
</div>
</div><!--SitMapNavigation end-->
<div class="DataControl">
<div class="SitMapNavigationContent">
<div class="SitMapNavigationContentControl">
<div class="SitMapNavigationContentTitle">
全部</div>
<div class="SitMapNavigationContentData">
宝山区
</div>

<div class="SitMapNavigationContentData">
金山区
</div>
<div class="SitMapNavigationContentData">
长宁区
</div>
<div class="SitMapNavigationContentData">
静安区
</div>
<div class="SitMapNavigationContentData"> 青浦区
</div>
<div class="SitMapNavigationContentData"> 崇明区
</div>
<div class="SitMapNavigationContentData">
卢湾区</div>
<div class="SitMapNavigationContentData"> 松江区
</div>
<div class="SitMapNavigationContentData">
奉贤区
</div>
<div class="SitMapNavigationContentData">
浦东新区</div>
<div class="SitMapNavigationContentData">
普陀区
</div>
</div><!--SitMapNavigationContentControl end-->
</div>
<div class="SitMapNavigationContent">
<div class="SitMapNavigationContentControl">
<div class="SitMapNavigationContentTitle">
闸北区</div>
<div class="SitMapNavigationContentData">金山区</div>

<div class="SitMapNavigationContentData">
黄埔区
</div>
<div class="SitMapNavigationContentData">闵行区</div>
<div class="SitMapNavigationContentData">
徐汇区
</div>
<div class="SitMapNavigationContentData"> 嘉定区
</div>
</div><!--SitMapNavigationContentControl end-->
</div>
</div>
</div><!--SitMapNavigationContent end-->
</div><!--SitMapControl end-->
<div class="ShoppingMall">
<div class="SitMapTitle">论坛</div>
<div class="SitMapControl">
<div class="SitMapNavigation">
<div class="SitMapNavigationTitle">
狗狗论坛
</div>
<div class="SitMapNavigationTitle">
猫咪论坛
</div>
<div class="SitMapNavigationTitle">
小宠论坛</div>
<div class="SitMapNavigationTitle">
各地论坛
</div>
<div class="SitMapNavigationTitle">
专业版块</div>
<div class="SitMapNavigationTitle"> 休闲娱乐</div>
<div class="SitMapNavigationTitle"> 综合版块</div>
</div><!--SitMapNavigation end-->
<div class="DataControl">
<div class="SitMapNavigationContent">
<div class="SitMapNavigationContentControl">
<div class="SitMapNavigationContentTitle">金毛</div>
<div class="SitMapNavigationContentData">
苏牡
</div>

<div class="SitMapNavigationContentData">贵宾</div>
<div class="SitMapNavigationContentData">
比熊
</div>
<div class="SitMapNavigationContentData">
西施
</div>


</div><!--SitMapNavigationContentControl end-->
</div>
</div>
</div><!--SitMapNavigationContent end-->
</div><!--SitMapControl end-->

</div><!--WACControrContent_end-->
</div><!--WACControl end-->
</div><!--Web_About_Content end-->
</div>
</div><!--Web_About end-->
</body>
</html>


