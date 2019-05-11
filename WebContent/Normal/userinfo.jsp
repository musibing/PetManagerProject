<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="o" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>人员信息列表</title>
<link type="text/css" rel="stylesheet" href="PersonInfoView.css">
<script src="../jquery/jquery-1.7.2.js"></script>
<script>
function load(){
	
	var isadmin=document.getElementsByName("isadmin");
	
	for(var i=0;i<isadmin.length;i++){
		var isadminvalue=$(isadmin[i]).text();
		if(isadminvalue==1){
		
		isadmin[i].innerHTML="是";
		}else{
			isadmin[i].innerHTML="否";
			}
}

	var usersex=document.getElementsByName("usersex");
	
	for(var i=0;i<usersex.length;i++){
		var sexvalue=$(usersex[i]).text();
		if(sexvalue==1){
		
		usersex[i].innerHTML="男";
		}else{
			usersex[i].innerHTML="女";
			}
}

}
</script>
</head>
<body onLoad="load()">
<div id="rightleirong">
<div id="righttips">
普通员工信息查看
</div>
<div id="userinfolist">
<div id="userinfotips">
普通员工信息列表
</div>
<div id="userinfotitle">
<div id="username">
用户名
</div>
<div class="userinfo">
登录密码
</div>
<div class="userinfo">
性别
</div>
<div class="userinfo">
出生日期
</div>
<div class="userinfo">
是否为管理员
</div>
<div class="info">
简介
</div>
<div class="userinfo">
执行操作
</div>
</div>
<o:forEach  items="${sessionScope.UserPersonInfo }" var="PersonInfo">
<div id="userinfotitle" name="trlist">

<div id="username">${PersonInfo.username}</div>
<div class="userinfo">${PersonInfo.usrpasswords}</div>
<div name="usersex" class="userinfo">${PersonInfo.usersex}</div>
<div class="userinfo">${PersonInfo.userbirthday}</div>
<div name="isadmin" class="userinfo">${PersonInfo.isadmin}</div>
<div class="info">${PersonInfo.userinfo}</div>

<div class="userinfo"></div>

</div>
</o:forEach>
<div id="daohanggl">
<div class="daohang">
<a href="../SelectNormalUserInfo?SendPath=/Normal/HRRewardsinfoviewforuser.jsp&UserID=${sessionScope.UserPersonInfo.get(0).id}">
培训计划
</a>
</div>
<div class="daohang">
<a href="../SelectNormalUserInfo?SendPath=/Normal/HRtrainViewforuser.jsp&UserID=${sessionScope.UserPersonInfo.get(0).id}">
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