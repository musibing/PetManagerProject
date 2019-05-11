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

<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?b8c358b26d18dee09914931b71cac447";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>

    <style type="text/css">
      .context_menu {
            margin: 2px;
            padding: 2px;
            list-style-type: none;
            position: relative;
            background-color: rgb(255, 255, 255);
            border: 1px solid rgb(175, 175, 175);
            border-radius: 5px;
            box-shadow: rgb(153, 153, 153) 2px 2px 8px;
            white-space: nowrap;
            cursor: pointer;
        }
        .context_menu li {
            text-indent: 0.5em;
            color: blue;
            font-size: 13px;
            font-family: verdana;
            height: 20px;
            line-height: 20px;
            word-break: break-all;
            white-space: nowrap;
        }
        .context_menu li.split_line {
            border-bottom-color: rgb(204, 204, 204);
            border-bottom-style: solid;
            border-bottom-width: 1px;
        }
   #panel {
            position: absolute;
            background-color: white;
            max-height: 90%;
            overflow-y: auto;
            top: 10px;
            right: 10px;
            width: 280px;
        }
        .info {
            border: solid 1px silver;
        }
        div.info-top {
            position: relative;
            background: none repeat scroll 0 0 #F9F9F9;
            border-bottom: 1px solid #CCC;
            border-radius: 5px 5px 0 0;
        }
        div.info-top div {
            display: inline-block;
            color: #333333;
            font-size: 14px;
            font-weight: bold;
            line-height: 31px;
            padding: 0 10px;
        }
        div.info-top img {
            position: absolute;
            top: 10px;
            right: 10px;
            transition-duration: 0.25s;
        }
        div.info-top img:hover {
            box-shadow: 0px 0px 5px #000;
        }
        div.info-middle {
            font-size: 12px;
            padding: 6px;
            line-height: 20px;
        }
        div.info-bottom {
            height: 0px;
            width: 100%;
            clear: both;
            text-align: center;
        }
        div.info-bottom img {
            position: relative;
            z-index: 104;
        }
        span {
            margin-left: 5px;
            font-size: 11px;
        }
        .info-middle img {
            float: left;
            margin-right: 6px;
        }
    </style>
    <script type="text/javascript"
            src="https://webapi.amap.com/maps?v=1.4.6&key=d4efe268e9738a929f369b27309148eb&plugin=AMap.Autocomplete,AMap.PlaceSearch&plugin=AMap.MouseTool&plugin=AMap.Geocoder"></script>
</head>
<body>
<div id="zongbiao">


	<div id="top">
    <div id="topcontrol">
		<div id="topleft" class="MaginLeftWidth"></div>
		<div class="topleftclass"><a href="../index/index.jsp">宠物之家</a></div>
		<div class="topleftclass"><a href="../ShopMall/ShopMall.jsp">宠物商城</a></div>
		<div class="topleftclass"><a href="../BusinessesService/MapMode.jsp">宠物服务</a></div>
		<div class="topleftclass">宠物论坛</div>
		<div class="topleftclass"><a href="../baike/BaiKeIndex.jsp">宠物百科</a></div>
		<div id="topcenter"></div>
		<div class="toprightclass"><a href="../login/login.jsp">登录</a></div>
		<div class="toprightclass"><a href="../register/register.jsp">注册</a></div>
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
            
            <div id="UserCenterTitle">服务中心</div>
            </div>
            <div id="UserLogin">
            <div id="UserLogin_Tip">
            点击这里<a href="../login/login.jsp">登录</a></div>
            </div>
            </div>
			
		</div>
        <div id="zhubiaocontrol">
<div class="zhubiaokong MaginLeftWidth"></div>
<div id="zhubiao">
<div id="Title">
<div id="ClassificationControl">
分类&nbsp;
宠物分类
<select>
<option>猫咪</option>
<option>汪星人</option>
<option>小宠</option>
<option>水族</option>

</select>
服务类型：
<select>
<option>全部</option>
<option>美容</option>
<option>清洁</option>
<option>医疗</option>
<option>训练</option>
<option>摄影</option>
<option>寄养</option>
</select>


</div>
<div id="SearchControl">
<input type="text" name="SearchText" id="SearchText"/><input type="button" value="搜索" id="SearchSubmit" onclick="getdata()"/><input type="button" value="获取地址的经纬度" id="getAddID" onclick="getAddId()"><span id="resultAddID">获取地址的经纬度结果:</span>
</div>
<div id="ReturnListMode">
<a href="#">返回列表</a>
</div>
</div>
<div id="MapData">
<div id="MapControl">
<div id="MapPanel"></div>


</div>
</div>
</div>
<!--id zhubiao end-->
<!---center end-->
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
<script type="text/javascript">



	//地图初始化时，在地图上添加一个marker标记,鼠标点击marker可弹出自定义的信息窗体
 		var data="";
	var placeSearch="";
    var map = new AMap.Map("MapControl", {
        resizeEnable: true
        
    });

	AMap.service('AMap.PlaceSearch',function(){//回调函数
  //  实例化PlaceSearch
    placeSearch= new AMap.PlaceSearch();
   // TODO: 使用placeSearch对象调用关键字搜索的功能
	 placeSearch =new AMap.PlaceSearch({
	pageSize: 1000,
    pageIndex: 1,
    city: "028", //城市
    map: map,
   panel: "MapPanel"
	
	});
})

	
function getdata(){
		   
		 
			 data=document.getElementById("SearchText").value;
			 alert(data);
			 placeSearch.search(data, function(status, result) {
				
        });
			
}
//输入提示
var autoOptions = {
    input: "SearchText"
};
var auto = new AMap.Autocomplete(autoOptions);
var placeSearch = new AMap.PlaceSearch({
    map: map
});  //构造地点查询类
AMap.event.addListener(auto, "select", select);//注册监听，当选中某条记录时会触发
function select(e) {
    placeSearch.setCity(e.poi.adcode);
    placeSearch.search(e.poi.name);  //关键字查询查询
}
var menu=new ContextMenu(map);
function ContextMenu(map) {
    var me = this;
    this.mouseTool = new AMap.MouseTool(map); //地图中添加鼠标工具MouseTool插件
    this.contextMenuPositon = null;
    var content = [];
    content.push("<div>");
    content.push("    <ul class='context_menu'>");
    content.push("        <li onclick='menu.zoomMenu(0)'>缩小</li>");
    content.push("        <li class='split_line' onclick='menu.zoomMenu(1)'>放大</li>");
    content.push("        <li class='split_line' onclick='menu.distanceMeasureMenu()'>距离量测</li>");
    content.push("        <li onclick='menu.addMarkerMenu()'>添加标记</li>");
    content.push("    </ul>");
    content.push("</div>");
    this.contextMenu = new AMap.ContextMenu({isCustom: true, content: content.join('')});//通过content自定义右键菜单内容
    //地图绑定鼠标右击事件——弹出右键菜单
    map.on('rightclick', function(e) {
        me.contextMenu.open(map, e.lnglat);
        me.contextMenuPositon = e.lnglat; //右键菜单位置
    });
}

ContextMenu.prototype.zoomMenu = function zoomMenu(tag) {//右键菜单缩放地图
    if (tag === 0) {
        map.zoomOut();
    }
    if (tag === 1) {
        map.zoomIn();
    }
    this.contextMenu.close();
}
ContextMenu.prototype.distanceMeasureMenu=function () {  //右键菜单距离量测
    this.mouseTool.rule();
    this.contextMenu.close();
}
ContextMenu.prototype.addMarkerMenu=function () {  //右键菜单添加Marker标记
    this.mouseTool.close();
    var marker = new AMap.Marker({
        map: map,
        position: this.contextMenuPositon //基点位置
    });
    this.contextMenu.close();
}

function getAddId() {
	alert(123);
    var geocoder = new AMap.Geocoder({
        city: "028", //城市，默认：“全国”
        radius: 1000 //范围，默认：500
    });
    //地理编码,返回地理编码结果
    data=document.getElementById("SearchText").value;
    geocoder.getLocation(data, function(status, result) {
        if (status === 'complete' && result.info === 'OK') {
            geocoder_CallBack(result);
        }
    });
}
function addMarker(i, d) {
    var marker = new AMap.Marker({
        map: map,
        position: [ d.location.getLng(),  d.location.getLat()]
    });
    var infoWindow = new AMap.InfoWindow({
        content: d.formattedAddress,
        offset: {x: 0, y: -30}
    });
    marker.on("mouseover", function(e) {
        infoWindow.open(map, marker.getPosition());
    });
}
//地理编码返回结果展示
function geocoder_CallBack(data) {
    var resultStr = "";
    //地理编码结果数组
    var geocode = data.geocodes;
    for (var i = 0; i < geocode.length; i++) {
        //拼接输出html
        resultStr += "<span style=\"font-size: 12px;padding:0px 0 4px 2px; border-bottom:1px solid #C1FFC1;\">" + "<b>地址</b>：" + geocode[i].formattedAddress + "" + "&nbsp;&nbsp;<b>的地理编码结果是:</b><b>&nbsp;&nbsp;&nbsp;&nbsp;坐标</b>：" + geocode[i].location.getLng() + ", " + geocode[i].location.getLat() + "" + "<b>&nbsp;&nbsp;&nbsp;&nbsp;匹配级别</b>：" + geocode[i].level + "</span>";
        addMarker(i, geocode[i]);
    }
    map.setFitView();
    document.getElementById("resultAddID").innerHTML = resultStr;
}
/*addMarker();    添加marker标记
    function addMarker() {
        map.clearMap();
        var marker = new AMap.Marker({
            map: map,
            position: [116.481181, 39.989792]
        });
        鼠标点击marker弹出自定义的信息窗体
        AMap.event.addListener(marker, 'click', function() {
            infoWindow.open(map, marker.getPosition());
        });
    }

    实例化信息窗体
    var title = '啵啵家宠物生活馆<span style="font-size:11px;color:#F00;">均价:80次</span>',
        content = [];
    content.push("<img src='http://p0.meituan.net/joymerchant/-5128780314059535969-3900764-1495423232202.jpg%40278w_200h_0e_1l%7Cwatermark%3D1%26%26r%3D1%26p%3D9%26x%3D2%26y%3D2%26relative%3D1%26o%3D20' style='width: 115px; height: 80px; border: 0px solid rgb(255, 255, 255); margin-right: 12px;'>地址江苏省南京市鼓楼区新模范马路24-8号(特瑞特宠物医院)");
    content.push("电话：025-58832700");
    content.push("详细信息");
    var infoWindow = new AMap.InfoWindow({
        isCustom: true,  使用自定义窗体
        content: createInfoWindow(title, content.join("<br/>")),
        offset: new AMap.Pixel(16, -45)
    });

    构建自定义信息窗体
    function createInfoWindow(title, content) {
        var info = document.createElement("div");
        info.className = "info";

        可以通过下面的方式修改自定义窗体的宽高
        info.style.width = "400px";
         定义顶部标题
        var top = document.createElement("div");
        var titleD = document.createElement("div");
        var closeX = document.createElement("img");
        top.className = "info-top";
        titleD.innerHTML = title;
        closeX.src = "https://webapi.amap.com/images/close2.gif";
        closeX.onclick = closeInfoWindow;

        top.appendChild(titleD);
        top.appendChild(closeX);
        info.appendChild(top);

         定义中部内容
        var middle = document.createElement("div");
        middle.className = "info-middle";
        middle.style.backgroundColor = 'white';
        middle.innerHTML = content;
        info.appendChild(middle);

         定义底部内容
        var bottom = document.createElement("div");
        bottom.className = "info-bottom";
        bottom.style.position = 'relative';
        bottom.style.top = '0px';
        bottom.style.margin = '0 auto';
        var sharp = document.createElement("img");
        sharp.src = "https://webapi.amap.com/images/sharp.png";
        bottom.appendChild(sharp);
        info.appendChild(bottom);
        return info;
    }
   
    关闭信息窗体
    function closeInfoWindow() {
        map.clearInfoWindow();
    } */
	
</script>


<script type="text/javascript" src="https://webapi.amap.com/demos/js/liteToolbar.js"></script>
<script type='text/javascript'>
	/* var mock = {
		log: function(result) {
			window.parent.setIFrameResult('log', result);
		}
	}
	console = mock;
	window.Konsole = {
		exec: function(code) {
			code = code || '';
			try {
				var result = window.eval(code);
				window.parent.setIFrameResult('result', result);
			} catch (e) {
				window.parent.setIFrameResult('error', e);
			}
		}
	
	} */
	
</script>

</html>