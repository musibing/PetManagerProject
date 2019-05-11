<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet" href="OperativeMonitorCenter.css">
<title>宠物之家运营监控</title>
<script>

var color = ["#999999","#333333","#336799","#CCC"];
var data = [15,45,20,30];
 
function drawCircle(){
        var canvas = document.getElementById("bingtu");
        var ctx = canvas.getContext("2d");
        var startPoint= 1.5 * Math.PI;
        for(var i=0;i<data.length;i++){
                ctx.fillStyle = color[i];
                ctx.strokeStyle = color[i];
                ctx.beginPath();
                ctx.moveTo(112,65);
                ctx.arc(112,65,65,startPoint,startPoint-Math.PI*2*(data[i]/100),true);
                ctx.fill();
                ctx.stroke();
                startPoint -= Math.PI*2*(data[i]/100);
        }
}
drawCircle();
</script>


</head>
<body body onload="drawCircle()">
<div id="CenterTitle">
运营监控中心

</div>
<div id="UserContents">
<div class="ControlTags">
<div class="Title">
用户统计
</div>
<div class="Contents">
在线用户总数：80,000
注册用户总数：18600
<canvas id="bingtu"  width="224" height="130" ></canvas>

</div>

</div>
<div class="ContentsControl">
<div class="ControlTags">
<div class="Title">


当前商品总数
</div>
</div>
<div class="ControlTags">
<div class="Title">
当前商品占比
</div>
<div class="Contents">
</div>
</div>
</div>
<div class="ContentsControl">
<div class="ControlTags">
<div class="Title">
当前订单总数
</div>
<div class="Contents">
</div>
</div>
<div class="ControlTags">
<div class="Title">
当前订单总成交额
</div>
<div class="Contents">
</div>
</div>

<div class="Title">
订单成交趋势
</div>
<div class="Contents">
</div>
</div>
<div class="ContentsControl">
<div class="Title">
最受用户喜欢的产品排行(top10)

</div>
<div class="Contents">
</div>
<div>
<div class="Title">
最受用户喜欢的品牌排行(top10)

</div>
<div class="Contents">
</div>
</div>
</div>
</div>
</body>
</html>