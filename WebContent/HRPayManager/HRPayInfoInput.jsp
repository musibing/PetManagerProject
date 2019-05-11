<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="o" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="HRPayInfoInput.css">
<title>薪资信息
录入</title>
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
	var myDate = new Date();

 var defaultyear=myDate.getFullYear();    //获取完整的年份(4位,1970-????)
 var defaultMonth=myDate.getMonth();       //获取当前月份(0-11,0代表1月)

var birthdayoption=document.getElementById("birthday").options;

var monthoption=document.getElementById("month").options;
var dayoption=document.getElementById("day").options;
var l=monthoption.length;
	

for(var i=1400;i<2017;i++){
	
	var birthdayoptionop=document.createElement("option");
	
	birthdayoptionop.value=i;
	
	document.getElementById("birthday").appendChild(birthdayoptionop);

	birthdayoptionop.innerHTML=i;
	if(i==defaultyear){
		birthdayoptionop.selected=true;
		}
	}
for(var i=1;i<13;i++){
	
var monthoptionop=document.createElement("option");
	
monthoptionop.value=i;
	
	document.getElementById("month").appendChild(monthoptionop);

	monthoptionop.innerHTML=i;
	if(i==defaultMonth){
		monthoptionop.selected=true;
		}
}for(var i=1;i<32;i++){
	
	var dayoptionop=document.createElement("option");
		
	dayoptionop.value=i;
		
		document.getElementById("day").appendChild(dayoptionop);

		dayoptionop.innerHTML=i;
		if(i==10){
		dayoptionop.selected=true;
		}
	}	
	
	} 	


$(function(){
	$("#epmlyid").change(function(){
		
		/* $("#epmlyid").css({"border-width":"1px","border-color":"#E2E2E2","border-style":"solid"}); */
			var useridvalue=$("#epmlyid").val();
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
	$("#basepayid").change(function(){
		
		var totalpayvalue=Number($("#totalpayid").val());
		var basepayidvalue=Number($("#basepayid").val());
		 totalpayvalue=totalpayvalue+basepayidvalue;
		$("#totalpayid").attr("value",totalpayvalue);
		})
	$("#eatsubsidyid").change(function(){
		
		var totalpayvalue=Number($("#totalpayid").val());
		var eatsubsidvalue=Number($("#eatsubsidyid").val());
		totalpayvalue=totalpayvalue+eatsubsidvalue;
		$("#totalpayid").attr("value",totalpayvalue);
		})
	$("#housesubsidyid").change(function(){
		var totalpayvalue=Number($("#totalpayid").val());
		var housesubsidyidvalue=Number($("#housesubsidyid").val());
		totalpayvalue=totalpayvalue+housesubsidyidvalue;
		$("#totalpayid").attr("value",totalpayvalue);
		})
	$("#perfectid").change(function(){
		var totalpayvalue=Number($("#totalpayid").val());
		var perfectidvalue=Number($("#perfectid").val());
		totalpayvalue=totalpayvalue+perfectidvalue;
		$("#totalpayid").attr("value",totalpayvalue);
		})
	$("#taxes").change(function(){
		var totalpayvalue=Number($("#totalpayid").val());
		var taxesidvalue=Number($("#taxes").val());
		totalpayvalue=totalpayvalue-taxesidvalue;
		$("#totalpayid").attr("value",totalpayvalue);
		})
	$("#eypayid").change(function(){
		var totalpayvalue=Number($("#totalpayid").val());
		var eypayidvalue=Number($("#eypayid").val());
		totalpayvalue=totalpayvalue+eypayidvalue;
		$("#totalpayid").attr("value",totalpayvalue);
		})
	$("#rewardid").change(function(){
		var totalpayvalue=Number($("#totalpayid").val());
		var rewardidvalue=Number($("#rewardid").val());
		totalpayvalue=totalpayvalue-rewardidvalue;
		$("#totalpayid").attr("value",totalpayvalue);
		})						
	
	})

</script>
</head>
<body onload="loads()">
<div id="rightinfo">
<div id="tipstiter">
薪资录入
</div>
<div id="rightbody">
<div class="rightkong"></div>
<form action="../HRPayInfoAdd" method="post">
<div id="rightgl">
<div class="bodytips">
<input type="submit" value="更新" class="button">
<input type="reset" value="返回" class="button" id="res">
</div>
<div id="bodycenter">
<div class="centerbodykong"></div>

<div id="datagl">
<div id="centertips">薪资信息录入</div>

<div id="baseinfo">
<div class="centerinput">
<div class="usernamedata">薪资编号:
  <input type="text" name="paynumber" class="input" id="payids" value="${sessionScope.MaxID}" readonly="readonly"></div>
<div class="usernamedata">
员工ID:
  <select id="epmlyid" name="HRepmlyID">
  <o:forEach items="${sessionScope.AllPersonInfo}" var="AllPerson">
  <option value="${AllPerson.id}">${AllPerson.id}/${AllPerson.username}</option>
  </o:forEach>
  </select>
</div>

</div>
<div class="centerinput">

<div class="usernamedata">

基本薪资:
  <input type="text" name="basepaynumber" id="basepayid" class="input">
</div>
<div class="usernamedata">饭补:
  <input type="text" class="eatsubsidy" id="eatsubsidyid" name="eatnumber">
</div>
</div>
<div class="centerinput">
<div class="usernamedata">
房补:<input type="text" class="housesubsidy" id="housesubsidyid" name="houesnumber">
  
</div>
<div class="usernamedata">
工资发放日期:年:<select id="birthday" name="year">
		
		</select>
        月:<select id="month" name="months" onchange="change()">
		
		</select>
        日:<select id="day" name="days">
		
		</select>
</div>
</div>
<div class="centerinput">
<div class="usernamedata">全勤奖:
  <input type="text" name="perfect" id="perfectid" >

</div>
<div class="usernamedata">

赋税:<input type="text" name="taxes" id="taxes" >
</div>
<div class="usernamedata">

额外补助:<input type="text" name="eypay" id="eypayid" >
</div>
<div class="usernamedata">
罚款:<input type="text" name="reward" id="rewardid">

</div>
<div class="usernamedata">
总计薪资:<input type="text" name="totalpay" id="totalpayid">

</div>
</div>
</div>
<div id="centerkong">
<div id="imgkong"></div>
<div align="center" id="imgDiv">
<img alt="图片预览" src="../ViewPetIncoByID" id="Ajaximg" name="图片预览" width="70" height="70">
	</div>
    
    </div><!--id centerkong end-->
</div>
<div class="centerbodykong">
</div>
</div>
<div class="bodytips">

<input type="submit" value="更新" class="button" id="sub">
<input type="reset" value="重置" class="button" id="res">

</div>
</div>
</form>
<div class="rightkong"></div>

    
    
</div>
</div>
 </body>
</html>