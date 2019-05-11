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


$(function(){
	
	 $("#ViewControlButton").click(function(){
		var ViewControlTypeData=document.getElementsByName("ViewControlRadio");
for(var i=0;i<ViewControlTypeData.length;i++){
		 if(ViewControlTypeData[i].checked){
		 ViewTypeData=ViewControlTypeData[i].value;
		 }
	 }
	if(ViewTypeData=="List"){
		 
		var $ResultDataViewControl=$("#ResultDataViewControl>div");
		var ControlDivHeight=0;
		ControlDivHeight=(50*($ResultDataViewControl.length))+$ResultDataViewControl.length;
		
		var CenterControlHeight=$("#center").height();
		
		if(ControlDivHeight>=1200){
			var newHeight=0;
			newHeight=CenterControlHeight+(ControlDivHeight-1200);
			
			$("#center").css("height",newHeight+502);
			$(".BaiKeControl").css("height",1200+50);
			$(".BaikeControlBody").css("height",1050+50);
		}
		
		
 for (var i = 0; i < $ResultDataViewControl.length; i++) {
	
	 var $ResultDivIMGID=$ResultDataViewControl.eq(i).find("img[class=ResultDivIMGID]");
		var $ResultText=$ResultDataViewControl.eq(i).find("div[class=ResultText]").find("div[class=ResultTextClass]");
		var $ResultIMGContrl=$ResultDataViewControl.eq(i).find("div[class=ResultIMG]");
		var $ResultTextControl= $ResultDataViewControl.eq(i).find("div[class=ResultText]");
	 		$ResultDivIMGID.eq(0).attr({"width":"70","height":"50"});
	 		
	 		$ResultTextControl.eq(0).css({"width":"1129","height":"50","float":"left","float":"left"});
	 		$ResultIMGContrl.eq(0).css({"width":"70","height":"50","float":"left"});
	 		
	 		$ResultDataViewControl.eq(i).css({"width":"1200","height":"50","border-top":"1px solid #cdcbcb"});
	 		for(var a=0;a<$ResultText.length;a++){
	 		if(!(a==($ResultText.length-1))){
				  
				  $ResultText.eq(a).css({"width":"160","height":"50","float":"left","border-left":"1px solid #cdcbcb"});
			 }else{
				 
				 $ResultText.eq(a).css({"width":"800","height":"50","float":"left","border-left":"1px solid #cdcbcb"});
				
			 } 
	 		}
	 		
	 	if(i==($ResultDataViewControl.length-1)){
	 		
	 		$("#ResultDataViewControl").css({"border-left":"1px solid #cdcbcb","border-right":"1px solid #cdcbcb","border-bottom":"1px solid #cdcbcb","height":ControlDivHeight});
	 	
	 	}
 
 		}
	}else{/*结果等于缩略图*/
		var $ResultClassControl=$(".ResultClassControl");
	
	var $ResultDivIMGID=null;
	var $ResultText=null;
	var $ResultIMGContrl=null;
	var $ResultTextControl=null;
	
	 for (var i = 0; i < $ResultClassControl.length; i++) {
		
		
		if(!(i==0)){
			
			 $ResultDivIMGID=$ResultClassControl.eq(i).find("img[class=ResultDivIMGID]");
			 $ResultText=$ResultClassControl.eq(i).find("div[class=ResultText]").find("div[class=ResultTextClass]");
			 $ResultIMGContrl=$ResultClassControl.eq(i).find("div[class=ResultIMG]");
			 $ResultTextControl= $ResultClassControl.eq(i).find("div[class=ResultText]");
			
		 		$ResultDivIMGID.eq(0).attr({"width":"180","height":"135"});
		 		
		 		
		 		$ResultIMGContrl.eq(0).css({"width":"180","height":"135"});
		 		
		 		$ResultClassControl.eq(i).css({"width":"180","height":"170","border":"1px solid #cdcbcb","margin-left":"9px","margin-top":"9px"});
		 		
		 		for(var a=0;a<$ResultText.length;a++){
		 			if(a==0){
		 				var $IMGclone=$ResultIMGContrl.eq(0).clone(true);
		 				$ResultText.eq(a).parent().before($IMGclone);
		 				
		 			}else if(a==1){
		 				
		 				var $ResultTextClone=$ResultText.eq(a).clone(true);
		 				$ResultText.eq(a).parent().parent().append($ResultTextClone);
		 						 				
		 				$ResultText.eq(a).css({"width":"180","height":"130"});
		 			}else{
		 						 			
		 			}
		 			$ResultText.eq(a).remove();
		 		}
		 		$ResultIMGContrl.eq(0).remove();
		 		
		 		$ResultTextControl.get(0).remove();
		 		
		 		$ResultClassControl.eq(i).wrap("<div class='dataControl'></div>");
		 		
		 		
		 		
	}else{
			
			$ResultClassControl.eq(i).remove();
			
			
		}
		  
		}
	 /**/
	 
	
	var $ClassControl=$(".ResultClassControl>div");
	for(var i=1;i<=$ClassControl.length;i++){
		if($ClassControl.eq(i).attr("class")!="ResultIMG"){
			
			$ClassControl.eq(i).css({"width":"180","height":"35"});	
			
		}else{
			$ClassControl.eq(i).css({"width":"180","height":"135"});	
		}
	}
	var $dataControl=$(".dataControl");
	for(var i=0;i<$dataControl.length;i++){
		$dataControl.eq(i).css({"width":"200","height":"190","float":"left"});
	}
	
	}
	})

})
	


</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet" href="Search.css">
<title>宠物情报系统</title>
<%
	String[] AnimalClassification = { "Dog", "Cat", "Aquarium",
			"Crawler" };
	request.setAttribute("Animal", AnimalClassification);
%>
</head>
<body>

	<div id="center">
		
		<div id="NavigationControl">
			<div id="NavigationKongLeft"></div>
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



		<!--End-->
		<div class="BaiKeControl">
			<div id="BaiKeNavigation">首页|宠物大全|狗狗分类搜索</div>
			<div class="BaiKeControlTitle">
				<div id="BaiKeControlTitleClassControl">
					<div class="BaiKeControlTitleClass" id="BaiKeControlTitleTieBie">
						<div class="BaiKeControlTitleIMG">
							<img src="../img/BaiKe/Search/Dog.png" width="40" height="40">
						</div>
						<div class="BaiKeControlTitleText">狗狗</div>
					</div>
					<div class="BaiKeControlTitleClass">
						<div class="BaiKeControlTitleIMG">
							<img src="../img/BaiKe/Search/Cat.png" width="40" height="40">
						</div>
						<div class="BaiKeControlTitleText">猫咪</div>
					</div>
					<div class="BaiKeControlTitleClass">
						<div class="BaiKeControlTitleIMG">
							<img src="../img/BaiKe/Search/ShuiZu.png" width="40" height="40">
						</div>
						<div class="BaiKeControlTitleText">水族</div>
					</div>
					<div class="BaiKeControlTitleClass">
						<div class="BaiKeControlTitleIMG">
							<img src="../img/BaiKe/Search/XiaoChong.png" width="40"
								height="40">
						</div>
						<div class="BaiKeControlTitleText">小宠</div>
					</div>
					<div class="BaiKeControlTitleClass">
						<div class="BaiKeControlTitleIMG">
							<img src="../img/BaiKe/Search/PaiChong.png" width="40"
								height="40">
						</div>
						<div class="BaiKeControlTitleText">爬虫</div>
					</div>
				</div>
			</div>
			<div class="BaikeControlBody">
				<div id="ScreenControl">
					<div class="ScreenClass">

						<div class="ScreenTitle">体型:</div>

						<div class="ScreenSonClass">全部</div>
						<div class="ScreenSonClass">小型犬</div>
						<div class="ScreenSonClass">中型犬</div>
						<div class="ScreenSonClass">大型犬</div>


					</div>

					<div class="ScreenClass">
						<div class="ScreenTitle">功能:</div>

						<div class="ScreenSonClass">全部</div>
						<div class="ScreenSonClass">伴侣犬</div>
						<div class="ScreenSonClass">牧羊犬</div>
						<div class="ScreenSonClass">梗类犬</div>
						<div class="ScreenSonClass">守卫犬</div>
						<div class="ScreenSonClass">枪猎犬</div>
						<div class="ScreenSonClass">工作犬</div>
						<div class="ScreenSonClass">看家犬</div>

					</div>
					<div class="ScreenClass">
						<div class="ScreenTitle">毛长:</div>
						<div class="ScreenSonClass">全部</div>
						<div class="ScreenSonClass">无毛犬</div>
						<div class="ScreenSonClass">短毛犬</div>
						<div class="ScreenSonClass">长毛犬</div>
					</div>
					<div class="ScreenClass">
						<div class="ScreenTitle">掉毛程度：</div>
						<div class="ScreenSonClass">全部</div>
						<div class="ScreenSonClass">不掉毛</div>
						<div class="ScreenSonClass">掉毛少</div>
						<div class="ScreenSonClass">掉毛多</div>
					</div>
					<div class="ScreenClass">
						<div class="ScreenTitle">友善程序:</div>
						<div class="ScreenSonClass">全部</div>
						<div class="ScreenSonClass">非常友善</div>
						<div class="ScreenSonClass">一般友善</div>
						<div class="ScreenSonClass">不友善</div>
					</div>
					<div class="ScreenClass">
						<div class="ScreenTitle">饲养难度:</div>
						<div class="ScreenSonClass">全部</div>
						<div class="ScreenSonClass">容易饲养</div>
						<div class="ScreenSonClass">普通饲养</div>
						<div class="ScreenSonClass">难饲养</div>
					</div>
				</div>

	<div id="ViewControl">
		请选择你要浏览的视图：<br> 缩略图：<input type="radio" name="ViewControlRadio"
			value="Thumbnail">详细信息：<input type="radio"
			name="ViewControlRadio" value="List"><input type="button"
			id="ViewControlButton" value="确定">

	</div>
			<div id="ResultDataViewControl">

		<div class="ResultClassControl">
			<div class="ResultIMG" >图片预览</div>
			<div class="ResultText">
				<div class="ResultTextClass">类型ID</div>
				<div class="ResultTextClass">类型名字</div>
				<div class="ResultTextClass" id="ResultTextClassT">类型图片存储路径</div>
			</div>
		</div>
		
		<s:iterator value="#session.ListData" var="VarData">


			<div class="ResultClassControl">
				<div class="ResultIMG">
					<img src="<s:property value="#VarData.petIMGSrc"></s:property>"
						class="ResultDivIMGID">

				</div>
				<div class="ResultText">

					<div class="ResultTextClass">
						<s:property value="#VarData.petTypeID"></s:property>
					</div>
					<div class="ResultTextClass">
						<s:property value="#VarData.petyName"></s:property>
					</div>
					<div class="ResultTextClass">
						<s:property value="#VarData.petIMGSrc"></s:property>
					</div>
				</div>
			</div>
		</s:iterator>
	</div>

				<div id="ViewControlForTatol">
					<div id="ResultTitle">
						<div id="ResultTotal">
							<div id="ResultNumberTitle">找到51条查询结果</div>
							<div id="ResultPaginationControl">
								<div class="ControlPage">上一页</div>
								<div class="PaginationClass">1</div>
								<div class="PaginationClass">2</div>
								<div class="ControlPage">下一页</div>
							</div>
						</div>

					</div>
					<!--end-->
		

					<!--view_end-->

				</div>

			</div>
		</div>
	</div>




	




</body>
</html>