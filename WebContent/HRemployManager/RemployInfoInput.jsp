<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="o" uri="http://java.sun.com/jsp/jstl/core"%> 
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="RemployInfoInput.css">
<title>应聘人员信息录入</title>
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
function loads(){
	

for(var i=1;i<500;i++){
	
	var ageoption=document.createElement("option");
	
	ageoption.value=i;
	
	document.getElementById("ageid").appendChild(ageoption);

	ageoption.innerHTML=i+'岁';
	
	}
	}
	$(function(){
		
		
	$("#TelNumberID").focus(function(){
		
		$("#TelNumberID").css({"border-width":"1px","border-color":"#EED09F","border-style":"solid"});
		$("#telinfo").text("");
	})
	$("#TelNumberID").blur(function(){
		$("#TelNumberID").css({"border-width":"1px","border-color":"#E2E2E2","border-style":"solid"});
			var telvalue=$("#TelNumberID").val();
			telvalue=telvalue.trim();
			if(telvalue==null||telvalue==""){
				$("#telinfo").append("<font color='red'>手机号不能为空！</font>");
				return;
			}
			$.ajax({
				url:"../CheckTelNumberAjax",//数据提交的路径
				type:"post",//数据提交的方式
				data:{"Telnumber":telvalue},//要提交的数据
				success:function(data){//定义请求响应成功以后要做的事		
					
					$("#telinfo").get(0).innerHTML=data;
				}
			})
			
	})
})	
</script>
</head>
<body onload="loads()">

<div id="rightinfo">
<div id="tipstiter">
应聘人员信息录入
</div>
<div id="rightbody">
<div class="rightkong"></div>

<div id="rightgl">
<div class="bodytips">



<input type="submit" value="更新" class="button">
<input type="reset" value="返回" class="button" id="res">
</div>
<div id="bodycenter">
<div class="centerbodykong"></div>

<div id="datagl">

<div id="centertips">应聘人员信息录入</div>
<form action="../RemployInfoAdd" method="post" id="formss">
<div id="baseinfo">
<div class="centerinput">
<div class="usernamedata">应聘者编号:
  <input type="text" name="EmployID" class="input" id="userid" value="${sessionScope.MaxID}" readonly="readonly"></div>
<div class="usernamedata">
性名:
  <input type="text" name="username" class="input" id="usernameid">
</div>

</div>
<div class="centerinput">

<div class="usernamedata">

年龄:<select id="ageid" name="year">
		
		</select>
 <span id="sp">应聘者是否入库:是：
 <input type="checkbox" name="isdatabase" value="1"></span>   
</div>
<div class="usernamedata">

性别:男<input type="radio" name="usersex" id="usersexid" value="1">
女<input type="radio" name="usersex" id="usersexid" value="0">
</div>
</div>
<div class="centerinput">
<div class="usernamedata">

所学专业:
  <input type="text" name="Professional" id="ProfessionalId">
</div>
<div class="usernamedata">
应聘职位:<select name="JobInfo">
		<o:forEach items="${sessionScope.AllJobInfo}" var="alljob">
		<option value="${alljob.jobid}">${alljob.jobname}</option>
		</o:forEach>
		</select>
</div>
</div>
<div class="centerinput">
<div class="usernamedata">

毕业学校:<input type="text" name="School" id="SchoolID">
</div>
<div class="usernamedata">
学历:<input type="text" name="Ecdtion" id="Ecdtionid">
</div>
</div>
<div class="centerinput">
<div class="usernamedata">

Email地址:<input type="text" name="EmailAddress" id="EmailAddressID">
</div>
<div class="usernamedata">

电话号码:<input type="text" name="TelNumber" id="TelNumberID">
</div>
</div>
<div class="infoinput">
<div class="text">
工作经验:
</div>
<textarea class="textarea" name="Jobinfodata"></textarea>
</div>
<div class="infoinput">
<div class="text">
详细经历:
</div>
<textarea class="textarea" name="Employinfo"></textarea>
</div>
<div class="centerinput">

<input type="submit" value="更新" class="button" id="sub">
<input type="reset" value="重置" class="button" id="res">

</div>
</div>
</form>


<div id="centerkong">
    <form action="../AccountIncoUpload" method="post" enctype="multipart/form-data" name="form1">
<div id="imgkong"><input type="submit" name="submit" class="button" id="uploaduserinco" value="上传"></div>
<div align="center" id="imgDiv">
		<img alt="图片预览" src="../ViewPetIncoByID" id="img" name="图片预览" width="" height="">
	</div>

    <div id="PetIncoIMGFile">
		
		<input name="imgA" type="file" id="txtSrc" onChange="setImagePreview(this,imgDiv,img);" value="选择图像">
	
	
</div>

</form>

</div>

<span id="telinfo"></span>

</div><!--id centerkong end-->
</div>
</div>
</div>
</div>


 </body>
</html>