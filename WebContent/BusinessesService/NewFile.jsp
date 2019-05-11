<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
    <title>点标记</title>
    <link rel="stylesheet" href="http://cache.amap.com/lbs/static/main1119.css"/>
    <style>
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
    <script src="http://webapi.amap.com/maps?v=1.4.6&key=您申请的key值"></script>
    <script type="text/javascript" src="http://cache.amap.com/lbs/static/addToolbar.js"></script>
</head>
<body>
<div id="container"></div>
<div  class="button-group">
    <input type="button" class="button" value="添加点标记覆盖物" id="addMarker"/>
    <input type="button" class="button" value="更新点标记覆盖物" id="updateMarker"/>
    <input type="button" class="button" value="删除点标记覆盖物" id="clearMarker"/>
</div>
<script>
    var marker, map = new AMap.Map("container", {
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
        markerSpan.innerHTML = "Hi，我换新装备啦！";
        markerContent.appendChild(markerSpan);

        marker.setContent(markerContent); //更新点标记内容
        marker.setPosition([104.067436, 30.681082]); //更新点标记位置
    }
</script>
</body>
</html>