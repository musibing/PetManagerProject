<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="o" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>人员信息列表</title>
<link type="text/css" rel="stylesheet" href="RemployInfoView.css">
<script src="../jquery/jquery-1.7.2.js"></script>
<script>
function load(){
	

	var usersex=document.getElementsByName("usersex");
	
	for(var i=0;i<usersex.length;i++){
		var sexvalue=$(usersex[i]).text();
		if(sexvalue==1){
		
		usersex[i].innerHTML="男";
		}else{
			usersex[i].innerHTML="女";
			}
}

}
</script>
</head>
<body onLoad="load()">
<div id="rightleirong">
<div id="righttips">
应聘信息查看
</div>
<div id="userinfolist">
<div id="userinfotips">
应聘信息列表
</div>
<div id="userinfotitle">
<div id="username">姓名</div>
<div class="userinfo">
性别</div>
<div class="userinfo">
年龄</div>
<div class="userinfo">
职位</div>
<div class="userinfo">
所学专业</div>
<div class="userinfo" id="jobdata">
工作经验</div>
<div class="userinfo">
执行操作
</div>
</div>
<o:forEach  items="${sessionScope.AllPersonInfo}" var="PersonInfo">
<div id="userinfotitle" name="trlist">
<div id="username"><a href="../ViewPetByID?${PersonInfo.employid}">${PersonInfo.employName}</a></div>
<div name="usersex" class="userinfo">${PersonInfo.employSex}</div>
<div class="userinfo">${PersonInfo.employAge}</div>
<div class="userinfo">${PersonInfo.jobname}</div>
<div class="userinfo">${PersonInfo.ecdtion}</div>
<div class="userinfo" id="jobdata">${PersonInfo.jobinfodata}</div>

<div class="userinfo"><a href="../InfoRemove?EmployID=${PersonInfo.employid}" onclick="return confirm('确定删除吗')">删除</a>/<a href="../SelectAllJobInfo?SendPath=/HRemployManager/RemployInfoUpdate.jsp&EmployID=${PersonInfo.employid}">修改</a></div>

</div>
</o:forEach>
<div id="daohanggl">
<div class="daohang">
<a href="../SelectHREmplory?page=1">
首页
</a>
</div>
<div class="daohang">
<a href="../SelectHREmplory?page=${sessionScope.thispages-1}">
上一页
</a>
</div>
<o:forEach begin="1" end="${sessionScope.MaxPages}" var="m">
<div class="daohang">
<a href="../SelectHREmplory?page=${m}">
第${m}页
</a>
</div>
</o:forEach>
<div class="daohang">
<a href="../SelectHREmplory?page=${sessionScope.thispages+1}">
下一页
</a>
</div>
<div class="daohang">
<a href="../SelectHREmplory?page=${sessionScope.MaxPages}">
尾页
</a>
</div>
</div>
</div>
</div>
</body>
</html>