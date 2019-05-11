<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
	 var ViewTypeData=null;
	
	 for(var i=0;i<ViewControlTypeData.length;i++){
		 if(ViewControlTypeData[i].checked){
		 ViewTypeData=ViewControlTypeData[i].value;
		 }
	 }
	alert("得到的视图类型是："+ViewTypeData);
	
	if(ViewTypeData=="List"){
		
		$(".ResultDivIMG").attr("height",30);
		$(".ResultDivIMG").attr("width",35);
		alert("得到的视图类型是："+ViewTypeData);
		alert("pass");
	}else{
		alert("得到的视图类型是："+ViewTypeData);
		alert("nopass");
		}
	
	 /* $.ajax({
	 url:"..//GetWebDataDispose.action",
	 type:"post",
	 data:{"webdata":tempdata},
	
	 }) */
	 })
	 })
	

</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet" href="list.css">
<title>循环输出</title>
</head>
<body>
<div id="ViewControl">
请选择你要浏览的视图：<br>
缩略图：<input type="radio" name="ViewControlRadio" value="Thumbnail">详细信息：<input type="radio"  name="ViewControlRadio" value="List"><input type="button" id="ViewControlButton" value="确定">

</div>
<div id="ResultDataViewControl">

<img src="../img/BaiKe/LogoIMGData/Imger8000155.jpg" class="ResultDivIMG"/>
</div>

</body>
</html>