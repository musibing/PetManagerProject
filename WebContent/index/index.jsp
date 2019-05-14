<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">


<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/Version1/Bottom.css">
<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/Version1/Logo.css">
<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/Version1/Navigation.css">
<link type="text/css" rel="stylesheet" href="../CssLibraries/Public/Version1/Top.css">
<link type="text/css" rel="stylesheet" href="index.css">
<title>宠物之家官方网站</title>
<script src="../jquery/jquery-1.7.2.js"></script>
<script>
function load(){
	  
	
	}
	
	$(function() {
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
		$("#searchText").change(function(){
			
		
			var searchTextValue=$("#searchText").val();
			
			$("#searchTager").attr("href","../searchProductBuyList.action?searchTextValue="+searchTextValue)
			
			
		/* 	$.ajax({
										url : "..//searchProductBuyList.action",
										data : {
											
											"searchTextValue" : searchTextValue,
									
										},
										scriptCharset : 'utf-8',
										contentType : "application/x-www-form-urlencoded; charset=utf-8",
										type : "post",
								
										traditional : true,
										success : function(str) {
											
											
											}
				
				
				}) */
			
			
				
			
			
			
			
			
			
			})
		
	})
	
</script>
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
						<a href="#" id="searchTager"><button id="searchButton" >搜索</button></a>
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
		<div id="Man">
			
			<div id="MIMG">
				
			

			<div id="ManListControl">
				<div class="manlist">
               
                <div class="ShopMallICO">
					
                        </div><p>宠物商城</p>
				</div>
				<div class="manlist">
                <div class="PetService">
					</div><p>宠物服务</p>
				</div>
				<div class="manlist">
					<div class="luntan">
                        </div><p>宠物论坛</p>
				</div>
				<div class="manlist">
                <div class="baike">
					
                        </div><p>宠物百科</p>
				</div>
			</div>
            </div>
		</div>

		<div id="adviertisementControl">
			<div id="adviertisementDiv">
				<div class="adviertisementClass">
					<div class="adviertisementText">
						给朋友更好的
						<p class="adviertisementName">素力高</p>
					</div>
					<div class="adviertisementIMG">
						<img src="../img/adviertisement/adviertisement1.jpg" width="100"
							height="100" alt="" />
					</div>
				</div>
				<div class="adviertisementClass">

					<div class="adviertisementText">
						轻松驱虫
						<p class="adviertisementName">福来恩驱虫</p>
					</div>
					<div class="adviertisementIMG">
						<img src="../img/adviertisement/adviertisement2.jpg" width="100"
							height="100" alt="" />
					</div>
				</div>
				<div class="adviertisementClass">
					<div class="adviertisementText">
						告别毛球君
						<p class="adviertisementName">化毛没烦恼</p>
					</div>
					<div class="adviertisementIMG">
						<img src="../img/adviertisement/adviertisement3.jpg" width="100"
							height="100" alt="" />
					</div>
				</div>
				<div class="adviertisementClass">
					<dl>
						<dt id="adviertisementListTeleter">站内公告</dt>
						<dd>.宠物之家官方QQ群:172615461</dd>
						<dt>.宠物之家宠物查询系统让你更了解宠物</dt>

					</dl>
				</div>


			</div>
		</div>
		<div id="AnimalDataViewControl">
		<c:forEach var="x" items="${requestScope.Animal}">
        <div class="AnimalDataView">
			<c:if test="${x eq 'Dog'}">

				<c:set var="ClassificationTitletest" scope="session" value="狗狗"></c:set>

				
			</c:if>

			<c:if test="${x eq 'Cat'}">
				<c:set var="ClassificationTitletest" scope="session" value="猫咪"></c:set>

				
			</c:if>
			<c:if test="${x eq 'Aquarium'}">
				<c:set var="ClassificationTitletest" scope="session" value="小宠"></c:set>
				
			</c:if>
			<c:if test="${x eq 'Crawler'}">
            <c:set var="ClassificationTitletest" scope="session" value="爬虫"></c:set>
            
            </c:if>

			<div id="${x}" class="ClassificationControl">

				<div class="ClassificationTitle">
					<div class="ClassificationLogoImg">
						
					</div>
					 <c:out value="${ClassificationTitletest}"></c:out>
				</div>
				
				<div class="ClassificationCenterControl">

					<div class="ClassificationCenterIMGControl">
						<div class="ClassificationCenterIMG"><img src="../img/${x}/center/Center.jpg" width="360" height="360" alt=""/></div>
					</div>
					<div class="ClassificationLeftControl">
						<div class="ClassificationUseringControl">
							<div class="ClassificationUseringTitle">用品</div>
							<div class="ClassificationUsering">
								<img src="../img/${x}/UseringP/UseringP1.jpg"
									width="160" height="120" alt="" />
								<div class="ProductName">摩福狗粮</div>
								<div class="ProductDescribe">搭配均衡&nbsp;调理肠胃</div>


							</div>
							<div class="ClassificationUsering">
								<img src="../img/${x}/UseringP/UseringP2.jpg"
									width="160" height="120" alt="" />
								<div class="ProductName">皇冠狗粮</div>
								<div class="ProductDescribe">精准营养&nbsp;量身定制</div>
							</div>
							<div class="ClassificationUsering">
								<img src="../img/${x}/UseringP/UseringP3.jpg"
									width="160" height="120" alt="" />
								<div class="ProductName">宝路狗粮</div>
								<div class="ProductDescribe">一切只为爱宠</div>
							</div>

							<div id="BorderClean" class="ClassificationUsering">
								<img src="../img/${x}/UseringP/UseringP4.jpg"
									width="160" height="120" alt="" />
								<div class="ProductName"><a href="../ViewProductForBranName?BranName=冠能">冠能狗粮</a></div>
								<div class="ProductDescribe">专注营养&nbsp;全面保护</div>
							</div>
						</div>
						<div class="ClassificationServiceControl bordertopanbuttom">
							<div class="ClassificationServiceTitle">服务</div>
							<div class="ClassificationServiceContent">
								<div class="ClassificationServiceClass">
									<div class="ClassificationServiceImg">
										<div class="DSIMGSRC">
											<img src="../img/${x}/Service/Service1.jpg"
												width="90" height="90" alt="" />
										</div>
									</div>
									<div class="ClassificationServiceClassTitle">洗护</div>
									<div class="ClassificationServiceText">专业洗护,让你的受宠更加洁净可爱</div>
								</div>
								<div class="ClassificationServiceClass borderleftandright">
									<div class="ClassificationServiceImg">
										<div class="CSISRC">
											<img src="../img/${x}/Service/Service2.jpg"
												width="90" height="90" alt="" />
										</div>
									</div>
									<div class="ClassificationServiceClassTitle">造型</div>
									<div class="ClassificationServiceText">精致造型,让你的受宠焕发迷人光彩</div>
								</div>
								<div class="ClassificationServiceClass">
									<div class="ClassificationServiceImg">
										<div class="CSISRC">
											<img src="../img/${x}/Service/Service3.jpg"
												width="90" height="90" alt="" />
										</div>
									</div>
									<div class="ClassificationServiceClassTitle">寄养</div>
									<div class="ClassificationServiceText">假日狗狗去哪儿,宠物服务来帮您</div>
								</div>

							</div>
						</div>
					</div>
				</div>
				<div class="ClassificationBottomControl">
					<div class="ClassificationForumControl">
						<div class="ClassificationForumTitle">论坛</div>
						<div class="ClassificationForumContent">
							<div class="ClassificationForumContentControl">
								<div class="ClassificationForumImg">
									<img
										src="../img/${x}/Forum/ForumContent1.jpg"
										width="80" height="60" alt="" />
								</div>

								<div class="ClassificationForumTextControl">
									<div class="ClassificationForumTextTitle">这只比特有点萌，看见好吃的就变这样</div>
									<div class="ClassificationForumTextContent">美国比特犬作为世界第一猛犬，长相凶狠，攻击力强...</div>

								</div>


							</div>
							<div class="ClassificationForumContentControl">
								<div class="ClassificationForumImg">
									<img
										src="../img/${x}/Forum/ForumContent2.jpg"
										width="60" height="60" alt="" />
								</div>

								<div class="ClassificationForumTextControl">
									<div class="ClassificationForumTextTitle">二哈秀起恩爱来，我都没眼看了...</div>
									<div class="ClassificationForumTextContent">哈士奇是狗界知名网红，是拆迁队队长、撒手没、二货、“</div>

								</div>


							</div>
						</div>
					</div>
					<div id="ClassificationEncyclopediaControl">
						<div class="EncyclopediaTitle">百科</div>
						<div class="EncyclopediaContentControl">
							<div class="EncyclopediaContentTitle">柯基容易长胖怎么办？</div>
							<div class="EncyclopediaContentText">
								喜欢柯基实在有太多理由了，小短腿，萌；大屁股，萌；有笑眼，萌；实在有太多的理由去养一只柯基犬了。</div>
						</div>
						<div class="EncyclopediaContentImgControl">
							<div class="EncyclopediaContentImg">
								<img src="../img/${x}/Encyclopedia/Encyclopedia1.jpg"
									width="189" height="140" alt="" />
							</div>
						</div>
					</div>

					<div class="VarietiesControl">
						<div class="VarietiesImg">
							<img
								src="../img/${x}/Varieties/Varieties.jpg"
								width="161" height="130" alt="" />
						</div>
						<div class="VarietiesTitle">品种大全</div>
						<div class="VarietiesContent">的籍贯、体形、寿命...</div>
					</div>
				</div>
			</div>
            </div>
			<!--分类结束-->
		</c:forEach>
        </div>
	</div>
	
    <!--bottomControl Start-->
<div id="bottomControl">
		<div id="bottomCenterControl">
			<div class="bottomLink"><a  name="AboutUS" class="GetHtmlData" onclick="getTageName(this)">关于我们</a></div>
			<div class="bottomLink"><a name="Link" class="GetHtmlData" onclick="getTageName(this)">友情链接</a></div>
			<div class="bottomLink"><a name="Complaints" class="GetHtmlData" onclick="getTageName(this)">诚聘英才</a></div>
			<div class="bottomLink"><a name="ContactUS" class="GetHtmlData" onclick="getTageName(this)">联系我们</a></div>
			<div class="bottomLink"><a name="sietmap" class="GetHtmlData" onclick="getTageName(this)">网站地图</a></div>
			<div class="bottomLink"><a name="Complaints" class="GetHtmlData" onclick="getTageName(this)">意见反馈</a></div>
			<div class="bottomLink"><a name="Complaints" class="GetHtmlData" onclick="getTageName(this)">帮助中心</a></div>
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
<!--bottomControl end-->
    
    
</body>
<script>
/* var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?b8c358b26d18dee09914931b71cac447";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})(); */
</script>
</html>