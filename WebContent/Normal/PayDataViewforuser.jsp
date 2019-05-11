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
<o:forEach  items="${sessionScope.UserPayInfo}" var="PersonInfo">
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

</div>
</div>
</o:forEach>
<div id="daohanggl">
<div class="daohang">
<a href="../SelectNormalUserInfo?SendPath=/Normal/HRtrainViewforuser.jsp&UserID=${sessionScope.UserPersonInfo.get(0).id}">
培训计划
</a>
</div>
<div class="daohang">
<a href="../SelectNormalUserInfo?SendPath=/Normal/HRRewardsinfoviewforuser.jsp&UserID=${sessionScope.UserPersonInfo.get(0).id}">
奖惩信息
</a>
</div>

<div class="daohang">
<a href="../SelectNormalUserInfo?SendPath=/Normal/PayDataViewforuser.jsp&UserID=${sessionScope.UserPersonInfo.get(0).id}">
薪金信息
</a>
</div>

</div>
</div>


</div>
</body>
</html>