<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
   <%@ taglib prefix="o" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="RemployInfoUpdate.css">
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


	
var EmployAge=$("#EmployAge").val();
	
var Ageoption=document.getElementById("AgeID").options;

for(var i=0;i<500;i++){
	var Ageoption=document.createElement("option");
	
	Ageoption.value=i;
	
	document.getElementById("AgeID").appendChild(Ageoption);

	Ageoption.innerHTML=(i+"岁");
	if(i==EmployAge){
		Ageoption.selected=true;
	}
}
var EmployIsdatebase=$("#EmployIsdatebase").val();
if(EmployIsdatebase==1){
	$("#isdatebaseid").attr("checked","checked");
	}
var EmployIsdatebase=$("#Employsex").val();
var usersex=document.getElementsByName("usersex");
for(var x=0;x<usersex.length;x++){
	
	if(usersex[x].value==EmployIsdatebase){
		usersex[x].checked=true;
	}
	}


}
$(function(){
	
/* 	var FileNamevalue=$("#FileName").val();
	var useridvalue=$("#userids").val();
	var filename="jps";
			useridvalue=useridvalue.trim();
			if(useridvalue==null||useridvalue==""){
				$("#logininfo").append("<font color='red'>用户名不能为空！</font>");
				return;
			}
			$.ajax({
				url:"../ViewUserIncoPyIDforAjax",//数据提交的路径
				type:"post",//数据提交的方式
				data:{"Userid":useridvalue,"FileName":filename},//要提交的数据
				success:function(data){//定义请求响应成功以后要做的事
					$("#Ajaximg").attr("src",data);
				}
			}) */
			
var JobID=$("#EmployJobinfo").val();
			
var $jobop=$(".ops");

var leng=$jobop.length;
 for(var x=0;x<leng;x++){
        	
		var value=$jobop[x].value;
		
		if(value==JobID){
			$jobop[x].selected=true;
				}
			}
	
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
<o:forEach  items="${sessionScope.AllPersonInfo }" var="PersonInfo">

<o:if test="${PersonInfo.employid==sessionScope.EmployID}" var="new">	

<div id="rightgl">
<div class="bodytips">



<input type="submit" value="更新" class="button">
<input type="reset" value="返回" class="button" id="res">
</div>
<div id="bodycenter">
<div class="centerbodykong"></div>

<div id="datagl">

<div id="centertips">应聘人员信息录入${PersonInfo.jobInfo}</div>
<form action="../EmploryinfoUpdate" method="post" id="forms">
<div id="baseinfo">
<div class="centerinput">
<div class="usernamedata">应聘者编号:
  <input type="text" name="EmployID" class="input" id="userid" readonly="readonly" value="${PersonInfo.employid}"></div>
<div class="usernamedata">
性名:
  <input type="text" name="username" class="input" id="usernameid" value="${PersonInfo.employName}">
</div>

</div>
<div class="centerinput">

<div class="usernamedata">

年龄:<select name="Age" id="AgeID">
		
		</select>
        <span>
<input  type="text" id="EmployAge" value="${PersonInfo.employAge}" style="display:none">

</span>
 <span id="sp">应聘者是否入库:是：
 <input type="checkbox" name="isdatabase" id="isdatebaseid" value="1">
 <input  type="text" id="EmployIsdatebase" value="${PersonInfo.isdatabse}" style="display:none"></span>
    
</div>
<div class="usernamedata">

性别:男<input type="radio" name="usersex" value="1">
女<input type="radio" name="usersex"  value="0">
<input  type="text" id="Employsex" value="${PersonInfo.employSex}" style="display:none">
</div>
</div>
<div class="centerinput">
<div class="usernamedata">

所学专业:
  <input type="text" name="Professional" id="ProfessionalId" value="${PersonInfo.professional}">
</div>
<div class="usernamedata">
应聘职位:<select name="JobInfo" id="JOB">
		<o:forEach items="${sessionScope.AllJobInfo}" var="alljob">
		<option value="${alljob.jobid}" class="ops">${alljob.jobname}</option>
		</o:forEach>
        </select>
        
        <input  type="text" id="EmployJobinfo" value="${PersonInfo.jobInfo}" style="display:none">
        
</div>
</div>
<div class="centerinput">
<div class="usernamedata">

毕业学校:<input type="text" name="School" id="SchoolID" value="${PersonInfo.school}">
</div>
<div class="usernamedata">
学历:<input type="text" name="Ecdtion" id="Ecdtionid" value="${PersonInfo.ecdtion}">
</div>
</div>
<div class="centerinput">
<div class="usernamedata">

Email地址:<input type="text" name="EmailAddress" id="EmailAddressID" value="${PersonInfo.emailAddress}">
</div>
<div class="usernamedata">

电话号码:<input type="text" name="TelNumber" id="TelNumberID" value="${PersonInfo.employTelNumber}">
</div>
</div>
<div class="infoinput">
<div class="text">
工作经验:
</div>
<textarea class="textarea" name="Jobinfodata">
${PersonInfo.jobinfodata}</textarea>
</div>
<div class="infoinput">
<div class="text">
详细经历:
</div>
<textarea class="textarea" name="Employinfo">
${PersonInfo.employinfo}</textarea>
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



</div><!--id centerkong end-->
</div>
</div>

   <input  type="text" id="FileName" value="RemployInfoUpdate.jsp" style="display:none">
</o:if>
</o:forEach>

</div>
</div>


 </body>
</html>