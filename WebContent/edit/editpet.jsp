<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="o" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>宠物之约</title>
<link type="text/css" rel="stylesheet" href="editpet.css">
<script src="../jquery/jquery-1.7.2.js"></script>
<script>
$(function(){
	var Ownerid=$("#Ownerid").val();
	var selectownerid=$("#owners option");
	for(var i=0;i<selectownerid.length;i++){
		var value=selectownerid[i].value;
		if(value==Ownerid){
			selectownerid[i].selected=true;
		}
	}
	var typeid=$("#typeid").val();
	var pettype=$("#pettypes option");
	for(var i=0;i<pettype.length;i++){
		var value=pettype[i].value;
		if(value==typeid){
			pettype[i].selected=true;
		}
	} 
 	var petsexvalue=$("#petsex").val();
 	var petsexarray=$("form :radio");
	for(var i=0;i<petsexarray.length;i++){
		var petsexarrayvalue=petsexarray[i].value;
		if(petsexarrayvalue==petsexvalue){
			petsexarray[i].checked=true;
		}
}
})
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
  </script>
</head>

<body onload="loads()">
<div id="zongbiao">
<div class="zhubiaokong"></div>
<div id="zhubiao">
<div id="topkong">

</div>
<div id="top">
欢迎进入宠物管理系统
</div><!--id top end-->

<div id="centermanager">
<div id="tips">
修改宠物信息
</div><!--id tips end-->
<div id="centerkong">
<div align="center" id="imgDiv">
		<img alt="图片预览" src="../ViewPetIncoByID" id="img" name="图片预览" width="" height="">
	</div>
    <form action="../PetIncoImgUpload" method="post" enctype="multipart/form-data" name="form1">
    <div id="PetIncoIMGFile">
	
		<input name="imgA" type="file" id="txtSrc" onChange="setImagePreview(this,imgDiv,img);" value="选择图像">
		<input type="submit" name="submit" value="上传">
	
</div>
</form>
</div><!--id centerkong end-->
<o:forEach items="${sessionScope.PetInfoById}" var="PetInfoById">
<form action="../PetInfoChange" method="post">

<div class="center">
拥有者:<select id="owners" name="owner" >
<o:forEach items="${sessionScope.PetOwner}" var="Owner">
<option value="${Owner.id}" id="ownersoption">${Owner.id}/${Owner.username}</option>
</o:forEach>

</select>
</div>

<div class="center">
宠物名称:

  <input class="input" type="text" name="petname" id="petnames" value="${PetInfoById.petname}">
</div>
<div class="center">
重量:
  <input class="input" type="text" name="petwieth" id="petwieths" value="${PetInfoById.petweight}">
</div>
<div class="center">
性别:
  <input type="radio" name="petsexname" class="petsexs" value="公" >公
  <input type="radio" name="petsexname" class="petsexs" value="母">母
</div>
<div class="center">
毛皮颜色:
  <input class="input" type="text" name="petcolor" id="petcolors" value="${PetInfoById.petcolor}">
</div>
<div class="center">
市场价格:
  <input class="input" type="text" name="petprice" id="petprices" value="${PetInfoById.petmarkprice}">
</div>

<div class="center">
宠物类别:<select id="pettypes" name="pettype" >
<o:forEach items="${sessionScope.AllPetType}" var="PetType">
<option value="${PetType.typeid}">${PetType.typename}</option>
</o:forEach>

</select>
<div id="hedden">
<input  type="text" id="Ownerid" value="${PetInfoById.ownerid}" style="display:none">
<input  type="text" id="typeid" value="${PetInfoById.pettypeid}" style="display:none">
<input  type="text" id="petsex" value="${PetInfoById.petsex}" style="display:none">
</div>
</div>
<div class="center">
<input type="reset" class="but" id="res" value="取消">
</div>
</form>
</o:forEach>
</div><!--id centermanager end-->
</div><!--id zhubiao end-->
<div id="rightkong" class="zhubiaokong"></div>
</div><!--id zongbiao end-->
</body>
</html>