<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@page import="com.musibing.vo.AccountCollect"%> --%>
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
	})
	function load(){
		$("#AccountLove").css("background-position" ,"-147px 1px");
	/* 	AccountCollect accountcollect=(AccountCollect)session.getAttribute("AccountcollectStatus");
		 var AccountcollectStatus=accountcollect.getCollectSataus();
 var AccountcollectStatus=${sessionScope.AccountcollectStatus.collectSataus}; 
														
	 alert(AccountcollectStatus);  */
	 
	/*用户收藏开始*/
	var AccountcollectStatus=$("#AccountCollect").text();
	
	if(AccountcollectStatus.trim()=="OK"){
		$("#AccountCollect").css("background-position" ,"-245px 1px");
		
	}else{
			$("#AccountCollect").css("background-position" ,"-147px 1px");
			}
	$("#AccountCollect").text("");
	/*用户收藏结束*/
	
	
	var data=$("#article_content").text();
	$("#article_content").text("");
	$("#article_content").append(data);

	
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet" href="Article.css">
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
<body  onload="load()">
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



		<!--End-->
        <s:iterator value="#session.ArticleInfo" var="VarData">
		<div class="BaiKeControl">
			<div id="BaiKeNavigation">首页>宠物饲养>狗狗饲养</div>
            <div class="Left">
            <div class="article_img"><img src="<s:property value='#VarData.articleIMG'></s:property>" class="ac_img">
            <div id="AccountCollect"><s:property value='#session.AccountcollectStatus.collectSataus'></s:property></div></div>
            <div class="article_title">
            <s:property value='#VarData.articleName'></s:property>
            </div>
             <div class="article article_formaccount">
             <div class="article_formaccount_control">
           <img src="<s:property value='#VarData.avo.getAccountIMGPath()'></s:property>"> <span class="accountName">&nbsp;文章来自用户:<s:property value='#VarData.avo.getAccountName()'></s:property></span></div>
            </div>
            <div class="article article_submittime">
            <s:property value='#VarData.submitTime'></s:property>
            </div>
            <div id="article_content">
          <s:property value='#session.ArticleInfo.articleContent'></s:property>
            </div>
            </div>
            
		</div>
        </s:iterator>
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
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?b8c358b26d18dee09914931b71cac447";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();


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
					$("#accontid").html(str);
					$("#ChengWidth").css("width",120);
					
						}
					
			}

			})
	
	}
</script>
</html>