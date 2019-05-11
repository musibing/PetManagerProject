<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
    
    <link rel="stylesheet" href="http://cache.amap.com/lbs/static/main1119.css"/>
    <script src="http://cache.amap.com/lbs/static/es5.min.js"></script>
    <script type="text/javascript" src="http://cache.amap.com/lbs/static/addToolbar.js"></script>
<title>商家检索列表</title>
<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.4.6&key=d4efe268e9738a929f369b27309148eb"></script>
<style>
#MapData{
margin-left:100px;
margin-top:50px;
height: 800px;
width: 1200px;
border: 1px solid #DDD;
}
*{
margin: 0px;}
h1{
text-align: center;
margin-bottom: 20px;}
.marker {
            color: #ff6600;
            padding: 4px 10px;
            border: 1px solid #fff;
            white-space: nowrap;
            font-size: 12px;
            font-family: "";
            background-color: #0066ff;
        }

</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
   
</head>
<body>
<h1>商家信息列表</h1>
<hr>

<div id="MapData">
</div>
<div  class="button-group">
    <input type="button" class="button" value="添加点标记覆盖物" id="addMarker"/>
    <input type="button" class="button" value="更新点标记覆盖物" id="updateMarker"/>
    <input type="button" class="button" value="删除点标记覆盖物" id="clearMarker"/>
</div>
<script>
    var marker, map = new AMap.Map("MapData", {
        resizeEnable: true,
        center: [104.067436, 30.681082],
        zoom: 13
    });
  
    AMap.event.addDomListener(document.getElementById('addMarker'), 'click', function() {
        addMarker();
    }, false);
    AMap.event.addDomListener(document.getElementById('updateMarker'), 'click', function() {
        marker && updateMarker();
    }, false);
    AMap.event.addDomListener(document.getElementById('clearMarker'), 'click', function() {
        if (marker) {
            marker.setMap(null);
            marker = null;
        }
    }, false);

    // 实例化点标记
 function addMarker() {
        marker = new AMap.Marker({
            icon: "http://webapi.amap.com/theme/v1.3/markers/n/mark_b.png",
            position: [104.067436, 30.681082]
        });
        marker.setMap(map);
    }

    function updateMarker() {
        // 自定义点标记内容
        var markerContent = document.createElement("div");

        // 点标记中的图标
        var markerImg = document.createElement("img");
        markerImg.className = "markerlnglat";
        markerImg.src = "http://webapi.amap.com/theme/v1.3/markers/n/mark_r.png";
        markerContent.appendChild(markerImg);

        // 点标记中的文本
        var markerSpan = document.createElement("span");
        markerSpan.className = 'marker';
        markerSpan.innerHTML = "青羊区";
        markerContent.appendChild(markerSpan);

        marker.setContent(markerContent); //更新点标记内容
        marker.setPosition([104.067436, 30.681082]); //更新点标记位置
    }
</script>
</body>
</html>