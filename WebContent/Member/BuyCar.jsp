<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>宠物之约</title>

<script src="../jquery/jquery-1.7.2.js"></script>
<link type="text/css" rel="stylesheet" href="MapMode.css">
<link type="text/css" rel="stylesheet" href="BuyCar.css">
<script>
var _hmt = _hmt || [];
/* (function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?b8c358b26d18dee09914931b71cac447";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})(); */
$(function(){
	$.ajax({
				url : "..//UserLoginStatusCheck.action",
				data : {
					},
					scriptCharset : 'utf-8',
					contentType : "application/x-www-form-urlencoded; charset=utf-8",
				type : "post",
				traditional : true,
				success : function(str) {
					
					$("#Remvoe").remove();
					$("#ChengWidth").html(str);
					$("#ChengWidth").css("width",120);
					
			}

			}) 
	$("#BuyCarData .ProductPoolClass").click(function(){
		var $allContentLine=$("#BuyCarData .Content");
		var selectProductNumber=0;
		var selectProductPrice=0;
		for(var j=0;j<$allContentLine.length;j++){
			var  $checkbox=$allContentLine.eq(j).find(".ProductPoolClass");
			
			if($checkbox.is(":checked")){
				
				selectProductNumber+=1;
				var totalPrice=$allContentLine.eq(j).find(".totalPrice").text();
				
				
				selectProductPrice+=parseFloat(totalPrice);
				
				}else{
					
					}
				
				
			};
			
	$("#OderSum").text(selectProductNumber);	
	$(".OderPrice").eq(1).text(selectProductPrice);
	$(".OderPrice").eq(0).text(selectProductPrice);		
		})
	$(".Checked").click(function(){
		var checkedStatus=$(".Checked").eq(0).attr("checked");
		alert("checkedStatus"+checkedStatus);
		var $allContentLine=$("#BuyCarData .Content");
		var selectProductNumber=0;
		var selectProductPrice=0;
		for(var j=0;j<$allContentLine.length;j++){
			
			var  $checkbox=$allContentLine.eq(j).find(".ProductPoolClass");
			if(checkedStatus="checked"){
				
				 $checkbox.eq(0).attr("checked",true);
				}else{
					$checkbox.eq(0).attr("checked",false);
					}
			
			
			if($checkbox.is(":checked")){
				
				selectProductNumber+=1;
				var totalPrice=$allContentLine.eq(j).find(".totalPrice").text();
				selectProductPrice+=parseFloat(totalPrice);
				
				}else{
					
					}
				
				
			};
			
	$("#OderSum").text(selectProductNumber);	
	$(".OderPrice").eq(1).text(selectProductPrice);
	$(".OderPrice").eq(0).text(selectProductPrice);	
		
		})
	
	})

</script>

   
</head>
<body>
<div id="zongbiao">


	
		<div id="top">
		<div id="topContorl">

			<div class="topleftclass"><a href="../index/index.jsp">宠物之家</a></div>
		<div class="topleftclass"><a href="../SelectClassificationProductForArrayList">宠物商城</a></div>
		<div class="topleftclass"><a href="../BusinessesService/MapMode.jsp">宠物服务</a></div>
		<div class="topleftclass">宠物论坛</div>
		<div class="topleftclass"><a href="../SelectArticleByBaiKeiIndex">宠物百科</a></div>
		<div id="topcenter"></div>
		<div class="toprightclass" id="ChengWidth"><a href="../login/login.jsp" id="accontid">登录</a></div>
		<div class="toprightclass" id="Remvoe"><a href="../register/register.jsp">注册</a></div>
			<div class="toprightclass">微博</div>
			<div class="toprightclass">微信</div>
			<div class="toprightclass">手机版</div>

		</div>
	</div>
	
<div id="CenterControl">

<div id="logoControl">
			<div id="centerleft" class="MaginLeftWidth"></div>
			<div id="logoimg">
				<img src="../img/index/logo.jpg">
			</div>
			<div id="searchTestGl" >
            <div id="UserConterControl">
            
            <div id="UserCenterTitle">购物车</div>
            </div>
            <div id="UserLogin">
            <div id="UserLogin_Tip">
           </div>
            <div id="Setp">
            <div class="process_buycar w116">我的购物车
            </div>
             <div class="process_order Center">
             核对订单信息
            </div>
             <div class="process_success w116">
             订单提交成功
            </div>
           </div>
            </div>
            </div>
			
		</div>
        <div id="zhubiaocontrol">
<div class="zhubiaokong MaginLeftWidth"></div>


<form action="../SettlementOrderForPool" method="post">
<div id="zhubiao">
<div id="Title">购物商品数据</div>
<div id="BuyCarData">
<div id="BuyCarControl">
<div class="BTitle">
<div id="TitleControl">
<div class="CheckTableTags"></div>
<div class="Tag1"><input type="checkbox" class="Incos Checked">全选</input></div>
<div class="Tag2">商品</div> 
<div class="Tag1">重量</div>
<div class="Tag1">价格(￥)</div>
<div class="Tag1">优惠</div>
<div class="Tag1">数量</div>
<div class="Tag1">小计</div>
<div class="Tag1">操作</div>
</div>
</div>
<s:iterator value="#session.BuyCarList" var="VarData">
<div class="Content">
<div class="ContentData">
<div class="CheckTags"><input type="checkbox" name="ProductPoolData" class="ProductPoolClass" value="<s:property value='#VarData.buyCarListID'></s:property>"></input></div>
<div class="Tag1"><a href="#" class="Incos Checked"></a><img src="<s:property value='#VarData.product.exhibitionIMGPath'></s:property>" class="ProductIMG"></div>
<div class="Tag2"><s:property value='#VarData.product.productName'></s:property></div>
<div class="Tag1"><s:property value='#VarData.product.specifications'></s:property></div>
<div  class="Tag1 CRed"><s:property value='#VarData.dealPrice'></s:property></div>
<div class="Tag1">优惠</div>
<div class="Tag1"><s:property value='#VarData.buyNumber'></s:property></div>
<div  class="Tag1 CRed totalPrice"><s:property value='#VarData.totalPrice'></s:property></div>
<div class="Tag1"><a href="#">收藏商品</a><br><a  href="#">删除商品</a>

</div>
</div>


</div>


</s:iterator>

</div>
</div>

<div id="ControlComponent">

<div class="Tag1"><a href="#" class=""><strong>删除所选商品</strong></a></div>
<div class="Tag1"><a href="#" class=""><strong>清空购物车</strong></a></div>
<div id="OrderView">
<div id="OrderInfo">
<dl>
已选择<strong id="OderSum"> 0</strong> 件商品(总重：7.44 kg),总价(不含运费):¥<span class="OderPrice"> 0</span>
</dl>
<dl>已节省：¥0.00</dl>
<dl> 总价= 商品总价: ¥<span class="OderPrice">0</span>
                 +  全球购商品税费: ¥0.00</dl>
</div>
<div id="OrderSettlement"><input type="submit" value="结算订单" id="OrderSettlementSubmit"></input></div></div>
</div>
</div>
</form>
</div>
<!--id zhubiao end-->
<!---center end-->
</div>
</div>
<div id="bottomControl">
		<div id="bottomCenterControl">
			<div class="bottomLink">关于宠家</div>
			<div class="bottomLink">友情链接</div>
			<div class="bottomLink">诚聘英才</div>
			<div class="bottomLink">联系我们</div>
			<div class="bottomLink">网站地图</div>
			<div class="bottomLink">意见反馈</div>
			<div class="bottomLink">帮助中心</div>
			<div id="bottomLinkID" class="bottomLink">客服热线：400-820-6098</div>
			<div id="bottomBeianControl">
				<div class="bottomBaian">
					<img src="../img/beian/beian.png" width="20" height="20">沪公网安备
					31011502004955号
				</div>
				<div class="bottomBaian">沪ICP备13034501号-2</div>
				<div class="bottomBaian">增值电信业务经营许可证： 沪B2-20140120</div>
			</div>

			<div id="BeianInfoControl">Copyright © 2007-2018 Boqii.com All
				Rights Reserved 光橙（上海）信息科技有限公司 版权所有</div>
			<div id="BeianImgControl">
				<div class="BeianImg">
					<img src="../img/beian/foot_gs.png" width="100" height="35">
				</div>
				<div class="BeianImg">
					<img src="../img/beian/foot_cx.png" width="100" height="35">
				</div>
				<div class="BeianImg">
					<img src="../img/beian/foot_kx.png" width="100" height="35">
				</div>
				<div class="BeianImg">
					<img src="../img/beian/foot_zx.png" width="100" height="35">
				</div>

			</div>
		</div>
	</div>
</div>
</div><!--id zongbiao end-->
</body>


</html>