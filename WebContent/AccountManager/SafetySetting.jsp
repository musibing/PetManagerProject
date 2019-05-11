<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>安全设置</title>
<link type="text/css" rel="stylesheet" href="index.css">
<link type="text/css" rel="stylesheet" href="PersionCenter.css">
<link type="text/css" rel="stylesheet" href="SafetySetting.css">
</head>
<body>
<!--数据源开始-->
<div class="userinfo datacontent">
<div id="title">
安全设置
</div>
<div id="userinfoControl">
   <div id="userImg">
     <img src="../img/Account/310026.jpg" width="120" height="120">
     </div>
   <div id="userinfoData">
   <div class="userinfoDataContent">
   <span id="accountName">musibing</span> 欢迎回来!
   </div>
   <div class="userinfoDataContent">
    <p id="leveTitle">
   帐户安全等级:
   </p><div class="leve leveColor">
   弱
   </div>
   <div class="leve">
   中
   </div>
    <div class="leve">
   强
   </div>
  <span class="tips"> 建设您尽快完善安全设置、以保险帐号及资金安全</span>
   </div>
   <div class="userinfoDataContent">
   <div class="PersionDataImg Email"></div><span class="userinfoDataContentText">邮箱未验证</span>
  <div class="PersionDataImg Telphone"></div><span class="userinfoDataContentText">手机号码未验证</span>
  <div class="PersionDataImg MoneyCard"></div><span class="userinfoDataContentText">未设置支付密码</span>
   <div class="PersionDataImg MoneyCard"></div><span class="userinfoDataContentText"><a href="PasswordRecovery.jsp">修改登录密码</a></span>
   </div>
   <div>
   </div>
    </div>
    </div>
    </div>

<div class="datacontent safetyLeve">
<div class="datacontentLine">
<div class="safetyLeveTipsImg loginPassword">
</div>
<span class="safetyTitle">
登录密码
</span>
<span class="safetyLeveText">
<div id="safetyLeveTitle">
密码安全强度:
</div>
<div id="safetyLeveControl">
<div class="leve leveColor">
   弱
   </div>
   <div class="leve">
   中
   </div>
    <div class="leve">
   强
   </div></div></span></div>
<div class="datacontentLine">
<div class="safetyLeveTipsImg email">
</div>
<span class="safetyTitle">
邮箱未验证
</span>
<span class="safetyLeveText">
邮箱作为你的登录帐号,请务必完成此验证
</span>
</div>
<div class="datacontentLine">
<div class="safetyLeveTipsImg telphone">
</div>
<span class="safetyTitle">
手机已绑定
</span>
<span class="safetyLeveText">
您绑定的手机:<span id="telphoneNumber">15528296986</span>&nbsp;若手机不可用,请立即更换,避免帐户被盗带来的损失
</span>
</div>
<div class="datacontentLine">
<div class="safetyLeveTipsImg centerPassword">
</div>
<span class="safetyTitle">
未设置支付密码
</span>
<span class="safetyLeveText">
为保障你的资金安全,强烈建议你启用支付密码
</span>
</div>
</div>
<!--数据源结束-->
</body>
</html>