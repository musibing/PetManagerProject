<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>左部框架</title>
<link type="text/css" rel="stylesheet" href="HRIndex.css">
<script src="../jquery/jquery-1.7.2.js"></script>
<script>
$(function(){
var index=0;
		$("#index1").dblclick(function(){
			var $s1=$("<div id='indexlistclickgl' class='indexlist'><div class='indexlistclick'><a href='../SelectAllPersonInfo' target='righttg' >人员信息查看</a></div><div class='indexlistclick'><a href='../SelectPersonMaxID' target='righttg' >人员信息录入</a></div></div>");
			 $("#index1").after($s1);
			
		 })
	$("#index1").click(function(){
			$("#indexlistclickgl").remove();//删除指定的节点
		}) 
			
		$("#index2").dblclick(function(){
			var $s1=$("<div id='indexlistclickgl1' class='indexlist'><div class='indexlistclick'><a href='../SelectAllJobInfo?SendPath=/HRemployManager/RemployInfoInput.jsp' target='righttg' >应聘信息录入</a></div><div class='indexlistclick'><a href='../SelectHREmplory' target='righttg' >应聘信息查看</a></div><div class='indexlistclick'><a href='../SelectHREmploryDataBase' target='righttg' >人才库浏览</a></div></div>");
			 $("#index2").after($s1);
			})
		$("#index2").click(function(){
			$("#indexlistclickgl1").remove();//删除指定的节点
		}) 	
			
		$("#index3").dblclick(function(){
			var $s1=$("<div id='indexlistclickgl' class='indexlist'><div class='indexlistclick'><a href='../SelectTrainMaxID' target='righttg' >培训计划信息录入</a></div><div class='indexlistclick'><a href='../SelectAllTrainPlanInfo' target='righttg' >培训计划信息查看</a></div></div>");
			//创建标签
		    $("#index3").after($s1);
			})
			$("#index3").click(function(){
			$("#indexlistclickgl").remove();//删除指定的节点
		}) 
	
			$("#index4").dblclick(function(){
			var $s1=$("<div id='indexlistclickgl' class='indexlist'><div class='indexlistclick'><a href='../HRRewardsinfoInputCheck?SendPath=/HRRewards/HRRewardsinfoInput.jsp' target='righttg'>奖惩信息录入</a></div><div class='indexlistclick'><a href='../SelectAllHRRewardsinfo' target='righttg'>奖惩信息查看</a></div></div>");
			//创建标签
		    $("#index4").after($s1);
				})
			$("#index4").click(function(){
			$("#indexlistclickgl").remove();//删除指定的节点
		}) 
	
			$("#index5").dblclick(function(){
			var $s1=$("<div id='indexlistclickgl' class='indexlist'><div class='indexlistclick'><a href='../HRPayManagerInfoInputCheck?SendPath=/HRPayManager/HRPayInfoInput.jsp' target='righttg'>薪金信息录入</a></div><div class='indexlistclick'><a href='../SelectAllPayInfo' target='righttg' >薪金信息查看</a></div></div>");
			//创建标签
		    $("#index5").after($s1);
		})
		$("#index5").click(function(){
			$("#indexlistclickgl").remove();//删除指定的节点
		}) 

	
		})



</script>
</head>
<body>
<div id="left">
<div id="userinco">

<div id="incoimg">
  <img src="../ViewUserIncoPyID" width="60" height="60">
  </div>
<div id="userinfo">
<div class="userinfo">
你好,<span id="username">${sessionScope.loginUserinfo.username}</span>
</div>

<div class="userinfo">
[<a href="../HRlogin/login.jsp" id="exitherf" target="_parent">退出</a>] </div>
</div>
</div>
<div id="indexlist">
<div id="indexlistgl1" class="indexlistgl">

<div class="indexlist" id="index1">
  <img src="../img/list/list2.png" width="12" height="12"><a href="../SelectAllPersonInfo" target="righttg"  id="href1">人员管理</a>
  </div>
  </div>
  <div class="indexlistgl">
<div class="indexlist" id="index2">
<img src="../img/list/list2.png" width="12" height="12"><a href="../SelectHREmplory"  target="righttg" id="href2">招聘管理</a>
</div>
</div>
  <div class="indexlistgl">
<div class="indexlist" id="index3">
<img src="../img/list/list2.png" width="12" height="12"><a href="../SelectAllTrainPlanInfo"  target="righttg" id="href3">培训管理</a>
</div>
</div>
<div class="indexlistgl">
<div class="indexlist" id="index4">
<img src="../img/list/list2.png" width="12" height="12"><a href="../SelectAllHRRewardsinfo"  target="righttg" id="href4">奖惩管理</a>
</div>
</div>
<div class="indexlistgl">
<div class="indexlist" id="index5">
<img src="../img/list/list2.png" width="12" height="12"><a href="../SelectAllPayInfo"  target="righttg" id="href5">薪金管理</a>
</div>
</div>
</div>
</div>
</body>
</html>