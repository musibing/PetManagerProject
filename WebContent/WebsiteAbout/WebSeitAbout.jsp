<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<script src="../jquery/jquery-1.7.2.js"></script>
<script>
/* $(function(){
	$(".GetHtmlData").click(
	
	
	
}) */

function getTageName(obj){
alert(1234);
		//下面这种方式用来检测到底是哪个空间触发的事件的工具
  alert(window.event.srcElement.name);
$.ajax({
		url:"../petKongjian/GetHtmlData.action",
		type:"post",
		data:{"FileName":window.event.srcElement.name},
		success:function(str){
		var divdata=$("#WACControl");
		divdata.text("");
		divdata.append(str);
		} 
})

	}
</script>
<head>
<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/Version1/Bottom.css">
<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/Version2/Logo.css">
<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/Version2/Navigation.css">
<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/Version2/Top.css">
<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/WebsiteAbout/public.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>关于网站</title>

<style>

*{
margin: 0px;
}
.vf{
height:1404px;
width:100%;
overflow:auto;
}
</style>

</head>
<body>
<div id="top">
<div id="topControl">
		
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
		<div id="topright"></div>
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
					<button id="searchButton" value="search">搜索</button>
				</div>
			</div>
			<div id="PetHomeAPP">
				<img src="../img/BaiKe/Search/GangGao.jpg" id="SearchIMG"
					width="210" height="60">
			</div>
			</div>
		</div>
      <div id="Navigation">
        <div id="NavigationControl">
			
			<div class="Navigation2">首页</div>
			<div class="Navigation2">犬类</div>
			<div class="Navigation2">猫类</div>
			<div class="Navigation2">爬虫类</div>
			<div class="Navigation2">飞禽类</div>
			<div class="Navigation4">宠物服务</div>
			<div class="Navigation4">宠物商城</div>
			<div id="NavigationKongCenter"></div>
			<div id="" class="Navigation4">宠物之家APP</div>
		</div>
		</div>
<div id="Web_About">

<div id="Web_About_Control">
<div id="Web_About_List">
<div class="List">
<a href="#" name="AboutUS" class="GetHtmlData" onclick="getTageName(this)">关于我们</a>
</div>
<div class="List">
<a href="#" name="ContactUS" class="GetHtmlData" onclick="getTageName(this)">联系我们</a>
</div>
<div class="List">
<a href="javascript:void(0)" name="sietmap" class="GetHtmlData" onclick="getTageName(this)">网站地图</a>
</div>
<div class="List">
<a href="javascript:void(0)" name="Link" class="GetHtmlData" onclick="getTageName(this)">友情链接</a>
</div>
<div class="List">
<a href="javascript:void(0)" name="Complaints" class="GetHtmlData" onclick="getTageName(this)">意见反馈</a>
</div>
<div class="List">

<a href="javascript:void(0)" name="Complaints" class="GetHtmlData" onclick="getTageName(this)">帮助中心</a>
</div>
<div class="List">
<a href="javascript:void(0)" name="Complaints" class="GetHtmlData" onclick="getTageName(this)">招聘中心</a>
</div>
</div><!--Web_About_List end-->
<div id="Web_About_Content">
<div id="WACControl">

</div><!--#-->


<!--WACControl end-->
</div><!--Web_About_Content end-->
</div>
</div><!--Web_About end-->
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
