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
人员信息查看
</div>
<div id="userinfolist">
<div id="userinfotips">
人员信息列表
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
<div class="operation">
执行操作
</div>
</div>
<o:forEach  items="${sessionScope.AllPersonInfo }" var="PersonInfo">
<div class="userinfotitle" name="trlist">

<div id="username">${PersonInfo.username}</div>
<div class="userinfo">${PersonInfo.usrpasswords}</div>
<div name="usersex" class="userinfo">${PersonInfo.usersex}</div>
<div class="userinfo">${PersonInfo.userbirthday}</div>
<div name="isadmin" class="userinfo">${PersonInfo.isadmin}</div>
<div class="info" >${PersonInfo.userinfo}</div>

<div class="operation"><a href="../PersonInfoRemove?PersonID=${PersonInfo.id}" onclick="return confirm('确定删除吗')">删除</a>/<a href="PersonInfoDataUpdate.jsp?PersonID=${PersonInfo.id}">修改</a>/<a href="#" onclick="document.getElementById('${PersonInfo.id}').style.display='block';document.getElementById('fade').style.display='block'">详细信息</a></div>

<div id="${PersonInfo.id}" class="white_content">
<div id="hiddentop">
    <span id="hiddentitle">员工详细信息</span>
   
   <span id="close"> <a href="javascript:void(0)" onclick="document.getElementById('${PersonInfo.id}').style.display='none';document.getElementById('fade').style.display='none'"> 
    Close</a>
    </span>
    
</div>
<div class="hiddengl">
   <div class="hiddenleft">   
    用户ID：${PersonInfo.id}
</div>
<div class="hiddenright">    
    用户名字：${PersonInfo.username}
</div>
</div>
<div class="hiddengl">
<div class="hiddenleft"> 
    用户密码：${PersonInfo.usrpasswords}
</div>
<div class="hiddenright">    
    用户性别：${PersonInfo.usersex}
</div>
</div>
<div class="hiddengl">
<div class="hiddenleft">    
    用户生日：${PersonInfo.userbirthday}
</div>    
<div class="hiddenright">    
    用户是否为管理员：${PersonInfo.isadmin}
    </div>
 </div>
 <div id="hiddeninfo">
    用户简介：${PersonInfo.userinfo}
   </div>

 
</div>

<div id="fade" class="black_overlay"> 

</div>

</div>
</o:forEach>
<div id="daohanggl">
<div class="daohang">
<a href="../SelectAllPersonInfo?page=1">
首页
</a>
</div>
<div class="daohang">
<a href="../SelectAllPersonInfo?page=${sessionScope.thispages-1}">
上一页
</a>
</div>
<o:forEach begin="1" end="${sessionScope.MaxPages}" var="m">
<div class="daohang">
<a href="../SelectAllPersonInfo?page=${m}">
第${m}页
</a>
</div>
</o:forEach>
<div class="daohang">
<a href="../SelectAllPersonInfo?page=${sessionScope.thispages+1}">
下一页
</a>
</div>
<div class="daohang">
<a href="../SelectAllPersonInfo?page=${sessionScope.MaxPages}">
尾页
</a>
</div>

</div>


</div>
</div>
</body>
</html>