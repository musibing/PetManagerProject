<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="o" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>薪资数据查看</title>
<link type="text/css" rel="stylesheet" href="PayDataView.css">
<script src="../jquery/jquery-1.7.2.js"></script>
<script>
</script>
</head>
<body>
<div id="rightleirong">
<div id="righttips">
薪资数据查看
</div>
<div id="userinfolist">
<div id="userinfotips">
薪资数据列表
</div>

<div id="userinfotitle">
<div id="username">
员工姓名
</div>
<div class="userinfo">
基本薪资
</div>
<div class="userinfo">
饭补
</div>
<div class="userinfo">
房补
</div>
<div class="userinfo">
全勤奖
</div>
<div class="userinfo">
纳税
</div>
<div class="userinfo">
奖(J)/惩(C)
</div>
<div class="userinfo">
发放时间
</div>
<div class="userinfo">
总计
</div>
<div class="userinfo">
执行操作
</div>
</div>
<o:forEach  items="${sessionScope.AllPersonInfo}" var="PersonInfo">
<div id="userinfotitle">
<div id="username">
${PersonInfo.epmlyname}
</div>
<div class="userinfo">
${PersonInfo.basicNumber}
</div>
<div class="userinfo">
${PersonInfo.eatNumber}
</div>
<div class="userinfo">
${PersonInfo.houseNumber}
</div>
<div class="userinfo">
${PersonInfo.scot}
</div>
<div class="userinfo">
${PersonInfo.duty}
</div>
<div class="userinfo">
${PersonInfo.rewards}
</div>
<div class="userinfo">
${PersonInfo.granttim}
</div>
<div class="userinfo">
${PersonInfo.totalize}
</div>
<div class="userinfo">
<a href="../HRPayInfoRemove?PayID=${PersonInfo.payid}" onclick="return confirm('确定删除吗')">删除</a>/<a href="HRPayInfoUpdate.jsp?PayID=${PersonInfo.payid}">修改</a>
</div>
</div>
</o:forEach>
<div id="daohanggl">
<div class="daohang">
<a href="../SelectAllPayInfo?page=1">
首页
</a>
</div>
<div class="daohang">
<a href="../SelectAllPayInfo?page=${sessionScope.thispages-1}">
上一页
</a>
</div>
<o:forEach begin="1" end="${sessionScope.MaxPages}" var="m">
<div class="daohang">
<a href="../SelectAllPayInfo?page=${m}">
第${m}页
</a>
</div>
</o:forEach>
<div class="daohang">
<a href="../SelectAllPayInfo?page=${sessionScope.thispages+1}">
下一页
</a>
</div>
<div class="daohang">
<a href="../SelectAllPayInfo?page=${sessionScope.MaxPages}">
尾页
</a>
</div>
</div>
</div>


</div>
</body>
</html>