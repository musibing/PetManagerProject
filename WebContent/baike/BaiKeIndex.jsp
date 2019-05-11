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
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet" href="index.css">
<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/Version1/Top.css">
<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/Version1/Logo.css">
<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/Version1/Navigation.css">
<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/Version1/Bottom.css">
<title>宠物情报系统</title>
<%
	String[] AnimalClassification = { "Dog", "Cat", "Aquarium",
			"Crawler" };
	request.setAttribute("Animal", AnimalClassification);
%>
</head>
<body>
	<!--top Start-->
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
	<!--Navigation End-->
		<div id="Content">

			<div id="MIMG">
				<img src="../img/BaiKe/Center/Show/Show.jpg" width="880"
					height="350">
			</div>

			<div id="ManListControl">
				<div class="manlist">
					<div class="ManListIMGClass">
						<img src="../img/BaiKe/Center/CenterCat.png" width="72"
							height="72">
					</div>
				<a href="Search.jsp">宠物大全 </a></div>
				<div class="manlist">
					<div class="ManListIMGClass">
						<img src="../img/BaiKe/Center/CentDog.png" width="72" height="72">
					</div>
					宠物饲养
				</div>
				<div class="manlist">
					<div class="ManListIMGClass">
						<img src="../img/BaiKe/Center/CenterTraing.png" width="72"
							height="72">
					</div>
					宠物训练
				</div>
				<div class="manlist">
					<div class="ManListIMGClass">
						<img src="../img/BaiKe/Center/CenterDoctor.png" width="72"
							height="72">
					</div>
					宠物医疗
				</div>
			</div>
		</div>

		
		<!--End-->
        <div id="DataControl">
		<div id="HotPet">
			<div id="HotPetTitle">
				<div id="HotPetTitleText">热门宠物</div>
				<div id="HotPetTitleMore"><a href="../ViewAllPetInfo">更多</a></div>
			</div>
			<div id="HotPetBody">
              <s:iterator value="#session.PetDatali" var="PetDatali">

				<div class="HotPetControlClass">
					<div class="HotPetControlClassIMGControl">
                   
					  <img src="<s:property value='#PetDatali.exhibitionIMG'></s:property>"
							class="HotPetControlClassIMG">
					</div>
					<div class="HotPetControlClassText"><a href="../selectPetForID?PetID=<s:property value='#PetDatali.petID'></s:property>"><s:property value='#PetDatali.petcnName'></s:property></a></div>
				</div>
                </s:iterator>
			</div>
		</div>
		<div class="BaiKeControl">
			<div class="BaiKeControlTitle">
				<div class="BaiKeControlTitleIMG"><img src="../img/BaiKe/BaiKe/Title/CatIMG.png" width="40" height="40"></div><div class="BaiKeControlTitleText">狗狗百科</div>
                <div class="BaiKeControlTitleKong"></div>
				<div class="BaikeControlList">
					<div class="BaikeControlListClass">狗狗饲养</div>
					<div id="BaikeControlListClassTraing" class="BaikeControlListClass">狗狗训练</div>
					<div class="BaikeControlListClass">狗狗医疗</div>
				</div>
			</div>
              
			<div class="BaikeControlBody">
				<div class="BaikeLogoControl">
					<div class="BaikeControlIMG">
						<img src="../img/BaiKe/Logo/Logo.jpg" width="290" height="220">
					</div>
					<div class="BaikeControlIMGDis">
						为狗狗做好驱虫工作不只是为了防止某些寄生虫对我们的健康造成影响，更主要的是因为寄生虫对于狗狗的危害来的更大，而且寄生虫不</div>
				</div>
				<div class="BaikeIMGControl">
                 <s:iterator value="#session.AllArticleInfo" var="lidata">
					<div class="BaikeIMGClassControl">
						<div class="BaikeIMGClass">
							<img src="<s:property value='#lidata.articleIMG'></s:property>" width="90" height="66">
						</div>
						<div class="BaikeIMGClassText"><a href="../viewArticleForID?ArticleID=<s:property value='#lidata.articleID'></s:property>"><s:property value='#lidata.articleName'></s:property></a></div>
					</div>
                    
                     </s:iterator>
				</div>
              <div class="InterlocutionControl">
                <s:iterator value="#session.AllQuestion" var="Questionli">
                <div class="InterlocutionControlTitle">
                <div class="InterlocutionControlTitleIMGDIV">
                <img src="../img/WebINCO/Que.png" class="InterlocutionControlTitleIMG"></div> <div class="InterlocutionControlTitleText"><a href="../viewArticleForID?ArticleID=<s:property value='#Questionli.articleID'></s:property>"><s:property value='#Questionli.articleName'></s:property></a></div></div>
                  </s:iterator>
              </div>
                </div><!-- end -->
               
                
			</div>
            </div>
		</div>


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