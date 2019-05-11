<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="../jquery/jquery-1.7.2.js"></script>
 
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
    <title>关键字查询-使用默认皮肤</title>
    <link rel="stylesheet" href="https://cache.amap.com/lbs/static/main.css"/>
    <script type="text/javascript"
            src="https://webapi.amap.com/maps?v=1.4.2&key=d4efe268e9738a929f369b27309148eb"></script>
    <style type="text/css">
        #panel {
            position: absolute;
            background-color: white;
            max-height: 90%;
            overflow-y: auto;
            top: 10px;
            right: 10px;
            width: 280px;
        }
        #mapContainer{
        margin-left:200px;
        height:600px;
         width: 800px;
        }
    </style>
    
</head>
<body>
<div id="mapContainer"></div>
<div id="panel">

</div>
<input type="text" id="text"/>
<input type="button" id="button" value="查询" onclick="getdata()"/>
<script type="text/javascript">
var data="";
	var placeSearch ="";

 
    var map = new AMap.Map("mapContainer", {
        resizeEnable: true
    });
    AMap.service(["AMap.PlaceSearch"], function() {
         placeSearch = new AMap.PlaceSearch({ //构造地点查询类
            pageSize: 10000,
            pageIndex: 1,
            city: "028", //城市
            map: map,//,
            panel: "panel"
        });
        //关键字查询
		
        
    }); 
function getdata(){
		   
		 
			 data=document.getElementById("text").value;
			 alert(data);
		  placeSearch.search(data, function(status, result) {
        });
		}
</script>
 <script type="text/javascript" src="https://webapi.amap.com/demos/js/liteToolbar.js"></script>
</body>
</html>