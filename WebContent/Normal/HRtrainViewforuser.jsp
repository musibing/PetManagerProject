<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="o" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>培训计划信息查看列表</title>
<link type="text/css" rel="stylesheet" href="HRtrainView.css">
<script src="../jquery/jquery-1.7.2.js"></script>
<script>
</script>
</head>
<body>
<div id="rightleirong">
<div id="righttips">
培训计划信息查看
</div>
<div id="userinfolist">
<div id="userinfotips">
培训计划列表
</div>
<div id="userinfotitle">
<div id="username">
培训编号
</div>
<div class="userinfo">
培训名称
</div>
<div class="userinfo">
培训目的
</div>
<div class="userinfo">
培训开始时间
</div>
<div class="userinfo">
培训结束时间
</div>
<div class="userinfo">
培训讲师
</div>
<div class="userinfo">
培训人员
</div>
<div class="userinfo">
培训材料
</div>
<div class="userinfo">
创建时间
</div>

<div class="userinfo">
培训效果
</div>
<div class="userinfo">
培训总结
</div>
<div class="userinfo">
执行操作
</div>
</div>
<o:forEach  items="${sessionScope.UsertrainInfo}" var="PersonInfo">
<div id="userinfotitle">
<div id="username">
${PersonInfo.trainid}
</div>
<div class="userinfo">
${PersonInfo.trainnmae}
</div>
<div class="userinfo">
${PersonInfo.purpose}
</div>
<div class="userinfo">
${PersonInfo.begintime}
</div>
<div class="userinfo">
${PersonInfo.endtime}
</div>
<div class="userinfo">
${PersonInfo.teacher}
</div>
<div class="userinfo">
${PersonInfo.eployname}
</div>
<div class="userinfo">
${PersonInfo.traindata}
</div>
<div class="userinfo">
${PersonInfo.createtime}
</div>

<div class="userinfo">
${PersonInfo.trainffect}
</div>
<div class="userinfo">
${PersonInfo.traininfo}
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