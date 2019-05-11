<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="../jquery/jquery-1.7.2.js"></script>
<script>
$("window").ready(function(e) {
	$("#GetImgData").click(function(){
		var $AllBrandDl=$(".brand").find("dl");
			var evaluationIndex="";
			var productID="";
			var salesVolumes="";
			for(var x=0;x<$AllBrandDl.length;x++){
				if(x==0){
				}else if(x==3){
					 evaluationIndex=$AllBrandDl.eq(x).find("div[class='score_cont']").find("em").text();
				}else if(x==1){
				productID=$AllBrandDl.eq(x).find("dd").text();
				}else{
					salesVolumes=$AllBrandDl.eq(x).find("dd").text();
				}
				
			}
			var $allsmallimg=$(".pro_s_img").find("img");
		alert($allsmallimg.length);
		var ImgData=[];
		for(var x=0;x<$allsmallimg.length;x++){
			
			ImgData[x]=$allsmallimg.eq(x).attr("data-original");
			}
				$.ajax({
										url : "..//downSmallIMG.action",
										data : {
											
											"productID" : productID,
											"ImgDataValues":ImgData
										},
										scriptCharset : 'utf-8',
										contentType : "application/x-www-form-urlencoded; charset=utf-8",
										type : "post",
										dataType : "json",
										traditional : true,
										success : function(str, textStatus) {
											
											
											}
				
				
				})
			
			
			
			
			
		});

		$("#GetPingLunData").click(function(){
			/*总计评论人数*/
		/* 	var JudgedTotalNumber=$(".pl_num").text();
			
			var $JudgedClass=$(".pl_c").find("dt");
			var Press=$JudgedClass.eq(0).text();
			var Review=$JudgedClass.eq(1).text();
			var NegativeComment=$JudgedClass.eq(2).text();
		var $PlContentLine=$(".pl_right").find("dl");
		var $Commentinfo=$(".comment_Info");
		
		 for(var x=0;x<$PlContentLine.length;x++){
			JudgedMark=$PlContentLine.eq(x).find(".ce53").eq(0).text();
			JudgedContent=$PlContentLine.eq(x).find("dd").text();
			
			var SunburnImgValues=[];
			var $SunburnImg=$PlContentLine.eq(x).find(".J-comments-review").find("img");
			for(var a=0;a<$SunburnImg.length;a++){
				SunburnImgValues[a]=$SunburnImg.eq(a).attr("src");
				}
		
			
			var CommentSoure=$Commentinfo.eq(x).find("i").eq(0).text();
			var CommentTime=$Commentinfo.eq(x).find("i").eq(0).text();
			
		} */
			var $PlContentLine=$(".pl_list");
	
			var $Commentinfo=$(".comment_Info");
			
			var CommentSoure="";
			var CommentTime="";
			var accountIMGSrc=[];
			var accountName=[];
			var accountGrade=[];
			 var s = new Set();
			 var Str="[[],[]]";
			 var SunburnImgValues=[];
			alert(1);
		
			 for(var x=0;x<4;x++){
				
				JudgedMark=$PlContentLine.eq(x).find(".ce53").eq(0).text();
				JudgedContent=$PlContentLine.eq(x).find(".pl_right").find("dd").eq(1).text();
				/*晒单图片地址*/
				var $SunburnImg=$PlContentLine.eq(x).find(".J-comments-review").find("img");
				for(var a=0;a<$SunburnImg.length;a++){
					/* SunburnImgValues[x]=$SunburnImg.eq(a).attr("src"); */
					s.add($SunburnImg.eq(a).attr("src"));
					SunburnImgValues[x]=s;
		}
				
			 CommentSoure=$Commentinfo.eq(x).find("i").eq(0).text();
				 CommentTime=$Commentinfo.eq(x).find("i").eq(1).text();
				  accountIMGSrc[x]=$(".pl_head").eq(x).find("img").attr("src");
					 accountName[x]=$(".pl_head").eq(x).find("p").text();
					 accountGrade[x]=$(".pl_head").eq(x).find("span").text();
					 
					/*  alert( $SunburnImgValues.eq(0).attr("src")); */
			}
			
			/* alert("评分>>>"+JudgedMark);
						alert("内容>>>"+JudgedContent); 
						alert("来源>"+CommentSoure);
						alert("时间>"+CommentTime); */
/* alert("SRC:"+SunburnImgValues[0]); */

/* for(var j of s){
 	alert(j[0][0] + '=' + j[1][0]);   
 	alert("Set集合中的值是："+j) 
} */
for(var n=0;n<SunburnImgValues.length;n++){
	alert(SunburnImgValues[n].length);
	
		/* 	 for(var j of SunburnImgValues[n]){
			 	
			 	alert("Set集合中的值是："+j) ;
			} */
	
}

/*  for(var q=0;q<SunburnIMGLine.length;q++){
	for(var x=0;x<SunburnIMGLine.length;x++){
		
		
	}
	
} */ 

$.ajax({
	url : "..//JspToArrayOfSet.action",
	data : {
		
			"SunburnImgValues" : SunburnImgValues,
			
		
	
	},
	scriptCharset : 'utf-8',
	contentType : "application/x-www-form-urlencoded; charset=utf-8",
	type : "post",
	dataType : "json",
	traditional : true,
	success : function(str, textStatus) {
		
		
		}


})
		

/* var data=[]; */

	
	
		/*评价分数*/
	
		 
		/*alert("评论时间："+CommentTime);
			alert(CommentSoure);
			alert("好评"+Press);
		alert("中评"+Review);
		alert("差评"+NegativeComment);
		alert("总评论数"+JudgedTotalNumber);
		alert("得到的图片地址是："+SunburnImgValues[0]); */
		
		
		
		})

})

</script>
<link type="text/css" rel="stylesheet" href="ProductData.css">
<link rel="stylesheet" href="http://bdimg.share.baidu.com/static/api/css/share_style0_16.css?v=8105b07e.css">
<link href="http://b.boqiicdn.com/webim/static/css/im.css?v=1480387473" rel="stylesheet">
<link href="http://b.boqiicdn.com/v2/css/dialog/jquery.lightbox-0.5.css?v=1481794036" rel="stylesheet">
<link href="http://b.boqiicdn.com/v2/css/common/detail_content.css?v=1481794036" rel="stylesheet" type="text/css">
<link href="http://b.boqiicdn.com/v2/css/shopdetail/detail.css?v=1517899650" rel="stylesheet" type="text/css">
<link href="http://b.boqiicdn.com/v2/css/dialog/default.css?v=1481794036" rel="stylesheet">
<link href="http://b.boqiicdn.com/v2/css/common/common.css?v=1523870678" rel="stylesheet">
<link href="http://b.boqiicdn.com/v2/css/common/common.css?v=1523870678" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>Insert title here</title>
</head>
<body>
<div id="GetDataControl">
<div id="">
<input type="button" id="GetImgData" value="获取商品图片">
<input type="button" id="GetPingLunData" value="获取评论信息">
</div>
</div>
<div class="body_auto">
        <!-- 商品详细开始 -->
        <div class="shop_t mt10 clearfix">
            <div class="shop_t_l_b left">
                <div class="shop_t_l">
                    <!--角标  START-->
                                            <!-- 不显示角标 -->
                                        <!--角标  END-->
                    <div class="pro_big">
                        <div class="pro_big_img"><img id="proBigImg" alt="宝路 中小型成犬粮牛肉肝蔬菜及谷物狗粮1.8kg 小图 (0)" src="http://img-new.boqiicdn.com/Data/Shop/0/29/2976/shoppicpath11516846417_y.jpg?imageView2/2/w/360/h/360/q/100/interlace/0" class="cur" sobig="http://img-new.boqiicdn.com/Data/Shop/0/29/2976/shoppicpath11516846417_y.jpg?imageslim"><span></span><div class="show"></div></div>
                     </div>
                    <div class="pro_small">
                        <div class="img_btn pro_prev left no_allow"></div>
                        <div class="pro_s_cent left">
                            <div class="pro_s_img">
                                                                    <img name="small_imgs" src="http://b.boqiicdn.com/v1/images/load.gif" data-original="http://img-new.boqiicdn.com/Data/Shop/0/29/2976/shoppicpath11516846417_y.jpg?imageView2/2/w/360/h/360/q/100/interlace/0" big="http://img-new.boqiicdn.com/Data/Shop/0/29/2976/shoppicpath11516846417_y.jpg?imageView2/2/w/360/h/360/q/100/interlace/0" class="current" video_url="http://img.boqiicdn.com/Data/Shop/2017/11/17/17_32_9_148056751349.mp4" video_duration="14" alt="宝路 中小型成犬粮牛肉肝蔬菜及谷物狗粮1.8kg 小图 (1)" sobig="http://img-new.boqiicdn.com/Data/Shop/0/29/2976/shoppicpath11516846417_y.jpg?imageslim">
                                                                    <img name="small_imgs" src="http://b.boqiicdn.com/v1/images/load.gif" data-original="http://img-new.boqiicdn.com/Data/Shop/0/29/2976/shoppicpath11468894314_y.jpg?imageView2/2/w/360/h/360/q/100/interlace/0" big="http://img-new.boqiicdn.com/Data/Shop/0/29/2976/shoppicpath11468894314_y.jpg?imageView2/2/w/360/h/360/q/100/interlace/0" alt="宝路 中小型成犬粮牛肉肝蔬菜及谷物狗粮1.8kg 小图 (2)" sobig="http://img-new.boqiicdn.com/Data/Shop/0/29/2976/shoppicpath11468894314_y.jpg?imageslim">
                                                                    <img name="small_imgs" src="http://b.boqiicdn.com/v1/images/load.gif" data-original="http://img-new.boqiicdn.com/Data/Shop/0/29/2976/shoppicpath21468894296_y.jpg?imageView2/2/w/360/h/360/q/100/interlace/0" big="http://img-new.boqiicdn.com/Data/Shop/0/29/2976/shoppicpath21468894296_y.jpg?imageView2/2/w/360/h/360/q/100/interlace/0" alt="宝路 中小型成犬粮牛肉肝蔬菜及谷物狗粮1.8kg 小图 (3)" sobig="http://img-new.boqiicdn.com/Data/Shop/0/29/2976/shoppicpath21468894296_y.jpg?imageslim">
                                                                    <img name="small_imgs" src="http://b.boqiicdn.com/v1/images/load.gif" data-original="http://img-new.boqiicdn.com/Data/Shop/0/29/2976/shoppicpath11468825924_y.jpg?imageView2/2/w/360/h/360/q/100/interlace/0" big="http://img-new.boqiicdn.com/Data/Shop/0/29/2976/shoppicpath11468825924_y.jpg?imageView2/2/w/360/h/360/q/100/interlace/0" alt="宝路 中小型成犬粮牛肉肝蔬菜及谷物狗粮1.8kg 小图 (4)" sobig="http://img-new.boqiicdn.com/Data/Shop/0/29/2976/shoppicpath11468825924_y.jpg?imageslim">
                                                                    <img name="small_imgs" src="http://b.boqiicdn.com/v1/images/load.gif" data-original="http://img-new.boqiicdn.com/Data/Shop/0/29/2976/shoppicpath21468825919_y.jpg?imageView2/2/w/360/h/360/q/100/interlace/0" big="http://img-new.boqiicdn.com/Data/Shop/0/29/2976/shoppicpath21468825919_y.jpg?imageView2/2/w/360/h/360/q/100/interlace/0" alt="宝路 中小型成犬粮牛肉肝蔬菜及谷物狗粮1.8kg 小图 (5)" sobig="http://img-new.boqiicdn.com/Data/Shop/0/29/2976/shoppicpath21468825919_y.jpg?imageslim">
                                                                <input type="hidden" id="imgurl" value="http://img.boqiicdn.com/Data/Shop/">
                                <input type="hidden" id="producturl" value="http://shop.boqii.com/product-2976.html">

                            </div>
                        </div>
                        <div class="img_btn pro_next left"></div>
                    </div>
                    <div class="zoom-big">
                        <div class="pro_big_img1 none"><img src="" alt=""></div>
                    </div>
                </div>
                <div class="share">
                    <div class="left share_text">分享到：</div>
                    <div class="bdsharebuttonbox left bdshare-button-style0-16" data-bd-bind="1527044613925"><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间" data-bd="act:click" data-bd-event="value:2976|type:goods|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E5%9B%BE%E7%89%87%E4%B8%8B%E5%88%86%E4%BA%AB"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博" data-bd="act:click" data-bd-event="value:2976|type:goods|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E5%9B%BE%E7%89%87%E4%B8%8B%E5%88%86%E4%BA%AB"></a><a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博" data-bd="act:click" data-bd-event="value:2976|type:goods|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E5%9B%BE%E7%89%87%E4%B8%8B%E5%88%86%E4%BA%AB"></a><a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网" data-bd="act:click" data-bd-event="value:2976|type:goods|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E5%9B%BE%E7%89%87%E4%B8%8B%E5%88%86%E4%BA%AB"></a><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信" data-bd="act:click" data-bd-event="value:2976|type:goods|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E5%9B%BE%E7%89%87%E4%B8%8B%E5%88%86%E4%BA%AB"></a><a href="#" class="bds_more" data-cmd="more" data-bd="act:click" data-bd-event="value:2976|type:goods|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E5%9B%BE%E7%89%87%E4%B8%8B%E5%88%86%E4%BA%AB"></a></div>
                    
                </div>
            </div>
            <div class="shop_t_c left">
                <div class="shop_name">
		                                                    		            宝路 中小型成犬粮牛肉肝蔬菜及谷物狗粮1.8kg
                    <input type="hidden" id="goodname" value="宝路 中小型成犬粮牛肉肝蔬菜及谷物狗粮1.8kg">
		</div>
	        <!-- 国旗 -->
                                                <div class="shop_ad">
                    <em class="left" style="margin-right:10px;" id="subtitle"></em>
                    <a target="_blank" href="javascript:;"><span class="left"></span></a>
                </div>
                <!-- 秒杀模块 -->
                <div class="msPrice none">
                    <div class="spikePrice left">
                    </div>
                    <div class="spikeTime right" id="colock">
                        <dl>
                            <dt class="time-text">距活动结束仅剩</dt>
                            <dd>
                                <span class="hour_show">00</span><i>:</i><span class="minute_show">00</span><i>:</i><span class="second_show">00</span>
                            </dd>
                        </dl>
                    </div> 
                </div>
                <!-- 秒杀模块end -->

                <!-- 预售模块 -->
                <div class="preSale none">
                    <div class="spikePrice left">
                        <i class="dj"></i>
                        <span class="dj-price has-two">加载中...</span>
                        <span class="pre-price">加载中...</span>  
                    </div>
                    <div class="spikeTime right" id="pre-colock">
                        <dl>
                            <dt class="time-text"></dt>
                            <dd>
                                <span class="hour_show">00</span><i>:</i><span class="minute_show">00</span><i>:</i><span class="second_show">00</span>
                            </dd>
                        </dl>
                    </div>
                </div>
                <!-- 预售模块end -->
                                <div class="shop_t_c_c">
                                        <dl>
                        <dt class="j">波 奇 价： </dt>
                        <dd>
                            <div class="bq_price left">
                                <div id="bqPrice">
                                    ¥48.00
                                    <span class="yh_text" id="isTeamBuy" style="display:none;"></span>
                                </div>
                                <span class="price_unit"></span>
                                <input id="yhhcast" type="hidden" value="48.00">
                                <em id="savePrice" style="display:none;"></em>
                            </div>
                            <div class="dou right" id="bean"></div>
                        </dd>
                    </dl>
                                        <!--
                    <input type="hidden" id="gePrice" value="48.00">
                    -->
                    <input type="hidden" id="gePrice" value="48.00">
                    <input type="hidden" id="upstatus" value="1">
                    <input type="hidden" id="pinyouCategory" value="狗狗专区-狗狗主粮-国产粮">
                    <input type="hidden" id="cateThirdId" value="">
                    <input type="hidden" id="brandName" value="宝路">
                                        <dl>
                        <dt>厂商指导价：</dt>
                        <dd><div class="oldprice" id="shPrice">¥53.52</div></dd>
                    </dl>
                                        <input type="hidden" id="csPrice" value="53.52">
                    
                    <dl id="fullQuota">
                    </dl>
                    <div class="gift-rule-btn right">
                        <span>满赠规则<i></i></span>
                        <div class="gift-rule-detail">
                            1、达到满赠券活动订单条件，订单完成后，在“个人中心—&gt;商城订单”列表页面，点击“确认收货”按钮后的第<em class="day"></em>天发放优惠券到个人账户；<br>
                            2、如果期间一直没有点击“确认收货”按钮，默认下单后的第15天发放优惠券；<br>
                            3、如果期间活动订单发生退款，退货行为，则不享受满赠券优惠。
                        </div>
                    </div>
                </div>
                <div class="shop_t_c_b">
                    <div class="presale-rule-btn">
                        <span>预售规则<i></i></span>
                        <div class="presale-rule-detail"></div>
                    </div>
                                        <dl class="cuxiao_ms none">
                        <dt>促&nbsp;&nbsp;销：</dt>
                        <dd class="cx"></dd>
                    </dl>
                                        <dl class="pre-pay-time">
                        <dt class="pre-time">尾款时间：</dt>
                        <dd class="pre-time-detail"></dd>
                    </dl>
                    <!-- <dl class="pre-origin-price">
                        <dt class="">原&nbsp;&nbsp;价：</dt>
                        <dd class="origin-price"><del></del></dd>     
                    </dl> -->
                    <dl class="pre-has-sale none">
                        <dt>已&nbsp;预&nbsp;订：</dt>
                        <dd class="has-sale-num"></dd>
                    </dl>
                    <dl>
                        <input type="hidden" id="saleCity" value="">
                        <dt class="ps">配&nbsp;送&nbsp;至：</dt>
                        <dd>
                            <div class="detail_city">
                                <div class="d_city_tit"><span id="ProCityInfo"></span><em></em></div>
                                <div class="d_city_select none" id="cityul">
                                                                            <span cityid="11">北京</span>
                                                                            <span cityid="12">天津</span>
                                                                            <span cityid="13">河北</span>
                                                                            <span cityid="14">山西</span>
                                                                            <span cityid="15">内蒙古</span>
                                                                            <span cityid="21">辽宁</span>
                                                                            <span cityid="22">吉林</span>
                                                                            <span cityid="23">黑龙江</span>
                                                                            <span cityid="31">上海</span>
                                                                            <span cityid="32">江苏</span>
                                                                            <span cityid="33">浙江</span>
                                                                            <span cityid="34">安徽</span>
                                                                            <span cityid="35">福建</span>
                                                                            <span cityid="36">江西</span>
                                                                            <span cityid="37">山东</span>
                                                                            <span cityid="41">河南</span>
                                                                            <span cityid="42">湖北</span>
                                                                            <span cityid="43">湖南</span>
                                                                            <span cityid="44">广东</span>
                                                                            <span cityid="45">广西</span>
                                                                            <span cityid="46">海南</span>
                                                                            <span cityid="50">重庆</span>
                                                                            <span cityid="51">四川</span>
                                                                            <span cityid="52">贵州</span>
                                                                            <span cityid="53">云南</span>
                                                                            <span cityid="54">西藏</span>
                                                                            <span cityid="61">陕西</span>
                                                                            <span cityid="62">甘肃</span>
                                                                            <span cityid="63">青海</span>
                                                                            <span cityid="64">宁夏</span>
                                                                            <span cityid="65">新疆</span>
                                                                    </div>
                            </div>
                            <div class="support left">有货；<em id="ispublicuse"></em></div>
                        </dd>
                    </dl>
                    <!--全球购仓库与税费 START-->
                                        <!--全球购仓库与税费 END-->
                                            
                                                                                <span id="size">
                        
                    </span>
                                                                        <dl>
                                <dt class="tz">套&nbsp;&nbsp;装：</dt>
                                <dd>
                                                                                                                        <div class="change current">1.8kg</div>
                                                                                                                                                                <div class="change change_no">
                                            <a href="http://shop.boqii.com/product-8122.html">
                                                4kg
                                            </a>
                                            </div>
                                                                                                                                                                <div class="change change_no">
                                            <a href="http://shop.boqii.com/product-8123.html">
                                                7.5kg
                                            </a>
                                            </div>
                                                                                                            </dd>
                            </dl>
                                                <dl>
                            <dt class="gmsl">购买数量：</dt>
                            <dd>
                                <div class="amount"><span class="reduce">-</span><input name="buynum" id="buynum" type="text" maxlength="2" size="2" value="1"><span class="add">+</span></div><div class="jian">件</div>
                            </dd>
                        </dl>
                    
                    <div class="youhui" id="prizePros"></div>
                    <input type="hidden" name="id" id="id" value="2976">
                    <input type="hidden" name="spPids" id="spPids" value="">
                                            <input type="hidden" id="allinventory" value="2851">
                        <input type="hidden" name="act" id="act" value="addCart">
                        <input type="hidden" name="otype" id="otype" value="0">
                        <input type="hidden" name="cashid" id="cashid" value="">
                        <input type="hidden" id="stopbuy" value="0">
                        <input type="hidden" id="buy_min_num" value="0">
                        <input type="hidden" id="most_buy" value="0">
                        <input type="hidden" id="inventory" value="2851">
                        <input type="hidden" id="cityname" value="">
		                <input type="hidden" id="attrId" value="0">
		               <input type="hidden" id="isglobal" value="0">
                                                                                                                            <dl class="buyNow">
                        <dt>&nbsp;</dt>
                        
                                                <dd>
                                                        <span id="noSpecial">
                                <input value="立即购买" onclick="window._paq = window._paq || [];window._paq.push(['trackEvent', 'ShopAddCart', 'detail', '2976']);return inventoryBuy();" class="gotobuy left" type="button" data-bd="act:click" data-bd-event="value:2976|type:goods|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%AB%8B%E5%8D%B3%E8%B4%AD%E4%B9%B0">
                                <a title="加入购物车" class="tocat left" id="intocar_btn" onclick="window._paq = window._paq || [];window._paq.push(['trackEvent', 'ShopAddCart', 'detail', '2976']);" data-bd="act:click" data-bd-event="value:2976|type:goods|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E5%8A%A0%E5%85%A5%E8%B4%AD%E7%89%A9%E8%BD%A6"></a>
                            </span>
                                                        <span id="isSpecial" class="none">
                                <input value="立即秒杀" class="goseckill left" type="button" data-bd="act:click" data-bd-event="value:2976|type:goods|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%AB%8B%E5%8D%B3%E7%A7%92%E6%9D%80">
                            </span>
                            
                            <!-- 无库存按钮 start-->
                            <div id="no-inventory-btn" style="display:none;float:left;">
                                <input id="invImg_2976" href="javascript:;" onclick="ShowLoginDialog(2976);" class="dhtz left" type="button" data-bd="act:click" data-bd-event="value:2976|type:goods|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E5%88%B0%E8%B4%A7%E9%80%9A%E7%9F%A5">
                                <div class="dhtz_text">选择到货通知，到货后您将收到免费短信提醒！</div>
                            </div>
                            <!-- 无库存按钮 end-->
                            <form class="preSubmit" name="form" method="post" action="#">
                                <input type="hidden" class="preGoodsId" name="GoodsId" value="">
                                <input type="hidden" class="preGoodsSpecId" name="GoodsSpecId" value="0">
                                <input type="hidden" class="preGoodsType" name="GoodsType" value="11">
                                <input type="hidden" class="preIsGlobal" name="IsGlobal" value="0">
                                <input type="hidden" class="preActionId" name="ActionId" value="">
                                <input type="hidden" class="preGoodsNum" name="GoodsNum" value="1">
                                <span class="isPresale none">
                                    <input value="定金预购" class="preSubmitBtn pre-sale left" type="button">
                                </span>
                            </form>

                            <div onclick="var _hmt = _hmt || [];
                            _hmt.push(['_setAccount', '16256b8df60004da41bb33a24cce8ba7']);
                            (function() {
                                var hm = document.createElement('script');
                                hm.src = '//hm.baidu.com/hm.js?16256b8df60004da41bb33a24cce8ba7';
                                var s = document.getElementsByTagName('script')[0];
                                s.parentNode.insertBefore(hm, s);
                            })();
                            var sendButton = document.getElementById('send');
                            var isStandardBrowsers = !! document.addEventListener;
                            var isIE = !! document.attachEvent;
                            var eventHandler = function() {
                                var rtTag = {
                                    'data': {
                                        'ecom_ cart': { //添加购物车
                                            'prod': [{
                                                'p_id': '2976',
                                                'p_price': document.getElementById('bqPrice').innerText.replace('¥','')
                                            }]
                                        }
                                    }
                                };
                                _hmt.push(['_trackRTEvent', rtTag]);
                            };ShowLoginDialog();" id="collect" class="left" data-bd="act:click" data-bd-event="value:2976|type:goods|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E6%94%B6%E8%97%8F%E5%95%86%E5%93%81"></div>
                        </dd>
                        
                    </dl>
                    <dl class="pre-sale-tips">
                        <i>!</i>请于<span></span>支付尾款
                    </dl>
                            </div>
            </div>
            <div class="shop_t_r right">
                <div class="bz">
                   <ul>
                                              <li><img src="http://b.boqiicdn.com/v2/images/btn_z.jpg"><span>100%<br>正品保障</span></li>
                       <li><img src="http://b.boqiicdn.com/v2/images/btn_c.jpg"><span>7省<br>满59免运费</span></li>
                       <li><img src="http://b.boqiicdn.com/v2/images/btn_q.jpg"><span>7天<br>无忧退换</span></li>
                                         </ul>
                </div>
                <div class="brand">
                    <dl>
                        <dt>所属品牌：</dt>
                        <dd><a href="http://shop.boqii.com/brand/blist-0-16-0-0-p0-0.html" alt="宝路 中小型成犬粮牛肉肝蔬菜及谷物狗粮1.8kg" title="宝路 中小型成犬粮牛肉肝蔬菜及谷物狗粮1.8kg" target="_blank" data-bd="act:click" data-bd-event="value:2976|type:brand|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E5%93%81%E7%89%8C%E9%A6%86">宝路</a></dd>
                    </dl>
                    <dl>
                        <dt>商品编号：</dt>
                        <dd>101801</dd>
                    </dl>
                                        <dl>
                        <dt>已　　售：</dt>
                        <dd style="color:#e53;">279149件</dd>
                    </dl>
                                        <dl>
                        <dt>满意指数：</dt>
                        <dd>
                            <div class="score_cont"><p><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span><span class="index_p5"></span></p><em>4.6分</em></div>
                            <div class="pl_top"><a href="#002" data-bd="act:click" data-bd-event="value:2976|type:goods|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E5%B7%B2%E8%AF%84%E8%AE%BA%E6%95%B0">已有730人评论</a></div>
                        </dd>
                    </dl>
                    <ul>
                        <li>授权认证：
                            <p id="gallery" style="display:inline;">
                                                            <a href="http://img.boqiicdn.com/Data/Shop/0/0/0/shopauthorize_pic1514260689.jpg" class="sqimg">
                                    <em></em>授权文件
                                                                    <img src="http://img.boqiicdn.com/Data/Shop/0/0/0/shopauthorize_pic1514260689.jpg" width="100" height="70">
                                                                </a>
                                                        </p>
                        </li>
                        <!-- <li>对商品有疑问？<a href="http://wpa.b.qq.com/cgi/wpa.php?ln=1&key=XzkzODAzNjAyNl8zMTAyN180MDA4MjA2MDk4XzJf" class="zxBtn" target="_blank"></a></li> -->
        <li>对商品有疑问？<a href="javascript:void(0);" class="zxBtn" onclick="NTKF.im_openInPageChat('kf_9481_1487054651851')" data-bd="act:click" data-bd-event="value:2976|type:goods|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E5%9C%A8%E7%BA%BF%E5%AE%A2%E6%9C%8D"></a></li>
                    </ul>
                </div>
                <div class="az detail_az">
                    <dl>
                        <dt><img src="http://b.boqiicdn.com/v2/images/app_small.jpg"></dt>
                        <dd class="name">波奇客户端</dd>
                        <dd>注册立享270元，首单再送330元</dd>
                    </dl>
                </div>
            </div>
        </div>
        <!-- 商品详细结束 -->
        <!-- 套餐开始 -->
        

        <!-- 选择套餐 -->
        
        <!-- 套餐结束 -->
        <div class="pro_cont mt30">
            <!-- 左侧开始 -->
            <div class="leftSide left hid">
                <!--  同类推荐  -->
                <input id="recommendPro" type="hidden" value="5420,5704,2260,5708,5404,1552">
                <div id="recommendGoodsList"></div>
                <div class="brands">
                    <h2 class="bar_title brands_title">热卖品牌</h2>
                    <ul>
                                                    <li>
                                <a href="/brand/blist-1-38-0-0-p0-0.html" target="_blank" data-bd="act:click" data-bd-event="value:38|type:brand|pos_id:1|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E5%B7%A6%E4%BE%A7%E7%83%AD%E5%8D%96%E5%93%81%E7%89%8C">
                                    <img src="http://b.boqiicdn.com/v1/images/load.gif" data-original="http://img.boqiicdn.com/Data/Shop/0/0/0/shopbrand_logo1483499637_thumb.jpg" alt="福来恩">
                                </a>
                            </li>
                                                    <li class="nor">
                                <a href="/brand/blist-1-374-0-0-p0-0.html" target="_blank" data-bd="act:click" data-bd-event="value:374|type:brand|pos_id:2|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E5%B7%A6%E4%BE%A7%E7%83%AD%E5%8D%96%E5%93%81%E7%89%8C">
                                    <img src="http://b.boqiicdn.com/v1/images/load.gif" data-original="http://img.boqiicdn.com/Data/Shop/0/0/0/shopbrand_logo1459232637_thumb.png" alt="醇粹">
                                </a>
                            </li>
                                                    <li>
                                <a href="/brand/blist-1-966-0-0-p0-0.html" target="_blank" data-bd="act:click" data-bd-event="value:966|type:brand|pos_id:3|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E5%B7%A6%E4%BE%A7%E7%83%AD%E5%8D%96%E5%93%81%E7%89%8C">
                                    <img src="http://b.boqiicdn.com/v1/images/load.gif" data-original="http://img.boqiicdn.com/Data/Shop/0/0/0/shopbrand_logo1483094607_thumb.jpg" alt="维采">
                                </a>
                            </li>
                                                    <li class="nor">
                                <a href="/brand/blist-1-268-0-0-p0-0.html" target="_blank" data-bd="act:click" data-bd-event="value:268|type:brand|pos_id:4|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E5%B7%A6%E4%BE%A7%E7%83%AD%E5%8D%96%E5%93%81%E7%89%8C">
                                    <img src="http://b.boqiicdn.com/v1/images/load.gif" data-original="http://img.boqiicdn.com/Data/Shop/0/0/0/brand_logo1346221559_thumb.jpg" alt="怡亲">
                                </a>
                            </li>
                                            </ul>
                </div>
                <div class="goodsCate mt10">
                    <h1 class="goodsCateTitle proTit">相关分类</h1>
                    <ul class="goodsCateList">
                                                    <li class="goodsCateList_li goodsCateList_on  goodsCateList_on2">
                                <h2 class="goodsCateSubTitle">
                                    <span>狗狗主粮</span>
                                    <i class="icons arrow_up"></i>
                                </h2>
                                <div class="goodsCateSub">
                                                                            <a href="http://shop.boqii.com/dog/list-882-0-0-0-0-0.html" title="进口粮" target="_blank" data-bd="act:click" data-bd-event="value:882|type:category|pos_id:1|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%9B%B8%E5%85%B3%E5%88%86%E7%B1%BB">进口粮</a>
                                                                            <a href="http://shop.boqii.com/dog/list-883-0-0-0-0-0.html" title="国产粮" target="_blank" class="active" data-bd="act:click" data-bd-event="value:883|type:category|pos_id:2|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%9B%B8%E5%85%B3%E5%88%86%E7%B1%BB">国产粮</a>
                                                                            <a href="http://shop.boqii.com/dog/list-884-0-0-0-0-0.html" title="处方粮" target="_blank" data-bd="act:click" data-bd-event="value:884|type:category|pos_id:3|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%9B%B8%E5%85%B3%E5%88%86%E7%B1%BB">处方粮</a>
                                                                            <a href="http://shop.boqii.com/dog/list-885-0-0-0-0-0.html" title="冻干粮" target="_blank" data-bd="act:click" data-bd-event="value:885|type:category|pos_id:4|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%9B%B8%E5%85%B3%E5%88%86%E7%B1%BB">冻干粮</a>
                                                                    </div>
                            </li>
                                                    <li class="goodsCateList_li">
                                <h2 class="goodsCateSubTitle">
                                    <span>狗狗零食</span>
                                    <i class="icons arrow_down"></i>
                                </h2>
                                <div class="goodsCateSub">
                                                                            <a href="http://shop.boqii.com/dog/list-898-0-0-0-0-0.html" title="罐头湿粮" target="_blank" data-bd="act:click" data-bd-event="value:898|type:category|pos_id:1|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%9B%B8%E5%85%B3%E5%88%86%E7%B1%BB">罐头湿粮</a>
                                                                            <a href="http://shop.boqii.com/dog/list-899-0-0-0-0-0.html" title="肉类零食" target="_blank" data-bd="act:click" data-bd-event="value:899|type:category|pos_id:2|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%9B%B8%E5%85%B3%E5%88%86%E7%B1%BB">肉类零食</a>
                                                                            <a href="http://shop.boqii.com/dog/list-900-0-0-0-0-0.html" title="磨牙洁齿" target="_blank" data-bd="act:click" data-bd-event="value:900|type:category|pos_id:3|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%9B%B8%E5%85%B3%E5%88%86%E7%B1%BB">磨牙洁齿</a>
                                                                            <a href="http://shop.boqii.com/dog/list-901-0-0-0-0-0.html" title="奶酪饼干" target="_blank" data-bd="act:click" data-bd-event="value:901|type:category|pos_id:4|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%9B%B8%E5%85%B3%E5%88%86%E7%B1%BB">奶酪饼干</a>
                                                                    </div>
                            </li>
                                                    <li class="goodsCateList_li">
                                <h2 class="goodsCateSubTitle">
                                    <span>营养保健</span>
                                    <i class="icons arrow_down"></i>
                                </h2>
                                <div class="goodsCateSub">
                                                                            <a href="http://shop.boqii.com/dog/list-635-0-0-0-0-0.html" title="美毛护肤" target="_blank" data-bd="act:click" data-bd-event="value:635|type:category|pos_id:1|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%9B%B8%E5%85%B3%E5%88%86%E7%B1%BB">美毛护肤</a>
                                                                            <a href="http://shop.boqii.com/dog/list-636-0-0-0-0-0.html" title="补钙健骨" target="_blank" data-bd="act:click" data-bd-event="value:636|type:category|pos_id:2|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%9B%B8%E5%85%B3%E5%88%86%E7%B1%BB">补钙健骨</a>
                                                                            <a href="http://shop.boqii.com/dog/list-638-0-0-0-0-0.html" title="肠胃调理" target="_blank" data-bd="act:click" data-bd-event="value:638|type:category|pos_id:3|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%9B%B8%E5%85%B3%E5%88%86%E7%B1%BB">肠胃调理</a>
                                                                            <a href="http://shop.boqii.com/dog/list-639-0-0-0-0-0.html" title="综合营养" target="_blank" data-bd="act:click" data-bd-event="value:639|type:category|pos_id:4|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%9B%B8%E5%85%B3%E5%88%86%E7%B1%BB">综合营养</a>
                                                                    </div>
                            </li>
                                                    <li class="goodsCateList_li">
                                <h2 class="goodsCateSubTitle">
                                    <span>医疗护理</span>
                                    <i class="icons arrow_down"></i>
                                </h2>
                                <div class="goodsCateSub">
                                                                            <a href="http://shop.boqii.com/dog/list-890-0-0-0-0-0.html" title="皮肤治疗" target="_blank" data-bd="act:click" data-bd-event="value:890|type:category|pos_id:1|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%9B%B8%E5%85%B3%E5%88%86%E7%B1%BB">皮肤治疗</a>
                                                                            <a href="http://shop.boqii.com/dog/list-891-0-0-0-0-0.html" title="综合护理" target="_blank" data-bd="act:click" data-bd-event="value:891|type:category|pos_id:2|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%9B%B8%E5%85%B3%E5%88%86%E7%B1%BB">综合护理</a>
                                                                            <a href="http://shop.boqii.com/dog/list-892-0-0-0-0-0.html" title="内外驱虫" target="_blank" data-bd="act:click" data-bd-event="value:892|type:category|pos_id:3|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%9B%B8%E5%85%B3%E5%88%86%E7%B1%BB">内外驱虫</a>
                                                                            <a href="http://shop.boqii.com/dog/list-893-0-0-0-0-0.html" title="常备药品" target="_blank" data-bd="act:click" data-bd-event="value:893|type:category|pos_id:4|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%9B%B8%E5%85%B3%E5%88%86%E7%B1%BB">常备药品</a>
                                                                    </div>
                            </li>
                                                    <li class="goodsCateList_li">
                                <h2 class="goodsCateSubTitle">
                                    <span>生活日用</span>
                                    <i class="icons arrow_down"></i>
                                </h2>
                                <div class="goodsCateSub">
                                                                            <a href="http://shop.boqii.com/dog/list-920-0-0-0-0-0.html" title="狗狗餐具" target="_blank" data-bd="act:click" data-bd-event="value:920|type:category|pos_id:1|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%9B%B8%E5%85%B3%E5%88%86%E7%B1%BB">狗狗餐具</a>
                                                                            <a href="http://shop.boqii.com/dog/list-921-0-0-0-0-0.html" title="狗狗住所" target="_blank" data-bd="act:click" data-bd-event="value:921|type:category|pos_id:2|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%9B%B8%E5%85%B3%E5%88%86%E7%B1%BB">狗狗住所</a>
                                                                            <a href="http://shop.boqii.com/dog/list-922-0-0-0-0-0.html" title="排便清洁" target="_blank" data-bd="act:click" data-bd-event="value:922|type:category|pos_id:3|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%9B%B8%E5%85%B3%E5%88%86%E7%B1%BB">排便清洁</a>
                                                                            <a href="http://shop.boqii.com/dog/list-923-0-0-0-0-0.html" title="服装饰品" target="_blank" data-bd="act:click" data-bd-event="value:923|type:category|pos_id:4|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%9B%B8%E5%85%B3%E5%88%86%E7%B1%BB">服装饰品</a>
                                                                            <a href="http://shop.boqii.com/dog/list-924-0-0-0-0-0.html" title="训练用品" target="_blank" data-bd="act:click" data-bd-event="value:924|type:category|pos_id:5|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%9B%B8%E5%85%B3%E5%88%86%E7%B1%BB">训练用品</a>
                                                                    </div>
                            </li>
                                                    <li class="goodsCateList_li">
                                <h2 class="goodsCateSubTitle">
                                    <span>狗狗美容</span>
                                    <i class="icons arrow_down"></i>
                                </h2>
                                <div class="goodsCateSub">
                                                                            <a href="http://shop.boqii.com/dog/list-929-0-0-0-0-0.html" title="洗护香波" target="_blank" data-bd="act:click" data-bd-event="value:929|type:category|pos_id:1|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%9B%B8%E5%85%B3%E5%88%86%E7%B1%BB">洗护香波</a>
                                                                            <a href="http://shop.boqii.com/dog/list-930-0-0-0-0-0.html" title="梳剪工具" target="_blank" data-bd="act:click" data-bd-event="value:930|type:category|pos_id:2|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%9B%B8%E5%85%B3%E5%88%86%E7%B1%BB">梳剪工具</a>
                                                                            <a href="http://shop.boqii.com/dog/list-931-0-0-0-0-0.html" title="洗澡用品" target="_blank" data-bd="act:click" data-bd-event="value:931|type:category|pos_id:3|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%9B%B8%E5%85%B3%E5%88%86%E7%B1%BB">洗澡用品</a>
                                                                    </div>
                            </li>
                                                    <li class="goodsCateList_li">
                                <h2 class="goodsCateSubTitle">
                                    <span>狗狗玩具</span>
                                    <i class="icons arrow_down"></i>
                                </h2>
                                <div class="goodsCateSub">
                                                                            <a href="http://shop.boqii.com/dog/list-786-0-0-0-0-0.html" title="互动玩具" target="_blank" data-bd="act:click" data-bd-event="value:786|type:category|pos_id:1|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%9B%B8%E5%85%B3%E5%88%86%E7%B1%BB">互动玩具</a>
                                                                            <a href="http://shop.boqii.com/dog/list-787-0-0-0-0-0.html" title="磨牙玩具" target="_blank" data-bd="act:click" data-bd-event="value:787|type:category|pos_id:2|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%9B%B8%E5%85%B3%E5%88%86%E7%B1%BB">磨牙玩具</a>
                                                                            <a href="http://shop.boqii.com/dog/list-916-0-0-0-0-0.html" title="益智玩具" target="_blank" data-bd="act:click" data-bd-event="value:916|type:category|pos_id:3|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%9B%B8%E5%85%B3%E5%88%86%E7%B1%BB">益智玩具</a>
                                                                            <a href="http://shop.boqii.com/dog/list-917-0-0-0-0-0.html" title="训练玩具" target="_blank" data-bd="act:click" data-bd-event="value:917|type:category|pos_id:4|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%9B%B8%E5%85%B3%E5%88%86%E7%B1%BB">训练玩具</a>
                                                                            <a href="http://shop.boqii.com/dog/list-918-0-0-0-0-0.html" title="漏食玩具" target="_blank" data-bd="act:click" data-bd-event="value:918|type:category|pos_id:5|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%9B%B8%E5%85%B3%E5%88%86%E7%B1%BB">漏食玩具</a>
                                                                            <a href="http://shop.boqii.com/dog/list-919-0-0-0-0-0.html" title="毛绒玩具" target="_blank" data-bd="act:click" data-bd-event="value:919|type:category|pos_id:6|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%9B%B8%E5%85%B3%E5%88%86%E7%B1%BB">毛绒玩具</a>
                                                                    </div>
                            </li>
                                                    <li class="goodsCateList_li">
                                <h2 class="goodsCateSubTitle">
                                    <span>出行装备</span>
                                    <i class="icons arrow_down"></i>
                                </h2>
                                <div class="goodsCateSub">
                                                                            <a href="http://shop.boqii.com/dog/list-876-0-0-0-0-0.html" title="航空箱包" target="_blank" data-bd="act:click" data-bd-event="value:876|type:category|pos_id:1|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%9B%B8%E5%85%B3%E5%88%86%E7%B1%BB">航空箱包</a>
                                                                            <a href="http://shop.boqii.com/dog/list-877-0-0-0-0-0.html" title="牵引系列" target="_blank" data-bd="act:click" data-bd-event="value:877|type:category|pos_id:2|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%9B%B8%E5%85%B3%E5%88%86%E7%B1%BB">牵引系列</a>
                                                                            <a href="http://shop.boqii.com/dog/list-878-0-0-0-0-0.html" title="胸背套装" target="_blank" data-bd="act:click" data-bd-event="value:878|type:category|pos_id:3|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%9B%B8%E5%85%B3%E5%88%86%E7%B1%BB">胸背套装</a>
                                                                            <a href="http://shop.boqii.com/dog/list-879-0-0-0-0-0.html" title="项圈狗牌" target="_blank" data-bd="act:click" data-bd-event="value:879|type:category|pos_id:4|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%9B%B8%E5%85%B3%E5%88%86%E7%B1%BB">项圈狗牌</a>
                                                                            <a href="http://shop.boqii.com/dog/list-880-0-0-0-0-0.html" title="外出辅助" target="_blank" data-bd="act:click" data-bd-event="value:880|type:category|pos_id:5|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E7%9B%B8%E5%85%B3%E5%88%86%E7%B1%BB">外出辅助</a>
                                                                    </div>
                            </li>
                                            </ul>
                </div>
                <div class="hot" id="vetList" style="display: none;">
                </div>

            </div>
            <!-- 左侧结束 -->
            <!-- 右侧开始 -->
            <div class="rightSide right">
              <div>
                <div class="pro_tag_body">
                    <div class="pro_tag">
                        <div class="pro_tag_cont">
                            <a href="#001" class="sp current" data-bd="act:click" data-bd-event="value:2976|type:goods|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E5%95%86%E5%93%81%E4%BB%8B%E7%BB%8D">商品介绍</a>
                            <a href="#002" class="sp" data-bd="act:click" data-bd-event="value:2976|type:goods|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E5%95%86%E5%93%81%E8%AF%84%E8%AE%BA">商品评论 (<em>730</em>)</a>
                                                        <a href="#003" class="sp" data-bd="act:click" data-bd-event="value:2976|type:goods|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E5%94%AE%E5%90%8E%E6%9C%8D%E5%8A%A1">售后服务</a>
                                                        <a href="#004" class="sp" data-bd="act:click" data-bd-event="value:2976|type:goods|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E5%95%86%E5%93%81%E5%92%A8%E8%AF%A2">商品咨询 (<em>1</em>)</a>
                            <!--<a href="#005" class="sp" data-bd="act:click" data-bd-event="value:2976|type:goods|pos_name:%E5%95%86%E5%9F%8E_%E5%95%86%E5%93%81%E8%AF%A6%E6%83%85_%E8%B4%AD%E4%B9%B0%E8%AE%B0%E5%BD%95">购买记录 (<em>279149</em>)</a>-->
                            <a href="javascript:;" id="intocar_btn2" class="none">加入购物车</a>

                            <!-- 预售按钮 -->
                             <form class="preSubmit" name="form" method="post" action="#">
                                <input type="hidden" class="preGoodsId" name="GoodsId" value="">
                                <input type="hidden" class="preGoodsSpecId" name="GoodsSpecId" value="0">
                                <input type="hidden" class="preGoodsType" name="GoodsType" value="11">
                                <input type="hidden" class="preIsGlobal" name="IsGlobal" value="0"><!-- 1是的,0不是 -->
                                <input type="hidden" class="preActionId" name="ActionId" value=""><!-- 活动id -->
                                <input type="hidden" class="preGoodsNum" name="GoodsNum" value="1">
                                <span class="pre-sale-btn none">
                                    <input value="定金预购" style="float:right;" class="preSubmitBtn pre-sale " type="button">
                                </span>
                            </form>

                            <!-- <a href="javascript:;" id="preSaleBtn" class="pre-sale-btn none"></a> -->
                        </div>
                    </div>
                </div>
                <div class="pro_pl product_introduct" id="001" name="001">
                    <div>
                                                                                                                        </div>
                    <div class="mt40">
                        <div class="xx_tit"><span>产品信息</span><em>Product Information</em></div>
                        <div class="mt15">
                                                           <div class="detail_newcon">
	<div class="detail_cs paddingb40 ">
		<p class="cips_b f36">
			<img alt="" src="http://img.boqiicdn.com/Data/Shop/1/146/14683/shopimgFile1426211336.jpg"><br>
<br>
宝路中小型犬成犬粮
		</p>
		<div id="rightDesImg" class="right imgbox">
			<img src="http://b.boqiicdn.com/v1/images/rightImgLoading.gif" width="340"> 
		</div>
		<div class="left conbox f14">
			<p>
				<span class="right box">宝路</span><span class="cfe7247">所属品牌:</span> 
			</p>
			<p>
				<span class="right box">1.8kg</span><span class="cfe7247">产品规格:</span> 
			</p>
			<p>
				<span class="right box">中小型犬成犬 </span><span class="cfe7247">适用犬类:</span> 
			</p>
		</div>
	</div>
	<div class="detail_tips f18 detailbg">
		<span class="c29090a">全新升级的宝路中小型犬成犬粮</span>针对中小型犬的特殊营养需求而设计。独特的小三角健齿颗粒包含着更浓缩的好营养，让小家伙们每天都健康有活力。5大健康活力表现，是宝路优质营养的好证明。
	</div>
<img alt="" src="http://img.boqiicdn.com/Data/Shop/1/157/15725/shopimgFile1427164141.jpg"> 
</div>
                                                    </div>
                    </div>
                    <div class="mt40">
                        <div class="xx_tit"><span>产品优势</span><em>Product Advantage</em></div>
                        <div class="mt15" style="text-align:left; width:750px; margin:15px auto;">
                            <div align="center">
	<img alt="宝路 中小型成犬粮牛肉肝蔬菜及谷物狗粮1.8kg" src="http://img.boqiicdn.com/Data/Shop/0/29/2976/shopimgFile1468894533.jpg"><img alt="宝路 中小型成犬粮牛肉肝蔬菜及谷物狗粮1.8kg" src="http://img.boqiicdn.com/Data/Shop/0/29/2976/shopimgFile1468894534.jpg"><img alt="宝路 中小型成犬粮牛肉肝蔬菜及谷物狗粮1.8kg" src="http://img.boqiicdn.com/Data/Shop/0/29/2976/shopimgFile1468894535.jpg"><img alt="宝路 中小型成犬粮牛肉肝蔬菜及谷物狗粮1.8kg" src="http://img.boqiicdn.com/Data/Shop/0/29/2976/shopimgFile1468894537.jpg"><img alt="宝路 中小型成犬粮牛肉肝蔬菜及谷物狗粮1.8kg" src="http://img.boqiicdn.com/Data/Shop/0/29/2976/shopimgFile1468894538.jpg"><img alt="宝路 中小型成犬粮牛肉肝蔬菜及谷物狗粮1.8kg" src="http://img.boqiicdn.com/Data/Shop/0/29/2976/shopimgFile1468894540.jpg"><img alt="宝路 中小型成犬粮牛肉肝蔬菜及谷物狗粮1.8kg" src="http://img.boqiicdn.com/Data/Shop/0/29/2976/shopimgFile1468894541.jpg"><img alt="宝路 中小型成犬粮牛肉肝蔬菜及谷物狗粮1.8kg" src="http://img.boqiicdn.com/Data/Shop/0/29/2976/shopimgFile1468894543.jpg"><img alt="宝路 中小型成犬粮牛肉肝蔬菜及谷物狗粮1.8kg" src="http://img.boqiicdn.com/Data/Shop/0/29/2976/shopimgFile1468894544.jpg"><img alt="宝路 中小型成犬粮牛肉肝蔬菜及谷物狗粮1.8kg" src="http://img.boqiicdn.com/Data/Shop/0/29/2976/shopimgFile1468894551.jpg"><br>
</div>
                        </div>
                    </div>
                </div>
                <!-- 商品评论开始 -->
                <div class="pro_pl mt10" id="002" name="002">
                    <div class="pro_pl_tit"><h2>商品评论</h2></div>
                    <div id="comment_pd_show_2">
                            
                <div class="pl_body_top">
                    <div class="pl_l left">
                        <div class="pl_score"><span>4.6</span>分</div>
                        <div class="pl_s_cont"><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span><span class="index_p5"></span></div>
                        <div class="pl_num">共 730 人评论</div>
                    </div>
                    <div class="pl_c left">
                        <dl>
                            <dt>好评(638)：</dt>
                            <dd><div class="line"><div class="precent" style="width:87.40%;"></div></div></dd>
                        </dl>
                        <dl>
                            <dt>中评(80)：</dt>
                            <dd><div class="line"><div class="precent" style="width:10.96%;"></div></div></dd>
                        </dl>
                        <dl>
                            <dt>差评(12)：</dt>
                            <dd><div class="line"><div class="precent" style="width:1.64%;"></div></div></dd>
                        </dl>
                    </div>
                    <div class="pl_r right">
                        <dl>
                            <dt><strong>评论获波奇豆</strong></dt>
                            <dd>· 下单用户才能发表评论</dd>
                            <dd>· <span>1豆=0.1元</span></dd>
                            <dd>· 精华评论更有额外豆奖励</dd>
                        </dl>
                    </div>
                </div>
                <div class="pl_tag mt10">
                    <span class="current"><a href="javascript:;" onclick="commentMsg(2976,1,0);">全部(730)</a></span>
                    <span><a href="javascript:;" onclick="commentMsg(2976,1,2);">好评(638)</a></span>
                    <span><a href="javascript:;" onclick="commentMsg(2976,1,3);">中评(80)</a></span>
                    <span><a href="javascript:;" onclick="commentMsg(2976,1,4);">差评(12)</a></span>
                    <span><a href="javascript:;" onclick="commentMsg(2976,1,5);">晒单(25)</a></span>
                               <span><select name="commentOrder" id="commentOrders" onchange="commentOrder(2976,this.value,selectedIndex);">
                                          <option value="1">推荐排序</option>
                                          <option value="2">时间排序</option>
                                      </select>
                               </span>
                </div>
                <div>
                        <div>
                            <div class="pl_list">
                                <div class="pl_head left">
                                    <a href="javascript:;"><img src="http://img.boqiicdn.com/Data/User/1903/190353/19035387/avatar466759593ed913a6a_b.jpg" alt=""></a>
                                    <p>R***a</p><span>V2</span>
                                </div>
                                <div class="pl_right right">
                                    <dl>
                                        <dt>评分：</dt>
                                        <dd>
                                            <div class="score-"><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span></div>
                                            <span class="ce53">5分</span>　　
                                            <span class="ce53">奖励3个波奇豆</span>
                                        </dd></dl>
                                    <dl>
                                        <dt>内容：</dt>
                                        <dd>第一次买宝路，狗狗很爱吃，感觉已经变成宝路的粉啦<span class="c999"> &nbsp;</span></dd>
                                    </dl><dl>
                                                       <dt>晒单：</dt>
                                                       <dd class="J-comments-item">
                                                       <div class="J-comments-review"><a href="javascript:void(0);" class="J-show-more-pic"><img src="https://img-new.boqiicdn.com/Data/Vet/AC/1903/190353/19035387/img5744591ece7388d3e.jpg?imageView2/2/w/320/h/320/q/75/interlace/0" class="pl_r_img"></a><a href="javascript:void(0);" class="J-show-more-pic"><img src="https://img-new.boqiicdn.com/Data/Vet/AC/1903/190353/19035387/img3530591ece740fa44.jpg?imageView2/2/w/320/h/320/q/75/interlace/0" class="pl_r_img"></a></div>
                                                    <div class="p-photos J-big-photo hide">
                                                        <div class="p-photos-operate clearfix">
                                                            <a href="javascript:void(0);" class="opt-item J-hide-big-show">
                                                                <i class="i-shut"></i><em>收起</em>
                                                            </a>
                                                            <a href="/picture-2976-531919-1.html" target="_blank" class="opt-item">
                                                                <i class="i-magnifier"></i><em>查看大图</em>
                                                            </a>
                                                            <a href="javascript:void(0);" class="opt-item opt-item-rotate J-photo-left">
                                                                <i class="i-rotate0"></i><em>向左旋转</em>
                                                            </a>

                                                            <a href="javascript:void(0);" class="opt-item opt-item-rotate J-photo-right">
                                                                <i class="i-rotate1"></i><em>向右旋转</em>
                                                            </a>
                                                   </div><div class="p-photos-viewer">
                                                        <div class="p-photos-wrap">
                                                            <i></i>
                                                            <img width="320" src="https://img-new.boqiicdn.com/Data/Vet/AC/1903/190353/19035387/img5744591ece7388d3e.jpg?imageView2/2/w/320/h/320/q/75/interlace/0" class="J-big-img">
                                                            <div class="cursor-small J-hide-big-show"></div>
                                                        </div>
                                                     </div><div class="p-photos-thumbnails J-thumb-wrap">
                                                        <div class="thumb-list J-thumb-list">
                                                        <ul><li class="J-thumb-item">
                                                                                <a href="javascript:void(0);">
                                                                                     <img src="https://img-new.boqiicdn.com/Data/Vet/AC/1903/190353/19035387/img5744591ece7388d3e.jpg?imageView2/2/w/320/h/320/q/75/interlace/0">
                                                                                </a>
                                                                               </li><li class="J-thumb-item">
                                                                                <a href="javascript:void(0);">
                                                                                    <img src="https://img-new.boqiicdn.com/Data/Vet/AC/1903/190353/19035387/img3530591ece740fa44.jpg?imageView2/2/w/320/h/320/q/75/interlace/0">
                                                                                </a>
                                                                                </li></ul>
                                                    </div>
                                                    <i class="i-prev-btn J-thumb-prev"></i>
                                                    <i class="i-next-btn J-thumb-next"></i>
                                                </div>
                                            </div>
                                        </dd>
                                    </dl><dl>
                                                <dt>&nbsp;</dt><dd><span class="comment_Info floatRight"><i>来自: ios客户端</i><i>2017-05-19 18:52:36</i></span></dd>
                                            </dl>
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="pl_list">
                                <div class="pl_head left">
                                    <a href="javascript:;"><img src="http://img.boqiicdn.com/Data/Public/none1.gif" alt=""></a>
                                    <p>m***9</p><span>V2</span>
                                </div>
                                <div class="pl_right right">
                                    <dl>
                                        <dt>评分：</dt>
                                        <dd>
                                            <div class="score-"><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span></div>
                                            <span class="ce53">5分</span>　　
                                            <span class="ce53">奖励3个波奇豆</span>
                                        </dd></dl>
                                    <dl>
                                        <dt>内容：</dt>
                                        <dd>一直买这个牌子的狗粮，老顾客了，日期新鲜！<span class="c999"> &nbsp;</span></dd>
                                    </dl><dl>
                                                       <dt>晒单：</dt>
                                                       <dd class="J-comments-item">
                                                       <div class="J-comments-review"><a href="javascript:void(0);" class="J-show-more-pic"><img src="https://img-new.boqiicdn.com/Data/Vet/AC/1849/184933/18493398/img296858eb4237a2554.jpg?imageView2/2/w/320/h/320/q/75/interlace/0" class="pl_r_img"></a><a href="javascript:void(0);" class="J-show-more-pic"><img src="https://img-new.boqiicdn.com/Data/Vet/AC/1849/184933/18493398/img300658eb4237a276f.jpg?imageView2/2/w/320/h/320/q/75/interlace/0" class="pl_r_img"></a></div>
                                                    <div class="p-photos J-big-photo hide">
                                                        <div class="p-photos-operate clearfix">
                                                            <a href="javascript:void(0);" class="opt-item J-hide-big-show">
                                                                <i class="i-shut"></i><em>收起</em>
                                                            </a>
                                                            <a href="/picture-2976-507546-1.html" target="_blank" class="opt-item">
                                                                <i class="i-magnifier"></i><em>查看大图</em>
                                                            </a>
                                                            <a href="javascript:void(0);" class="opt-item opt-item-rotate J-photo-left">
                                                                <i class="i-rotate0"></i><em>向左旋转</em>
                                                            </a>

                                                            <a href="javascript:void(0);" class="opt-item opt-item-rotate J-photo-right">
                                                                <i class="i-rotate1"></i><em>向右旋转</em>
                                                            </a>
                                                   </div><div class="p-photos-viewer">
                                                        <div class="p-photos-wrap">
                                                            <i></i>
                                                            <img width="320" src="https://img-new.boqiicdn.com/Data/Vet/AC/1849/184933/18493398/img296858eb4237a2554.jpg?imageView2/2/w/320/h/320/q/75/interlace/0" class="J-big-img">
                                                            <div class="cursor-small J-hide-big-show"></div>
                                                        </div>
                                                     </div><div class="p-photos-thumbnails J-thumb-wrap">
                                                        <div class="thumb-list J-thumb-list">
                                                        <ul><li class="J-thumb-item">
                                                                                <a href="javascript:void(0);">
                                                                                     <img src="https://img-new.boqiicdn.com/Data/Vet/AC/1849/184933/18493398/img296858eb4237a2554.jpg?imageView2/2/w/320/h/320/q/75/interlace/0">
                                                                                </a>
                                                                               </li><li class="J-thumb-item">
                                                                                <a href="javascript:void(0);">
                                                                                    <img src="https://img-new.boqiicdn.com/Data/Vet/AC/1849/184933/18493398/img300658eb4237a276f.jpg?imageView2/2/w/320/h/320/q/75/interlace/0">
                                                                                </a>
                                                                                </li></ul>
                                                    </div>
                                                    <i class="i-prev-btn J-thumb-prev"></i>
                                                    <i class="i-next-btn J-thumb-next"></i>
                                                </div>
                                            </div>
                                        </dd>
                                    </dl><dl>
                                                <dt>&nbsp;</dt><dd><span class="comment_Info floatRight"><i>来自: 网站</i><i>2017-04-10 16:28:50</i></span></dd>
                                            </dl>
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="pl_list">
                                <div class="pl_head left">
                                    <a href="javascript:;"><img src="http://img.boqiicdn.com/Data/Public/none1.gif" alt=""></a>
                                    <p>m***3</p><span>V1</span>
                                </div>
                                <div class="pl_right right">
                                    <dl>
                                        <dt>评分：</dt>
                                        <dd>
                                            <div class="score-"><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span></div>
                                            <span class="ce53">5分</span>　　
                                            <span class="ce53">奖励1个波奇豆</span>
                                        </dd></dl>
                                    <dl>
                                        <dt>内容：</dt>
                                        <dd>宝贝很喜欢吃，已经第二次买了，宝贝吃完小鼻子总是湿湿很健康，快递也特别快3天就到了，以后就这家了<span class="c999"> &nbsp;</span></dd>
                                    </dl><dl>
                                                       <dt>晒单：</dt>
                                                       <dd class="J-comments-item">
                                                       <div class="J-comments-review"><a href="javascript:void(0);" class="J-show-more-pic"><img src="http://img-new.boqiicdn.com/Data/Vet/AC/1642/164235/16423597/img119757e110d7a9cda.jpg?imageView2/2/w/320/h/320/q/75/interlace/0" class="pl_r_img"></a><a href="javascript:void(0);" class="J-show-more-pic"><img src="http://img-new.boqiicdn.com/Data/Vet/AC/1642/164235/16423597/img217957e110da63986.jpg?imageView2/2/w/320/h/320/q/75/interlace/0" class="pl_r_img"></a></div>
                                                    <div class="p-photos J-big-photo hide">
                                                        <div class="p-photos-operate clearfix">
                                                            <a href="javascript:void(0);" class="opt-item J-hide-big-show">
                                                                <i class="i-shut"></i><em>收起</em>
                                                            </a>
                                                            <a href="/picture-2976-402808-1.html" target="_blank" class="opt-item">
                                                                <i class="i-magnifier"></i><em>查看大图</em>
                                                            </a>
                                                            <a href="javascript:void(0);" class="opt-item opt-item-rotate J-photo-left">
                                                                <i class="i-rotate0"></i><em>向左旋转</em>
                                                            </a>

                                                            <a href="javascript:void(0);" class="opt-item opt-item-rotate J-photo-right">
                                                                <i class="i-rotate1"></i><em>向右旋转</em>
                                                            </a>
                                                   </div><div class="p-photos-viewer">
                                                        <div class="p-photos-wrap">
                                                            <i></i>
                                                            <img width="320" src="http://img-new.boqiicdn.com/Data/Vet/AC/1642/164235/16423597/img119757e110d7a9cda.jpg?imageView2/2/w/320/h/320/q/75/interlace/0" class="J-big-img">
                                                            <div class="cursor-small J-hide-big-show"></div>
                                                        </div>
                                                     </div><div class="p-photos-thumbnails J-thumb-wrap">
                                                        <div class="thumb-list J-thumb-list">
                                                        <ul><li class="J-thumb-item">
                                                                                <a href="javascript:void(0);">
                                                                                     <img src="http://img-new.boqiicdn.com/Data/Vet/AC/1642/164235/16423597/img119757e110d7a9cda.jpg?imageView2/2/w/320/h/320/q/75/interlace/0">
                                                                                </a>
                                                                               </li><li class="J-thumb-item">
                                                                                <a href="javascript:void(0);">
                                                                                    <img src="http://img-new.boqiicdn.com/Data/Vet/AC/1642/164235/16423597/img217957e110da63986.jpg?imageView2/2/w/320/h/320/q/75/interlace/0">
                                                                                </a>
                                                                                </li></ul>
                                                    </div>
                                                    <i class="i-prev-btn J-thumb-prev"></i>
                                                    <i class="i-next-btn J-thumb-next"></i>
                                                </div>
                                            </div>
                                        </dd>
                                    </dl><dl>
                                                <dt>&nbsp;</dt><dd><span class="comment_Info floatRight"><i>来自: 网站</i><i>2016-09-20 18:35:27</i></span></dd>
                                            </dl>
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="pl_list">
                                <div class="pl_head left">
                                    <a href="javascript:;"><img src="http://img.boqiicdn.com/Data/Public/none1.gif" alt=""></a>
                                    <p>m***7</p><span>V3</span>
                                </div>
                                <div class="pl_right right">
                                    <dl>
                                        <dt>评分：</dt>
                                        <dd>
                                            <div class="score-"><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span></div>
                                            <span class="ce53">5分</span>　　
                                            <span class="ce53">奖励5个波奇豆</span>
                                        </dd></dl>
                                    <dl>
                                        <dt>内容：</dt>
                                        <dd>我开始还担心我买了两种不同的口味，怕它不吃，还好小狗爱吃。<span class="c999"> &nbsp;</span></dd>
                                    </dl><dl>
                                                       <dt>晒单：</dt>
                                                       <dd class="J-comments-item">
                                                       <div class="J-comments-review"><a href="javascript:void(0);" class="J-show-more-pic"><img src="http://img-new.boqiicdn.com/Data/Vet/AC/1535/153569/15356946/img658657bfa125136c0.jpg?imageView2/2/w/320/h/320/q/75/interlace/0" class="pl_r_img"></a></div>
                                                    <div class="p-photos J-big-photo hide">
                                                        <div class="p-photos-operate clearfix">
                                                            <a href="javascript:void(0);" class="opt-item J-hide-big-show">
                                                                <i class="i-shut"></i><em>收起</em>
                                                            </a>
                                                            <a href="/picture-2976-382334-1.html" target="_blank" class="opt-item">
                                                                <i class="i-magnifier"></i><em>查看大图</em>
                                                            </a>
                                                            <a href="javascript:void(0);" class="opt-item opt-item-rotate J-photo-left">
                                                                <i class="i-rotate0"></i><em>向左旋转</em>
                                                            </a>

                                                            <a href="javascript:void(0);" class="opt-item opt-item-rotate J-photo-right">
                                                                <i class="i-rotate1"></i><em>向右旋转</em>
                                                            </a>
                                                   </div><div class="p-photos-viewer">
                                                        <div class="p-photos-wrap">
                                                            <i></i>
                                                            <img width="320" src="http://img-new.boqiicdn.com/Data/Vet/AC/1535/153569/15356946/img658657bfa125136c0.jpg?imageView2/2/w/320/h/320/q/75/interlace/0" class="J-big-img">
                                                            <div class="cursor-small J-hide-big-show"></div>
                                                        </div>
                                                     </div><div class="p-photos-thumbnails J-thumb-wrap">
                                                        <div class="thumb-list J-thumb-list">
                                                        <ul><li class="J-thumb-item">
                                                                                <a href="javascript:void(0);">
                                                                                     <img src="http://img-new.boqiicdn.com/Data/Vet/AC/1535/153569/15356946/img658657bfa125136c0.jpg?imageView2/2/w/320/h/320/q/75/interlace/0">
                                                                                </a>
                                                                               </li></ul>
                                                    </div>
                                                    <i class="i-prev-btn J-thumb-prev"></i>
                                                    <i class="i-next-btn J-thumb-next"></i>
                                                </div>
                                            </div>
                                        </dd>
                                    </dl><dl>
                                                <dt>&nbsp;</dt><dd><span class="comment_Info floatRight"><i>来自: 网站</i><i>2016-08-26 09:53:41</i></span></dd>
                                            </dl>
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="pl_list">
                                <div class="pl_head left">
                                    <a href="javascript:;"><img src="http://img.boqiicdn.com/Data/User/1511/151156/15115610/avatar5280571cd997d7f39_b.jpg" alt=""></a>
                                    <p>情*</p><span>V1</span>
                                </div>
                                <div class="pl_right right">
                                    <dl>
                                        <dt>评分：</dt>
                                        <dd>
                                            <div class="score-"><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span></div>
                                            <span class="ce53">5分</span>　　
                                            <span class="ce53">奖励1个波奇豆</span>
                                        </dd></dl>
                                    <dl>
                                        <dt>内容：</dt>
                                        <dd>不错，是正品，狗狗很喜欢吃，值得购买，良心评价，快递也给力，下次还会来买的，还送了六包小包的狗粮<span class="c999"> &nbsp;</span></dd>
                                    </dl><dl>
                                                       <dt>晒单：</dt>
                                                       <dd class="J-comments-item">
                                                       <div class="J-comments-review"><a href="javascript:void(0);" class="J-show-more-pic"><img src="http://img-new.boqiicdn.com/Data/Vet/AC/1511/151156/15115610/img29345720d715480db.jpg?imageView2/2/w/320/h/320/q/75/interlace/0" class="pl_r_img"></a><a href="javascript:void(0);" class="J-show-more-pic"><img src="http://img-new.boqiicdn.com/Data/Vet/AC/1511/151156/15115610/img74715720d719710b6.jpg?imageView2/2/w/320/h/320/q/75/interlace/0" class="pl_r_img"></a><a href="javascript:void(0);" class="J-show-more-pic"><img src="http://img-new.boqiicdn.com/Data/Vet/AC/1511/151156/15115610/img68125720d71e5988d.jpg?imageView2/2/w/320/h/320/q/75/interlace/0" class="pl_r_img"></a></div>
                                                    <div class="p-photos J-big-photo hide">
                                                        <div class="p-photos-operate clearfix">
                                                            <a href="javascript:void(0);" class="opt-item J-hide-big-show">
                                                                <i class="i-shut"></i><em>收起</em>
                                                            </a>
                                                            <a href="/picture-2976-274859-1.html" target="_blank" class="opt-item">
                                                                <i class="i-magnifier"></i><em>查看大图</em>
                                                            </a>
                                                            <a href="javascript:void(0);" class="opt-item opt-item-rotate J-photo-left">
                                                                <i class="i-rotate0"></i><em>向左旋转</em>
                                                            </a>

                                                            <a href="javascript:void(0);" class="opt-item opt-item-rotate J-photo-right">
                                                                <i class="i-rotate1"></i><em>向右旋转</em>
                                                            </a>
                                                   </div><div class="p-photos-viewer">
                                                        <div class="p-photos-wrap">
                                                            <i></i>
                                                            <img width="320" src="http://img-new.boqiicdn.com/Data/Vet/AC/1511/151156/15115610/img29345720d715480db.jpg?imageView2/2/w/320/h/320/q/75/interlace/0" class="J-big-img">
                                                            <div class="cursor-small J-hide-big-show"></div>
                                                        </div>
                                                     </div><div class="p-photos-thumbnails J-thumb-wrap">
                                                        <div class="thumb-list J-thumb-list">
                                                        <ul><li class="J-thumb-item">
                                                                                <a href="javascript:void(0);">
                                                                                     <img src="http://img-new.boqiicdn.com/Data/Vet/AC/1511/151156/15115610/img29345720d715480db.jpg?imageView2/2/w/320/h/320/q/75/interlace/0">
                                                                                </a>
                                                                               </li><li class="J-thumb-item">
                                                                                <a href="javascript:void(0);">
                                                                                    <img src="http://img-new.boqiicdn.com/Data/Vet/AC/1511/151156/15115610/img74715720d719710b6.jpg?imageView2/2/w/320/h/320/q/75/interlace/0">
                                                                                </a>
                                                                                </li><li class="J-thumb-item">
                                                                               <a href="javascript:void(0);">
                                                                                 <img src="http://img-new.boqiicdn.com/Data/Vet/AC/1511/151156/15115610/img68125720d71e5988d.jpg?imageView2/2/w/320/h/320/q/75/interlace/0">
                                                                               </a>
                                                                               </li></ul>
                                                    </div>
                                                    <i class="i-prev-btn J-thumb-prev"></i>
                                                    <i class="i-next-btn J-thumb-next"></i>
                                                </div>
                                            </div>
                                        </dd>
                                    </dl><dl>
                                                <dt>&nbsp;</dt><dd><span class="comment_Info floatRight"><i>来自: 网站</i><i>2016-04-27 23:13:48</i></span></dd>
                                            </dl>
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="pl_list">
                                <div class="pl_head left">
                                    <a href="javascript:;"><img src="http://img.boqiicdn.com/Data/Public/none1.gif" alt=""></a>
                                    <p>m***5</p><span>V3</span>
                                </div>
                                <div class="pl_right right">
                                    <dl>
                                        <dt>评分：</dt>
                                        <dd>
                                            <div class="score-"><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span></div>
                                            <span class="ce53">5分</span>　　
                                            <span class="ce53">奖励5个波奇豆</span>
                                        </dd></dl>
                                    <dl>
                                        <dt>内容：</dt>
                                        <dd>我的狗狗的东西都是波奇网购买，东西很齐全，价格也很适中，最重要的是东西质量信得过，真的很棒<span class="c999"> &nbsp;</span></dd>
                                    </dl><dl>
                                                       <dt>晒单：</dt>
                                                       <dd class="J-comments-item">
                                                       <div class="J-comments-review"><a href="javascript:void(0);" class="J-show-more-pic"><img src="http://img-new.boqiicdn.com/Data/Shop/User/0/0/0/shopfile1435123707.66_y.png?imageView2/2/w/320/h/320/q/75/interlace/0" class="pl_r_img"></a></div>
                                                    <div class="p-photos J-big-photo hide">
                                                        <div class="p-photos-operate clearfix">
                                                            <a href="javascript:void(0);" class="opt-item J-hide-big-show">
                                                                <i class="i-shut"></i><em>收起</em>
                                                            </a>
                                                            <a href="/picture-2976-180991-1.html" target="_blank" class="opt-item">
                                                                <i class="i-magnifier"></i><em>查看大图</em>
                                                            </a>
                                                            <a href="javascript:void(0);" class="opt-item opt-item-rotate J-photo-left">
                                                                <i class="i-rotate0"></i><em>向左旋转</em>
                                                            </a>

                                                            <a href="javascript:void(0);" class="opt-item opt-item-rotate J-photo-right">
                                                                <i class="i-rotate1"></i><em>向右旋转</em>
                                                            </a>
                                                   </div><div class="p-photos-viewer">
                                                        <div class="p-photos-wrap">
                                                            <i></i>
                                                            <img width="320" src="http://img-new.boqiicdn.com/Data/Shop/User/0/0/0/shopfile1435123707.66_y.png?imageView2/2/w/320/h/320/q/75/interlace/0" class="J-big-img">
                                                            <div class="cursor-small J-hide-big-show"></div>
                                                        </div>
                                                     </div><div class="p-photos-thumbnails J-thumb-wrap">
                                                        <div class="thumb-list J-thumb-list">
                                                        <ul><li class="J-thumb-item">
                                                                                <a href="javascript:void(0);">
                                                                                     <img src="http://img-new.boqiicdn.com/Data/Shop/User/0/0/0/shopfile1435123707.66_y.png?imageView2/2/w/320/h/320/q/75/interlace/0">
                                                                                </a>
                                                                               </li></ul>
                                                    </div>
                                                    <i class="i-prev-btn J-thumb-prev"></i>
                                                    <i class="i-next-btn J-thumb-next"></i>
                                                </div>
                                            </div>
                                        </dd>
                                    </dl><dl>
                                                <dt>&nbsp;</dt><dd><span class="comment_Info floatRight"><i>来自: 网站</i><i>2015-06-24 13:28:26</i></span></dd>
                                            </dl>
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="pl_list">
                                <div class="pl_head left">
                                    <a href="javascript:;"><img src="https://api.boqiicdn.com/FvtTuQeeLYaFaOMVS4hABx6r1XK0?imageView2/2/w/100/interlace/1/q/90/format/jpg" alt=""></a>
                                    <p>T***酱</p><span>V4</span>
                                </div>
                                <div class="pl_right right">
                                    <dl>
                                        <dt>评分：</dt>
                                        <dd>
                                            <div class="score-"><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span></div>
                                            <span class="ce53">5分</span>　　
                                            <span class="ce53">奖励10个波奇豆</span>
                                        </dd></dl>
                                    <dl>
                                        <dt>内容：</dt>
                                        <dd>一直以来狗狗都吃的这个。没有出现任何问题，也没有网上说的是毒粮，五年了，身体倍棒。<span class="c999"> &nbsp;</span></dd>
                                    </dl><dl>
                                                <dt>&nbsp;</dt><dd><span class="comment_Info floatRight"><i>来自: ios客户端</i><i>2018-05-07 20:34:25</i></span></dd>
                                            </dl>
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="pl_list">
                                <div class="pl_head left">
                                    <a href="javascript:;"><img src="http://img.boqiicdn.com/Data/User/1818/181812/18181272/avatar561158b27b12b9355_b.jpg" alt=""></a>
                                    <p>A***i</p><span>V4</span>
                                </div>
                                <div class="pl_right right">
                                    <dl>
                                        <dt>评分：</dt>
                                        <dd>
                                            <div class="score-"><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span></div>
                                            <span class="ce53">5分</span>　　
                                            <span class="ce53">奖励10个波奇豆</span>
                                        </dd></dl>
                                    <dl>
                                        <dt>内容：</dt>
                                        <dd>蛮小一包 我家狗不挑食 所以不知道好吃不好吃 回购很多次<span class="c999"> &nbsp;</span></dd>
                                    </dl><dl>
                                                <dt>&nbsp;</dt><dd><span class="comment_Info floatRight"><i>来自: ios客户端</i><i>2018-04-26 09:05:48</i></span></dd>
                                            </dl>
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="pl_list">
                                <div class="pl_head left">
                                    <a href="javascript:;"><img src="http://img.boqiicdn.com/Data/Public/none1.gif" alt=""></a>
                                    <p>丫***豆</p><span>V2</span>
                                </div>
                                <div class="pl_right right">
                                    <dl>
                                        <dt>评分：</dt>
                                        <dd>
                                            <div class="score-"><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span></div>
                                            <span class="ce53">5分</span>　　
                                            <span class="ce53">奖励3个波奇豆</span>
                                        </dd></dl>
                                    <dl>
                                        <dt>内容：</dt>
                                        <dd>宝路狗粮一直是好吃不贵的代表，狗子们很喜欢，棒棒哒！<span class="c999"> &nbsp;</span></dd>
                                    </dl><dl>
                                                <dt>&nbsp;</dt><dd><span class="comment_Info floatRight"><i>来自: android客户端</i><i>2018-04-10 16:20:09</i></span></dd>
                                            </dl>
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="pl_list">
                                <div class="pl_head left">
                                    <a href="javascript:;"><img src="http://img.boqiicdn.com/Data/Public/none1.gif" alt=""></a>
                                    <p>m***5</p><span>V4</span>
                                </div>
                                <div class="pl_right right">
                                    <dl>
                                        <dt>评分：</dt>
                                        <dd>
                                            <div class="score-"><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span></div>
                                            <span class="ce53">5分</span>　　
                                            <span class="ce53">奖励10个波奇豆</span>
                                        </dd></dl>
                                    <dl>
                                        <dt>内容：</dt>
                                        <dd>加入了新成员，小家伙吃的还可以，需要观察观察<span class="c999"> &nbsp;</span></dd>
                                    </dl><dl>
                                                <dt>&nbsp;</dt><dd><span class="comment_Info floatRight"><i>来自: 网站</i><i>2018-03-05 11:02:31</i></span></dd>
                                            </dl>
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="pl_list">
                                <div class="pl_head left">
                                    <a href="javascript:;"><img src="http://img.boqiicdn.com/Data/Public/none1.gif" alt=""></a>
                                    <p>m***9</p><span>V1</span>
                                </div>
                                <div class="pl_right right">
                                    <dl>
                                        <dt>评分：</dt>
                                        <dd>
                                            <div class="score-"><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span></div>
                                            <span class="ce53">5分</span>　　
                                            <span class="ce53">奖励1个波奇豆</span>
                                        </dd></dl>
                                    <dl>
                                        <dt>内容：</dt>
                                        <dd>提个建议：以后货到了跟买主通知一下，跟他们说货到了。<span class="c999"> &nbsp;</span></dd>
                                    </dl><dl>
                                                <dt>&nbsp;</dt><dd><span class="comment_Info floatRight"><i>来自: 移动站点</i><i>2018-01-30 12:42:52</i></span></dd>
                                            </dl>
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="pl_list">
                                <div class="pl_head left">
                                    <a href="javascript:;"><img src="http://img.boqiicdn.com/Data/Public/none1.gif" alt=""></a>
                                    <p>m***6</p><span>V2</span>
                                </div>
                                <div class="pl_right right">
                                    <dl>
                                        <dt>评分：</dt>
                                        <dd>
                                            <div class="score-"><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span></div>
                                            <span class="ce53">5分</span>　　
                                            <span class="ce53">奖励3个波奇豆</span>
                                        </dd></dl>
                                    <dl>
                                        <dt>内容：</dt>
                                        <dd>狗狗一直吃这个牌子很好，没想到价格这么实惠，下次还会购买<span class="c999"> &nbsp;</span></dd>
                                    </dl><dl>
                                                <dt>&nbsp;</dt><dd><span class="comment_Info floatRight"><i>来自: ios客户端</i><i>2018-01-21 10:47:24</i></span></dd>
                                            </dl>
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="pl_list">
                                <div class="pl_head left">
                                    <a href="javascript:;"><img src="http://img.boqiicdn.com/Data/User/1881/188137/18813799/avatar632958fede6c8e4d2_b.jpg" alt=""></a>
                                    <p>m***2</p><span>V4</span>
                                </div>
                                <div class="pl_right right">
                                    <dl>
                                        <dt>评分：</dt>
                                        <dd>
                                            <div class="score-"><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span><span class="index_pf"></span></div>
                                            <span class="ce53">5分</span>　　
                                            <span class="ce53">奖励10个波奇豆</span>
                                        </dd></dl>
                                    <dl>
                                        <dt>内容：</dt>
                                        <dd>买的渴望和雪山还在十万八千里路上，已断粮，买这个暂时用着，宝宝愿意吃。还不错吧。。<span class="c999"> &nbsp;</span></dd>
                                    </dl><dl>
                                                <dt>&nbsp;</dt><dd><span class="comment_Info floatRight"><i>来自: ios客户端</i><i>2018-01-20 18:43:02</i></span></dd>
                                            </dl>
                                </div>
                            </div>
                        </div><div class="pl_page">
                                        <a rel="nofollow" href="index.php?app=ajax&amp;ctl=comment&amp;act=commentList&amp;id=2976&amp;cmtype=&amp;action=comment&amp;page=1" title="转到第1页"><span class="current">1</span></a><a rel="nofollow" href="index.php?app=ajax&amp;ctl=comment&amp;act=commentList&amp;id=2976&amp;cmtype=&amp;action=comment&amp;page=2" title="转到第2页"><span>2</span></a><a rel="nofollow" href="index.php?app=ajax&amp;ctl=comment&amp;act=commentList&amp;id=2976&amp;cmtype=&amp;action=comment&amp;page=3" title="转到第3页"><span>3</span></a><a rel="nofollow" href="index.php?app=ajax&amp;ctl=comment&amp;act=commentList&amp;id=2976&amp;cmtype=&amp;action=comment&amp;page=4" title="转到第4页"><span>4</span></a><a rel="nofollow" href="index.php?app=ajax&amp;ctl=comment&amp;act=commentList&amp;id=2976&amp;cmtype=&amp;action=comment&amp;page=5" title="转到第5页"><span>5</span></a><a rel="nofollow" href="index.php?app=ajax&amp;ctl=comment&amp;act=commentList&amp;id=2976&amp;cmtype=&amp;action=comment&amp;page=6" title="转到第6页"><span>6</span></a><a rel="nofollow" href="index.php?app=ajax&amp;ctl=comment&amp;act=commentList&amp;id=2976&amp;cmtype=&amp;action=comment&amp;page=7" title="转到第7页"><span>7</span></a><a rel="nofollow" href="index.php?app=ajax&amp;ctl=comment&amp;act=commentList&amp;id=2976&amp;cmtype=&amp;action=comment&amp;page=8" title="转到第8页"><span>8</span></a><a rel="nofollow" href="index.php?app=ajax&amp;ctl=comment&amp;act=commentList&amp;id=2976&amp;cmtype=&amp;action=comment&amp;page=9" title="转到第9页"><span>9</span></a><a rel="nofollow" href="index.php?app=ajax&amp;ctl=comment&amp;act=commentList&amp;id=2976&amp;cmtype=&amp;action=comment&amp;page=2" title="下一页"><span>下一页&gt;</span></a>
                                    </div>
                                    
                                
                                 
                        </div>
                </div>
                 </div> 
                <!-- 商品评论结束 -->
                <!-- 售后服务/全球购说明 开始 -->
                                
                <!-- 售后服务开始 -->
<div class="pro_pl mt10" id="003" name="003">
    <div class="pro_pl_tit"><h2>售后服务</h2></div>
    <div class="baozhang">
        <dl>
            <dt class="a"></dt>
            <dd class="name">正品保障</dd>
            <dd>精选挑选供货商，严格审核产品质量和源头，承诺假一罚十。</dd>
        </dl>
        <dl>
            <dt class="b"></dt>
            <dd class="name">7天免费退换货</dd>
            <dd>商品存在质量、外包装、性能上的问题，7天无条件退换货。</dd>
        </dl>
        <dl>
            <dt class="c"></dt>
            <dd class="name">正规发票</dd>
            <dd>波奇网为所有客户开具发票，作为客户质保凭证，请顾客自行保留原件作为后续质保之需。</dd>
        </dl>
        <dl>
            <dd class="name">退换货运费规定</dd>
            <dd>① 凡是由商品质量问题导致的退换货，相应产生的运费由波奇网承担。</dd>
            <dd>② 非质量问题的商品退换货，运费由客户承担。</dd>
            <dd>③ 退货而产生的运费会在商品退款时扣除。</dd>
        </dl>
        <dl>
            <dd class="name">温馨提示</dd>
            <dd>由于部分商品包装更换较为频繁，因此您收到的货品有可能与图片不完全一致，请您以收到的商品实物为准，同时我们会尽量做到及时更新。由此给您带来的不便请多多谅解，谢谢！</dd>
        </dl>
    </div>
</div>
<!-- 售后服务结束 -->
                                <!-- 售后服务/全球购说明 结束 -->
                <!-- 商品咨询开始 -->
                <div class="pro_pl mt10" style="padding:0;border:none;" id="004" name="004">
                    <iframe id="AdvisoryShowFrame" height="100%" width="100%" scrolling="no" frameborder="0" src="http://shop.boqii.com/advisory-2976-1.html"></iframe>
                </div>
                <!-- 商品咨询结束 -->
                <!-- 购买记录开始 -->
                <!--<div class="pro_pl mt10" id="005" name="005">
                    <div class="pro_pl_tit"><h2>购买记录</h2></div>
                    <div class="buy_content mt20" id="recordsMsg"></div>
                </div>-->
                <!-- 购买记录结束 -->
            </div>
            <!-- 右侧结束 -->
        </div>
    </div>
</div>
</body>
</html>