<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="HRRegister.css">
<script src="../jquery/jquery-1.7.2.js"></script>
<script>
function setImagePreview(docObj,localImagId,imgObjPreview)   
    {  
		
		var name=docObj.value;
		var type=name.split(".");
		type=type[type.length-1];
		if("jpg"!=type &&"png"!=type &&"jpeg"!=type&&"gif"!=type){
			alert("错误的类型，请选择图片");
			document.getElementById("txtSrc").value=null;//防止将非图片类型上传
			return ;
		}
		
        if(docObj.files && docObj.files[0])  
        {  

			//alert("hello"+docObj.files[0]);
            //火狐7以上版本不能用上面的getAsDataURL()方式获取，需要一下方式    
         	document.getElementById("imgDiv").style.display="block";
            document.getElementById("img").src= window.URL.createObjectURL(docObj.files[0]);  
        }  
        else  
        {  
            //IE下，使用滤镜  
            docObj.select();  
            var imgSrc = document.selection.createRange().text;  
              
            //必须设置初始大小  
            localImagId.style.width = "300px";  
            localImagId.style.height = "200px";  
              
            //图片异常的捕捉，防止用户修改后缀来伪造图片  
            try  
            {  
                localImagId.style.filter="progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";  
                localImagId.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;  
             }  
             catch(e)  
             {  
                alert("您上传的图片格式不正确，请重新选择!");  
                return false;  
             }                            
             imgObjPreview.style.display = 'none';  
             document.selection.empty();  
       }  
       return true;  
   }
function gettime(){
	 var time=new Date();
	var hou=time.getHours();
	var mins=time.getMinutes();
	var sceo=time.getSeconds();
	var milli=time.getMilliseconds();
	
	document.getElementById("time").innerHTML=hou+'时'+mins+'分'+sceo+'秒'+milli+'毫秒';
	 }
function startTime(){
	int=window.setInterval("gettime()",1000)
	var birthdayoption=document.getElementById("birthday").options;

var monthoption=document.getElementById("month").options;
var dayoption=document.getElementById("day").options;
var l=monthoption.length;
	

for(var i=1400;i<2017;i++){
	
	var birthdayoptionop=document.createElement("option");
	
	birthdayoptionop.value=i;
	
	document.getElementById("birthday").appendChild(birthdayoptionop);

	birthdayoptionop.innerHTML=i;
	
	}
for(var i=1;i<13;i++){
	
var monthoptionop=document.createElement("option");
	
monthoptionop.value=i;
	
	document.getElementById("month").appendChild(monthoptionop);

	monthoptionop.innerHTML=i;
	
}for(var i=1;i<32;i++){
	
	var dayoptionop=document.createElement("option");
		
	dayoptionop.value=i;
		
		document.getElementById("day").appendChild(dayoptionop);

		dayoptionop.innerHTML=i;
		
	}	
	
	
	}
$(function(){
	
	$("#nvation a").css({"color":"#FFF","text-decoration":"none"});
		
	})
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
	
</script>
<title>人力资源管理系统用户注册</title>
</head>
<body onload="startTime()">
<div id="main">


<div id="top">
<div id="toptips">
<div id="topkong">
</div>
<div id="topwelcome">
<p>欢迎您!当前时间是:<span id="time"></span>,欢迎你来到人力资源管理系统</p>
</div>
<div id="toplist">
<div class="toplist">
<p><a href="../HRlogin/login.jsp">企业用户登录</a></p>
</div>
<div class="toplist">
<p><a href="HRRegister.jsp">企业用户注册</a></p>
</div>
<div class="toplist">
<p><a href="../HRlogin/login.jsp">个人用户登录</a></p>
</div>
<div class="toplist">
<p><a href="HRRegister.jsp">个人用户注册</a></p>
</div>
<div class="toplist">
<p><a href="../HRHelp/HRHelp.jsp">帮助中心</a></p>
</div>

</div>
<div id="topmain">
  <img src="../img/logo/top/logo.png" width="1366" height="60"></div>

<div id="nvation">
<div id="nvationkong">
</div>
<div class="nvation">
<a href="#"><span>首&nbsp;&nbsp;页</span></a>

</div>
<div class="nvation">
<a href="#"><span>人才管理</span></a>

</div>
<div class="nvation">
<a href="#"><span>招聘管理</span></a>

</div>
<div class="nvation">
<a href="#"><span>培训管理</span></a>

</div>
<div class="nvation">
<a href="#"><span>奖惩管理</span></a>

</div>
<div class="nvation">
<a href="#"><span>薪金管理</span></a>

</div>
<div class="nvation">
<a href="#"><span>资讯中心</span></a>

</div>
<div class="nvation">
<a href="#"><span>财务公报</span></a>

</div>
<div class="nvation">
<a href="#"><span>公司简介</span></a>

</div>
<div class="nvation">
<a href="#"><span>网站地图</span></a>

</div>

</div>
</div>
</div>




<div id="center">

<div id="left">
<div id="lefttips">
<div id="lefttetle">
个人用户注册
</div>
<div id="tipsmore">
已有帐号？点击这里&nbsp; <a href="../HRlogin/login.jsp">登录</a>
</div>
</div>
<div id="leftkong"></div>
<div id="leftinputdata">

<div id="userdata">
<form action="../HRUserRegister" method="post">
<div id="userdatecenter">
<div class="userdatinput">
用户ID:
  <input type="text" name="userid" class="input" id="userids" value="请输入用户ID">
</div>
<div class="userdatinput">
用户名:<input type="text" class="input" name="username" id="usernameid" value="请输入用户名">
</div>
<div class="userdatinput">
密码:<input type="password" class="input" name="userpassword" id="passwordid" value="请输入密码">
</div>
<div class="userdatinput">
性别:男<input type="radio" value="1" name="sex">女<input type="radio" value="0" name="sex">
</div>
<div class="userdatinput">
出生日期:年:<select id="birthday" name="year">
		
		</select>
        月:<select id="month" name="months" onchange="change()">
		
		</select>
        日:<select id="day" name="days">
		
		</select>
</div>
<div class="userdatinput">
是否为管理员:是<input type="checkbox" value="1" name="isadmin">

</div>
<div class="userdatinput">
个人介绍:

</div>

<div id="userinfo" class="userdatinput">
<textarea id="textarea" name="userinfo"></textarea>
</div>
<div class="userdatinput">
<div id="yangzhenma">
验证码:<input type="text" value="请输入验证码"  class="input" name="CodeName"><br>
</div>
<div id="SecuritycodeIMG">

<img src="../Security_code" width="75" height="33"></div></div>
<div class="userdatinput">
<p><input type="checkbox" value="read" name="Iarege">:我同意《人力资源网个人用户服务协议》，并自愿遵守该协议。</p>

</div>
<div class="userdatinput">
<input type="submit" class="button" id="button" value="注册用户">
<input type="reset" class="button" value="重置数据">

</div>
</div>
</form>
</div>


<div id="centerkong">
<div align="center" id="imgDiv">
		<img alt="图片预览" src="../ViewPetIncoByID" id="img" name="图片预览" width="" height="">
	</div>
    <form action="../PetIncoImgUpload" method="post" enctype="multipart/form-data" name="form1">
    <div id="PetIncoIMGFile">
	
		<input name="imgA" type="file" id="txtSrc" onChange="setImagePreview(this,imgDiv,img);" value="选择图像">
		<input type="submit" name="submit" class="button" id="uploaduserinco" value="上传">
	
</div>
</form>
</div><!--id centerkong end-->


</div>
<div id="registertips">
<div id="registertipsinfo">
注册说明
</div>
<div class="registertipsinfo">
<p>1.用户名不能为空,为了增强用户密码的安全性,建议用户密码中包含大小写字母,数字以及特殊符号。</p>

</div>
<div class="registertipsinfo">
<p>2.用户图像上传最佳分辨率必须小于等于420*420,如果用户上传的图像超出系统将会自动修改成最佳分辨率,用户必须在注册用户信息后上传用户头像。
</p>
</div>


</div>

</div>
<div id="right">
<div class="Userlogo">
  <img src="../img/reg/defult.gif" width="150" height="150"></div>
<div class="righttips">
企业文化
</div>
<div class="right">
文化:创新,核心驱动力
</div>
<div class="right">
经营理念:务实,诚信
</div>
<div class="Userlogo">
  <img src="../img/apple/apple.jpg" width="150" height="150"></div>
<div class="righttips">
公告
</div>
<div class="right">
2016年度总结大会
</div>
<div class="right">
2016第三季度财务公报
</div>
</div>
<div id="bottom">
<div id="bottomtips">
<input type="text" id="inputtext" value="搜索" name="inputsear">
<select name="selectzhiweiinfo" id="selectzhiwei">
<option value="职位">职位</option>
</select>
<select name="selecthangyeinfo" id="selecthangye">
<option value="行业">行业</option>
</select>
<input type="submit" class="button" value="搜索">
</div>
<div id="bottomcenter">
<div id="bottomcenterimg">
  <img src="../img/logo/bottom/Weblogo.png" width="110" height="121"></div>
 <div class="bottomcenter">
 <div class="bottomcentertips">
 关于我们
 </div>
 <div class="bottomcenterleirong">
 公司简介
 </div>
 <div class="bottomcenterleirong">
 法律声明
 </div>
  <div class="bottomcenterleirong">
  联系我们
 </div>
 <div class="bottomcenterleirong">
 投诉咨询
 </div>
 </div> 
 <div class="bottomcenter">
 <div class="bottomcentertips">
 个人求职
 </div>
 <div class="bottomcenterleirong">
 个人注册
 </div>
 <div class="bottomcenterleirong">
 
 职位搜索
 </div>

 </div> 
 <div class="bottomcenter">
 <div class="bottomcentertips">
 企业招聘
 </div>
 <div class="bottomcenterleirong">
 企业注册
 </div>
 <div class="bottomcenterleirong">
 会员细则
 </div>
<div class="bottomcenterleirong">
 人才测评
 </div>
 </div> 
 
 <div id="bottomcentertebie" class="bottomcenter">
 <div class="bottomcentertips">
 友情链接
 </div>
 <div class="bottomcenterleirong">
 派遣频道
 </div>
 <div class="bottomcenterleirong">
 社保查询
 </div>
<div class="bottomcenterleirongtebie">
 珠海高新区
 </div>
 <div class="bottomcenterleirongtebie">
 珠海市人才资源与就业
 </div>
 </div> 
</div>
<div id="beian">
<div id="beianleft">
<div class="beianleft" id="beianlefttips">

主办单位:珠海市南方人力资源服务有限公司
</div>
<div class="beianleft">
Copyright 2001-2012 www.zh-hr.com All Rights Reserved
</div>
<div class="beianleft">
<img src="../img/beian/beian3.png" width="20" height="20">粤公网安备 44040202000157号　　粤B2-20040128 </div>
</div>
<div id="beiancenter">
<div id="beiancenterimgkong"></div>
<div id="beiancenterimg">
<div id="imgdate"></div>
  <img src="../img/beian/beian2.png" width="43" height="43"><img src="../img/beian/beian.png" width="43" height="43"></div>
  </div>
<div id="beianright">
<div id="beianrightkong"></div>
<div class="beianright">
WebSite Design KesuNet Co., Ltd
</div>
</div>
</div>


</div>
</div>
</div>

</div>
</body>
</html>