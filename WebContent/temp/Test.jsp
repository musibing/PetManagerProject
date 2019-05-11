<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>

<link type="text/css" rel="stylesheet" href="test.css">
<script>

var color = ["#999999","#333333","#336799"];
var data = [15,45,50];
 
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
<body onload="drawCircle()">

<canvas id="bingtu"  width="224" height="130" ></canvas>
</body>
</html>