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
function load(){
	/*用户收藏开始*/
	var AccountcollectStatus=$("#AccountCollect").text();
	
	if(AccountcollectStatus.trim()=="OK"){
		$("#AccountCollect").css("background-position" ,"-220px -3px");
		
	}else{
			$("#AccountCollect").css("background-position" ,"-199px -1px");
			}
	$("#AccountCollect").text("");
	/*用户收藏结束*/	
	var PetDescribeInfoData=$("#PetDescribeInfo").text();

	$("#PetDescribeInfo").html(PetDescribeInfoData);
    var AppearanceTextData=$("#AppearanceText").text();
$("#AppearanceText").html(AppearanceTextData); 
	
		
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet" href="index.css">
<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/Version1/Top.css">
<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/Version1/Logo.css">
<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/Version1/Navigation.css">
<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/Version1/Bottom.css">
<link type="text/css" rel="stylesheet" href="PetInfo.css">
<link rel="stylesheet" type="text/css" href="PetBaiKeDataView.css" />
<title>宠物情报系统</title>
<%
	String[] AnimalClassification = { "Dog", "Cat", "Aquarium",
			"Crawler" };
	request.setAttribute("Animal", AnimalClassification);
%>
</head>
<body onload="load()">
	<!--top Start-->
	<div id="top">
		<div id="topContorl">

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

		</div>
	</div>
	<!--top End-->
	<div id="center">
   <!--top End-->
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
					<input id="searchButton" type="button" value="搜索"/>
                    				
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
	<!--Navigation End--><!--End-->
      <s:iterator value="#session.PetInfo" var="VarData">
        <div id="DataControl">
        <div id="BaiKeNavigation">首页><a href="../ViewAllPetInfo">宠物大全</a>>狗狗分类搜索</div>
        	<div id="PetNameTitle">
			<div id="PetNameControl"><s:property value='#VarData.petcnName'></s:property></div>
			<div id="PetNameRightControl"></div>
           
            <div id="CollectControl">
            <div id="AccountCollect">
            <s:property value='#session.AccountcollectStatus.collectSataus'></s:property>
            </div>
            收藏
            </div>
            
		</div>
       
	
        <div id="EssentialInformation">
    	<div id="InformationControl">
        <dl class="Title">
        基本信息
        </dl>
        <dl>
        <dt>
        英文名：
        </dt>
        <dd>
       <s:property value='#VarData.petenName'></s:property>
        </dd>
        </dl>
          <dl>
        <dt>
        性　格：
        </dt>
        <dd>
        <s:property value='#VarData.disposition'></s:property>
        </dd>
        </dl>
          <dl>
        <dt>
         祖　籍：
        </dt>
        <dd>
        <s:property value='#VarData.ancestralHome'></s:property>
        </dd>
          </dl>
          <dl>
            <dt>
            易患病:
        </dt>
        <dd>
        <s:property value='#VarData.easeOfDisease'></s:property>
        </dd>
      </dl>
          <dl>
        <dt>
        寿　命：
        </dt>
        <dd>
        <s:property value='#VarData.lifeAge'></s:property>
        </dd>
        </dl>
          <dl>
        <dt>
        价　格:
        </dt>
        <dd>
        <s:property value='#VarData.price'></s:property>
        </dd>
        </dl>
        
        
        </div>
        <div id="PetExhibitionIMG">
        <img src="<s:property value='#VarData.exhibitionIMG'></s:property>" class="PetExhibitionIMGSon">
        </div>
        <div id="PetExhibitionTitle">
        相册 （6张图片）
        </div>
        </div>
        <div id="PetInfoControl">
        	<div class="PetBaiKeTitle">
				<div class="PetBaiKeKong"></div>
				<div class="PetBaiKeName">品种简介</div>
				<div class="PetBaiKeHRDIV">
					<hr class="PetBaiKeHR">
				</div>
			</div>
		<div id="PetDescribeInfo">
			<s:property value='#VarData.briefIntroduction'></s:property>
		</div>
		<%-- <div id="PetDescribeInfoList">
			<div class="PetDescribeInfoList">
				<div class="PetDescribeInfoListSP">中文学名</div>
				<div class="PetDescribeInfoListSPText">
                <s:property value='#VarData.petcnName'></s:property></div>
			</div>
			<div class="PetDescribeInfoList">
				<div class="PetDescribeInfoListSP">亚    科</div>
				<div class="PetDescribeInfoListSPText">
				<s:property value='#VarData.subfamily'></s:property></div>
			</div>
			<div class="PetDescribeInfoList">
				<div class="PetDescribeInfoListSP">别    称</div>
				<div class="PetDescribeInfoListSPText">
                <s:property value='#VarData.dontsaid'></s:property></div>
			</div>
			<div class="PetDescribeInfoList">
				<div class="PetDescribeInfoListSP">属</div>
				<div class="PetDescribeInfoListSPText">
                <s:property value='#VarData.genus'></s:property></div>
			</div>
			<div class="PetDescribeInfoList">
				<div class="PetDescribeInfoListSP">界</div>
				<div class="PetDescribeInfoListSPText">
                <s:property value='#VarData.circles'></s:property></div>
			</div>
			<div class="PetDescribeInfoList">
				<div class="PetDescribeInfoListSP">种</div>
				<div class="PetDescribeInfoListSPText">
                <s:property value='#VarData.species'></s:property></div>
			</div>
			<div class="PetDescribeInfoList">
				<div class="PetDescribeInfoListSP">门</div>
				<div class="PetDescribeInfoListSPText">
                <s:property value='#VarData.door'></s:property></div>
			</div>
			<div class="PetDescribeInfoList">
				<div class="PetDescribeInfoListSP">亚    种</div>
				<div class="PetDescribeInfoListSPText">
                <s:property value='#VarData.subSpecies'></s:property></div>
			</div>
			<div class="PetDescribeInfoList">
				<div class="PetDescribeInfoListSP">亚    门</div>
				<div class="PetDescribeInfoListSPText">
                <s:property value='#VarData.subdoor'></s:property></div>
			</div>
			<div class="PetDescribeInfoList">
				<div class="PetDescribeInfoListSP">分布区域</div>
				<div class="PetDescribeInfoListSPText">泰国</div>
			</div>
			<div class="PetDescribeInfoList">
				<div class="PetDescribeInfoListSP">纲</div>
				<div class="PetDescribeInfoListSPText">
                <s:property value='#VarData.gang'></s:property></div>
			</div>
			<div class="PetDescribeInfoList">
				<div class="PetDescribeInfoListSP">英文名</div>
				<div class="PetDescribeInfoListSPText">
                <s:property value='#VarData.petenName'></s:property></div>
			</div>
		  <div class="PetDescribeInfoList">
				<div class="PetDescribeInfoListSP">亚 纲</div>
				<div class="PetDescribeInfoListSPText">
					<div class="PetDescribeInfoListSPText">
                    <s:property value='#VarData.subang'></s:property>
				</div>
			</div>

			
			<div class="PetDescribeInfoList">
				<div class="PetDescribeInfoListSP">目</div>
				<div class="PetDescribeInfoListSPText">
                <s:property value='#VarData.item'></s:property></div>
			</div>
			<div class="PetDescribeInfoList">
			  <div class="PetDescribeInfoListSP">亚 目</div>
				<div class="PetDescribeInfoListSPText">
                <s:property value='#VarData.subOrder'></s:property></div>
			</div>
			

			<div class="PetDescribeInfoList">
				<div class="PetDescribeInfoListSP">科</div>
				<div class="PetDescribeInfoListSPText">
				<s:property value='#VarData.section'></s:property>
				</div>
			</div>
		  </div>
		
		
</div><!-- ver ends--> --%>
<div id="PetInfoNavigation">
			<div id="PetInfoNavigationContents">
				<div id="PetInfoNavigationContentsSpan">目录</div>
			</div>
			<ol type="1">
				<div id="PetInfoNavigationClassControl">
					<div class="PetInfoNavigationClass">

						<li>形态特征
						  <ul>
								<li type="square">总体外貌</li>
							</ul>
							<ul>
								<li type="square">部位详情</li>
							</ul>
						</li>


						<div class="PetInfoNavigationSonClass">
							<li>
							  性格特点
							</li>
						</div>
						<div class="PetInfoNavigationSonClass">
							<li>
							  养护知识
							</li>
						</div>
					</div>
					<div id="PetInfoNavigationClassBorder">
						<div class="PetInfoNavigationSonClass">
							<li>喂食要点</li>
						</div>
						
					</div>
					<div class="PetInfoNavigationClass">



						

					</div>
				</div>
				<!--END-->
			</ol>
		</div>
<div id="PetAppearance">
			<div class="PetBaiKeTitle">
				<div class="PetBaiKeKong"></div>
				<div class="PetBaiKeName">外形特征</div>
				<div class="PetBaiKeHRDIV">
					<hr class="PetBaiKeHR">
				</div>
			</div>
			<div id="AppearanceText">
<s:property value='#VarData.morphologicalCharacter'></s:property>
	
			</div>
		</div>
	</div>
        
        
        
        <!--DataControl End-->
       
        
        
		</div>

 </s:iterator>
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

</body>
</html>