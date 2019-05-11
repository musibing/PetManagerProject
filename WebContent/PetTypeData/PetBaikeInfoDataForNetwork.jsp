<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link type="text/css" rel="stylesheet" href="ProductData.css">
<link rel="stylesheet" href="http://bdimg.share.baidu.com/static/api/css/share_style0_16.css?v=8105b07e.css">
<link href="http://b.boqiicdn.com/webim/static/css/im.css?v=1480387473" rel="stylesheet">
<link href="http://b.boqiicdn.com/v2/css/dialog/jquery.lightbox-0.5.css?v=1481794036" rel="stylesheet">
<link href="http://b.boqiicdn.com/v2/css/common/detail_content.css?v=1481794036" rel="stylesheet" type="text/css">
<link href="http://b.boqiicdn.com/v2/css/shopdetail/detail.css?v=1517899650" rel="stylesheet" type="text/css">
<link href="http://b.boqiicdn.com/v2/css/dialog/default.css?v=1481794036" rel="stylesheet">
<link href="http://b.boqiicdn.com/v2/css/common/common.css?v=1523870678" rel="stylesheet">
<link href="http://b.boqiicdn.com/v2/css/common/common.css?v=1523870678" rel="stylesheet">
<link href="https://bkssl.bdimg.com/static/wiki-lemma/pkg/wiki-lemma_63c8341.css" rel="stylesheet">
<link href="https://bkssl.bdimg.com/static/wiki-lemma/pkg/wiki-lemma-module_ff3edf0.css" rel="stylesheet">
<link href="http://a.boqiicdn.com/Js1/min/?f=/Css/baikenew/common.css,/Css/baikenew/style.css,/Css/baikenew/subList.css" rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>宠物百科数据获取</title>
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
		$("#TraningEntityAttribute").click(function(){
			var TraningEntityNameArrary=[];
			var $AllPetName=$(".hot_pet_cont").find("dl").find("dd").find("a");
			for(var x=0;x<$AllPetName.length;x++){
			TraningEntityNameArrary[x]=$AllPetName.eq(x).text();
			
			
			}
			

			var PetName = $("#lemmaWgt-lemmaTitle-titleID").find("h1")
					.text();/*得到宠物性名*/
			/* var PetDesip=$(".lemma-summary").find("div").text();得到宠物基本描述信息*/
			var PetData = $(".lemma-summary").find("div");/*得到宠物基本描述信息下的所有DIV组*/
			var Petdescription = "";

			for (var i = 0; i < PetData.length; i++) {
				var divdata = $(".lemma-summary").find("div:eq(" + i + ")").text();
				divdata = "<p>" + divdata + "</p>";

				Petdescription += divdata;

			}

			var baseicinfoNameCalss = $(".basic-info-cmn-clearfix").find("dt");

			var baseicinfoNameArray = new Array();

			for (var x = 0; x < baseicinfoNameCalss.length; x++) {
				baseicinfoNameArray.push($(
						".basic-info-cmn-clearfix").find(
						"dt:eq(" + x + ")").text());

			}
			var $catalogforli = $(".catalog-list").find("li[class=level1]").find("span[class=text]");/*在Class为catalog-list-column-4的DIV下面选取Class为Level1的li标签*/
			alert(">>>" + $catalogforli.length);
			for (var j = 0; j < $catalogforli.length; j++) {
				/* alert($(".catalog-list-column-4").find("li[class=level1]").find("span[class=text]:eq("+j+")").text()); */
				/* alert($catalogforli.eq(j).text()); */
			}
			/*获取目录中的属性 */
			alert($("lemma-catalog").length);
		
			/*  $.ajax({
						url:"..//GetPetVOClassInfo.action",
						type:"post",
						data:{"Petdescription":Petdescription,
							"PetName":PetName,
							"baseicinfoNameArray":JSON.stringify(baseicinfoNameArray),
							},
						
						success:function(str){
						
					
							}
							
					 }) 
			 */
			
			
			
			
			})
	function Trim(str){ 
		  return str.replace(/(^\s*)|(\s*$)/g, ""); 
		}
		$("#savePetBaikeInfoData").click(
						function() {
							/*读取百度百科数据 */
							
						/* 	var $AllPetName = $(".hot_pet_cont").find("dl").find("dd").find("a");
							for (var x = 0; x < $AllPetName.length; x++) {
								TraningEntityNameArrary[x] = $AllPetName.eq(x).text();
							} */
							
							var PetName = $(".lemmaWgt-lemmaTitle-title").find("h1").text();/*得到宠物性名*/
							alert("得到的宠物名字是:"+PetName);
							/* var PetDesip=$(".lemma-summary").find("div").text();得到宠物基本描述信息*/
							
							var $briefIntroduction = $(".lemma-summary").find("div");/*得到宠物基本描述信息下的所有DIV组*/
							var baidubaikebriefIntroduction = "";
							
							var divdata ="";
							for (var i = 0; i < $briefIntroduction.length; i++) {
								divdata = $briefIntroduction.eq(i).text();
								
								divdata=Trim(divdata);
							
								divdata = "<p>" + divdata + "</p>";
								baidubaikebriefIntroduction += divdata;
							}
							
							var $baseicinfoNameCalss = $(".basic-info").find("dl").find("dd");
							var baidubaikebaseicinfoData = [];
							var  $EntityNameCalss=$(".basic-info").find("dl").find("dt");;
							var EntityNameArrary = [];
							for (var x = 0; x < $baseicinfoNameCalss.length; x++) {

								baidubaikebaseicinfoData[x] = $baseicinfoNameCalss.eq(x).text();
								EntityNameArrary[x]=$EntityNameCalss.eq(x).text();

							}
							
							var EntityAttribute = [];
							var $catalogforli = $(".catalog-list").find(
									"li[class=level1]").find("span[class=text]");/* 在Class为catalog-list-column-4的DIV下面选取Class为Level1的li标签 */
									
							for (var j = 0; j < $catalogforli.length; j++) {

								EntityAttribute[j] = $catalogforli.eq(j).text();
							}
					/*读取波奇网数据 */
					
					var $boqiijianbriefintroductioninfo=$(".entry_tit_pet").find("dd").find("em");
					var boqiijianbriefintroductioninfoarray=[];
					for (var j = 0; j < $boqiijianbriefintroductioninfo.length; j++) {

						boqiijianbriefintroductioninfoarray[j] = $boqiijianbriefintroductioninfo.eq(j).text();
					}
					var $boqiidetailedattribute=$(".entry_c_l").find(".entry_detail");
				
					var boqiidetailedattributearray=[];
					for (var j = 1; j <= $boqiidetailedattribute.length; j++) {

						boqiidetailedattributearray[j] = $boqiidetailedattribute.eq(j).find("p").eq(1).html();
					}
					
					/*读取宠物图片数据*/
					var PetDisplayIMGPaht=$(".entry_tit_rig").find("img").attr("src");
					var $PetIMGPath=$(".entry_pic_body").find("img");
					
					var PetIMGArray=[];
					for(var x=0;x<$PetIMGPath.length;x++){
						PetIMGArray[x]=$PetIMGPath.eq(x).attr("src");
					}
					alert(PetDisplayIMGPaht);
					PetIMGArray[PetIMGArray.length]=PetDisplayIMGPaht;
					/*读取宠物相关词条*/
					var PetEntryStatisticsAarray=[];
					var $entry=$(".entry_r_body").find("p");
					for(var x=0;x< $entry.length;x++){
						if(x==4){
							PetEntryStatisticsAarray[x]= $entry.find("span").text();
						}else if(x==2||x==3){
							PetEntryStatisticsAarray[x]=$entry.find("a").text();
						}else{
							PetEntryStatisticsAarray[x]=$entry.eq(x).text();
						}
						 
					}

						$.ajax({
						url : "..//GetAllPetData.action",
						data : {
							"baidubaikebriefIntroduction" : baidubaikebriefIntroduction,/*简介*/
							"petcnName" : PetName,
							"baidubaikebaseicinfoData" : baidubaikebaseicinfoData,/*基本信息*/
							"PetIMGArray":PetIMGArray,
							"EntityNameArrary":EntityNameArrary,
							"boqiijianbriefintroductioninfo":boqiijianbriefintroductioninfoarray,
							"boqiidetailedattribute":boqiidetailedattributearray,
							"PetEntryStatisticsAarray":PetEntryStatisticsAarray,
							"PetDisplayIMGPaht":PetDisplayIMGPaht,
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
<script>
$("window").ready(function(e) {
$("#SetCapacitiveNumber").click(function(){
	var CapacitiveNumber=$("#CapacitiveNumber").val();
	
	var CapacitiveData="";
	for(var a=1;a<=CapacitiveNumber;a++){
		CapacitiveData+="<div class='CapacitiveNumberLine'><div class='CapacitiveNumber'><input type='text' class='InputNumber'></div><div class='CapacitiveNumber'><input type='text' class='InputNumber'></div><div class='CapacitiveNumber'><input type='text' class='InputNumber'></div></div>"
		}
		$("#Content").html("");
		$("#Content").append(CapacitiveData);
	
	})
	$("#getBaiduBaikeUrlSrc").click(function(){
		var PetName = $("#lemmaWgt-lemmaTitle-title").find("h1").text();/*得到宠物性名*/
									alert("宠物的名字是："+PetName);
	var StartPosition=$("#BaiduBaikeStartPosition").val();
	var StartPositionOffsetCorrection=$("#BaiduBaikeStartPositionOffsetCorrection").val();
	var EndPosition=$("#BaiduBaikeEndPosition").val();
	var EndPositionOffsetCorrection=$("#BaiduBaikeEndPositionOffsetCorrection").val();
	 var InputUrlPaht=$("#BaiduBaikeInputUrlPaht").val();
	
	$.ajax({
		url : "..//GetAllPetInfoForUrl.action",
		data : {
			"InputUrlPaht":InputUrlPaht,
			"StartPosition" :StartPosition,
			"StartPositionOffsetCorrection" : StartPositionOffsetCorrection,
			"EndPosition":EndPosition,
			"EndPositionOffsetCorrection":EndPositionOffsetCorrection,
		},
			scriptCharset : 'utf-8',
			contentType : "application/x-www-form-urlencoded; charset=utf-8",
		type : "post",
		traditional : true,/* 传数组进后台需要设置该属性 */
		success : function(str) {
			

			$("#BaiduBaikeDataSoure").text("");
			
			$("#BaiduBaikeDataSoure").append(str);
		}

	})

	})
	$("#getBoqiiUrlSrc").click(function(){
	var StartPosition=$("#BoqiiStartPosition").val();
	var StartPositionOffsetCorrection=$("#BoqiiStartPositionOffsetCorrection").val();
	var EndPosition=$("#BoqiiEndPosition").val();
	var EndPositionOffsetCorrection=$("#BoqiiEndPositionOffsetCorrection").val();
	 var InputUrlPaht=$("#BoqiiInputUrlPaht").val();
	alert(123);
	$.ajax({
		url : "..//GetAllPetInfoForUrl.action",
		data : {
			"InputUrlPaht":InputUrlPaht,
			"StartPosition" :StartPosition,
			"StartPositionOffsetCorrection" : StartPositionOffsetCorrection,
			"EndPosition":EndPosition,
			"EndPositionOffsetCorrection":EndPositionOffsetCorrection,
		},
			scriptCharset : 'utf-8',
			contentType : "application/x-www-form-urlencoded; charset=utf-8",
		type : "post",
		traditional : true,/* 传数组进后台需要设置该属性 */
		success : function(str) {
			

			$("#BoqiiDataSoure").text("");
			
			$("#BoqiiDataSoure").append(str);
		}

	})

	})
	function  publicSubmit(){
		alert("这是公共查询方法");
		var $AllCapacitiveNumberLine=$("#Content").find("div[class='CapacitiveNumberLine']");
	for(var a=0;a<$AllCapacitiveNumberLine.length;a++){
		var $AllInputNumber=$AllCapacitiveNumberLine.eq(a).find("input[class='InputNumber']");
		var Tagtype="";
		var TagName="";
		var Result=[];
		for(var x=0;x<$AllInputNumber.length;x++){
			if(x==1){
				 Tagtype=$AllInputNumber.eq(x).val();
				if(Tagtype=="class"){
					Tagtype=".";
					}else{
						Tagtype="#";
						}
				}
			else if(x==2){
				 TagName=$AllInputNumber.eq(x).val();
				 Result[x]=TagName;
				/* Result[x]=$(Tagtype+TagName).text(); */
			}
		}
	}
	return Result;
}
	$("#SubmitButton").click(function(){
		publicSubmit();
	//:contains(text)表示包含指定文本的元素
	 //alert($("div:contains('商品编号')").text());
	 
	 
	})
		$("#GetAllData").click(function(){
			
			var productName=$(".shop_name").text();
			
			var retailPrice=$("#bqPrice").text();
			
			var manufacturerGuidancePrice=$("#shPrice").text();
			var $AllBrandDl=$(".brand").find("dl");
			var evaluationIndex="";
			var productID="";
			var salesVolumes="";
			for(var x=0;x<$AllBrandDl.length;x++){
				if(x==0){
				}else if(x==3){
					evaluationIndex=$AllBrandDl.eq(x).find("div[class='score_cont']").find("em").text();
				}else if(x==1){
				productID=$AllBrandDl.eq(x).find("dd").text();
				}else{
					salesVolumes=$AllBrandDl.eq(x).find("dd").text();
				}
				
			}
			
		
			var $conboxdata=$(".conbox").find("p");
			
			var productDescribe=$(".detail_tips").text();
			
			var brandName="";
			var  specifications="";
			var  applicableobject="";
			for(var j=0;j<$conboxdata.length;j++){
				$conboxdatason=$conboxdata.eq(j).find("span");
				
				if(j==0){
						brandName=$conboxdatason.eq(0).text();
					}else if(j==1){
						specifications=$conboxdatason.eq(0).text();
						}else if(j==2){
							applicableobject=$conboxdatason.eq(0).text();
							}
				}
				
				var $allsmallimg=$(".pro_s_img").find("img");
		
		var ImgData=[];
		for(var x=0;x<$allsmallimg.length;x++){
			
			ImgData[x]=$allsmallimg.eq(x).attr("data-original");
			}
			var $imgDatas=$("#001").find("div[class='mt15']");/* .find("img"); */
		
		var $AllIMGdata=$imgDatas.eq(1).find("img");/*获取产品优势图片*/
		var ContentIMGData=[];
		for(var x=0;x<$AllIMGdata.length;x++){
			ContentIMGData[x]=$AllIMGdata.eq(x).attr("src");
			}
		var ContentIMGheight=$AllIMGdata.eq(0).height();
		var ContentIMGwidth=$AllIMGdata.eq(0).width();
		/*获取评论信息*/
		
		var $PlContentLine=$(".pl_list");
		alert($PlContentLine.length);
			var $Commentinfo=$(".comment_Info");
			
			var CommentSoure="";
			var CommentTime="";
			var accountIMGSrc=[];
			var accountName=[];
			var accountGrade=[];
			 for(var x=0;x<$PlContentLine.length;x++){
				JudgedMark=$PlContentLine.eq(x).find(".ce53").eq(0).text();
				JudgedContent=$PlContentLine.eq(x).find(".pl_right").find("dd").eq(1).text();
				/*晒单图片地址*/
				
				var SunburnImgValues=[];
				var $SunburnImg=$PlContentLine.eq(x).find(".J-comments-review").find("img");
				for(var a=0;a<$SunburnImg.length;a++){
					SunburnImgValues[a]=$SunburnImg.eq(a).attr("src");
					}
			
				
				 CommentSoure=$Commentinfo.eq(x).find("i").eq(0).text();
				 CommentTime=$Commentinfo.eq(x).find("i").eq(1).text();
				  accountIMGSrc[x]=$(".pl_head").eq(x).find("img").attr("src");
					 accountName[x]=$(".pl_head").eq(x).find("p").text();
					 accountGrade[x]=$(".pl_head").eq(x).find("span").text();
					 
					/*  alert( $SunburnImgValues.eq(0).attr("src")); */
					
			}
		
		
		alert("获取的晒单的地址为："+SunburnImgValues[0]);
				$.ajax({
		url : "..//saveProductInfoOrNet.action",
		data : {
			"productName":productName,
			"retailPrice" :retailPrice,
			"manufacturerGuidancePrice" : manufacturerGuidancePrice,
			"evaluationIndex":evaluationIndex,
			"productID":productID,
			"salesVolumes":salesVolumes,
			"brandName":brandName,
			"specifications":specifications,
			"applicableobject":applicableobject,
			"productDescribe":productDescribe,
			"ImgDataValues":ImgData,
			"ContentIMGDataValues":ContentIMGData,
			"ContentIMGheight":ContentIMGheight,
			"ContentIMGwidth":ContentIMGwidth,
			"JudgedMark":JudgedMark,
			"JudgedContent":JudgedContent,
			"CommentSoure":CommentSoure,
			"CommentTime":CommentTime,
			"accountIMGSrc":accountIMGSrc,
			"accountName":accountName,
			"accountGrade":accountGrade,
			"SunburnImgValues":SunburnImgValues
		},
			scriptCharset : 'utf-8',
										contentType : "application/x-www-form-urlencoded; charset=utf-8",
		type : "post",
		traditional : true,/* 传数组进后台需要设置该属性 */
		success : function(str) {
			

		}

	})
	
	})
	$("#GetSonTagNumber").click(function(){
	
	var $imgData=$("#001").find("div[class='mt15']");/* .find("img"); */
		
		var $AllIMGdata=$imgData.eq(1).find("img");
		var ContentIMGData=[];
		
		for(var x=0;x<$AllIMGdata.length;x++){
			ContentIMGData[x]=$AllIMGdata.eq(x).attr("src");
			}
		
		 var ContentIMGheight=$AllIMGdata.eq(0).height();
		var ContentIMGwidth=$AllIMGdata.eq(0).width();
		
		
		
		
		})
	
})
</script>
</head>
<body>
<!--tips:1.结果处理后的small_imgs中的IMG地址在：data-original和big属性中-->
<div id="Control">

<div id="getDataButton">
  <input type="text" id="leanPetTypeNumber" value="输入训练最大值">
  <input type="button" id="TraningEntityAttribute" value="训练实体类属性"/>


<input
					id="getMaxNumerButton" value="获取当前分类的最大值" type="button"></input> <input
					id="getAllPetName" value="攻取当前页面所有宠物的性名" type="button"></input> <input
					id="getAllPetImger" value="攻取当前页面所有宠物的图片路径" type="button"></input>
				<input id="getAllPetPInfo" value="攻取当前页面所有宠物的品种信息" type="button"></input>
				<input id="getDataAnalysis" value="数据分析" type="button"></input>
				<!-- 数据分析 -->
				<input id="savePetBaikeInfoData" value="保存宠物百科信息数据" type="button"></input> <input
					id="reSult" value="返回值测试" type="button" /><br>
			
  </div>





<div id="CapacitiveNumberSeting">
  <input type="button" id="SetCapacitiveNumber" value="设置容器数量">
<input type="text" id="BoqiiInputUrlPaht" value="请输入网址">
<input type="text" id="BoqiiStartPosition" value="开始位置的标识">
<input type="text" id="BoqiiStartPositionOffsetCorrection" value="开始位置的偏移纠正量">
<input type="text" id="BoqiiEndPosition" value="结束位置的标识">
<input type="text" id="BoqiiEndPositionOffsetCorrection" value="结束位置的偏移纠正量">
<input type="button" id="getBoqiiUrlSrc" value="获取波奇网页源数据">
</div>
<input type="text" id="BaiduBaikeInputUrlPaht" value="请输入网址">
<input type="text" id="BaiduBaikeStartPosition" value="开始位置的标识">
<input type="text" id="BaiduBaikeStartPositionOffsetCorrection" value="开始位置的偏移纠正量">
<input type="text" id="BaiduBaikeEndPosition" value="结束位置的标识">
<input type="text" id="BaiduBaikeEndPositionOffsetCorrection" value="结束位置的偏移纠正量">
<input type="button" id="getBaiduBaikeUrlSrc" value="获取百度百科网页源数据">

<div id="CapacitiveNumberView">
<div id="Title">
<div class="TitleData">
容器编号
</div>
<div class="TitleData">
容器类型
</div>
<div class="TitleData">
容器名称
</div>
</div>
<!--待生成要提取的容器名称和类型(idOrClass)-->

<div id="Content">

</div>
</div>

<div id="Submit">
<input type="button" id="SubmitButton" value="提交">
<input type="button" id="GetAllData" value="提取数据">
<input type="button" id="GetSonTagNumber" value="读取子元素个数"/>
</div>
</div>





<div id="BoqiiDataSoure">
</div>
<div id="BaiduBaikeDataSoure">
</div>
</body>
</html>