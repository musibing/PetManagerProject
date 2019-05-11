<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="o" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="PersonInfoUpdate.css">
<title>人员信息更新</title>
<script src="../jquery/jquery-1.7.2.js"></script>
<script>
function change(){
var scendmonthday=0;
var damonth="1,3,5,7,8,10,12";
var damonthday=damonth.split(",");//s分割字符串
var monthday=0;
var birthdayoption=document.getElementById("birthday").options;	
var yearvalue=document.getElementById("birthday").value;
var monthvalue=document.getElementById("month").value;
var day=document.getElementById("day").options;

	var l=day.length;
	
	for(var i=0;i<l;i++){
		day.remove(0);
		}
	if(yearvalue%4==0){
			scendmonthday=29;
	}else{
	scendmonthday=28;
	}
	
for(var i=0;i<damonthday.length;i++){
	var value=0;
	value=parseInt(damonthday[i]);
	
	if(monthvalue==1){
		
		monthday=31;
		
	}else if(monthvalue==2){
		monthday=scendmonthday;
	}else if(monthvalue==3){
		
		monthday=31;
		
	}else if(monthvalue==5){
		
		monthday=31;
		
	}else if(monthvalue==7){
		
		monthday=31;
		
	}else if(monthvalue==8){
		
		monthday=31;
		
	}else if(monthvalue==10){
		
		monthday=31;
		
	}else if(monthvalue==12){
		
		monthday=31;
		
	}else{
		monthday=30;
		}
	
	}
	
	for(var x=1;x<=monthday;x++){
			var dayops=document.createElement("option");
			dayops.value=x;
			document.getElementById("day").appendChild(dayops);
			dayops.innerHTML=x;
			
			}
		
}
function loads(){
	var BirthdayInfo=$("#BirthdayInfo").val();
	var BirthdayArray=BirthdayInfo.split("-");
	var Year=0;
	var Month=0;
	var Day=0;
	for(var i=0;i<BirthdayArray.length;i++){
		if(i==0){
		Year=BirthdayArray[i];
			}
		else if(i==1){
		Month=BirthdayArray[i];
			}
		else{
		Day=BirthdayArray[i];
			}	
		}
var birthdayoption=document.getElementById("birthday").options;
var monthoption=document.getElementById("month").options;
var dayoption=document.getElementById("day").options;
var l=monthoption.length;
	

for(var i=1400;i<2017;i++){
	var birthdayoptionop=document.createElement("option");
	
	birthdayoptionop.value=i;
	
	document.getElementById("birthday").appendChild(birthdayoptionop);

	birthdayoptionop.innerHTML=i;
	if(i==Year){
		birthdayoptionop.selected=true;
	}
		
}
for(var i=1;i<13;i++){
	
var monthoptionop=document.createElement("option");
	monthoptionop.value=i;
	document.getElementById("month").appendChild(monthoptionop);
	monthoptionop.innerHTML=i;
	if(i==Month){
		monthoptionop.selected=true;
	}
	
}for(var i=1;i<32;i++){
	var dayoptionop=document.createElement("option");
	dayoptionop.value=i;
	document.getElementById("day").appendChild(dayoptionop);
	dayoptionop.innerHTML=i;
		if(i==Day){
			dayoptionop.selected=true;
		}
	}	
	
	} 	
$(function(){
	var useridvalue=$("#userids").val();
			useridvalue=useridvalue.trim();
		
			$.ajax({
				url:"../ViewUserIncoPyIDforAjax",//数据提交的路径
				type:"post",//数据提交的方式
				data:{"Userid":useridvalue},//要提交的数据
				success:function(data){//定义请求响应成功以后要做的事
					$("#Ajaximg").attr("src",data);
				}
			})
			
	
	
	
	})

</script>
</head>
<body onload="loads()">
<div id="rightinfo">
<div id="tipstiter">
人员信息更新
</div>
<div id="rightbody">
<div class="rightkong"></div>
<div id="rightgl">
<form action="../PersonInfoUpdate" method="post">
<div class="bodytips">



<input type="submit" value="更新" class="button">
<input type="reset" value="返回" class="button" id="res">
</div>
<o:forEach  items="${sessionScope.AllPersonInfo }" var="PersonInfo">
<o:if test="${PersonInfo.id==param.PersonID}" var="new">	
<div id="bodycenter">
<div class="centerbodykong"></div>

<div id="datagl">
<div id="centertips">人员信息</div>


<div class="centerinput">
<div class="usernamedata">
用户ID:
  <input type="text" name="userid" class="input" id="userids" value="${PersonInfo.id}" readonly="true"></div>
<div class="usernamedata">用户密码:
  <input type="password" name="passwords" class="input" id="userpassowrdsid" value="${PersonInfo.usrpasswords}">
</div>
</div>
<div class="centerinput">
<div class="usernamedata">
用户名:
  <input type="text" name="usernam" class="input" id="usernameid" value="${PersonInfo.username}">
</div>
<div class="usernamedata">

出生日期:年:<select id="birthday" name="year">
		
		</select>
        月:<select id="month" name="months" onchange="change()">
		
		</select>
        日:<select id="day" name="days">
		
		</select>

<span>
<input  type="text" id="BirthdayInfo" value="${PersonInfo.userbirthday}" style="display:none">

</span>        
</div>
</div>
<div class="centerinput">
<div class="usernamedata">
<o:choose>
<o:when test="${PersonInfo.isadmin==1}">
是否为管理员:<input type="checkbox" name="isadmin" id="isadminid" value="1" checked="checked">
</o:when>
<o:otherwise>
是否为管理员:<input type="checkbox" name="isadmin" id="isadminid" value="1">
</o:otherwise>
</o:choose>
</div>
<div class="usernamedata">
<o:choose>
<o:when test="${PersonInfo.usersex==1}">
性别:男<input type="radio" name="usersex" id="usersexid" value="1" checked="checked">
女<input type="radio" name="usersex" id="usersexid" value="0">
</o:when>
<o:otherwise>
性别:男<input type="radio" name="usersex" id="usersexid" value="1">
女<input type="radio" name="usersex" id="usersexid" value="0" checked="checked">

</o:otherwise>
</o:choose>
</div>
</div>

<div id="infoinput">
人员简介:<textarea id="textarea" name="userinfo">${PersonInfo.userinfo}</textarea>
</div>

</div>
<div class="centerbodykong">
</div>
</div>
</o:if>
</o:forEach>

<div class="bodytips">

<input type="submit" value="更新" class="button" id="sub">
<input type="reset" value="重置" class="button" id="res">

</div>
</form>
</div>

<div class="rightkong"></div>

</div>
</div>
 </body>
</html>