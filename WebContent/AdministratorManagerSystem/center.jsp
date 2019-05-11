<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet" href="WMST.css">
<title>Insert title here</title>
<script src="../jquery/jquery-1.7.2.js"></script>
<script>

</script>
</head>
<body>
<div id="BodyControl">
		
		
		<div id="Center">
			<div id="CenterTitle">
				<div id="CTImg">
					<img src="../img/WebINCO/ICO_Palce.png" width="20" height="20">
				</div>
				<div id="CTText">你前的位置:首页&gt;订单管理&gt;订单列表</div>
				<div id="CTKong"></div>
				<div id="CTTime">2016年06月06日&nbsp18:00 星期二</div>
			</div>
			<div id="OderSearchControl">
				<form id="OderSearch" name="OderSearch" action="OderSearch" method="post">
					<div id="OderSearchTitle">
						<div id="SeachICOImger">
							<img src="../img/WebINCO/SearchICO.png">
						</div>
						<div id="OderNumber">
							<input type="text" name="OderNumber" value="&#35746;&#21333;&#21495;" id="OderSearch_OderNumber"/>
						</div>
						<div id="OderLogistics">
							<input type="text" name="OderLogistics" value="&#24555;&#36882;&#21592;" id="OderSearch_OderLogistics"/>
						</div>
						<div id="Region">
							&nbsp;市
							<select name="Region" id="OderSearch_Region">
    <option value="-1"
    >请选择配送区域</option>
    <option value="成都">成都</option>
    <option value="广元">广元</option>
    <option value="绵阳">绵阳</option>


</select>

						</div>
						<div id="OderSearchSubmit">
							<input type="submit" id="OderSearch_redirect:www_google_com_hk" name="redirect:www.google.com.hk" value="&#26597;&#35810;"/>

						</div>
					</div>
					<!-- OderSeachTitle-->
				</form>





				<div id="OderSearchDataView">
					<div id="OSDVTitle" class="OSVD">
						<div class="OSDVTitle" id="CTN">快递单/箱号</div>
						<div class="OSDVTitle" id="ENO">快递单号</div>
						<div class="OSDVTitle" id="POT">下单时间</div>
						<div class="OSDVTitle">发件人</div>
						<div class="OSDVTitle">收件人</div>
						<div class="OSDVTitle" id="DOT">完成时间</div>
						<div class="OSDVTitle">成交金额</div>
						<div class="OSDVTitle">订单状态</div>
						<div class="OSDVTitle" id="Operation">操作</div>
					</div>
					<div id="OSDVBody">
						<!-- 数据展示主体-->
						<div class="OSVD">
							<div class="OSDVTitle" id="CTN">800001</div>
							<div class="OSDVTitle" id="ENO">EMS:90001</div>
							<div class="OSDVTitle" id="POT">2016:03:23 08:08:45</div>
							<div class="OSDVTitle">陈东生</div>
							<div class="OSDVTitle">刘剑涛</div>
							<div class="OSDVTitle" id="DOT">2016:03:23 09:08:45</div>
							<div class="OSDVTitle">4900</div>
							<div class="OSDVTitle">已完成</div>
							<div class="OSDVTitle" id="Operation">查看详情\删除</div>
						</div>
						<div class="OSVD">
							<div class="OSDVTitle" id="CTN">800002</div>
							<div class="OSDVTitle" id="ENO">EMS:90002</div>
							<div class="OSDVTitle" id="POT">2016:03:23 08:16:45</div>
							<div class="OSDVTitle">刘芳</div>
							<div class="OSDVTitle">王新乐</div>
							<div class="OSDVTitle" id="DOT">2016:03:23 09:36:23</div>
							<div class="OSDVTitle">8900</div>
							<div class="OSDVTitle">派件中</div>
							<div class="OSDVTitle" id="Operation">查看详情\删除</div>
						</div>
					</div>
				</div>
			</div>
			</dvi>
			<!-- OderSeachControl -->
		</div>
	</div>

</body>
</html>