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
		
			
		
			
		$("#href3").click(function(){
	
				var $s2=$("<div class='indexlistclick'><a href='../SelectNormalUserInfo?SendPath=/Normal/HRtrainViewforuser.jsp&UserID=${sessionScope.UserPersonInfo.get(0).id}' target='righttg' >培训计划信息查看</a></div>");
	
		   
			$("#index3").after($s2);
			
			})
	
			$("#href4").click(function(){
			
				var $s2=$("<div class='indexlistclick'><a href='../SelectNormalUserInfo?SendPath=/Normal/HRRewardsinfoviewforuser.jsp&UserID=${sessionScope.UserPersonInfo.get(0).id}' target='righttg' >奖惩信息查看</a></div>");
		
			$("#index4").after($s2);
			
			})
			
			$("#href5").click(function(){
	
				var $s2=$("<div class='indexlistclick'><a href='../SelectNormalUserInfo?SendPath=/Normal/PayDataViewforuser.jsp&UserID=${sessionScope.UserPersonInfo.get(0).id}' target='righttg' >薪金信息查看</a></div>");

			$("#index5").after($s2);
			
			})
			
	$("#exitherf").click(function(){
		
		
		var exit=document.getElementById("exitherf");
	exit.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode
		
		
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

  
  <div class="indexlistgl">
<div class="indexlist" id="index3">
<img src="../img/list/list2.png" width="12" height="12"><a href="../SelectNormalUserInfo?SendPath=/Normal/HRtrainViewforuser.jsp&UserID=${sessionScope.UserPersonInfo.get(0).id}"  target="righttg" id="href3">培训信息查看</a>
</div>
</div>
<div class="indexlistgl">
<div class="indexlist" id="index4">
<img src="../img/list/list2.png" width="12" height="12"><a href="../SelectNormalUserInfo?SendPath=/Normal/HRRewardsinfoviewforuser.jsp&UserID=${sessionScope.UserPersonInfo.get(0).id}"  target="righttg" id="href4">奖惩信息查看</a>
</div>
</div>
<div class="indexlistgl">
<div class="indexlist" id="index5">
<img src="../img/list/list2.png" width="12" height="12"><a href="../SelectNormalUserInfo?SendPath=/Normal/PayDataViewforuser.jsp&UserID=${sessionScope.UserPersonInfo.get(0).id}"  target="righttg" id="href5">薪金信息查看</a>
</div>
</div>
</div>
</div>
</body>
</html>