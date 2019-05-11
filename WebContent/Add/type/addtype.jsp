<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>宠物之约</title>
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
<link type="text/css" rel="stylesheet" href="addtype.css">
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
  </script>
</head>
<body>
<div id="zongbiao">
<div class="zhubiaokong"></div>
<div id="zhubiao">
<div id="topkong"></div>
<div id="top">
欢迎进入宠物管理系统
</div><!--id top end-->
<div id="tips">
添加宠物类别
</div><!--id tips end-->

<div id="centerkong">
<div align="center" id="imgDiv">
		<img alt="图片预览" src="../ViewPetIncoByID" id="img" name="图片预览" width="" height="">
	</div>
    <form action="../../PetIncoImgUpload" method="post" enctype="multipart/form-data" name="form1">
    <div id="PetIncoIMGFile">
	
		<input name="imgA" type="file" id="txtSrc" onChange="setImagePreview(this,imgDiv,img);" value="选择图像">
		<input type="submit" name="submit" value="上传">
	
</div>
</form>
</div><!--id centerkong end-->
<form action="../../AddPetType" method="post">
<div id="centermanager">



<div class="center">
请输入宠物类型:<input type="text" name="typename">
</div>
<div class="center">
<input type="submit" class="but" id="sub" value="添加"><input type="reset" class="but" id="res" value="取消">
</div>
</div><!--id centermanager end-->
</form>
</div><!--id zhubiao end-->
<div id="rightkong" class="zhubiaokong"></div>
</div><!--id zongbiao end-->
</body>
</html>