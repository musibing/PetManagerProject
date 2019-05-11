<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="o" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="HRtrainplanInput.css">
<title>培训计划录入</title>
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
function changebegin(){
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
function changeend(){
var scendmonthday=0;
var damonth="1,3,5,7,8,10,12";
var damonthday=damonth.split(",");//s分割字符串
var monthday=0;
var birthdayoption=document.getElementById("birthdayend").options;	
var yearvalue=document.getElementById("birthdayend").value;
var monthvalue=document.getElementById("monthend").value;
var day=document.getElementById("dayend").options;

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
			document.getElementById("dayend").appendChild(dayops);
			dayops.innerHTML=x;
			
			}
		
}
function loads(){
	
var birthdayoption=document.getElementById("birthday").options;

var monthoption=document.getElementById("month").options;
var dayoption=document.getElementById("day").options;
var birthdayoption=document.getElementById("birthdayend").options;

var monthoption=document.getElementById("monthend").options;
var dayoption=document.getElementById("dayend").options;
var l=monthoption.length;
	

for(var i=1400;i<2017;i++){
	
	var birthdayoptionop=document.createElement("option");
	
	birthdayoptionop.value=i;
	
	document.getElementById("birthday").appendChild(birthdayoptionop);
	
	birthdayoptionop.innerHTML=i;
	
	}for(var i=1400;i<2017;i++){
	
	var birthdayoptionop=document.createElement("option");
	
	birthdayoptionop.value=i;
	
document.getElementById("birthdayend").appendChild(birthdayoptionop);
	birthdayoptionop.innerHTML=i;
	
	}
for(var i=1;i<13;i++){
	
var monthoptionop=document.createElement("option");
	
monthoptionop.value=i;
	
	document.getElementById("month").appendChild(monthoptionop);

	monthoptionop.innerHTML=i;
	
}
for(var i=1;i<13;i++){
	
var monthoptionop=document.createElement("option");
	
monthoptionop.value=i;
	
	
document.getElementById("monthend").appendChild(monthoptionop);
	monthoptionop.innerHTML=i;
	
}for(var i=1;i<32;i++){
	
	var dayoptionop=document.createElement("option");
		
	dayoptionop.value=i;
		
		document.getElementById("day").appendChild(dayoptionop);
		
		dayoptionop.innerHTML=i;
		
	}
for(var i=1;i<32;i++){
	
	var dayoptionop=document.createElement("option");
		
	dayoptionop.value=i;
		
		document.getElementById("dayend").appendChild(dayoptionop);
		dayoptionop.innerHTML=i;
		
	}		
	
	} 	

</script>
</head>
<body  onload="loads()">
<div id="rightinfo">
<div id="tipstiter">
培训计划信息录入
</div>
<div id="rightbody">
<div class="rightkong"></div>
<div id="rightgl">
<form action="../HRtrainplanInput" method="post">
<div class="bodytips">



<input type="submit" value="更新" class="button">
<input type="reset" value="返回" class="button" id="res">
</div>
<div id="bodycenter">
<div class="centerbodykong"></div>
<div id="datagl">
<div id="centertips">培训计划信息录入</div>

<div id="baseinfo">
<div class="centerinput">
<div class="usernamedata">培训计划编号:
  <input type="text" name="trainid" class="input" id="trainids" value="${sessionScope.MaxID}" readonly="readonly"></div>
<div class="usernamedata">
培训名称:
  <input type="text" name="trainnmae" class="input" id="trainnmaes">
</div>

</div>
<div class="centerinput">

<div class="usernamedata">

培训目的:<input type="text" name="purpose" id="purposeid" class="input">
</div>
<div class="usernamedata">

培训讲师:<input type="text" class="input" id="teacherid" name="teacher">
</div>
</div>
<div class="centerinput">
<div class="usernamedata">
培训开始时间:年:<select id="birthday" name="year">
		
		</select>
        月:<select id="month" name="months" onchange="changebegin()">
		
		</select>
        日:<select id="day" name="days">
		
		</select>
</div>
<div class="usernamedata">
培训结束时间:年:<select id="birthdayend" name="yearend">
		
		</select>
        月:<select id="monthend" name="monthsend" onchange="changeend()">
		
		</select>
        日:<select id="dayend" name="daysend">
		
		</select>
</div>
</div>
<div class="centerinput">
<div class="usernamedata">
培训人员:<input type="text" name="student" >

</div>
<div class="usernamedata">
培训是否完成:<input type="checkbox" name="isfinish" id="isfinishid" value="1"></div>
</div>
</div><!--id centerkong end-->



<div class="infoinput">
<div class="text">
培训材料
</div>
<textarea class="textarea" name="traindata"></textarea>
</div>
<div class="infoinput">
<div class="text">
培训效果:
</div>
<textarea class="textarea" name="traineffect"></textarea>
</div>
<div class="infoinput">
<div class="text">
培训总结:
</div>
<textarea class="textarea" name="traininfo"></textarea>
</div>

</div>
<div class="centerbodykong">
</div>
</div>
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