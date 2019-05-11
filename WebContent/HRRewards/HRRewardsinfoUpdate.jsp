<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="o" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="HRRewardsinfoInput.css">
<title>奖惩信息录入</title>
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
$(function(){
	var noneemploryId=$("#noneemploryId").val();
	
	var $RewardsEmploryIDselect=$("#RewardsEmploryIDs option");
	for(var i=0;i<$RewardsEmploryIDselect.length;i++){
		var value=$RewardsEmploryIDselect[i].value;
		if(value==noneemploryId){
			$RewardsEmploryIDselect[i].selected=true;
		}
	}
	var nonehrewardstype=$("#nonehrewardstype").val();
var RewardType=document.getElementsByName("RewardType");
for(var x=0;x<RewardType.length;x++){
	
	if(RewardType[x].value==nonehrewardstype){
		RewardType[x].checked=true;
	}
	}
	})
</script>
</head>
<body>
<div id="rightinfo">
<div id="tipstiter">
奖惩信息录入
</div>
<div id="rightbody">
<div class="rightkong"></div>
<form action="../HRRewardsInfoUpdate" method="post">
<div id="rightgl">

<div class="bodytips">



<input type="submit" value="更新" class="button">
<input type="reset" value="返回" class="button" id="res">
</div>
<o:forEach  items="${sessionScope.AllRewardsInfo}" var="PersonInfo">
<o:if test="${PersonInfo.rewardId==sessionScope.Resetsave}" var="new">
<div id="bodycenter">
<div class="centerbodykong"></div>

<div id="datagl">

<div id="centertips">奖惩信息录入</div>

<div id="baseinfo">
<div class="centerinput">
<div class="usernamedata">奖惩信息编号:
  <input type="text" name="Rewardsid" class="input" id="Rewardsids" value="${PersonInfo.rewardId}" readonly="readonly"></div>
<div class="usernamedata">
奖惩名称:
  <input type="text" name="Rewardsnmae" class="input" id="Rewardsnmaeid" value="${PersonInfo.rewardId}">
</div>

</div>
<div class="centerinput">

<div class="usernamedata">

奖惩原因:<input type="text" name="Rewardscause" id="purpose" class="RewardscauseId" value="${PersonInfo.explains}">
</div>
<div class="usernamedata">
员工编号:
<select  name="RewardsEmploryID" id="RewardsEmploryIDs">

<o:forEach items="${sessionScope.AllPersonInfo}" var="AllPerson">
<option value="${AllPerson.id}">${AllPerson.id}/${AllPerson.username}
</option>
</o:forEach>
</select>

  <input  type="text" id="noneemploryId" value="${PersonInfo.emploryId}" style="display:none">
</div>
</div>
<div class="centerinput">

<div class="usernamedata">

奖惩类型:
 奖励:<input type="radio" name="RewardType" id="purpose" class="RewardscauseId" value="1">
   惩罚:<input type="radio" name="RewardType" id="purpose" class="RewardscauseId" value="0">
   <input  type="text" id="nonehrewardstype" value="${PersonInfo.hrewardstype}" style="display:none">
</div>
<div class="usernamedata">奖惩金融:
  <input type="text" name="RewardsNumber" id="RewardsEmploryIDs" class="RewardscauseId" value="${PersonInfo.rewardsnumber}">
</div>
</div>
</div><!--id centerkong end-->



<div class="infoinput">
<div class="text"><span class="usernamedata">奖惩说明
  <textarea class="textarea" name="Rewardsexplain">${PersonInfo.reason}</textarea>
</span></div>
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

</div>
</form>
<div class="rightkong"></div>

</div>
</div>
 </body>
</html>