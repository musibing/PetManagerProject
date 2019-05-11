<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="o" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>培训计划信息查看列表</title>
<link type="text/css" rel="stylesheet" href="HRRewardsinfoview.css">
<script src="../jquery/jquery-1.7.2.js"></script>
<script>
function loads(){
		var hrewardstype=document.getElementsByName("hrewardstype");
	
	for(var i=0;i<hrewardstype.length;i++){
		var type=$(hrewardstype[i]).text();
		if(type==1){
		
		hrewardstype[i].innerHTML="奖励";
		}else{
			hrewardstype[i].innerHTML="惩罚";
			}
}
	}


</script>
</head>
<body onload="loads()">
<div id="rightleirong">
<div id="righttips">
奖惩信息查看
</div>
<div id="userinfolist">
<div id="userinfotips">
奖惩信息列表
</div>
<div id="userinfotitle">
<div id="username">
奖惩编号
</div>
<div class="userinfo">
奖惩名称 
</div>
<div class="userinfo">
奖惩类型
</div>
<div class="userinfo">
奖惩金额
</div>
<div class="userinfo">
员工姓名
</div>
<div class="userinfo">
奖惩原因 
</div>
<div class="userinfo">
奖惩说明
</div>
<div class="userinfo">
执行操作
</div>

</div>
<o:forEach  items="${sessionScope.UserRewardsInfo}" var="PersonInfo">
<div id="userinfotitle">
<div id="username">
${PersonInfo.rewardId}
</div>
<div class="userinfo">
${PersonInfo.rewardName}
</div>
<div class="userinfo" name="hrewardstype">
${PersonInfo.hrewardstype}
</div>
<div class="userinfo">
${PersonInfo.rewardsnumber}
</div>
<div class="userinfo">
${PersonInfo.emploryName}
</div>
<div class="userinfo">
${PersonInfo.explains}
</div>
<div class="userinfo">
${PersonInfo.reason}
</div>

<div class="userinfo">

</div>
</div>
</o:forEach>
<div id="daohanggl">
<div class="daohang">
<a href="../SelectNormalUserInfo?SendPath=/Normal/HRtrainViewforuser.jsp&UserID=${sessionScope.UserPersonInfo.get(0).id}">
培训计划
</a>
</div>
<div class="daohang">
<a href="../SelectNormalUserInfo?SendPath=/Normal/HRRewardsinfoviewforuser.jsp&UserID=${sessionScope.UserPersonInfo.get(0).id}">
奖惩信息
</a>
</div>

<div class="daohang">
<a href="../SelectNormalUserInfo?SendPath=/Normal/PayDataViewforuser.jsp&UserID=${sessionScope.UserPersonInfo.get(0).id}">
薪金信息
</a>
</div>

</div>
</div>
</div>
</body>
</html>