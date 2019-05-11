<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="login.css">
<script src="../jquery/jquery-1.7.2.js"></script>
<script>
$(function(){
	$("#userids").focus(function(){
		$("#userids").css({"border-width":"1px","border-color":"#EED09F","border-style":"solid"});
		$("#logininfo").text("");
	})
	$("#userids").blur(function(){
		$("#userids").css({"border-width":"1px","border-color":"#E2E2E2","border-style":"solid"});
			var useridvalue=$("#userids").val();
			useridvalue=useridvalue.trim();
			if(useridvalue==null||useridvalue==""){
				$("#logininfo").append("<font color='red'>用户名不能为空！</font>");
				return;
			}
			$.ajax({
				url:"../ViewUserIncoPyIDforAjax",//数据提交的路径
				type:"post",//数据提交的方式
				data:{"Userid":useridvalue},//要提交的数据
				success:function(data){//定义请求响应成功以后要做的事
					$("#Ajaximg").attr("src",data);
				}
			})
			
	})

	$("#passwordid").focus(function(){
		
		$("#passwordid").css({"border-width":"1px","border-color":"#EED09F","border-style":"solid"});
		
	})
	$("#passwordid").blur(function(){
		$("#passwordid").css({"border-width":"1px","border-color":"#E2E2E2","border-style":"solid"});
	})
})
</script>

<title>人力资源管理系统登录系统</title>

</head>

<body>
<div id="top">
<div id="topkong"></div>
<div id="toptips" align="center">人力资源管理系统</div>
</div>
<div id="center">
<div id="left">
<div id="leftkong"></div>
<div id="leftcenter">
<div id="lefttop"></div>

<div id="leftimg">
<img src="../img/login/default.png" width="256" height="256" id="Ajaximg">
</div>
  </div>
  <div id="leftrightkong"></div>
  <div id="leftangl">
  <div id="leftandleft"></div>
  <div id="leftandright"></div>
  </div>
  </div>


<div id="right">
<div id="rightleftkong">
</div>
<div id="rightgl">
<div id="righttopkong">
</div>
<form action="../UserloginCheck" method="post">
<div id="rightform">
<div class="rightform">
用户ID:<input type="text" class="input" name="userid" id="userids">
<span id="logininfo"></span>
</div>
<div class="rightform">
密&nbsp;&nbsp;码:
  <input type="password" class="input" name="password" id="passwordid">
</div>
<div class="rightform">
<input type="submit" id="login" class="button" value="确认登录"><input class="button" type="reset" value="重置">
</div>

<div>

</div>
</div>
</form>
</div>
</div>
</div>
</body>
</html>
