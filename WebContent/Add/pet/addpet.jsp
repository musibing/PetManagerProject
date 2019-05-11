<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="o" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>宠物之约</title>
<link type="text/css" rel="stylesheet" href="addpet.css">
<script src="../jquery/jquery-1.7.2.js"></script>
<script src="../jquery/jquery-1.7.2.js"></script>
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?b8c358b26d18dee09914931b71cac447";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>
<script>
$(function(){
	var ownerid=$("#ownersoption").val();
	if(ownerid==8){
		$("#ownersoption").attr("selected","true");
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
<body>
<div id="zongbiao">
<div class="zhubiaokong">

</div>
<div id="zhubiao">
<div id="topkong"></div>
<div id="top">
欢迎进入宠物管理系统
</div><!--id top end-->
<div id="tips">
添加宠物信息
</div><!--id tips end-->
<div id="centerkong">
<div align="center" id="imgDiv">
		<img alt="图片预览" src="" id="img" name="图片预览" width="" height="">
	</div>
    <form action="../PetIncoImgUpload" method="post" enctype="multipart/form-data" name="form1">
    <div id="PetIncoIMGFile">
	
		<input name="imgA" type="file" id="txtSrc" onChange="setImagePreview(this,imgDiv,img);" value="选择图像">
		<input type="submit" name="submit" value="上传">
	
</div>
</form>
</div><!--id centerkong end-->
<div id="centermanager">


<form action="../../AddPetInfo" method="post">

<div class="center">
拥有者:<select id="owners" name="owner" >
<o:forEach items="${sessionScope.PetOwner}" var="Owner">
<option value="${Owner.id}" id="ownersoption" selected="">${Owner.id}/${Owner.username}</option>
</o:forEach>

</select>
</div>

<div class="center">
宠物名称:

  <input class="input" type="text" name="petname" id="petnames" value="">
</div>
<div class="center">
重量:
  <input class="input" type="text" name="petwieth" id="petwieths" value="">
</div>
<div class="center">
性别:
  <input type="radio" checked="checked" name="petsex" id="petsexs" value="公" >公
  <input type="radio" name="petsex" id="petsexs" value="母">母
</div>
<div class="center">
毛皮颜色:
  <input class="input" type="text" name="petcolor" id="petcolors" value="">
</div>
<div class="center">
市场价格:
  <input class="input" type="text" name="petprice" id="petprices" value="">
</div>

<div class="center">
宠物类别:<select id="pettypes" name="pettype">
<o:forEach items="${sessionScope.AllPetType}" var="PetType">
<option value="${PetType.typeid}">${PetType.typename}</option>
</o:forEach>
</select>
</div>
<div class="center">
<input type="submit" class="but" id="sub" value="添加"><input type="reset" class="but" id="res" value="取消">

</div>
</form>
</div><!--id centermanager end-->
</div><!--id zhubiao end-->
<div id="rightkong" class="zhubiaokong"></div>
</div><!--id zongbiao end-->
</body>
</html>