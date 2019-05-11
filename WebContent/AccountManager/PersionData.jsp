<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>个人资料</title>
<link type="text/css" rel="stylesheet" href="index.css">
<link type="text/css" rel="stylesheet" href="PersionCenter.css">
<link type="text/css" rel="stylesheet" href="PersionData.css">
</head>
<body>
<!--数据源开始-->
<div id="PersionDataControl">
<div id="Title">
个人资料
</div>
<div id="SonTitle">
<div class="SonTitleData borderBRed">
基本资料
</div>

<div class="SonTitleData">
修改头像
</div>

</div>
<div id="PersionDataContent">
<div class="PersionDataContentClass">
<span class="PersionDataContentTextName">
昵称:
</span>
  <input type="text" class="PersionDataText">
</div>
<div class="PersionDataContentClass">
<span class="PersionDataContentTextName">
性别:</span><input type="radio" name="xb">女<input type="radio" name="xb" class="xb">男
</div>
<div class="PersionDataContentClass">
<div class="PersionDataImg Email"></div>邮箱:你未绑定邮箱&nbsp;<a href="#">绑定邮箱</a>
</div>
<div class="PersionDataContentClass">
<div class="PersionDataImg Telphone"></div>
手机号:15528296986&nbsp;(手机号码已经验证)&nbsp;<a href="#">更换绑定手机</a>
</div>

<div class="PersionDataContentClass">
<span class="PersionDataContentTextName">
城市:</span><select>
<option value="广州"> 
广州
</option>
<option value="深圳"> 
深圳
</option>
<option value="惠州"> 
惠州
</option>
</select>
</div>
<div class="PersionDataContentClass">
<span class="PersionDataContentTextName">
  地址:
  </span>
    <input type="text" class="PersionDataText Address">
</div>
<div class="PersionDataContentClass">
<span class="PersionDataContentTextName">
职业:</span><input type="text" class="PersionDataText">
</div>
<div class="PersionDataContentClass">
<span class="PersionDataContentTextName">
QQ:</span><input type="text" class="PersionDataText">
</div>
<div class="PersionDataContentClass Textarea">
<span class="PersionDataContentTextName">
签名:</span><textarea >
</textarea>

</div>
<div class="PersionDataContentClass ">
喜欢的宠物类型:<input type="button" class="PersionDataContentButton" value="添加宠物">&nbsp;<span class="Tips">(最多可添加5个标签)</span>
</div>
<div class="PersionDataContentClass Think">
选择您感兴趣的事情:
<div id="CheckBoxControl">
<div class="CheckBoxLine">
<input type="checkbox" name="input" class="PersionDataContentCheckbox"><p class="CheckboxText">结识更多的宠友</p>
  
  <input type="checkbox" name="" class="PersionDataContentCheckbox"><p class="CheckboxText">记录爱宠的成长</p>
 <input type="checkbox" name="" class="PersionDataContentCheckbox"><p class="CheckboxText">学习、分享送气知识</p>
 </div>
 <div class="CheckBoxLine">
 <input type="checkbox" name="" class="PersionDataContentCheckbox"><p class="CheckboxText">学习、分享宠物的训练方法</p>
 
  <input type="checkbox" name="" class="PersionDataContentCheckbox"><p class="CheckboxText">在线问诊、得到宠物医院的帮助
   </p>
  <input type="checkbox" name="" class="PersionDataContentCheckbox"><p class="CheckboxText">更丰富的宠物产品</p>
   </div>
   <div class="CheckBoxLine">
    <input type="checkbox" name="" class="PersionDataContentCheckbox"><p class="CheckboxText">线下宠友交流活动</p>
    <input type="checkbox" name="" class="PersionDataContentCheckbox"><p class="CheckboxText">领养或转让宠物</p>
    <input type="checkbox" name="" class="PersionDataContentCheckbox"><p class="CheckboxText">宠物爆照、趣味分享</p>
    </div>
    </div>
</div>

<div class="PersionDataContentClass">
<input type="submit" value="提交" class="PersionDataSubmit">
</div>

</div>


</div>
<!--数据源结束-->
</body>
</html>