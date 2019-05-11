<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet" href="ManagerSystemPublic.css">
<link type="text/css" rel="stylesheet" href="EmployeeManager.css">
<title>员工管理</title>
</head>
<body>
<div id="CenterTitle">
				<div id="CTImg">
					<img src="../img/WebINCO/ICO_Palce.png" width="20" height="20">
				</div>
				<div id="CTText">你前的位置:首页&gt;员工管理&gt;员工列表</div>
				<div id="CTKong"></div>
				<div id="CTTime">2016年06月06日&nbsp;18:00 星期二</div>
			</div>
<div id="EmployeeManager">

<div id="Content">
<div id="Title">员工管理</div>
<div id="SonTitle">
<div class="SonTitle">员工列表</div>
<div class="SonTitle">
新建员工
</div>
<div class="SonTitle">
员工导入
</div>
<div class="SonTitle">
员工查询通道
</div>
<div class="SonTitle">

</div>
</div>

<div id="bodycenter">
<form action="../saveEmployeeData" method="post" enctype="multipart/form-data" id="formss">
<div id="datagl">

<div id="centertips">员工信息录入</div>

<div id="baseinfo">
<div class="centerinput">
<div class="usernamedata">员工编号:
  <input type="text" name="EmployID" class="input" id="userid" value="${sessionScope.MaxID}" readonly></div>
<div class="usernamedata">
性名:
  <input type="text" name="el.employName" class="input" id="usernameid">
</div>

</div>
<div class="centerinput">

<div class="usernamedata">

年龄:<select id="ageid" name="el.employAge">
		
		</select>
 <span id="sp">应聘者是否入库:是：
 <input type="checkbox" name="isdatabase" value="1"></span>   
</div>
<div class="usernamedata">

性别:男<input type="radio" name="el.employSex" id="usersexid" value="1">
女<input type="radio" name="el.employSex" id="usersexid" value="0">
</div>
</div>
<div class="centerinput">
<div class="usernamedata">

所学专业:
  <input type="text" name="el.professional" id="ProfessionalId">
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

毕业学校:<input type="text" name="el.school" id="SchoolID">
</div>
<div class="usernamedata">
学历:<input type="text" name="el.ecdtion" id="Ecdtionid">
</div>
</div>
<div class="centerinput">
<div class="usernamedata">

Email地址:<input type="text" name="el.emailAddress" id="EmailAddressID">
</div>
<div class="usernamedata">

电话号码:<input type="text" name="el.employTelNumber" id="TelNumberID">
</div>
</div>
<div class="infoinput">
<div class="text">
工作经验:
</div>
<textarea class="textarea" name="el.jobinfodata"></textarea>
</div>
<div class="infoinput">
<div class="text">
详细经历:
</div>
<textarea class="textarea" name="el.employinfo" ></textarea>
</div>
<div class="centerinput">

<input type="submit" value="更新" class="button" id="sub">
<input type="reset" value="重置" class="button" id="res">

</div>
</div>



<div id="centerkong">
   
<div id="imgkong"></div>
<div align="center" id="imgDiv">
		<img alt="图片预览" src="../ViewPetIncoByID" id="img" name="图片预览" width="" height="">
	</div>

    <div id="PetIncoIMGFile">
		
		<input name="uploadImage" type="file" id="txtSrc" onChange="setImagePreview(this,imgDiv,img);" value="选择图像">
	
	
</div>



</div>

<span id="telinfo"></span>

</div><!--id dg1 end-->
</form>
</div>


</div>

</div>
</body>
</html>