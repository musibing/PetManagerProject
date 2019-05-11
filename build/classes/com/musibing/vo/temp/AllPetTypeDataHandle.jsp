<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>网络爬虫后台数据处理系统Ver1.00.04.11</title>
<link rel="stylesheet" type="text/css" href="http://a.boqiicdn.com/Css/public/public_toolbar_baike.css?v=1481794036">

<link rel="stylesheet" type="text/css" href="data.css">
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
		$("#getUrlSrc").click(function() {
							var InputUrlPaht = $("#conent_URL_text").val();

							$.ajax({
										url : "..//GetAllPetInfoForUrl.action",
										data : {
											"InputUrlPaht" : InputUrlPaht,
											"StartPosition":"<!--主题内容开始-->",
											"EndPosition":"<!--主题内容结束-->",
										},
										scriptCharset : 'utf-8',
										contentType : "application/x-www-form-urlencoded; charset=utf-8",
										type : "post",
										success : function(str) {
											var DIVdata = $("#conent_URLSrc");
											DIVdata.text("");
											DIVdata.append(str);
											document.getElementById("savePetTypeData").click();
										}

									})
							
						})
		$("#getMaxNumerButton").click(function() {
			var $pages = $("#page").find("a");
			MaxLength = $pages.length;
			alert($pages.eq(MaxLength - 2).text());
		})
		$("#getAllPetName").click(function() {

			var $PetData = $(".hot_pet_cont").find("dl").find("dd");

			MaxLength = $PetData.length;
			alert(MaxLength);
			for (var i = 0; i < MaxLength; i++) {
				alert("得到的宠物性名为：" + $PetData.eq(i).text());
			}

		})
		$("#getAllPetImger").click(function() {

			var $PetData = $(".hot_pet_cont").find("dl").find("img");

			MaxLength = $PetData.length;
			alert(MaxLength);

			alert("得到的宠物性名为：" + $PetData.eq(2).attr("src"));
		})
		$("#getAllPetPInfo").click(function() {
			var $AllPetInfo = $(".bornone").find("dd").find("a");
			alert($AllPetInfo.eq(1).text);

		})
		$("#getDataAnalysis").click(function() {
			var $pages = $("#page").find("a");
			MaxLength = $pages.length;
			var data = $pages.eq(MaxLength - 2).text();
			$("#MaxNumber").text("得到的网页分页最大值是：" + data);
		})
		$("#savePetTypeData").click(
						function() {
							var $pages = $("#page").find("a");
							var InputUrlPath = $("#conent_URL_text").val();

							var MaxPagesLength = $pages.length;
							var MaxPage = $pages.eq(MaxPagesLength - 2).text();
							$("#MaxNumber").text("得到的网页分页最大值是：" + MaxPage);

							var $PetDataName = $(".hot_pet_cont").find("dl").find("dd");

							var $PetImgData = $(".hot_pet_cont").find("dl").find("img");
							var MaxPetLength = $PetDataName.length;

							var NameData = [];
							var IMGData = [];
							
							for (var i = 0; i < MaxPetLength; i++) {
								NameData[i] = $PetDataName.eq(i).text();
								IMGData[i] = $PetImgData.eq(i).attr("src");

							}
							var $pages = $("#page").find("a");
							MaxLength = $pages.length;
							var Pagedata = $pages.eq(MaxLength - 2).text();
							
							var thisPage = 1;
							$.ajax({
										url : "..//saveAllPetTypeInfoToDB.action",
										data : {
											"IMGData" : IMGData,
											"NameData" : NameData,
											"InputUrlPaht" : InputUrlPath,
											"maxPage" : Pagedata,
											"ThisPage" : thisPage,
										},
										scriptCharset : 'utf-8',
										contentType : "application/x-www-form-urlencoded; charset=utf-8",
										type : "post",
										dataType : "json",
										traditional : true,
										success : function(str, textStatus) {

											if (str.statusTotal = "OK") {

												var $InputUrlPath = $("#conent_URL_text");

												var inputdata = $InputUrlPath[0];

												inputdata.value = str.page;
												/* inputdata=inputdata.split("");
												inputdata.splice(1,2,"da");
												 console.log(inputdata);
												inputdata.join('');
												var UrlVaule=document.getElementById("conent_URL_text").value; */
												
												document.getElementById("getUrlSrc").click();

											} else {

											}
										}

									})

						})

		$("#reSult").click(function() {

							var ResultTest = "";

							$.ajax({
										url : "..//JSONTest.action",
										data : {
											"IMGData" : "a",
											"NameData" : "b",
											
										},
										scriptCharset : 'utf-8',
										contentType : "application/x-www-form-urlencoded;charset=utf-8",
										dataType : "json",
										type : "post",
										traditional : true,/* 传数组进后台需要设置该属性 */
										success : function(str, textStatus) {

											if (str.statusTotal = "OK") {

												var InputUrlPath = $("#conent_URL_text").val();
												InputUrlPath.value=str.page;
											/* document.getElementById("getUrlSrc").click(); */
										  /* $("#test").trigger("click"); */ 
											} else {
												alert("程序出错请检查设置！");

											}

										}

									})
							alert("Result的值是：" + ResultTest);

						})

	})
</script>
<link type="text/css" rel="stylesheet" href="PetAllDataHandle.css">
</head>
<body>
	<div id="conent_control">

		<s:textarea value="待提交的URL路径" id="conent_URL_text" name="UrlPath"></s:textarea>
		
		<div id="getData">
        <div id="getDataButton">
        <input id="getUrlSrc" value="获致源代码" type="button"></input>
			<input id="getMaxNumerButton" value="获取当前分类的最大值" type="button"></input>
			<input id="getAllPetName" value="攻取当前页面所有宠物的性名" type="button"></input>
			<input id="getAllPetImger" value="攻取当前页面所有宠物的图片路径" type="button"></input>
			<input id="getAllPetPInfo" value="攻取当前页面所有宠物的品种信息" type="button"></input>
			<input id="getDataAnalysis" value="数据分析" type="button"></input>
			<!-- 数据分析 -->
			<input id="savePetTypeData" value="保存数据" type="button"></input> <input
				id="reSult" value="返回值测试" type="button" /><br>
                请你要爬取的分类的英文名称的内容:<br>
                <input id="" class="ClassificationBottom" type="text"> 
                <input id="" class="ClassificationBottom" type="text">			                 <input id="" class="ClassificationBottom" type="text">
                 <input id="" class="ClassificationBottom" type="text"> 
                <input id="" class="ClassificationBottom" type="text">	                  <input id="" class="ClassificationBottom" type="text">
        </div>
		<div id="Detailed_data"><!-- 详细数据统计 -->
		
        
        </div>
		</div>
		<div id="DataAnalysisResult">
			

		</div>
		<div id="conent_URLSrc">
			
		</div>

	</div>
</body>
</html>