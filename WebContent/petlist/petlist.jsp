<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="o" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>宠物之约</title>
<link type="text/css" rel="stylesheet" href="petlist.css">
<script>
function load(){
	var arr=document.getElementsByName("trlist");

	for(var i=0;i<arr.length;i++){
		if(i%2!=0){
			arr[i].style.backgroundColor="#EECFA1";
			
		}else{
			arr[i].style.backgroundColor="#87CEFA";
			}
		}
}
</script>
</head>
<body onload="load()">
<div id="zongbiao">
<div class="zhubiaokong"></div>
<div id="zhubiao">

<div id="top">
宠物管理系统
</div><!--id top end-->
<div id="centerkong">
</div><!--id centerkong end-->
<div id="centermanager">
<div id="tips">
<div id="topsubmitgl">
<form action="../Add/type/addtype.jsp" method="post">

<div class="topsubmit">
<input type="submit" class="buttop" id="sub" value="添加宠物类别">
</div>
</form>
<form action="../selectAllOwnerandAllPetType" method="post">
<div class="topsubmit">
<input type="submit" class="buttop" id="res" value="添加宠物信息">
</div><!--id tips end-->
</form>
</div>
</div>



<div id="center">
<table border="1px">
<tr name="toplist">
<th>
拥有者
</th>
<th>
宠物名称
</th>
<th>
宠物类型
</th>
<th>
重量
</th>
<th>
性别
</th>
<th>
颜色
</th>
<th>
市场价格
</th>
<th>
添加日期
</th>
<th>
操作
</th>
</tr>
<o:forEach  items="${sessionScope.list }" var="l">

<tr name="trlist">
<td>${l.ownername}</td>
<td><a href="../ViewPetByID?PetID=${l.petinfoid}">${l.petname}</a></td>
<td>${l.pettype}</td>
<td>${l.petweight}</td>
<td>${l.petsex}</td>
<td>${l.petcolor}</td>
<td>${l.petmarkprice}</td>
<td>${l.createtime}</td>
<%-- 
${pageScope.num} 
</f:forEach> --%>
<td><a href="../PetInfoRemove?PetID=${l.petinfoid}" onclick="return confirm('确定删除吗')">删除</a>/<a href="../SelectPetInfoByID?PetID=${l.petinfoid}">修改</a></td>
</tr>
</o:forEach>

</table>
<table>
<tr>

<td>
<a href="../SelectAllPet?page=1">
首页
</a>
</td>
<td>
<a href="../SelectAllPet?page=${sessionScope.danqiangpage-1}">
上一页
</a>
</td>
<td>
<a href="../SelectAllPet?page=${sessionScope.danqiangpage+1}">
下一页
</a>
</td>
<td>
<a href="../SelectAllPet?page=${sessionScope.maxpage}">
尾页
</a>
</td>
</tr>
</table>
<form action="../SelectAllPet" method="post">
<select name="select">
<o:forEach begin="${1}" end="${sessionScope.maxpage}" var="selectnum">
<option value="${pageScope.selectnum}">第${pageScope.selectnum}页</option>
</o:forEach>
</select>
<input type="submit" value="跳转到指定页">
</form>
<form action="../SelectAllPet" method="post">
请输入你要跳转到页面:<input type="text" name="textinput">
<input type="submit" value="确认跳转">
</form>

</div>

</div><!--id centermanager end-->
</div><!--id zhubiao end-->
<div id="rightkong" class="zhubiaokong"></div>
</div><!--id zongbiao end-->
</body>
</html>