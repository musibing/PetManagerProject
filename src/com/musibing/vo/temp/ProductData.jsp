<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link type="text/css" rel="stylesheet" href="ProductData.css">
<!-- <link rel="stylesheet" href="http://bdimg.share.baidu.com/static/api/css/share_style0_16.css?v=8105b07e.css">
<link href="http://b.boqiicdn.com/webim/static/css/im.css?v=1480387473" rel="stylesheet">
<link href="http://b.boqiicdn.com/v2/css/dialog/jquery.lightbox-0.5.css?v=1481794036" rel="stylesheet">
<link href="http://b.boqiicdn.com/v2/css/common/detail_content.css?v=1481794036" rel="stylesheet" type="text/css">
<link href="http://b.boqiicdn.com/v2/css/shopdetail/detail.css?v=1517899650" rel="stylesheet" type="text/css">
<link href="http://b.boqiicdn.com/v2/css/dialog/default.css?v=1481794036" rel="stylesheet">
<link href="http://b.boqiicdn.com/v2/css/common/common.css?v=1523870678" rel="stylesheet">
<link href="http://b.boqiicdn.com/v2/css/common/common.css?v=1523870678" rel="stylesheet"> -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>产品数据处理</title>
<script src="../jquery/jquery-1.7.2.js"></script>
<script language='javascript' type='text/javascript'>
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
	$("#getUrlSrc").click(function(){
	var StartPosition=$("#StartPosition").val();
	var StartPositionOffsetCorrection=$("#StartPositionOffsetCorrection").val();
	var EndPosition=$("#EndPosition").val();
	var EndPositionOffsetCorrection=$("#EndPositionOffsetCorrection").val();
	 var InputUrlPaht=$("#InputUrlPaht").val();
	
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
			

			$("#DataSoure").text("");
			
			$("#DataSoure").append(str);
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
			var $imgDatas=$("#001").find("div[class='mt15']");
		var $AllIMGdata=$imgDatas.eq(1).find("img");/*获取产品优势图片*/
		var ContentIMGData=[];
		
		for(var x=0;x<$AllIMGdata.length;x++){
			ContentIMGData[x]=$AllIMGdata.eq(x).attr("src");
			}
		var ContentIMGheight=$AllIMGdata.eq(0).height();
		var ContentIMGwidth=$AllIMGdata.eq(0).width();
		/*获取评论信息*/
		
		var $PlContentLine=$(".pl_list");
		
			var $Commentinfo=$(".comment_Info");
			
			var CommentSoure=[];
			var CommentTime=[];
			var accountIMGSrc=[];
			var accountName=[];
			var accountGrade=[];
			var SunburnImgValues=[];
			var JudgedMark=[];
			var JudgedContent=[];
			
		 	 for(var x=0;x<$PlContentLine.length;x++){
		 		
				
					JudgedMark[x]=$PlContentLine.eq(x).find(".ce53").eq(0).text();
					
					JudgedContent[x]=$PlContentLine.eq(x).find(".pl_right").find("dd").eq(1).text();
					/*晒单图片地址*/
					
				
					var $SunburnImg=$PlContentLine.eq(x).find(".J-comments-review").find("img");
					for(var a=0;a<2;a++){
						SunburnImgValues[a]=$SunburnImg.eq(a).attr("src");
						}
				
					
					 CommentSoure[x]=$Commentinfo.eq(x).find("i").eq(0).text();
					 CommentTime[x]=$Commentinfo.eq(x).find("i").eq(1).text();
					  accountIMGSrc[x]=$(".pl_head").eq(x).find("img").attr("src");
						 accountName[x]=$(".pl_head").eq(x).find("p").text();
						 accountGrade[x]=$(".pl_head").eq(x).find("span").text();
						
					
						
				
				}
		 	 alert("用户头像的长度是："+accountIMGSrc.length);
	alert("数据检查："+ CommentSoure[0]+":"+CommentSoure[1]+":"+CommentSoure[2]+":");
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
		traditional : true, /* 传数组进后台需要设置该属性  */
		
		success : function(str) {
			alert("等待确认：");

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
		$("#SaveArticleInfo").click(function(){
			var ArticleImg=$(".article_top_img").find("img").attr("src");
			
			var ArticleTitle=$(".article_title").find("h1").text();
			
			var ArticleContent=$(".article_body").html();
			alert("t1"+ArticleContent);
			$.ajax({
		url : "..//saveArticleToDB.action",
		data : {
			"ArticleImg":ArticleImg,
			"ArticleTitle":ArticleTitle,
			"ArticleContent":ArticleContent,
		},
			scriptCharset : 'utf-8',
										contentType : "application/x-www-form-urlencoded; charset=utf-8",
		type : "post",
		traditional : true,/* 传数组进后台需要设置该属性 */
		success : function(str) {
			

		}
			})
			})
$("#getAllProductLink").click(function(){
	
	var MaxPage=$(".total_page").text();
	alert(MaxPage);
	$AllLi=$(".product_list").find("li");
	var productHerf=[];
	for(var x=0;x<$AllLi.length;x++){
		productHerf[x]=$AllLi.eq(x).find("a").attr("href");
		
			
		
		}
	for(var x=0;x<$AllLi.length;x++){
		productHerf[x];
		
			$("#InputUrlPaht").val(productHerf[x]);
			$("#StartPosition").val("<!-- 主体内容开始 -->");
			$("#EndPosition").val("<!-- 主体内容结束 -->");
			$("#getUrlSrc").click();
			
			
			alert("等侍生成数据");
				document.getElementById("GetAllData").click();
				
		    
			
			
				
		
		}	
	})
$("#test").click(function(){
	
	alert("JSP保存方法测试");
		$.ajax({
		url : "..//saveProductInfoOrNet.action",
		data : {
			
		},
		scriptCharset : 'utf-8',
		contentType : "application/x-www-form-urlencoded; charset=utf-8",
		type : "post",
		traditional : true,/* 传数组进后台需要设置该属性 */
		
		success : function(str) {
			alert("JSP有返回");

		}

	})
	
	})
	$("#getAllPetLink").click(function(){
		
		var $AllPetLink=$(".hot_pet_cont").find("dl");
		
		for(var x=0;x<$AllPetLink.length;x++){
			alert(x);

alert($AllPetLink.eq(x).find("dd").find("a").attr("href"));


}
		
		
	})
	
	$("#SavePetInfo").click(function(){
		
		
		var $BascInfo=$(".entry_tit_pet").find("em");
		alert("基本属性的个数："+$BascInfo.length);
		var petcnName="";
		var petenName="";
		var disposition="";
		var ancestralHome="";
		var easeOfDisease="";
		var lifeAge="";
		var price=0;
		var briefIntroduction="";
		petcnName=$(".entry").find("h2").text();
		
		for(var x=0;x<$BascInfo.length;x++){
			if(x==0){
				petenName=$BascInfo.eq(x).text();
				}
			if(x==1){
				disposition=$BascInfo.eq(x).text()
				}
				if(x==2){
				petenName=$BascInfo.eq(x).text();
				}
			if(x==3){
				ancestralHome=$BascInfo.eq(x).text()
				}
				if(x==4){
				easeOfDisease=$BascInfo.eq(x).text();
				}
			if(x==5){
				lifeAge=$BascInfo.eq(x).text()
				}
				if(x==6){
				price=$BascInfo.eq(x).text();
				}
			}
	
		briefIntroduction=$(".entry_detail").eq(0).html();
		morphologicalCharacter=$(".entry_detail").eq(1).html();
		characterCharacteristics=$(".entry_detail").eq(2).html();
		conservationKnowledge=$(".entry_detail").eq(3).html();
		feedingPoints=$(".entry_detail").eq(4).html();
		alert("data");
		$.ajax({
			
			url : "..//savePetVoInfo.action",
		data : {
			petcnName:petcnName,
			petcnName:petenName,
			disposition:disposition,
			ancestralHome:ancestralHome,
			easeOfDisease:easeOfDisease,
			lifeAge:lifeAge,
			price:price,
			briefIntroduction:briefIntroduction,
			morphologicalCharacter:morphologicalCharacter,
			characterCharacteristics:characterCharacteristics,
			conservationKnowledge:conservationKnowledge,
			feedingPoints:feedingPoints,
		},
		scriptCharset : 'utf-8',
		contentType : "application/x-www-form-urlencoded; charset=utf-8",
		type : "post",
		traditional : true,/* 传数组进后台需要设置该属性 */
		success : function(str) {
			alert("JSP有返回");

		}

			
			
			
			}) 
		
		
		})
		
		$("#SaveArticleInfo").click(function(){
			alert("测试");
			alert($(".article_title").length);
			$.ajax({
				
				
				url : "..//saveArticleToDB.action",
			data : {
			
			},
			scriptCharset : 'utf-8',
			contentType : "application/x-www-form-urlencoded; charset=utf-8",
			type : "post",
			traditional : true,/* 传数组进后台需要设置该属性 */
			success : function(str) {
				alert("JSP有返回");

			}

				
				
				
				}) 
			
			
			
			
			
		})
	
		
})
</script>
</head>
<body>
<!--tips:1.结果处理后的small_imgs中的IMG地址在：data-original和big属性中-->
<div id="Control">
<div id="CapacitiveNumberSeting">

<input type="text" id="CapacitiveNumber" value="请输入容器的数量">
<input type="button" id="SetCapacitiveNumber" value="设置容器数量">
<input type="text" id="InputUrlPaht" value="请输入网址">
<input type="text" id="StartPosition" value="开始位置的标识">
<input type="text" id="StartPositionOffsetCorrection" value="开始位置的偏移纠正量">
<input type="text" id="EndPosition" value="结束位置的标识">
<input type="text" id="EndPositionOffsetCorrection" value="结束位置的偏移纠正量">
<input type="button" id="getUrlSrc" value="获取网页源数据">
<input type="button" id="getAllProductLink" value="获取网页商品源数据中的链接">
<input type="button" id="getAllPetLink" value="获取网页宠物源数据中的链接">
</div>
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
<input type="button" id="GetAllData" value="保存商品数据">
<input type="button" id="GetSonTagNumber" value="读取子元素个数"/>
<input type="button" id="SaveArticleInfo" value="保存文章数据">
<input type="button" id="test" value="保存商品数据">
<input type="button" id="SavePetInfo" value="保存宠物数据">
<input type="button" id="SaveArticleInfo" value="保存文章数据">
</div>
</div>





<div id="DataSoure">
</div>

</body>
</html>