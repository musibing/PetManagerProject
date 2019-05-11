<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>百科数据测试</title>
<link
	href="https://bkssl.bdimg.com/static/wiki-lemma/pkg/wiki-lemma_63c8341.css"
	rel="stylesheet">
<link
	href="https://bkssl.bdimg.com/static/wiki-lemma/pkg/wiki-lemma-module_ff3edf0.css"
	rel="stylesheet">
</head>
<script src="../jquery/jquery-1.7.2.js"></script>
<script>
	$(function() {
		function Trim(str)
		 { 
		  return str.replace(/(^\s*)|(\s*$)/g, ""); 
		}
		$("#TraningEntityAttribute").click(
				function() {
					var TraningEntityNameArrary = [];
					var $AllPetName = $(".hot_pet_cont").find("dl").find("dd")
							.find("a");
					for (var x = 0; x < $AllPetName.length; x++) {
						TraningEntityNameArrary[x] = $AllPetName.eq(x).text();
					}
					var PetName = $(".lemmaWgt-lemmaTitle-title").find("h1").text();/*得到宠物性名*/
					alert("得到的宠物名字是:"+PetName);
					/* var PetDesip=$(".lemma-summary").find("div").text();得到宠物基本描述信息*/
					var PetData = $(".lemma-summary").find("div");/*得到宠物基本描述信息下的所有DIV组*/
					var briefIntroduction = "";
					for (var i = 0; i < PetData.length; i++) {
						var divdata = $(".lemma-summary").find("div:eq(" + i + ")").text();
						divdata=Trim(divdata);
						divdata = "<p>" + divdata + "</p>";
						briefIntroduction += divdata;
					}
					alert(briefIntroduction);
					var $baseicinfoNameCalss = $(".basic-info").find("dl")
							.find("dd");
					var baseicinfoData = [];

					for (var x = 0; x < $baseicinfoNameCalss.length; x++) {

						baseicinfoData[x] = $baseicinfoNameCalss.eq(x).text();

					}
					var EntityAttribute = [];
					var $catalogforli = $(".catalog-list").find(
							"li[class=level1]").find("span[class=text]");/* 在Class为catalog-list-column-4的DIV下面选取Class为Level1的li标签 */

					for (var j = 0; j < $catalogforli.length; j++) {

						EntityAttribute[j] = $catalogforli.eq(j).text();
					}

				/* 	$.ajax({
						url : "..//GetAllPetData.action",
						type : "post",
						data : {
							"briefIntroduction" : briefIntroduction,
							"petcnName" : PetName,
							"baseicinfoData" : baseicinfoData,
							"EntityAttribute" : EntityAttribute,
						},
						traditional : true,

						success : function(str) {

						}

					}) */

				})
	})
</script>
<body>
	<div id="TraningControl" style="height: 20px; width: 1366px;">
		<input type="button" id="TraningEntityAttribute" value="训练实体类属性">
	</div>
	<div class="main-content">
		<div class="top-tool">
			<a class="add-sub-icon top-tool-icon" href="javascript:;"
				title="添加义项" nslog-type="50000101" style="display: inline-block;">
				<em
				class="cmn-icon wiki-lemma-icons wiki-lemma-icons_add-subLemma-solid"></em>
			</a> <a
				href="/divideload/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A%E9%9B%AA%E6%A9%87%E7%8A%AC"
				title="拆分词条" target="_blank" class="split-icon top-tool-icon"
				style="display: none;" nslog-type="50000104"> <em
				class="cmn-icon wiki-lemma-icons wiki-lemma-icons_lemma-split"></em>
			</a>
			<div class="top-collect top-tool-icon" nslog="area"
				nslog-type="50000102">
				<em class="cmn-icon wiki-lemma-icons wiki-lemma-icons_star-solid"></em>
				<span class="collect-text">收藏</span>
				<div class="collect-tip">
					查看<a href="/uc/favolemma" target="_blank">我的收藏</a>
				</div>
			</div>
			<a href="javascript:void(0);" id="j-top-vote"
				class="top-vote top-tool-icon" nslog-type="10060801"> <em
				class="cmn-icon wiki-lemma-icons wiki-lemma-icons_zan-solid"></em> <span
				class="vote-count">16072</span> <span class="vote-tip">有用+1</span> <span
				class="voted-tip">已投票</span>
			</a>
			<div class="bksharebuttonbox top-share">
				<a class="top-share-icon top-tool-icon" nslog-type="9067"> <em
					class="cmn-icon wiki-lemma-icons wiki-lemma-icons_share"></em> <span
					class="share-count" id="j-topShareCount">978</span>
				</a>
				<div class="new-top-share" id="top-share">
					<ul class="top-share-list">
						<li class="top-share-item"><a class="share-link bds_qzone"
							href="javascript:void(0);" nslog-type="10060501"> <em
								class="cmn-icon cmn-icons cmn-icons_logo-qzone"></em>
						</a></li>
						<li class="top-share-item"><a class="share-link bds_tsina"
							href="javascript:void(0);" nslog-type="10060701"> <em
								class="cmn-icon cmn-icons cmn-icons_logo-sina-weibo"></em>
						</a></li>
						<li class="top-share-item"><a class="bds_wechat"
							href="javascript:void(0);" nslog-type="10060401"> <em
								class="cmn-icon cmn-icons cmn-icons_logo-wechat"></em>
						</a></li>
						<li class="top-share-item"><a class="share-link bds_tqq"
							href="javascript:void(0);" nslog-type="10060601"> <em
								class="cmn-icon cmn-icons cmn-icons_logo-qq"></em>
						</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div style="width: 0; height: 0; clear: both"></div>
		<dl class="lemmaWgt-lemmaTitle lemmaWgt-lemmaTitle-">
			<dd class="lemmaWgt-lemmaTitle-title">
				<h1>西伯利亚雪橇犬</h1>
				<a href="javascript:;"
					class="edit-lemma cmn-btn-hover-blue cmn-btn-28 j-edit-link"
					style="display: inline-block;"><em
					class="cmn-icon wiki-lemma-icons wiki-lemma-icons_edit-lemma"></em>编辑</a>
				<a class="lock-lemma" target="_blank" href="/view/10812319.htm"
					title="锁定"><em
					class="cmn-icon wiki-lemma-icons wiki-lemma-icons_lock-lemma"></em>锁定</a>
			</dd>
		</dl>
		<div class="promotion-declaration"></div>
		<div class="lemma-summary" label-module="lemmaSummary">
			<div class="para" label-module="para">
				<a target="_blank"
					href="/item/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A/63915"
					data-lemmaid="63915">西伯利亚</a>雪橇犬（俄语：Сибирский хаски，英语：Siberian husky），常见别名<a target="_blank"
					href="/item/%E5%93%88%E5%A3%AB%E5%A5%87">哈士奇</a>，昵称为<a
					target="_blank" href="/item/%E4%BA%8C%E5%93%88">二哈</a>。西伯利亚雪橇犬体重介于雄犬20-27公斤，雌犬16-23公斤，身高大约雄犬肩高53-58厘米，雌犬51-56厘米，是一种中型犬。
			</div>
			<div class="para" label-module="para">
				西伯利亚<a target="_blank" href="/item/%E9%9B%AA%E6%A9%87%E7%8A%AC/808"
					data-lemmaid="808">雪橇犬</a>是原始的古老犬种，在<a target="_blank"
					href="/item/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A">西伯利亚</a>东北部、<a
					target="_blank" href="/item/%E6%A0%BC%E9%99%B5%E5%85%B0">格陵兰</a>南部生活。哈士奇名字的由来，是源自其独特的嘶哑声。哈士奇性格多变，有的极端胆小，也有的极端<a
					target="_blank" href="/item/%E6%9A%B4%E5%8A%9B/2811999"
					data-lemmaid="2811999">暴力</a>，进入大陆和家庭的哈士奇，都已经没有了这种极端的性格，比较温顺，是一种流行于全球的宠物犬。与<a
					target="_blank" href="/item/%E9%87%91%E6%AF%9B%E7%8A%AC">金毛犬</a>、<a
					target="_blank" href="/item/%E6%8B%89%E5%B8%83%E6%8B%89%E5%A4%9A">拉布拉多</a>并列为三大无攻击型犬类。被世界各地广泛饲养，并在全球范围内，有大量该犬种的赛事。
			</div>
		</div>
		<div class="configModuleBanner"></div>
		<div class="basic-info cmn-clearfix">
			<dl class="basicInfo-block basicInfo-left">
				<dt class="basicInfo-item name">中文学名</dt>
				<dd class="basicInfo-item value">
					<a target="_blank"
						href="/item/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A%E9%9B%AA%E6%A9%87%E7%8A%AC">西伯利亚雪橇犬</a>
				</dd>
				<dt class="basicInfo-item name">拉丁学名</dt>
				<dd class="basicInfo-item value">Canis lupus familiaris</dd>
				<dt class="basicInfo-item name">别&nbsp;&nbsp;&nbsp;&nbsp;称</dt>
				<dd class="basicInfo-item value">
					<a target="_blank" href="/item/%E5%93%88%E5%A3%AB%E5%A5%87">哈士奇</a>、二哈、撒手没、拆迁办主任
				</dd>
				<dt class="basicInfo-item name">界</dt>
				<dd class="basicInfo-item value">动物界</dd>
				<dt class="basicInfo-item name">门</dt>
				<dd class="basicInfo-item value">
					<a target="_blank"
						href="/item/%E8%84%8A%E7%B4%A2%E5%8A%A8%E7%89%A9%E9%97%A8">脊索动物门</a>
				</dd>
				<dt class="basicInfo-item name">亚&nbsp;&nbsp;&nbsp;&nbsp;门</dt>
				<dd class="basicInfo-item value">
					<a target="_blank"
						href="/item/%E8%84%8A%E6%A4%8E%E5%8A%A8%E7%89%A9%E4%BA%9A%E9%97%A8">脊椎动物亚门</a>
				</dd>
				<dt class="basicInfo-item name">纲</dt>
				<dd class="basicInfo-item value">
					<a target="_blank" href="/item/%E5%93%BA%E4%B9%B3%E7%BA%B2">哺乳纲</a>
				</dd>
				<dt class="basicInfo-item name">亚&nbsp;&nbsp;&nbsp;&nbsp;纲</dt>
				<dd class="basicInfo-item value">
					<a target="_blank"
						href="/item/%E7%9C%9F%E5%85%BD%E4%BA%9A%E7%BA%B2">真兽亚纲</a>
				</dd>
				<dt class="basicInfo-item name">目</dt>
				<dd class="basicInfo-item value">
					<a target="_blank" href="/item/%E9%A3%9F%E8%82%89%E7%9B%AE">食肉目</a>
				</dd>
				<dt class="basicInfo-item name">亚&nbsp;&nbsp;&nbsp;&nbsp;目</dt>
				<dd class="basicInfo-item value">
					<a target="_blank"
						href="/item/%E8%A3%82%E8%84%9A%E4%BA%9A%E7%9B%AE">裂脚亚目</a>
				</dd>
				<dt class="basicInfo-item name">科</dt>
				<dd class="basicInfo-item value">
					<a target="_blank" href="/item/%E7%8A%AC%E7%A7%91">犬科</a>
				</dd>
				<dt class="basicInfo-item name">亚&nbsp;&nbsp;&nbsp;&nbsp;科</dt>
				<dd class="basicInfo-item value">
					<a target="_blank" href="/item/%E7%8A%AC%E4%BA%9A%E7%A7%91">犬亚科</a>
				</dd>
				<dt class="basicInfo-item name">族</dt>
				<dd class="basicInfo-item value">犬</dd>
				<dt class="basicInfo-item name">属</dt>
				<dd class="basicInfo-item value">
					<a target="_blank" href="/item/%E7%8A%AC%E5%B1%9E">犬属</a>
				</dd>
			</dl>
			<dl class="basicInfo-block basicInfo-right">
				<dt class="basicInfo-item name">亚&nbsp;&nbsp;&nbsp;&nbsp;属</dt>
				<dd class="basicInfo-item value">犬属</dd>
				<dt class="basicInfo-item name">种</dt>
				<dd class="basicInfo-item value">
					<a target="_blank" href="/item/%E7%81%B0%E7%8B%BC">灰狼</a>
				</dd>
				<dt class="basicInfo-item name">亚&nbsp;&nbsp;&nbsp;&nbsp;种</dt>
				<dd class="basicInfo-item value">
					<a target="_blank" href="/item/%E5%AE%B6%E7%8A%AC">家犬</a>
				</dd>
				<dt class="basicInfo-item name">分布区域</dt>
				<dd class="basicInfo-item value">
					<a target="_blank"
						href="/item/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A/63915"
						data-lemmaid="63915">西伯利亚</a>东北部，格陵兰南部
				</dd>
				<dt class="basicInfo-item name">原产地</dt>
				<dd class="basicInfo-item value">
					<a target="_blank" href="/item/%E4%BF%84%E7%BD%97%E6%96%AF">俄罗斯</a>西伯利亚地区
				</dd>
				<dt class="basicInfo-item name">原始用途</dt>
				<dd class="basicInfo-item value">雪地雪橇犬</dd>
				<dt class="basicInfo-item name">今日用途</dt>
				<dd class="basicInfo-item value">伴侣犬、雪橇竞赛犬</dd>
				<dt class="basicInfo-item name">体&nbsp;&nbsp;&nbsp;&nbsp;型</dt>
				<dd class="basicInfo-item value">中型犬</dd>
				<dt class="basicInfo-item name">适合食物</dt>
				<dd class="basicInfo-item value">狗粮</dd>
				<dt class="basicInfo-item name">英文名称</dt>
				<dd class="basicInfo-item value">SIBERIAN HUSKY</dd>
				<dt class="basicInfo-item name">俄语名称</dt>
				<dd class="basicInfo-item value">Сибирский хаски</dd>
				<dt class="basicInfo-item name">寿&nbsp;&nbsp;&nbsp;&nbsp;命</dt>
				<dd class="basicInfo-item value">9年以上</dd>
				<dt class="basicInfo-item name">体&nbsp;&nbsp;&nbsp;&nbsp;高</dt>
				<dd class="basicInfo-item value">雄犬肩高53-58CM，雌犬51-56CM</dd>
				<dt class="basicInfo-item name">体&nbsp;&nbsp;&nbsp;&nbsp;重</dt>
				<dd class="basicInfo-item value">雄犬20-27公斤,雌犬16-23公斤</dd>
				<dt class="basicInfo-item name">智商排名</dt>
				<dd class="basicInfo-item value">
					45名<sup class="sup--normal" data-sup="1"> [1]</sup><a
						class="sup-anchor" name="ref_[1]_28807">&nbsp;</a>
				</dd>
			</dl>
		</div>
		<div class="lemmaWgt-lemmaCatalog">
			<div class="lemma-catalog">
				<h2 class="block-title">目录</h2>
				<div class="catalog-list column-4">
					<ol>
						<li class="level1"><span class="index">1</span> <span
							class="text"><a href="#1">形态特征</a></span></li>
						<li class="level2"><span class="index">▪</span> <span
							class="text"><a href="#1_1">眼睛</a></span></li>
						<li class="level2"><span class="index">▪</span> <span
							class="text"><a href="#1_2">耳朵</a></span></li>
						<li class="level2"><span class="index">▪</span> <span
							class="text"><a href="#1_3">尾巴</a></span></li>
						<li class="level2"><span class="index">▪</span> <span
							class="text"><a href="#1_4">毛发</a></span></li>
						<li class="level2"><span class="index">▪</span> <span
							class="text"><a href="#1_5">鼻子</a></span></li>
						<li class="level2"><span class="index">▪</span> <span
							class="text"><a href="#1_6">生理指标</a></span></li>
						<li class="level1"><span class="index">2</span> <span
							class="text"><a href="#2">分布范围</a></span></li>
						<li class="level2"><span class="index">▪</span> <span
							class="text"><a href="#2_1">成长历程</a></span></li>
						<li class="level2"><span class="index">▪</span> <span
							class="text"><a href="#2_2">现代发展</a></span></li>
						<li class="level1"><span class="index">3</span> <span
							class="text"><a href="#3">栖息环境</a></span></li>
					</ol>
					<ol>
						<li class="level1"><span class="index">4</span> <span
							class="text"><a href="#4">生活习性</a></span></li>
						<li class="level2"><span class="index">▪</span> <span
							class="text"><a href="#4_1">等级习性</a></span></li>
						<li class="level2"><span class="index">▪</span> <span
							class="text"><a href="#4_2">与人交往</a></span></li>
						<li class="level2"><span class="index">▪</span> <span
							class="text"><a href="#4_3">领地记号</a></span></li>
						<li class="level2"><span class="index">▪</span> <span
							class="text"><a href="#4_4">卫生保健</a></span></li>
						<li class="level2"><span class="index">▪</span> <span
							class="text"><a href="#4_5">喜欢爬跨</a></span></li>
						<li class="level2"><span class="index">▪</span> <span
							class="text"><a href="#4_6">性格喜好</a></span></li>
						<li class="level1"><span class="index">5</span> <span
							class="text"><a href="#5">繁殖规律</a></span></li>
						<li class="level1"><span class="index">6</span> <span
							class="text"><a href="#6">衡量标准</a></span></li>
						<li class="level1"><span class="index">7</span> <span
							class="text"><a href="#7">饲养护理</a></span></li>
						<li class="level2"><span class="index">▪</span> <span
							class="text"><a href="#7_1">饲养要则</a></span></li>
					</ol>
					<ol>
						<li class="level2"><span class="index">▪</span> <span
							class="text"><a href="#7_2">毛质分析</a></span></li>
						<li class="level2"><span class="index">▪</span> <span
							class="text"><a href="#7_3">运动量</a></span></li>
						<li class="level2"><span class="index">▪</span> <span
							class="text"><a href="#7_4">按年龄</a></span></li>
						<li class="level2"><span class="index">▪</span> <span
							class="text"><a href="#7_5">全体适用</a></span></li>
						<li class="level2"><span class="index">▪</span> <span
							class="text"><a href="#7_6">喂食</a></span></li>
						<li class="level1"><span class="index">8</span> <span
							class="text"><a href="#8">鉴别挑选</a></span></li>
						<li class="level2"><span class="index">▪</span> <span
							class="text"><a href="#8_1">鉴别</a></span></li>
						<li class="level2"><span class="index">▪</span> <span
							class="text"><a href="#8_2">挑选方法</a></span></li>
						<li class="level1"><span class="index">9</span> <span
							class="text"><a href="#9">美容方法</a></span></li>
						<li class="level2"><span class="index">▪</span> <span
							class="text"><a href="#9_1">美容</a></span></li>
						<li class="level2"><span class="index">▪</span> <span
							class="text"><a href="#9_2">挑选沐浴露</a></span></li>
					</ol>
					<ol>
						<li class="level2"><span class="index">▪</span> <span
							class="text"><a href="#9_3">皮肤构造</a></span></li>
						<li class="level2"><span class="index">▪</span> <span
							class="text"><a href="#9_4">皮肤酸碱度</a></span></li>
						<li class="level2"><span class="index">▪</span> <span
							class="text"><a href="#9_5">毛发特质</a></span></li>
						<li class="level1"><span class="index">10</span> <span
							class="text"><a href="#10">注意事项</a></span></li>
						<li class="level2"><span class="index">▪</span> <span
							class="text"><a href="#10_1">训练注意</a></span></li>
						<li class="level2"><span class="index">▪</span> <span
							class="text"><a href="#10_2">疾病防治</a></span></li>
						<li class="level2"><span class="index">▪</span> <span
							class="text"><a href="#10_3">养殖注意</a></span></li>
						<li class="level2"><span class="index">▪</span> <span
							class="text"><a href="#10_4">常见问题</a></span></li>
						<li class="level1"><span class="index">11</span> <span
							class="text"><a href="#11">训练小贴士</a></span></li>
					</ol>

				</div>
			</div>
		</div>
		<div class="anchor-list">
			<a name="1" class="lemma-anchor para-title"></a> <a name="sub28807_1"
				class="lemma-anchor "></a> <a name="形态特征" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-2" label-module="para-title">
			<h2 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>形态特征
			</h2>
			<a class="edit-icon j-edit-link" data-edit-dl="1" href="javascript:;"
				style="display: block;"><em
				class="cmn-icon wiki-lemma-icons wiki-lemma-icons_edit-lemma"></em>编辑</a>
		</div>
		<div class="para" label-module="para" style="clear: both;">
			<a target="_blank"
				href="/item/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A%E9%9B%AA%E6%92%AC%E7%8A%AC">西伯利亚雪撬犬</a>是和狼的血统非常近的犬种，所以外形非常的像狼，有着比大多数犬种都要厚的毛发，毛发
			<div class="lemma-picture text-pic layout-right"
				style="width: 220px; float: right;">
				<a class="image-link" nslog-type="9317"
					href="/pic/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A%E9%9B%AA%E6%A9%87%E7%8A%AC/540855/0/ac4bd11373f0820277351da942fbfbedaa641b84?fr=lemma&amp;ct=single"
					target="_blank" title="哈士奇形态特征"
					style="width: 220px; height: 165px;"> <img class="lazy-img"
					src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAMAAAAoyzS7AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAAZQTFRF9fX1AAAA0VQI3QAAAAxJREFUeNpiYAAIMAAAAgABT21Z4QAAAABJRU5ErkJggg=="
					data-src="https://gss1.bdstatic.com/-vo3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=4a93709b79cf3bc7ec00caeee101babd/ac4bd11373f0820277351da942fbfbedaa641b84.jpg"
					alt="哈士奇形态特征" style="width: 220px; height: 165px;">
				</a> <span class="description"> 哈士奇形态特征 </span>
			</div>
			颜色大致分为黑色、灰色、棕色（浅棕色又被称为梦幻色）、纯白色（极少）四种，当然这些颜色通常都是夹杂着白色毛发同时存在。哈士奇眼睛有纯棕色和纯蓝色，允许有一只眼睛棕色一只眼睛蓝色。哈士奇的头版，俗称脸型，通常有十字脸型、桃脸型、三把火、地中海四种。
		</div>
		<div class="para" label-module="para">
			值得一提的是“蓝眼，三火”，蓝眼指的就是眼睛是蓝色的；三火指的是额头上的三道白色痕迹，看起来像三把燃烧的火苗。“蓝眼，三火”曾经一度被误认为是哈士奇的标准，其实这并不是判断哈士奇品质标准，反之蓝眼三火更是哈士奇普遍的存在，血统赛级哈士奇就极少有“蓝眼睛，三把火”的存在，多为两只褐眼。因为<a
				target="_blank"
				href="/item/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A/63915"
				data-lemmaid="63915">西伯利亚</a>雪撬犬都有着和狼非常相似的外观，我们所看到电影里的狼大多都是哈士奇扮演，所以哈士奇和狼长得越像越好。
		</div>
		<div class="anchor-list">
			<a name="1_1" class="lemma-anchor para-title"></a> <a
				name="sub28807_1_1" class="lemma-anchor "></a> <a name="眼睛"
				class="lemma-anchor "></a> <a name="1-1" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-3" label-module="para-title">
			<h3 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>眼睛
			</h3>
		</div>
		<div class="para" label-module="para">
			<a class="lemma-album layout-right nslog:10000206" title="烟灰色哈士奇"
				href="/pic/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A%E9%9B%AA%E6%A9%87%E7%8A%AC/540855/20455024/810a19d8bc3eb135c9e129cfaf1ea8d3fd1f44a4?fr=lemma&amp;ct=cover"
				target="_blank" style="width: 222px;" nslog-type="10000206">
				<div class="album-wrap" style="width: 220px; height: 146px;">
					<img class="picture" alt="烟灰色哈士奇"
						src="https://gss2.bdstatic.com/9fo3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=c31a8a7bb10e7bec27da04e31f2eb9fa/810a19d8bc3eb135c9e129cfaf1ea8d3fd1f44a4.jpg"
						style="width: 220px; height: 146px;">
				</div>
				<div class="description">
					烟灰色哈士奇<span class="number">(7张)</span>
				</div>
				<div class="albumBg">
					<div class="albumBgFir" style="width: 214px;"></div>
					<div class="albumBgSec" style="width: 208px;"></div>
				</div>
			</a> 通常是蓝色和褐色（棕色）。通常我们所说的“二哈”多为浅蓝色<a target="_blank"
				href="/item/%E7%9C%BC%E8%89%B2/84690" data-lemmaid="84690">眼色</a>的哈士奇，蓝色（随着年龄增长蓝色变淡近为白色），蓝色眼睛哈士奇看起来总是带着一种蔑视凶残的眼神，但实则很是胆小温顺。在赛场上出现的多为褐色眼睛哈士奇，给人温柔呆萌的感觉，但认真的时候眼神间也透露出渗人的狼意。还有，一只狗可能有一只眼是棕色或浅褐色的，而另一只却是蓝色的，恶魔与天使面孔同存，这种现象被称作"bi-eyed"；或者一只眼是蓝色的而另一只眼的虹膜是杂色的，即<a
				target="_blank"
				href="/item/%E8%99%B9%E8%86%9C%E5%BC%82%E8%89%B2%E7%97%87">虹膜异色症</a>，被饲养<a
				target="_blank"
				href="/item/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A/63915"
				data-lemmaid="63915">西伯利亚</a>雪撬犬的爱好者称为"parti-eyed"。
		</div>
		<div class="anchor-list">
			<a name="1_2" class="lemma-anchor para-title"></a> <a
				name="sub28807_1_2" class="lemma-anchor "></a> <a name="耳朵"
				class="lemma-anchor "></a> <a name="1-2" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-3" label-module="para-title">
			<h3 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>耳朵
			</h3>
		</div>
		<div class="para" label-module="para">
			<a class="lemma-album layout-right nslog:10000206"
				title="西伯利亚雪橇犬  （别名哈士奇）"
				href="/pic/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A%E9%9B%AA%E6%A9%87%E7%8A%AC/540855/21506504/6a63f6246b600c338e9bdc33134c510fd8f9a16e?fr=lemma&amp;ct=cover"
				target="_blank" style="width: 222px;" nslog-type="10000206">
				<div class="album-wrap" style="width: 220px; height: 143px;">
					<img class="picture" alt="西伯利亚雪橇犬  （别名哈士奇）"
						src="https://gss1.bdstatic.com/9vo3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=97f030c321381f309a198aab99034c67/6a63f6246b600c338e9bdc33134c510fd8f9a16e.jpg"
						style="width: 220px; height: 143px;">
				</div>
				<div class="description">
					西伯利亚雪橇犬 （别名哈士奇）<span class="number">(8张)</span>
				</div>
				<div class="albumBg">
					<div class="albumBgFir" style="width: 214px;"></div>
					<div class="albumBgSec" style="width: 208px;"></div>
				</div>
			</a> 耳朵呈三角形，毛发浓密，<a target="_blank" href="/item/%E5%A4%96%E8%80%B3">外耳</a>毛色多与体表毛色相近，内耳多为白色，耳朵大小比一般都都要小，正常直立，兴奋接近的时候耳朵会向后贴住脑袋。相对于<a
				target="_blank"
				href="/item/%E9%98%BF%E6%8B%89%E6%96%AF%E5%8A%A0%E9%9B%AA%E6%A9%87%E7%8A%AC">阿拉斯加雪橇犬</a>和<a
				target="_blank" href="/item/%E8%90%A8%E6%91%A9%E8%80%B6">萨摩耶</a>雪橇犬，两只耳朵位置间距要靠近很多，这也是从外观上辨别阿拉斯加和哈士奇很直观的依据。
		</div>
		<div class="anchor-list">
			<a name="1_3" class="lemma-anchor para-title"></a> <a
				name="sub28807_1_3" class="lemma-anchor "></a> <a name="尾巴"
				class="lemma-anchor "></a> <a name="1-3" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-3" label-module="para-title">
			<h3 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>尾巴
			</h3>
		</div>
		<div class="para" label-module="para">
			尾部像毛刷一样，有着类似于狐狸尾巴的外形，就像毛笔笔头的造型一样自然向后下垂，在兴奋的时候会微
			<div class="lemma-picture text-pic layout-right"
				style="width: 220px; margin: 0px auto; text-indent: 28px; clear: both; display: block; cursor: move; float: right;">
				<a class="image-link" nslog-type="9317"
					href="/pic/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A%E9%9B%AA%E6%A9%87%E7%8A%AC/540855/0/b999a9014c086e0665f894190b087bf40ad1cb14?fr=lemma&amp;ct=single"
					target="_blank" title="耳朵和尾巴参考图"
					style="width: 220px; height: 165px;"> <img class="lazy-img"
					src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAMAAAAoyzS7AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAAZQTFRF9fX1AAAA0VQI3QAAAAxJREFUeNpiYAAIMAAAAgABT21Z4QAAAABJRU5ErkJggg=="
					data-src="https://gss0.bdstatic.com/94o3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=a97eed928b025aafd73279c9cbecab8d/b999a9014c086e0665f894190b087bf40ad1cb14.jpg"
					alt="耳朵和尾巴参考图" style="width: 220px; height: 165px;">
				</a> <span class="description"> 耳朵和尾巴参考图 </span>
			</div>
			微上翘，但不会翘至背部甚至卷起来（否则担心纯种与否）。尾巴上的毛通常比<a target="_blank"
				href="/item/%E4%BD%93%E6%AF%9B">体毛</a>长且硬直，也没有体毛柔顺，挥动有力。尾巴是哈士奇表达情绪的重要方式，在高兴的时候，会表现出追尾巴的行为，在害怕或攻击的时候，尾巴会拱形夹在后腿之间，疑惑的时候，尾巴甚至会上下摆动。
		</div>
		<div class="anchor-list">
			<a name="1_4" class="lemma-anchor para-title"></a> <a
				name="sub28807_1_4" class="lemma-anchor "></a> <a name="毛发"
				class="lemma-anchor "></a> <a name="1-4" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-3" label-module="para-title">
			<h3 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>毛发
			</h3>
		</div>
		<div class="para" label-module="para">
			西伯利亚雪撬犬的毛发由两层组成：浓密、开司米状的下层毛和长、较粗糙且含有短、直卫毛（guard
			hair）的上层毛。它们一年只脱一次下层毛，这个旧毛的脱落过程通常被称为吹下他们的毛<i>（blowing their coat）</i>。哈士奇在未成年换毛时期掉毛较厉害，成年哈士奇毛发打理也非常方便,而且哈士奇本身也很爱卫生。还有西伯利亚雪撬犬毛发体味非常的弱。<a
				class="lemma-album layout-right nslog:10000206" title="西伯利亚雪橇犬"
				href="/pic/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A%E9%9B%AA%E6%A9%87%E7%8A%AC/540855/21870566/6c224f4a20a44623f87ed06b9222720e0cf3d707?fr=lemma&amp;ct=cover"
				target="_blank" style="width: 222px;" nslog-type="10000206">
				<div class="album-wrap" style="width: 220px; height: 161px;">
					<img class="picture" alt="西伯利亚雪橇犬"
						src="https://gss1.bdstatic.com/9vo3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=4292f068f21986184547e8867aec2e69/6c224f4a20a44623f87ed06b9222720e0cf3d707.jpg"
						style="width: 220px; height: 161px;">
				</div>
				<div class="description">
					西伯利亚雪橇犬<span class="number">(5张)</span>
				</div>
				<div class="albumBg">
					<div class="albumBgFir" style="width: 214px;"></div>
					<div class="albumBgSec" style="width: 208px;"></div>
				</div>
			</a>
		</div>
		<div class="anchor-list">
			<a name="1_5" class="lemma-anchor para-title"></a> <a
				name="sub28807_1_5" class="lemma-anchor "></a> <a name="鼻子"
				class="lemma-anchor "></a> <a name="1-5" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-3" label-module="para-title">
			<h3 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>鼻子
			</h3>
		</div>
		<div class="para" label-module="para">像所有的狗一样，西伯利亚雪撬犬的鼻子通常都是凉且潮湿的。
			在某些情况下，西伯利亚雪撬犬（哈士奇）</div>
		<div class="para" label-module="para">
			<div class="lemma-picture text-pic layout-right"
				style="width: 220px; float: right;">
				<a class="image-link" nslog-type="9317"
					href="/pic/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A%E9%9B%AA%E6%A9%87%E7%8A%AC/540855/0/4bed2e738bd4b31cd7e3182d8ed6277f9f2ff84d?fr=lemma&amp;ct=single"
					target="_blank" title="哈士奇米修" style="width: 220px; height: 164px;">
					<img class="lazy-img"
					src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAMAAAAoyzS7AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAAZQTFRF9fX1AAAA0VQI3QAAAAxJREFUeNpiYAAIMAAAAgABT21Z4QAAAABJRU5ErkJggg=="
					data-src="https://gss0.bdstatic.com/94o3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=c7c96da13cfae6cd08b4ac633fb20f9e/4bed2e738bd4b31cd7e3182d8ed6277f9f2ff84d.jpg"
					alt="哈士奇米修" style="width: 220px; height: 164px;">
				</a> <span class="description"> 哈士奇米修 </span>
			</div>
		</div>
		<div class="para" label-module="para">能表现出所谓'雪鼻'或'冬鼻'的现象。这种现象学术上被称作"hypopigmentation"，由于冬季里缺少阳光造成的，这导致了鼻（或其一部分）褪色成棕色或粉红。在夏季到来时便能恢复正常。雪鼻现象在其它的短毛种类里也有出现；老年犬只的这种颜色变化可能是永久的，尽管它并不与疾病相联系。</div>
		<div class="anchor-list">
			<a name="1_6" class="lemma-anchor para-title"></a> <a
				name="sub28807_1_6" class="lemma-anchor "></a> <a name="生理指标"
				class="lemma-anchor "></a> <a name="1-6" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-3" label-module="para-title">
			<h3 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>生理指标
			</h3>
		</div>
		<div class="para" label-module="para">
			<b>健康哈士奇的体温：</b>（由肛门测定）
		</div>
		<div class="para" label-module="para">
			<i>小型犬：</i>幼犬38.5-39℃成犬38-39℃
		</div>
		<div class="para" label-module="para">
			<i>中型犬：</i>幼犬38.5-39℃成犬38-38.5℃
		</div>
		<div class="para" label-module="para">
			<i>大型犬：</i>幼犬38.2-39℃成犬37.5-39℃
		</div>
		<div class="para" label-module="para">
			<a target="_blank" href="/item/%E5%BF%83%E8%B7%B3/1235"
				data-lemmaid="1235"><b>心跳</b></a><b>：</b>成犬70-130次/分，幼犬200次/分。
		</div>
		<div class="para" label-module="para">
			<a target="_blank" href="/item/%E8%84%89%E6%90%8F"><b>脉搏</b></a><b>：</b>平均70-140次/分。
		</div>
		<div class="para" label-module="para">
			<a target="_blank" href="/item/%E5%91%BC%E5%90%B8/783795"
				data-lemmaid="783795"><b>呼吸</b></a><b>：</b>平均10-40次/分。
		</div>
		<div class="para" label-module="para">
			<b>犬每天的<a target="_blank"
				href="/item/%E7%9D%A1%E7%9C%A0%E6%97%B6%E9%97%B4">睡眠时间</a></b>在16个小时左右。
		</div>
		<div class="para" label-module="para">
			<b>犬的寿命</b>大约在13-18年之间，最长的也有20年以上，不过较少见。
		</div>
		<div class="para" label-module="para">
			<b>犬的性成熟期</b>在7-12个月之间。
		</div>
		<div class="para" label-module="para">
			<b>犬的繁育周期</b>每年可繁殖1-3胎，每胎可生1-6只。
		</div>
		<div class="para" label-module="para">
			<b>犬的<a target="_blank" href="/item/%E5%A6%8A%E5%A8%A0/65942"
				data-lemmaid="65942">妊娠</a>期
			</b>大约在58日-65日之间。
		</div>
		<div class="para" label-module="para">
			<b>仔犬的开眼时间</b>大约在出生后10-16天。
		</div>
		<div class="para" label-module="para">
			<b>仔犬开始有<a target="_blank" href="/item/%E5%90%AC%E8%A7%89">听觉</a>的时间
			</b>大约在出生后第12-17日左右。<sup class="sup--normal" data-sup="2"> [2]</sup><a
				class="sup-anchor" name="ref_[2]_28807">&nbsp;</a>
		</div>
		<div class="anchor-list">
			<a name="2" class="lemma-anchor para-title"></a> <a name="sub28807_2"
				class="lemma-anchor "></a> <a name="分布范围" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-2" label-module="para-title">
			<h2 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>分布范围
			</h2>
			<a class="edit-icon j-edit-link" data-edit-dl="2" href="javascript:;"
				style="display: block;"><em
				class="cmn-icon wiki-lemma-icons wiki-lemma-icons_edit-lemma"></em>编辑</a>
		</div>
		<div class="para" label-module="para">
			“有许多种类的狗都被称作哈士奇，而通常意义上哈士奇这个词是用来指所有在北方地区的<a target="_blank"
				href="/item/%E9%9B%AA%E6%A9%87%E7%8A%AC">雪橇犬</a>”。哈士奇最初是被北极的<a
				target="_blank" href="/item/%E5%9C%9F%E8%91%97%E5%B1%85%E6%B0%91">土著居民</a>所饲养。
		</div>
		<div class="para" label-module="para">
			据<a target="_blank" href="/item/DNA/98123" data-lemmaid="98123">DNA</a>分析，哈士奇是世界上最古老的狗之一，但也有一些学者提出质疑，说如果跟狼杂交，就像<a
				target="_blank"
				href="/item/%E9%98%BF%E6%8B%89%E6%96%AF%E5%8A%A0%E9%9B%AA%E6%A9%87%E7%8A%AC">阿拉斯加雪橇犬</a>和西伯利亚哈士奇一样，也可能产生出看起来古老的品种。
		</div>
		<div class="para" label-module="para">
			在当代有许多品种已经被选择性地繁殖并已经在各种养犬俱乐部注册，包括<a target="_blank"
				href="/item/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A%E5%93%88%E5%A3%AB%E5%A5%87">西伯利亚哈士奇</a>，格陵兰哈士奇。库页岛哈士奇是一种跟日本美拉尼亚丝毛狗，<a
				target="_blank" href="/item/%E7%A7%8B%E7%94%B0%E7%8A%AC">秋田犬</a>相关的雪橇犬。阿拉斯加哈士奇生活在在阿拉斯加（除<a
				target="_blank" href="/item/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A">西伯利亚</a>和北极地区），马更些河哈士奇是一种不同品种的，生活在<a
				target="_blank" href="/item/%E5%8C%97%E6%9E%81%E5%9C%B0%E5%8C%BA">北极地区</a>和亚北极区的<a
				target="_blank" href="/item/%E9%98%BF%E6%8B%89%E6%96%AF%E5%8A%A0">阿拉斯加</a>与加拿大。
		</div>
		<div class="anchor-list">
			<a name="2_1" class="lemma-anchor para-title"></a> <a
				name="sub28807_2_1" class="lemma-anchor "></a> <a name="成长历程"
				class="lemma-anchor "></a> <a name="2-1" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-3" label-module="para-title">
			<h3 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>成长历程
			</h3>
		</div>
		<div class="para" label-module="para">
			<a target="_blank" href="/item/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A">西伯利亚</a>雪橇犬是<a
				target="_blank"
				href="/item/%E4%B8%9C%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A">东西伯利亚</a>游牧民伊奴特乔克治族饲养的犬种，<a
				target="_blank" href="/item/%E5%93%88%E5%A3%AB%E5%A5%87">哈士奇</a>最初是被用来拉雪橇，参与大型捕猎活动，保护村庄，和引导驯鹿及守卫等工作。而且，在西伯利亚恶劣的环境下工作。西伯利亚雪橇犬几个世纪以来，一直单独地生长在西伯利亚地区。20世纪初，被毛皮商人带至美国。一转眼，此犬便成为举世闻
			<div class="lemma-picture text-pic layout-right"
				style="width: 220px; margin: 0px auto; text-indent: 28px; clear: both; display: block; cursor: move; float: right;">
				<a class="image-link" nslog-type="9317"
					href="/pic/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A%E9%9B%AA%E6%A9%87%E7%8A%AC/540855/0/bd3eb13533fa828b4cd916e6f51f4134970a5a39?fr=lemma&amp;ct=single"
					target="_blank" title="血统哈士奇比尔"
					style="width: 220px; height: 165px;"> <img class="lazy-img"
					src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAMAAAAoyzS7AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAAZQTFRF9fX1AAAA0VQI3QAAAAxJREFUeNpiYAAIMAAAAgABT21Z4QAAAABJRU5ErkJggg=="
					data-src="https://gss2.bdstatic.com/9fo3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=52c9c5d95ce736d15c138b0aab514ffc/bd3eb13533fa828b4cd916e6f51f4134970a5a39.jpg"
					alt="血统哈士奇比尔" style="width: 220px; height: 165px;">
				</a> <span class="description"> 血统哈士奇比尔 </span>
			</div>
			名的拉雪橇竞赛之冠<a target="_blank" href="/item/%E5%86%9B%E7%8A%AC">军犬</a>。现今，该犬则作为优良的伴侣犬备受人们喜爱。西伯利亚雪橇犬历史记载中，西伯利亚雪橇犬的祖先，最早要追溯到<a
				target="_blank"
				href="/item/%E6%96%B0%E7%9F%B3%E5%99%A8%E6%97%B6%E4%BB%A3">新石器时代</a>之前。当时一群中亚的猎人们移居到极地（也就是<a
				target="_blank" href="/item/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A">西伯利亚</a>）的尽头生活，经过了很长时间，这群跟随在<a
				target="_blank" href="/item/%E7%8C%8E%E4%BA%BA/79620"
				data-lemmaid="79620">猎人</a>身边的<a target="_blank"
				href="/item/%E7%8B%97/85474" data-lemmaid="85474">狗</a>儿，在长期与<a
				target="_blank" href="/item/%E5%8C%97%E6%9E%81%E7%8B%BC">北极狼</a>群交配繁育之下，发展成为北方特有的<a
				target="_blank" href="/item/%E7%8A%AC/1185" data-lemmaid="1185">犬</a>种。
		</div>
		<div class="para" label-module="para">
			在这群穿越过<a target="_blank" href="/item/%E5%8C%97%E6%9E%81%E5%9C%88">北极圈</a>，最后选择在<a
				target="_blank" href="/item/%E6%A0%BC%E9%99%B5%E5%85%B0">格陵兰</a>落脚的人们中间，有一个部落，就是后来发展西伯利亚雪橇犬的<a
				target="_blank" href="/item/%E6%A5%9A%E7%A7%91%E5%A5%87%E4%BA%BA">楚科奇人</a>。早期，楚科奇人将这群跟随在他们身边的狗训练为可以用来拉雪橇并且看守家畜的<a
				target="_blank" href="/item/%E5%B7%A5%E4%BD%9C%E7%8A%AC">工作犬</a>，因为它们耐寒、食量小、工作起来又相当认真。因此当时还被认为是部落中相当重要的<a
				target="_blank" href="/item/%E8%B4%A2%E5%AF%8C">财富</a>。而这群早期被称之为西伯利亚楚科奇犬的狗，也就是后来哈士奇的祖先。据说哈士奇这个名称，是<a
				target="_blank"
				href="/item/%E7%88%B1%E6%96%AF%E5%9F%BA%E6%91%A9%E4%BA%BA">爱斯基摩人</a>的<a
				target="_blank" href="/item/%E4%BF%9A%E8%AF%AD">俚语</a>－－沙哑的叫声的讹传，因为当时的狗叫声较为低沉沙哑因此有了这个奇妙的称号。
		</div>
		<div class="para" label-module="para">
			哈士奇起源于18世纪初，<a target="_blank"
				href="/item/%E9%98%BF%E6%8B%89%E6%96%AF%E5%8A%A0">阿拉斯加</a>的美国人开始知道哈士奇雪橇犬。1909年，西伯利亚哈士奇雪橇犬第一次在阿拉斯加的犬赛中亮相。1930年，<a
				target="_blank" href="/item/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A">西伯利亚</a>哈士奇雪橇犬俱乐部得到了<a
				target="_blank"
				href="/item/%E7%BE%8E%E5%9B%BD%E5%85%BB%E7%8A%AC%E4%BF%B1%E4%B9%90%E9%83%A8">美国养犬俱乐部</a>的正式承认。传说中，西伯利亚雪橇犬是哈士奇的祖先，经过了长久时间
			<div class="lemma-picture text-pic layout-right"
				style="width: 220px; float: right;">
				<a class="image-link" nslog-type="9317"
					href="/pic/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A%E9%9B%AA%E6%A9%87%E7%8A%AC/540855/0/3801213fb80e7bec9b9299c92e2eb9389b506b4a?fr=lemma&amp;ct=single"
					target="_blank" title="傲立于冰天雪地的风之子"
					style="width: 220px; height: 165px;"> <img class="lazy-img"
					src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAMAAAAoyzS7AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAAZQTFRF9fX1AAAA0VQI3QAAAAxJREFUeNpiYAAIMAAAAgABT21Z4QAAAABJRU5ErkJggg=="
					data-src="https://gss3.bdstatic.com/7Po3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=9e7a76e1d62a60595610e6181834342d/3801213fb80e7bec9b9299c92e2eb9389b506b4a.jpg"
					alt="傲立于冰天雪地的风之子" style="width: 220px; height: 165px;">
				</a> <span class="description"> 傲立于冰天雪地的风之子 <sup>[3]</sup> <a
					name="ref_[3]_"></a>
				</span>
			</div>
			，其中包括哈士奇、<a target="_blank" href="/item/%E8%90%A8%E6%91%A9%E8%80%B6">萨摩耶</a>、<a
				target="_blank"
				href="/item/%E9%98%BF%E6%8B%89%E6%96%AF%E5%8A%A0%E9%9B%AA%E6%A9%87%E7%8A%AC">阿拉斯加雪橇犬</a>等。西伯利亚哈士奇是原始的古老犬种，名字的由来是源自哈士奇独特的嘶哑叫声。在西伯利亚东北部的原始部落楚克奇族人，用这种外型酷似狼的哈士奇犬作为最原始的交通工具来拉雪橇，并用哈士奇犬猎取和饲养驯鹿，或者繁殖后带出他们居住的冻土地带来换取温饱。由于哈士奇体型小巧结实，胃口小，无体臭且耐寒非常适应极地的气候环境，而成为<a
				target="_blank" href="/item/%E6%A5%9A%E5%85%8B%E5%A5%87%E4%BA%BA">楚克奇人</a>的重要<a
				target="_blank" href="/item/%E8%B4%A2%E4%BA%A7">财产</a>。
		</div>
		<div class="para" label-module="para">
			哈士奇（西伯利亚雪橇犬）是东西伯利亚<a target="_blank"
				href="/item/%E6%B8%B8%E7%89%A7%E6%B0%91%E6%97%8F">游牧民族</a>伊奴特乔克治族饲养的犬种，一向担任拉雪橇，引导驯鹿及守卫等工作。而且，哈士奇能在<a
				target="_blank" href="/item/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A">西伯利亚</a>恶劣的环境下工作。哈士奇（西伯利亚雪橇犬）几个世纪以来，一直单独的生长在西伯利亚地区。20世纪初，被毛皮商人带至美国。一转眼，哈士奇犬便成为举世闻名的拉雪橇竞赛之<a
				target="_blank" href="/item/%E5%86%A0%E5%86%9B/32330"
				data-lemmaid="32330">冠军</a>犬。<sup class="sup--normal" data-sup="3">
				[3]</sup><a class="sup-anchor" name="ref_[3]_28807">&nbsp;</a> <a
				class="lemma-album layout-right nslog:10000206" title="西伯利亚哈士奇雪橇犬"
				href="/pic/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A%E9%9B%AA%E6%A9%87%E7%8A%AC/540855/632063/94cad1c8a786c917f1474c3fcb3d70cf3bc7576b?fr=lemma&amp;ct=cover"
				target="_blank" style="width: 222px;" nslog-type="10000206">
				<div class="album-wrap" style="width: 220px; height: 146px;">
					<img class="picture" alt="西伯利亚哈士奇雪橇犬"
						src="https://gss2.bdstatic.com/-fo3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=6968bbd974c6a7efbd26af24cdfbafe9/94cad1c8a786c917f1474c3fcb3d70cf3bc7576b.jpg"
						style="width: 220px; height: 146px;">
				</div>
				<div class="description">
					西伯利亚哈士奇雪橇犬<span class="number">(6张)</span>
				</div>
				<div class="albumBg">
					<div class="albumBgFir" style="width: 214px;"></div>
					<div class="albumBgSec" style="width: 208px;"></div>
				</div>
			</a>
		</div>
		<div class="anchor-list">
			<a name="2_2" class="lemma-anchor para-title"></a> <a
				name="sub28807_2_2" class="lemma-anchor "></a> <a name="现代发展"
				class="lemma-anchor "></a> <a name="2-2" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-3" label-module="para-title">
			<h3 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>现代发展
			</h3>
		</div>
		<div class="para" label-module="para">
			18世纪中期，<a target="_blank"
				href="/item/%E9%98%BF%E6%8B%89%E6%96%AF%E5%8A%A0">阿拉斯加</a>的<a
				target="_blank" href="/item/%E4%BF%84%E7%BD%97%E6%96%AF/125568"
				data-lemmaid="125568">俄罗斯</a>猎人开始知道这种<a target="_blank"
				href="/item/%E9%9B%AA%E6%A9%87%E7%8A%AC">雪橇犬</a>。
		</div>
		<div class="para" label-module="para">
			1909年，<a target="_blank"
				href="/item/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A">西伯利亚</a>雪橇犬第一次在阿拉斯加的犬赛中亮相。
		</div>
		<div class="para" label-module="para">
			1925年1月，阿拉斯加偏僻小镇<a target="_blank" href="/item/%E7%99%BD%E5%96%89">白喉</a>流行，由于最近的存有<a
				target="_blank" href="/item/%E8%A1%80%E6%B8%85">血清</a>的城市远在955<a
				target="_blank" href="/item/%E8%8B%B1%E9%87%8C/4356"
				data-lemmaid="4356">英里</a>以外，为快速运回治疗白喉的血清，人们决定用哈士奇雪橇队代替运送，955英里的路程按正常的运送<a
				target="_blank" href="/item/%E9%80%9F%E5%BA%A6/5456"
				data-lemmaid="5456">速度</a>来算需要25天，由于病症快速蔓延，雪橇队决定以接力运送的方式来运送，雪橇队最后仅用了5天半时间就完成了任务，挽救了无数生命。
		</div>
		<div class="para" label-module="para">
			1930年，西伯利亚雪橇犬俱乐部得到了<a target="_blank"
				href="/item/%E7%BE%8E%E5%9B%BD%E5%85%BB%E7%8A%AC%E4%BF%B1%E4%B9%90%E9%83%A8">美国养犬俱乐部</a>的正式承认。<sup
				class="sup--normal" data-sup="4"> [4]</sup><a class="sup-anchor"
				name="ref_[4]_28807">&nbsp;</a>
		</div>
		<div class="anchor-list">
			<a name="3" class="lemma-anchor para-title"></a> <a name="sub28807_3"
				class="lemma-anchor "></a> <a name="栖息环境" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-2" label-module="para-title">
			<h2 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>栖息环境
			</h2>
			<a class="edit-icon j-edit-link" data-edit-dl="3" href="javascript:;"
				style="display: block;"><em
				class="cmn-icon wiki-lemma-icons wiki-lemma-icons_edit-lemma"></em>编辑</a>
		</div>
		<div class="para" label-module="para">哈士奇是被家庭所饲养，环境需要通风，有成阴凉的地方，水分给足就行。</div>
		<div class="anchor-list">
			<a name="4" class="lemma-anchor para-title"></a> <a name="sub28807_4"
				class="lemma-anchor "></a> <a name="生活习性" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-2" label-module="para-title">
			<h2 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>生活习性
			</h2>
			<a class="edit-icon j-edit-link" data-edit-dl="4" href="javascript:;"
				style="display: block;"><em
				class="cmn-icon wiki-lemma-icons wiki-lemma-icons_edit-lemma"></em>编辑</a>
		</div>
		<div class="anchor-list">
			<a name="4_1" class="lemma-anchor para-title"></a> <a
				name="sub28807_4_1" class="lemma-anchor "></a> <a name="等级习性"
				class="lemma-anchor "></a> <a name="4-1" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-3" label-module="para-title">
			<h3 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>等级习性
			</h3>
		</div>
		<div class="para" label-module="para">
			西伯利亚雪橇犬（哈士奇）生性好<a target="_blank" href="/item/%E7%BE%A4%E5%B1%85">群居</a>，但在群体中有着明显的等级制度。在狗饲养场、农村、城郊的狗群中，总由一条头狗（通常是老狗）支配、管辖着全群。级别高或资格老的头狗怎样表明它的等级上风呢？通常采用以下几种特定动作来表示：如答应它而不答应对方检查它狗的生殖器官；不准对方向另一只狗排过尿的地方排尿；对方可在头狗眼前摇头、摆尾、耍顽皮、退走、坐下、躺下，当头狗离开时，方可站住；等级上风明确后，敌对状态消除，开始成为朋友。狗对其主人也会表现同样的姿势。<a
				class="lemma-album layout-right nslog:10000206" title="西伯利亚雪橇犬"
				href="/pic/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A%E9%9B%AA%E6%A9%87%E7%8A%AC/540855/21467793/f703738da97739123ee3c291f1198618377ae27d?fr=lemma&amp;ct=cover"
				target="_blank" style="width: 222px;" nslog-type="10000206">
				<div class="album-wrap" style="width: 220px; height: 146px;">
					<img class="picture" alt="西伯利亚雪橇犬"
						src="https://gss1.bdstatic.com/-vo3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=2096af0458da81cb4ae684cf6264d0a4/f703738da97739123ee3c291f1198618377ae27d.jpg"
						style="width: 220px; height: 146px;">
				</div>
				<div class="description">
					西伯利亚雪橇犬<span class="number">(2张)</span>
				</div>
				<div class="albumBg">
					<div class="albumBgFir" style="width: 214px;"></div>
					<div class="albumBgSec" style="width: 208px;"></div>
				</div>
			</a>
		</div>
		<div class="anchor-list">
			<a name="4_2" class="lemma-anchor para-title"></a> <a
				name="sub28807_4_2" class="lemma-anchor "></a> <a name="与人交往"
				class="lemma-anchor "></a> <a name="4-2" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-3" label-module="para-title">
			<h3 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>与人交往
			</h3>
		</div>
		<div class="para" label-module="para">与人交往是狗天生的习性，但其程度常取决于3~7周龄时，与人接触"印记"的程度。假如狗出生的头两个月只跟它的父母或其他狗在一起，而不与人在一起，或者没有真正逐渐了解人，则其一生就会阔别人，并难以练习。假如生下来就受到人的抚爱，这就使它熟悉到人是朋友，是能跟它玩耍的伙伴，并熟悉人的气味，与人和善，容易接受练习。这在挑选和练习狗时，留意到它的印记阶段是十分重要的。</div>
		<div class="anchor-list">
			<a name="4_3" class="lemma-anchor para-title"></a> <a
				name="sub28807_4_3" class="lemma-anchor "></a> <a name="领地记号"
				class="lemma-anchor "></a> <a name="4-3" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-3" label-module="para-title">
			<h3 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>领地记号
			</h3>
		</div>
		<div class="para" label-module="para">
			<a class="lemma-album layout-right nslog:10000206" title="西伯利亚雪橇犬"
				href="/pic/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A%E9%9B%AA%E6%A9%87%E7%8A%AC/540855/13375336/64380cd7912397dd37217dd85c82b2b7d1a28796?fr=lemma&amp;ct=cover"
				target="_blank" style="width: 222px;" nslog-type="10000206">
				<div class="album-wrap" style="width: 220px; height: 146px;">
					<img class="picture" alt="西伯利亚雪橇犬"
						src="https://gss2.bdstatic.com/-fo3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=d92ff048432309f7e36faa10420f0c39/64380cd7912397dd37217dd85c82b2b7d1a28796.jpg"
						style="width: 220px; height: 146px;">
				</div>
				<div class="description">
					西伯利亚雪橇犬<span class="number">(6张)</span>
				</div>
				<div class="albumBg">
					<div class="albumBgFir" style="width: 214px;"></div>
					<div class="albumBgSec" style="width: 208px;"></div>
				</div>
			</a> 狗和其他动物（如<a target="_blank"
				href="/item/%E7%8C%AB%E7%A7%91%E5%8A%A8%E7%89%A9/71877"
				data-lemmaid="71877">猫科动物</a>、鸟类、<a target="_blank"
				href="/item/%E5%95%AE%E9%BD%BF%E7%B1%BB%E5%8A%A8%E7%89%A9">啮齿类动物</a>）一样，都有领地感，以它自己为中心，用自己的气味标出地界，并常常更新。一块领地可只属于一二只狗，或整个狗群。外来狗如闯进一只狗的领地时，它的行动十分谨慎，假如领地主（狗）来了，闯入者不敢看它，假装忙于其它事，避免与领地狗撕斗，然后离去。那么，狗怎样标志它的领地呢？通常是沿着它平时行走的线路而固定一些点。如公狗外出散步时，总是往固定的一些树干、路灯下或角落里撒少许尿。一只狗的气味可使另一只狗知道这只狗的领地、性别、年龄和健康等状况。有趣的是，一只小狗经过体大狗留下的领地痕迹时，会尽量抬高它的后肢撒尿来盖住体大狗留下的痕迹。而体大公狗路经体小狗留下的痕迹时，会尽量以低于正常的姿势排尿，以覆盖住体小狗留下的痕迹。但母狗的领地感不像公狗那样明显，只是在它发情期为了告诉周围的公狗它正处于发情期而用尿来标志领地界限或规定道路的记号。
		</div>
		<div class="anchor-list">
			<a name="4_4" class="lemma-anchor para-title"></a> <a
				name="sub28807_4_4" class="lemma-anchor "></a> <a name="卫生保健"
				class="lemma-anchor "></a> <a name="4-4" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-3" label-module="para-title">
			<h3 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>卫生保健
			</h3>
		</div>
		<div class="para" label-module="para">
			狗最重要的感觉是嗅觉，它们通过互相嗅闻最能反映情感的外生殖器部位（这个部位<a
				class="lemma-album layout-right nslog:10000206" title="西伯利亚雪橇犬"
				href="/pic/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A%E9%9B%AA%E6%A9%87%E7%8A%AC/540855/13624493/962bd40735fae6cd0969f05d0cb30f2442a70f28?fr=lemma&amp;ct=cover"
				target="_blank" style="width: 222px;" nslog-type="10000206">
				<div class="album-wrap" style="width: 220px; height: 146px;">
					<img class="picture" alt="西伯利亚雪橇犬"
						src="https://gss2.bdstatic.com/9fo3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=d4fec6dffe1f4134e437027c151e95c1/962bd40735fae6cd0969f05d0cb30f2442a70f28.jpg"
						style="width: 220px; height: 146px;">
				</div>
				<div class="description">
					西伯利亚雪橇犬<span class="number">(3张)</span>
				</div>
				<div class="albumBg">
					<div class="albumBgFir" style="width: 214px;"></div>
					<div class="albumBgSec" style="width: 208px;"></div>
				</div>
			</a>
			的皮腺能分泌出对狗有极大诱惑力的气味），就可辨别该狗的性别、年龄、身体状况及其态度。两狗互相嗅闻时，即是表态。一条年长的狗或头狗，有权检查年龄小、地位次于它的公狗、母狗、幼狗的外生殖器。两只狗接触时都有一定的程序，即先互相嗅闻，再接触肩部被毛，最后检查外生殖器。除互相嗅闻外，无论公、母狗都有常常检查自己外生殖器和细心用舌舔以保持清洁的习性。这是狗的卫生保健，不应反对和斥责。当狗频繁地嗅自己的肛门部位时，可以认为狗出现了不适感，消化功能不正常，应及时进行检查或治疗。
		</div>
		<div class="anchor-list">
			<a name="4_5" class="lemma-anchor para-title"></a> <a
				name="sub28807_4_5" class="lemma-anchor "></a> <a name="喜欢爬跨"
				class="lemma-anchor "></a> <a name="4-5" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-3" label-module="para-title">
			<h3 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>喜欢爬跨
			</h3>
		</div>
		<div class="para" label-module="para">
			各年龄段的其它狗都有爬跨的行为，但其目的和表现都不一样。幼狗的爬跨是高兴和<a
				class="lemma-album layout-right nslog:10000206" title="西伯利亚雪橇犬"
				href="/pic/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A%E9%9B%AA%E6%A9%87%E7%8A%AC/540855/17007540/279759ee3d6d55fb6d1f128668224f4a21a4ddb1?fr=lemma&amp;ct=cover"
				target="_blank" style="width: 222px;" nslog-type="10000206">
				<div class="album-wrap" style="width: 220px; height: 121px;">
					<img class="picture" alt="西伯利亚雪橇犬"
						src="https://gss3.bdstatic.com/7Po3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=66e51b00f303738dda4a0b20831ab073/279759ee3d6d55fb6d1f128668224f4a21a4ddb1.jpg"
						style="width: 220px; height: 121px;">
				</div>
				<div class="description">
					西伯利亚雪橇犬<span class="number">(5张)</span>
				</div>
				<div class="albumBg">
					<div class="albumBgFir" style="width: 214px;"></div>
					<div class="albumBgSec" style="width: 208px;"></div>
				</div>
			</a>
			顽皮的表现，尤其是主人离开一段时间（如白天上班，晚上放工回家时）返回时，常有这一动作。或者两只小公狗玩耍时也常有爬跨动作，这是高兴的表现，而无交配之意。成年公狗表现爬跨时有两种情况：一是为了跟发情狗交配；另一种情况是企图确立自己的上风。母狗通常只是在发情高潮时答应公狗爬跨，甚至母狗为了调情，不仅用身体摩擦公狗，翘起尾巴站立，而刺激性最大的是爬跨公狗，此时，就应立即交配。
		</div>
		<div class="anchor-list">
			<a name="4_6" class="lemma-anchor para-title"></a> <a
				name="sub28807_4_6" class="lemma-anchor "></a> <a name="性格喜好"
				class="lemma-anchor "></a> <a name="4-6" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-3" label-module="para-title">
			<h3 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>性格喜好
			</h3>
		</div>
		<div class="para" label-module="para">
			<b>漂亮</b>
		</div>
		<div class="para" label-module="para">最大的优势莫过于它既漂亮又冷酷的外型，几乎每个见过哈士奇的人，都会发自内心的喜爱。仔细看起来还有一股狼的风范，如同王者归来！</div>
		<div class="para" label-module="para">
			<b>温顺友好</b>
		</div>
		<div class="para" label-module="para">哈士奇的个性很活泼温顺，几乎不会出现主动攻击人类的现象。在中国对于狗的地位，温顺友好的小哈，能让你和狗狗在周围的环境中有一定的优势，比较容易被接受。</div>
		<div class="para" label-module="para">
			<b>活泼好动</b>
		</div>
		<div class="para" label-module="para">哈士奇喜欢玩耍，它能不知疲惫的和你玩上几个小时，多数情况是你累的吐舌头，它还意犹未尽，这些所带来的快乐，是无法用语言来形容的。</div>
		<div class="para" label-module="para">
			<b>热情</b>
		</div>
		<div class="para" label-module="para">哈士奇的热情是无以比拟的，长期会以超快的速度，撞到你的脚上，然后舔你一身的口水。对于刚到家的主人一般会毫不犹豫的扑过来。</div>
		<div class="para" label-module="para">
			<b>很少吠叫</b>
		</div>
		<div class="para" label-module="para">哈士奇哈吠叫的时候很少，只会在一些特殊情况下，发出狼嚎的声音，虽然晚上听起来有点毛骨悚然，但是却正适合了它狼般的外貌，很多人还因此觉得这才是哈士奇的本性。</div>
		<div class="para" label-module="para">
			<b>喂食量少</b>
		</div>
		<div class="para" label-module="para">相对于同等体型的狗狗，哈士奇的食量仅有它们的2/3，甚至1/2那么多，养起来实在是省口粮。</div>
		<div class="para" label-module="para">
			<b>极易保持干净</b>
		</div>
		<div class="para" label-module="para">哈士奇很易保持干净，有时候，你的哈士奇可能一个月都没洗澡了，但是每天的梳理会让哈士奇的毛不粘灰，看上去还是那么的干净。</div>
		<div class="para" label-module="para">
			<b>容易接受</b>
		</div>
		<div class="para" label-module="para">
			哈士奇属于<a target="_blank" href="/item/%E7%BE%A4%E5%B1%85">群居</a>类<a
				target="_blank" href="/item/%E5%B7%A5%E4%BD%9C%E7%8A%AC">工作犬</a>，跟其他狗狗的群居，它们不容易嫉妒，能在短时间内接受新伙伴。因性格温顺，有的时候会被小型犬欺负。
		</div>
		<div class="para" label-module="para">
			<b>犬只原始</b>
		</div>
		<div class="para" label-module="para">哈士奇在如今社会中依然保持着雪地狼族的原始状态，在家中依赖主人，外出性情表达狂野。</div>
		<div class="para" label-module="para">
			<b>性格内向</b>
		</div>
		<div class="para" label-module="para">哈士奇从来不会主动朝着别的犬种嚎叫，而且遇到突发事件的时候，一般只会往主人身后躲，十足的胆小鬼。但是本性平易近人，基本从不主动招惹外人或者别的犬类。</div>
		<div class="para" label-module="para">
			<b>娇生惯养</b>
		</div>
		<div class="para" label-module="para">哈士奇有时候就跟一个小婴儿一样，特别是生病的时候，又乖巧，又让人怜爱。真是让人又恨又爱。</div>
		<div class="para" label-module="para">
			<b>表情</b>
		</div>
		<div class="para" label-module="para">
			哈士奇独特的外表，有时候脸上露出的那种表情，真是让你啼笑皆非。<sup class="sup--normal" data-sup="3">
				[3]</sup><a class="sup-anchor" name="ref_[3]_28807">&nbsp;</a> <a
				class="lemma-album layout-right nslog:10000206" title="哈士奇"
				href="/pic/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A%E9%9B%AA%E6%A9%87%E7%8A%AC/540855/631239/c83d70cf3bc79f3dd66b5f90bfa1cd11738b2983?fr=lemma&amp;ct=cover"
				target="_blank" style="width: 222px;" nslog-type="10000206">
				<div class="album-wrap" style="width: 220px; height: 165px;">
					<img class="picture" alt="哈士奇"
						src="https://gss2.bdstatic.com/-fo3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=d34d21c1f6deb48fff69a6dcc01e3aef/c83d70cf3bc79f3dd66b5f90bfa1cd11738b2983.jpg"
						style="width: 220px; height: 165px;">
				</div>
				<div class="description">
					哈士奇<span class="number">(8张)</span>
				</div>
				<div class="albumBg">
					<div class="albumBgFir" style="width: 214px;"></div>
					<div class="albumBgSec" style="width: 208px;"></div>
				</div>
			</a>
		</div>
		<div class="anchor-list">
			<a name="5" class="lemma-anchor para-title"></a> <a name="sub28807_5"
				class="lemma-anchor "></a> <a name="繁殖规律" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-2" label-module="para-title">
			<h2 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>繁殖规律
			</h2>
			<a class="edit-icon j-edit-link" data-edit-dl="5" href="javascript:;"
				style="display: block;"><em
				class="cmn-icon wiki-lemma-icons wiki-lemma-icons_edit-lemma"></em>编辑</a>
		</div>
		<div class="para" label-module="para">
			8个月达到<a target="_blank" href="/item/%E6%80%A7%E6%88%90%E7%86%9F">性成熟</a>，12个月体成熟，达到体成熟可以<a
				target="_blank" href="/item/%E4%BA%A4%E9%85%8D">交配</a>繁殖，每年春季与秋季发情两次，妊娠期58～65天，每胎4～6只。
		</div>
		<div class="anchor-list">
			<a name="6" class="lemma-anchor para-title"></a> <a name="sub28807_6"
				class="lemma-anchor "></a> <a name="衡量标准" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-2" label-module="para-title">
			<h2 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>衡量标准
			</h2>
			<a class="edit-icon j-edit-link" data-edit-dl="6" href="javascript:;"
				style="display: block;"><em
				class="cmn-icon wiki-lemma-icons wiki-lemma-icons_edit-lemma"></em>编辑</a>
		</div>
		<div class="para" label-module="para">
			<a class="lemma-album layout-right nslog:10000206" title="哈士奇对比2"
				href="/pic/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A%E9%9B%AA%E6%A9%87%E7%8A%AC/540855/20455025/8bc3a701b98a0a41738da5fb?fr=lemma&amp;ct=cover"
				target="_blank" style="width: 222px;" nslog-type="10000206">
				<div class="album-wrap" style="width: 220px; height: 158px;">
					<img class="picture" alt="哈士奇对比2"
						src="https://gss3.bdstatic.com/-Po3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=9413357f70cf3bc7ec00caeee100babd/ac4bd11373f08202a9b5584d4bfbfbedab641b99.jpg"
						style="width: 220px; height: 158px;">
				</div>
				<div class="description">
					哈士奇对比2<span class="number">(1张)</span>
				</div>
				<div class="albumBg">
					<div class="albumBgFir" style="width: 214px;"></div>
					<div class="albumBgSec" style="width: 208px;"></div>
				</div>
			</a> 西伯利亚雪橇犬属于中型<a target="_blank"
				href="/item/%E5%B7%A5%E4%BD%9C%E7%8A%AC">工作犬</a>，脚步轻快，动作优美。身体紧凑，有着很厚的被毛，耳朵直立，尾巴像刷子，显示出北方地区的遗传特征。步态很有特点：平滑、不费力。他最早的作用就是拉小车，仍十分擅长此项工作，拖曳较轻载重量时能以中等速度行进相当远的距离。他的身体比例和体形反映了力量、速度、耐力的最基本的平衡状况。雄性肌肉发达，但是轮廓不粗糙；雌性充满女性美，但是不孱弱。在正常条件下，一只肌肉结实、发育良好的西伯利亚雪橇犬也不能拖曳过重的东西。
		</div>
		<div class="para" label-module="para">
			<i><b>颈、背线、躯体：</b></i><b>颈：</b>长度适中、拱形，犬站立时，直立昂起。小跑时颈部伸展，头略微向前伸。<b>胸：</b>强壮，但是不太宽，正好位于肘部的后面，并且与其水平。<a
				target="_blank" href="/item/%E8%82%8B%E9%AA%A8">肋骨</a>从<a
				target="_blank" href="/item/%E8%84%8A%E6%A4%8E">脊椎</a>向外充分扩张，但是侧面扁平，以便自由活动。<b>背部：</b>背直而强壮，从马肩隆到臀部的背线平直。中等长度，不能因为身体过长而变圆或松弛。<b>腰部：</b>收紧，倾斜，比胸腔窄，轻微折起。臀部以一定的角度从脊椎处下溜，但是角度不能太陡，以免影响<a
				target="_blank" href="/item/%E5%90%8E%E8%85%BF">后腿</a>的后蹬力。<b>缺陷：</b>背部松弛，无力；拱状的背部；背线倾斜。颈部过短，过粗，过长。胸部过宽；“桶状肋骨”；肋骨太平坦或无力。
		</div>
		<div class="para" label-module="para">
			<i><b>前半身：</b></i><b>肩部：</b><a target="_blank"
				href="/item/%E8%82%A9%E8%83%9B%E9%AA%A8">肩胛骨</a>向后收。从肩点到肘部，上臂有一个略微向后的角度，不能跟地面垂直。肩部和胸腔间的肌肉和韧带发达。<b>前腿：</b>站立时从前面看，腿之间的距离适中，平行，笔直，肘部接近身体，不向里翻，也不向外翻。从侧面看，骨交节有一定的倾斜角度，强壮、灵活。骨骼结实有力，但是不显沉重。腿从肘部到地面的距离略大于肘部到马肩隆顶部的长度。前腿的上爪可以去除。椭圆形的脚，不长。爪子中等大小，紧密，脚趾和肉垫间有丰富的毛。肉垫紧密，厚实。当犬自然站立时，脚爪不能外翻或内翻。<b>缺陷：</b>肩部笔直；肩部松弛。骨交节无力；骨骼太笨重；从前面看两腿分得太宽或太窄；肘部外翻。八字脚或脚趾无力；脚爪太大、笨拙；脚爪太小、纤细；脚趾内翻或外翻。
		</div>
		<div class="para" label-module="para">
			<i><b>尾巴：</b></i>尾巴上的毛很丰富，像狐狸尾巴，恰好位于背线之下，犬立正时尾巴通常自然下垂。尾巴举起时不卷在身体的任何一侧，也不平放在背上。正常情况下，应答时犬会摇动尾巴。尾巴上的毛中等长度，上面、侧面、下面的毛长度基本一致，因此看起来很像一个圆的狐狸尾巴。<b>缺陷</b><b>：</b>尾巴平放或紧紧地卷着；尾根的位置太高或太低。
		</div>
		<div class="para" label-module="para">
			<i><b>后半身：</b></i>站立时从后面看，两条后腿的距离适中，两腿平行。大腿上半部肌肉发达，有力，膝关节充分弯曲，<a
				target="_blank" href="/item/%E8%B8%9D%E5%85%B3%E8%8A%82">踝关节</a>轮廓分明，距地的位置较低。如果有上爪，可以去除。<b>缺陷</b><b>：</b>膝关节笔直，后部太窄或太宽。<b>被毛：</b>西伯利亚雪橇犬的被毛为双层，中等长度，看上去毛很浓密，但是不能太长掩盖犬本身清晰的轮廓。下层毛柔软，浓密，长度足以支撑外层被毛。外层毛的粗毛平直，光滑伏贴，不粗糙，不能直立。应该指出的是，换毛期没有下层被毛是正常的。可以修剪<a
				target="_blank" href="/item/%E8%83%A1%E9%A1%BB">胡须</a>以及脚趾间和脚周围的毛，以使外表看起来更整洁。修剪其他部位的毛是不能允许的，并要受到严厉惩罚。缺陷：被毛长，粗糙，杂乱蓬松；质地太粗糙或太柔滑；修剪除上述被允许的部位以外的被毛。<b>颜色：</b>从黑到纯白、棕到红的所有颜色都可以接受。头部有一些其他色斑是常见的，包括许多其他品种未发现的图案。<b>步态：</b>西伯利亚雪橇犬的标准步态是平稳舒畅，看上去不费力。脚步快而轻，在比赛场地时不要拉得太紧，应该中速快跑，展示前肢良好的伸展性以及后肢强大的驱动力。行进时从前向后看，西伯利亚雪橇犬不是单向运动，随着速度的加快，腿逐渐向前伸展，直至脚趾全部落在身体纵向中轴线上。当脚印集中在一条线上后，前腿和<a
				target="_blank" href="/item/%E5%90%8E%E8%85%BF">后腿</a>都笔直地向前伸出，肘部和膝关节都不能外翻或内翻。每条后腿都按照同侧前腿的路线运动。犬运步时，背线保持紧张和水平。<b>缺陷：</b>短，跳跃式或起伏式的步法；行动笨拙或滚动步法；交叉或<a
				target="_blank" href="/item/%E8%9E%83%E8%9F%B9/395"
				data-lemmaid="395">螃蟹</a>式的步法。
		</div>
		<div class="para" label-module="para">
			<i><b>性情：</b></i>西伯利亚雪橇犬的典型性格为友好，温柔，警觉，喜欢交往。他不会呈现出<a target="_blank"
				href="/item/%E6%8A%A4%E5%8D%AB%E7%8A%AC">护卫犬</a>强烈的领地占有欲，不会对陌生人产生过多的怀疑，也不会攻击其他犬类。<a
				target="_blank" href="/item/%E6%88%90%E5%B9%B4%E7%8A%AC">成年犬</a>应该具备一定程度的谨慎和威严。此犬种聪明，温顺，热情，是合适的伴侣和忠诚的工作者。
		</div>
		<div class="para" label-module="para">
			<i><b>总结：</b></i>西伯利亚雪橇犬最重要的特征是中等体型，适中的骨骼，比例平衡，行动自如，特有的被毛，可爱的头部和耳朵，正确的尾巴，以及良好的性格。如果骨骼外观过于夸张或体重超重，步法拘谨或笨拙，被毛长，粗糙都会受到处罚。西伯利亚雪橇犬不能出现超重，外貌粗鲁，以至于像一个做苦功的；或者体重太轻，纤细，类似赛跑犬。无论公母，西伯利亚雪橇犬都表现出强大的<a
				target="_blank" href="/item/%E5%BF%8D%E8%80%90%E5%8A%9B">忍耐力</a>。虽然这里没有明确指出，但是除了上面提到的那些缺陷，一些适用于所有犬种的明显的身体结构缺陷也适用于西伯利亚雪橇犬的评判。
		</div>
		<div class="para" label-module="para">
			<i><b>历史：</b></i>西伯利亚雪撬犬一般被认为是在东<a target="_blank"
				href="/item/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A/63915"
				data-lemmaid="63915">西伯利亚</a>半岛分布的海岸<a target="_blank"
				href="/item/%E6%A5%9A%E7%A7%91%E5%A5%87%E6%97%8F">楚科奇族</a>部落驯化的。然而有证据表明西伯利亚雪撬犬也可能是从<a
				target="_blank"
				href="/item/%E7%A7%91%E9%87%8C%E4%BA%9A%E5%85%8B%E6%97%8F">科里亚克族</a>和Kamchadal部族引进的。最近的DNA分析确认了这是一种最古老的犬种之一。来自<a
				target="_blank"
				href="/item/%E9%98%BF%E7%BA%B3%E5%BE%B7%E5%B0%94%E6%B2%B3">阿纳德尔河</a>(Anadyr)及其周边地区的狗在1908年及其后20年的<a
				target="_blank" href="/item/%E6%B7%98%E9%87%91%E7%83%AD">淘金热</a>时期里被陆续引进到<a
				target="_blank" href="/item/%E9%98%BF%E6%8B%89%E6%96%AF%E5%8A%A0">阿拉斯加</a>地区作为<a
				target="_blank" href="/item/%E9%9B%AA%E6%A9%87%E7%8A%AC">雪橇犬</a>使用，尤其是在All-Alaska
			Sweepstakes（AAS）这项在诺姆和Candle之间进行的长达408英里（657km）的往返程狗拉雪橇大赛上。西伯利亚雪撬犬比当时用来运输货物的100~200磅（45~54kg）重的狗更小、更快、更能忍受恶劣环境，它们很快就统治了Nome
			Sweepstakes这项比赛。数周大的西伯利亚雪撬犬Leonhard Seppala，一位曾经是渔民的<a
				target="_blank" href="/item/%E6%8C%AA%E5%A8%81">挪威</a><a
				target="_blank" href="/item/%E9%87%91%E7%9F%BF">金矿</a>工第一次接触西伯利亚雪撬犬是在他请求他的雇主训练一些小狗来参加1914年的AAS大赛时。经历了第一年的失败后，Seppala随后统治了这项竞赛。在1925年，他是用狗拉雪橇从Nenana向被<a
				target="_blank" href="/item/%E7%99%BD%E5%96%89">白喉</a>侵袭的诺姆运输抗毒血清的1925诺姆血清运送里的关键人物。Iditarod
			Trail Sled Dog
			Race这项竞赛就是为了纪念这一次著名的运输而举办的。下一年，两队Seppala的狗在美国巡回展出，在全国特别是在美国东北部的<a
				target="_blank" href="/item/%E6%96%B0%E8%8B%B1%E6%A0%BC%E5%85%B0">新英格兰</a>地区激起了人们对<a
				target="_blank" href="/item/%E9%9B%AA%E6%A9%87%E7%8A%AC">雪橇犬</a>和狗拉雪橇竞赛的强烈兴趣。1930年，由于苏联政府关闭<a
				target="_blank" href="/item/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A">西伯利亚</a>地区的边境禁止对外贸易，最后一批西伯利亚雪撬犬在这一年里被出口到其它国家。同年西伯利亚雪橇犬被<a
				target="_blank"
				href="/item/%E7%BE%8E%E5%9B%BD%E7%8A%AC%E4%B8%9A%E4%BF%B1%E4%B9%90%E9%83%A8">美国犬业俱乐部</a>（AKC）正式承认。九年后，西伯利亚雪橇犬在加拿大正式注册。今天在北美洲注册的西伯利亚雪橇犬大多数都是1930年从西伯利亚进口和Leonhard
			Seppala的狗的后代。
		</div>
		<div class="para" label-module="para">
			<i><b>整体外观：</b></i>西伯利亚哈士奇是一种中等大小的工作犬，脚步轻快，动作优美。这种犬身体结构紧凑，皮毛良好，耳竖立，尾如毛刷，这些都显出其具有北方气息。其步态特征为平稳、轻松。这种犬通过戴上绳索来行使自己的职能，能够以适当的速度长距离运输重量轻的物品。其身体比例和体形反应出其在力量、速度、耐力方面的平衡性。雄性西伯利亚哈士奇更具刚性但不粗糙；雌性则更具柔性，但是体格不显虚弱。在正确的条件下，其肌肉坚实，且发育良好，西伯利亚哈士奇不会超重。
		</div>
		<div class="para" label-module="para">
			<i><b>重要比例：</b></i>从侧面看，其自肩顶到臀后顶的长度略长于自地面到马肩隆顶部的高度。自鼻尖到止部的距离等同于自止部到枕骨的距离。
		</div>
		<div class="para" label-module="para">
			<i><b>行为气质：</b></i><a target="_blank"
				href="/item/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A/63915"
				data-lemmaid="63915">西伯利亚</a>哈士奇的特色气质是友好、温顺，但也不失机警、热情。他没有看守犬所具有的主要品质，同时也不过度怀疑生人或攻击其它犬类。成年犬会显得有些矜持、高贵。聪明、热心使其成为一种令人心悦的<a
				target="_blank" href="/item/%E4%BC%B4%E4%BE%A3%E7%8A%AC">伴侣犬</a>和任劳任怨的<a
				target="_blank" href="/item/%E5%B7%A5%E4%BD%9C%E7%8A%AC">工作犬</a>。
		</div>
		<div class="para" label-module="para">
			<a class="lemma-album layout-right nslog:10000206" title="哈士奇"
				href="/pic/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A%E9%9B%AA%E6%A9%87%E7%8A%AC/540855/17363248/d53f8794a4c27d1eef3a9e641ed5ad6eddc43875?fr=lemma&amp;ct=cover"
				target="_blank" style="width: 222px;" nslog-type="10000206">
				<div class="album-wrap" style="width: 220px; height: 165px;">
					<img class="picture" alt="哈士奇"
						src="https://gss1.bdstatic.com/-vo3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=747599b3d854564ee165e33b83df9cde/d53f8794a4c27d1eef3a9e641ed5ad6eddc43875.jpg"
						style="width: 220px; height: 165px;">
				</div>
				<div class="description">
					哈士奇<span class="number">(2张)</span>
				</div>
				<div class="albumBg">
					<div class="albumBgFir" style="width: 214px;"></div>
					<div class="albumBgSec" style="width: 208px;"></div>
				</div>
			</a>
		</div>
		<div class="anchor-list">
			<a name="7" class="lemma-anchor para-title"></a> <a name="sub28807_7"
				class="lemma-anchor "></a> <a name="饲养护理" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-2" label-module="para-title">
			<h2 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>饲养护理
			</h2>
			<a class="edit-icon j-edit-link" data-edit-dl="7" href="javascript:;"
				style="display: block;"><em
				class="cmn-icon wiki-lemma-icons wiki-lemma-icons_edit-lemma"></em>编辑</a>
		</div>
		<div class="anchor-list">
			<a name="7_1" class="lemma-anchor para-title"></a> <a
				name="sub28807_7_1" class="lemma-anchor "></a> <a name="饲养要则"
				class="lemma-anchor "></a> <a name="7-1" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-3" label-module="para-title">
			<h3 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>饲养要则
			</h3>
		</div>
		<div class="para" label-module="para">
			<b>幼龄犬的饲养</b> <br> <a
				class="lemma-album layout-right nslog:10000206"
				title="哈士奇从小到大生长过程参考图"
				href="/pic/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A%E9%9B%AA%E6%A9%87%E7%8A%AC/540855/8773261/29381f30e924b8995bd3646d6c061d950b7bf6fc?fr=lemma&amp;ct=cover"
				target="_blank" style="width: 222px;" nslog-type="10000206">
				<div class="album-wrap" style="width: 220px; height: 147px;">
					<img class="picture" alt="哈士奇从小到大生长过程参考图"
						src="https://gss2.bdstatic.com/9fo3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=3a47f926af4bd11300cdb0306aaea488/29381f30e924b8995bd3646d6c061d950b7bf6fc.jpg"
						style="width: 220px; height: 147px;">
				</div>
				<div class="description">
					哈士奇从小到大生长过程参考图<span class="number">(24张)</span>
				</div>
				<div class="albumBg">
					<div class="albumBgFir" style="width: 214px;"></div>
					<div class="albumBgSec" style="width: 208px;"></div>
				</div>
			</a>
			幼龄时期是生长发育的主要阶段，身体增长迅速，因而必须供给充足的营养。一般出生后头3个月主要增长躯体和体重，4~6个月主要是增加体长，7个月后主要长体高。因此，应按不同的发育阶段，配制不同的口粮。断奶后的<a
				target="_blank" href="/item/%E5%B9%BC%E7%8A%AC">幼犬</a>，由于生活条件的突然改变，往往显得不安，食欲不振，容易生病，这时所选的饲料要适口性好，易于消化。3个月内的幼犬每天至少
			喂4次。对于食欲差的犬可采用先喂次的，后喂好的，少添勤喂的方法。先次后好可保持犬的食欲旺盛，少添勤喂可使犬总有不饱之感，不至于厌倦、挑食。4~6月龄的幼犬，食量增大，体重增加很快，每日所需饲料量也随之增多，每天至少喂3次。6月龄后的犬，每天喂2次即可——幼犬的食谱，应先按原犬主的食谱喂，逐渐转换。对3个月以内的幼犬应喂以稀饭、酸牛奶或豆浆并加入适量切碎的鱼、肉类以及切碎煮熟的青菜。为了降低饲料成本而又不影响幼犬的营养，可将猪、牛肺脏之类的脏器煮熟切碎后，与青菜、玉米面等熟食混匀后喂犬，这样既经济，犬又爱吃。
			有些人认为，如给犬全部喂肉类，可使犬长得健壮，其实这是错误的做法。全吃肉类不仅不能使犬健壮，反而因消化不良，难以吸收而使多数犬发生腹泻。<br>
			幼犬断奶之前可以从母亲的奶水中获取它们所必需的大部分养份。在幼犬搬到新家之前，它应已经完全断奶并且已开始食固体食物。而后它将完全依赖它的新主人为其提供均衡的饮食以获得所需的全部营养。
			<br>
			所有的幼犬早期会成长得很快，通常情况下大多数品种的犬四、五个月龄时体重会达到成年犬的一半。然而，不同品种的犬的成熟速度不同--例如，体型大的犬比体型小的犬的成长期长，小型观赏犬在8--9个月龄时就达到了成年犬的体重，而大型犬在这一年龄段还在长。例如，一条<a
				target="_blank" href="/item/%E7%BA%BD%E8%8A%AC%E5%85%B0%E7%8A%AC">纽芬兰犬</a>或<a
				target="_blank" href="/item/%E5%A4%A7%E4%B8%B9%E7%8A%AC">大丹犬</a>在18个月龄时才能长到成年犬的大小。
			<br>
			大型犬或巨型犬尤其易受饮食的影响---由于这些犬长得很快，它们的骨骼在发育过程中很容易受到饮食的影响。这一阶段，为了使其最大限度地快速增长而超量饲喂是不明智的。<sup
				class="sup--normal" data-sup="2"> [2]</sup><a class="sup-anchor"
				name="ref_[2]_28807">&nbsp;</a>
		</div>
		<div class="para" label-module="para">
			<b>能量需求</b>
		</div>
		<div class="para" label-module="para">
			由于成长需要耗费能量，相对于同样大小的一只成年犬，一条幼犬需要其二到四倍的能量。他们必须比成年犬摄入更多的蛋白质--其中包括他们需要成长所需氨基酸，以及骨骼和牙齿所需的矿物质。所以幼犬必须吃大量食物，但每次的饲喂量不应很多。对其食物的配制最好符合一些标准：
			<br> （1）食物高营养以保证其吃饱时可以获得充足的养份； <br> （2）食物易消化以使其最大限度地吸收养份； <br>
			（3）饮食必须均衡以提供适宜的养分满足幼犬的特定需要，并且食物只有可口幼犬才会吃。 <br>
			配制一种有利于幼犬成长的营养均衡的食物是很复杂的,如果您想给幼犬饲喂补充食物，那么，您应该先向兽医咨询，以确定这不会对您的犬造成伤害。
		</div>
		<div class="para" label-module="para">
			<b>进食时间</b><br>
			通常情况下，一只幼犬的进食时间应为10—15分钟。饭后应将剩下的食物扔掉。幼犬必须有自己用餐、饮水的器皿，且应保持干净，并跟家中的其它器皿分开。您还必须为幼犬提供充足、卫生的新鲜水。如果您发现您的幼犬总是处于干渴状态，您就应该向兽医咨询，因为这有可能是幼犬生病的征兆。
		</div>
		<div class="anchor-list">
			<a name="7_2" class="lemma-anchor para-title"></a> <a
				name="sub28807_7_2" class="lemma-anchor "></a> <a name="毛质分析"
				class="lemma-anchor "></a> <a name="7-2" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-3" label-module="para-title">
			<h3 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>毛质分析
			</h3>
		</div>
		<div class="para" label-module="para">
			西伯利亚雪橇狗以具备坚韧的毅力而闻名于世，在寒冷的<a target="_blank"
				href="/item/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A">西伯利亚</a>他们需要适应日夜几十度的巨大温差。
		</div>
		<div class="para" label-module="para">
			一条合格的哈士奇一定有着一身独特的毛层来抵挡恶劣的环境。哈士奇的毛有2层，外毛和绒毛，其中外毛分成2段，通常可以看到顶端深色发亮，低端毛质粗而相对淡色。这顶端发亮的毛叫“SILVER
			TIPS”（银尖），是用来抵挡紫外光和炽热的太阳所发出的热量；粗壮的毛根紧紧的生长在皮肤内，所以一般来说哈士奇的外毛相对不容易掉毛。哈士奇的内毛（绒毛）和外毛的比例一般来说为8（内毛）：1（外毛），这些丰厚的内毛会分泌一种油脂用来防水，也是由于这种油脂才恰到好处的营造了一个非常科学的隔热层（INSULATION），抵挡外界的炎热和寒冷。<sup
				class="sup--normal" data-sup="5"> [5]</sup><a class="sup-anchor"
				name="ref_[5]_28807">&nbsp;</a>
		</div>
		<div class="anchor-list">
			<a name="7_3" class="lemma-anchor para-title"></a> <a
				name="sub28807_7_3" class="lemma-anchor "></a> <a name="运动量"
				class="lemma-anchor "></a> <a name="7-3" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-3" label-module="para-title">
			<h3 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>运动量
			</h3>
		</div>
		<div class="para" label-module="para">
			哈士奇在拉雪橇比赛中赛的是速度，而非力量，所以平时体能训练最主要的就是速度，每日速跑和慢跑几次对于show
			dog（狗狗秀上的明星狗）来说是非常有必要的，在整个运动过程中，前后肢尽量的伸展对于哈士奇的形体将会有无可厚非的帮助，每日3次以上运动，每次20到30分钟为佳。建议pet
			dog（<a target="_blank"
				href="/item/%E5%AE%A0%E7%89%A9%E7%8B%97/6677317"
				data-lemmaid="6677317">宠物狗</a>）每日一到二次的运动，每次半小时左右。
		</div>
		<div class="anchor-list">
			<a name="7_4" class="lemma-anchor para-title"></a> <a
				name="sub28807_7_4" class="lemma-anchor "></a> <a name="按年龄"
				class="lemma-anchor "></a> <a name="7-4" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-3" label-module="para-title">
			<h3 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>按年龄
			</h3>
		</div>
		<div class="para" label-module="para">
			公的哈士奇发育良好，体格粗，性欲大，所以公狗的饲料中应该给与多些高蛋白的食品，比如<a target="_blank"
				href="/item/%E9%B8%A1%E8%9B%8B/6405" data-lemmaid="6405">鸡蛋</a>，宠物专用<a
				target="_blank" href="/item/%E7%BE%8A%E5%A5%B6">羊奶</a>，瘦肉。当然也少不了户外运动，增加<a
				target="_blank" href="/item/%E6%8A%B5%E6%8A%97%E5%8A%9B">抵抗力</a>。母的哈士奇发育快，比较瘦小，当然性格多变，需要好好看待。对环境的适应力强。饲养好了容易繁殖后代。老的哈士奇因为体内器官老化，衰减，所以会比较怕冷，怕热。所以在夏天可以吹吹空调，冬季可以开地热或者热空调加温。加上体内循环系统较弱，所以可能的话，多运动，吃少点，否则容易发福。老狗的视力，听力也会下降不少，我们需要给予特别的关怀，不要嫌弃它们，不跟它们玩，也不要勉强它们跟我们一起玩。
		</div>
		<div class="anchor-list">
			<a name="7_5" class="lemma-anchor para-title"></a> <a
				name="sub28807_7_5" class="lemma-anchor "></a> <a name="全体适用"
				class="lemma-anchor "></a> <a name="7-5" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-3" label-module="para-title">
			<h3 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>全体适用
			</h3>
		</div>
		<div class="para" label-module="para">
			<b>注意毛发</b>
		</div>
		<div class="para" label-module="para">
			哈士奇有一层叫做<a target="_blank" href="/item/%E9%93%B6%E5%B0%96">银尖</a>的背毛，在炎炎夏日中，它能防止紫外线的侵入，事实证明，它的抗热效果很好。如果把它的毛剪短，就等于害了它。
		</div>
		<div class="para" label-module="para">
			<b>运动时间</b>
		</div>
		<div class="para" label-module="para">幼犬：每日外出牵引散步约30分钟，自由活动时间无限制。成犬：每日外出牵引散步约30到60分钟，自由活动时间无限制。时间：勿于大白天带出户外散步，应多利用清晨、黄昏、夜间。</div>
		<div class="para" label-module="para">每天只需喂一回，散步后吃个八分饱。不到一年，哈士奇幼犬就已经开始步入在哈士奇的世界。</div>
		<div class="para" label-module="para">
			出生8个月以后，喂食次数可以减为一天2次。而超过1岁的<a target="_blank"
				href="/item/%E5%93%88%E5%A3%AB%E5%A5%87">哈士奇</a>，喂食次数应改为一天1次。这时哈士奇的体格已经长得和哈士奇成犬差不多，胃容量也增大了，一次吃下的食物足够提供全天所需的能量。为了保持哈士奇的健康，喂食的原则是让它吃八分饱即可。<sup
				class="sup--normal" data-sup="6"> [6]</sup><a class="sup-anchor"
				name="ref_[6]_28807">&nbsp;</a>
		</div>
		<div class="para" label-module="para">
			<b>教育</b>
		</div>
		<div class="para" label-module="para">方法：西伯利亚雪橇犬犬由于所居环境恶劣，为保性命，故相当有主见，犬主应对其表现强势一面，以压制爱犬当老大的个性，以免爱犬不听主人的命令。</div>
		<div class="para" label-module="para">
			技巧：每次教育时间不宜过长，约十至十五分即可，以免爱犬厌烦，不听指挥。同一口令尽量不要重复多次。由于西伯利亚雪橇犬为<a
				target="_blank" href="/item/%E5%B7%A5%E4%BD%9C%E7%8A%AC">工作犬</a>，因此在教育过程中，最好让它认为是工作，比较容易让它听命。日常生活训练需自幼开始，并注意不可放松，成犬后再管教就比较困难了。
		</div>
		<div class="para" label-module="para">
			<b>额外呵护</b>
		</div>
		<div class="para" label-module="para">肠胃：小哈的肠胃比较弱，要给它吃专业的狗粮，不要经常更换食物，最好不要乱喂东西。</div>
		<div class="para" label-module="para">精力：比较能闹腾，就像是上了发条一样不省心，而且据说不认生，人见人爱，花见花开，活泼好动，有几分狼性。</div>
		<div class="para" label-module="para">
			气候：避免太阳过度照射，损害西伯利亚雪橇犬的毛发。此外，在高温多雨情况下，西伯利亚雪橇犬容易有皮肤方面，以及<a
				target="_blank" href="/item/%E5%AF%84%E7%94%9F%E8%99%AB/3819"
				data-lemmaid="3819">寄生虫</a>的问题，需多加注意。
		</div>
		<div class="para" label-module="para">总体来说，西伯利亚雪橇犬还是比较好养的，只是有点调皮，肠胃不太好，活动量大，有时候嚎叫。</div>
		<div class="para" label-module="para">怎么样给哈士奇选择个好的狗粮是主人应该做的。</div>
		<div class="anchor-list">
			<a name="7_6" class="lemma-anchor para-title"></a> <a
				name="sub28807_7_6" class="lemma-anchor "></a> <a name="喂食"
				class="lemma-anchor "></a> <a name="7-6" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-3" label-module="para-title">
			<h3 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>喂食
			</h3>
		</div>
		<div class="para" label-module="para">
			<b>喂食时间</b>
		</div>
		<div class="para" label-module="para">喂食时间可选在早晨或傍晚，最好还是散步回来排完便、梳过毛、收拾整理完毕后再喂，以使它每天生活都有规律。刚长大的哈士奇成犬活泼好动，体能消耗大，因此必须注意提供营养丰富、高热量的食物。</div>
		<div class="para" label-module="para">
			为了防止它长得过胖，除正餐以外，尽量不要再喂其它食物。不过为了使它的牙龄、骨骼和颚部长得更结实，偶尔可以给它些含钙高的<a
				target="_blank" href="/item/%E7%89%9B%E9%AA%A8">牛骨</a>或猪骨啃啃。骨头吃得太多也不好，一星期给它两次就够了。
		</div>
		<div class="para" label-module="para">通常室内哈士奇要比大型室外哈士奇寿命长。虽然每只哈士奇不完全一样，但通常要以把它2-7岁时称为活跃期，而8-9岁以后就已经相当于人的中年年龄。</div>
		<div class="para" label-module="para">从那以后起，哈士奇将慢慢失去活力，逐渐出现老年哈士奇的特征。步入老年期的哈士奇新陈代谢已经日渐衰退，消耗的热量也减少了，健康问题必须提到日程上来了。</div>
		<div class="para" label-module="para">这段时期可以喂它一些蛋白质含量低、脂肪含量少的食物。</div>
		<div class="para" label-module="para">
			<b>供食量<b>测算</b></b>
		</div>
		<div class="para" label-module="para">可以观察哈士奇在3-4天内的食量，再加以平均就可以算出平均每天的供食量，再按这个量稍微减一点，让它吃光后还想再吃点，这差不多就是所谓“八分饱”的。如果每天都让它吃饱很容易造成肥胖，必须严格遵守八分饱的原则。</div>
		<div class="para" label-module="para">
			<b>营养食物</b>
		</div>
		<div class="para" label-module="para">1、肉类副产品</div>
		<div class="para" label-module="para">
			肉类由动物肌肉、肌间脂肪、肌肉鞘膜、筋腱、血管等组成。肉类食品是铁等一些B族维生素（特别是烟酸、维生素B1、维生素B2、<a
				target="_blank" href="/item/%E7%BB%B4%E7%94%9F%E7%B4%A0B12">维生素B12</a>的良好来源。用此类食物喂金毛狗狗，适口性好，消化率高，利用迅速。
		</div>
		<div class="para" label-module="para">
			猪、<a target="_blank" href="/item/%E7%89%9B/2620519"
				data-lemmaid="2620519">牛</a>、<a target="_blank"
				href="/item/%E7%BE%94%E7%BE%8A/9581" data-lemmaid="9581">羔羊</a>、肉用<a
				target="_blank" href="/item/%E7%8A%8A%E7%89%9B">犊牛</a>、鸡、<a
				target="_blank" href="/item/%E5%85%94/522910" data-lemmaid="522910">兔</a>的瘦肉组成上很相似，特别是水分和蛋白质，差异主要表现在脂肪的变化上，水分含量在70%～76%，蛋白质含量在22%～25%，脂肪含量在2%～9%之间，家禽、肉用犊牛、兔的脂肪含量为2%～5%，羔羊、猪的含量在7%～9%。
		</div>
		<div class="para" label-module="para">肉类副产品，不论来自何种动物，他们在营养成分含量方面一般都相似，都较瘦肉含水分多，而含蛋白质少，脂肪含量变化较大。肉类不含碳水化合物，因为能量多储存于脂肪中，而不是糖、淀粉中。</div>
		<div class="para" label-module="para">
			肉类副产品中的蛋白质具有较高的营养价值，所有肉类中钙的含量很低，钙、磷比例发生了较大的变化，钙、磷比例以1:10至1:20，缺乏<a
				target="_blank" href="/item/%E7%BB%B4%E7%94%9F%E7%B4%A0A">维生素A</a>、维生素D、碘。所以在哈士奇的每日狗粮中，肉类是最重要的。
		</div>
		<div class="para" label-module="para">2、维生素和矿物质</div>
		<div class="para" label-module="para">定期主动补充维生素是必要的，你所养的狗应该从营养均衡的食物中获取所有需要的维生素和矿物质。但是在有的时期，狗还需要特别补充一些维生素。比如在怀孕期，授乳期以及幼犬生长期，而在生病后的复原期也必须另加补充些幼犬金维他，帮助补充维生素和矿物质。不过，你必须在兽医或专家的指导下给予补充，因为补充太多和缺乏同样会有害。狗一般较少缺乏维生素，不过味道好的维生素片水果味维C可以作为对狗的一种奖赏。</div>
		<div class="para" label-module="para">3、补钙</div>
		<div class="para" label-module="para">人要补充钙质，同样，狗狗对钙的需求更高，特别是处于生长期的幼犬以及授乳期的母狗也需要补钙。补钙不是吃钙片，应该采用更容易吸收的方式补钙，比如把超能钙的钙粉加入汤中或掺在混合型的食物中来食用。</div>
		<div class="para" label-module="para">消过毒的骨粉是钙的一个好来源。但必须先请教兽医或专家才能使用，不同大小、年龄、品种的狗狗使用的剂量是不同的。</div>
		<div class="para" label-module="para">
			<b>从家庭配餐改喂专用狗粮</b>
		</div>
		<div class="para" label-module="para">哈士奇成年后如果打算从喂配餐改为喂专用狗粮，可以先把家庭配餐减半后混往一些新的专用狗粮来喂，然后每天慢慢增加专用狗粮的比例。如果哈士奇实在不爱吃，可以先断食1-2天。这样做对哈士奇不会有多大影响，只要坚持一段时间，哈士奇便会习惯吃专用狗粮了。</div>
		<div class="para" label-module="para">
			<b>老龄哈士奇饮食注意事项</b>
		</div>
		<div class="para" label-module="para">
			西伯利亚雪橇犬活泼好动，并需人作陪，每日固定运动。对环境的适应力强，对人友善、忠诚（对人类而言），不论好人、坏人，相当容易跟人类打成一片。不适用于看家犬，但可成为很好的聊天、诉说内心世界的伙伴。哈士奇老了以后，也能让它过得舒服些，老哈士奇的肠胃功能欠佳，加上活动量少，极容易造成便秘，因此可以给它增加些<a
				target="_blank" href="/item/%E6%A4%8D%E7%89%A9%E7%BA%A4%E7%BB%B4">植物纤维</a>。如果老哈士奇的牙不太好，可以将硬性专用狗粮改为较软的狗粮来喂。
		</div>
		<div class="para" label-module="para">
			<b>幼犬如何喂养</b>
		</div>
		<div class="para" label-module="para">哈士奇幼犬的喂养主要分为幼犬营养补充和哈士奇幼犬的日常饮食两方面。</div>
		<div class="para" label-module="para">
			对于哈士奇幼犬来说，适量的钙质补充是必不可少的，因为这样才可以让幼犬更加健壮，经济好容许的话，可以购买宠物专用的超能钙<a
				target="_blank"
				href="/item/%E9%B2%A8%E9%B1%BC%E8%BD%AF%E9%AA%A8%E7%B2%89">鲨鱼软骨粉</a>，每天3-5g；也可以在药店购买人用的“<a
				target="_blank"
				href="/item/%E8%91%A1%E8%90%84%E7%B3%96%E9%85%B8%E9%92%99">葡萄糖酸钙</a>口服液”，每日早晚各半支。需要注意的是，幼犬在四个月左右开始换牙，这期间一定要停止补钙，不然的话非常容易让幼犬长出双排牙。
		</div>
		<div class="para" label-module="para">
			喂养得好的哈士奇，有了营养均衡的食物，小狗会长得肌肉饱满，骨骼健康，皮毛光滑。蛋白质可助生长发育，<a target="_blank"
				href="/item/%E7%BB%86%E8%83%9E%E7%BB%84%E7%BB%87">细胞组织</a>的再生以及维持新陈代谢的不断进行，必要的脂肪酸可使狗的皮毛富有光泽，碳水化合物可以增加狗食物的分量，并帮助肠的正常蠕动有了营养均衡的食物，小狗会长得肌肉饱满，骨骼健康，皮毛光滑。
		</div>
		<div class="para" label-module="para">
			幼犬发育的不同阶段，其身体各部的生长能力是不平衡的。在出生后的头3个月，主要增长躯体、增加体重，从第4个月开始至6个月，主要生长体长，7个月以后主要增长体高，这就要根据犬体不同<a
				target="_blank" href="/item/%E5%8F%91%E8%82%B2%E9%98%B6%E6%AE%B5">发育阶段</a>所需要营养物质，确定饲喂的饲料种类和数量。从幼犬脱离母犬而进入独立生活以后，在整个生长发育时期，均需供给充足而丰富的蛋白质、脂肪、碳水化合物、矿物质、维生素。如粮食、瘦肉、牛奶、蛋、蔬菜、鱼干油、骨粉等，并要做到定时定量。
		</div>
		<div class="para" label-module="para">
			2~3月龄的幼犬，每天喂4~5次，每只幼犬日量标准是瘦肉200克，奶300克，蛋1个，大米250~500克，蔬菜250~300克，食盐3~5克，并补给适量的维生素矿物质，超能钙一类的钙粉等。如有条件的话可给幼犬一些猪、牛的软骨吃，但不要喂鸡骨头。8月龄以后，就可根据<a
				target="_blank" href="/item/%E6%88%90%E5%B9%B4%E7%8A%AC">成年犬</a>的饲料日粮标准饲喂了。
		</div>
		<div class="para" label-module="para">
			<b>适合幼犬的食物</b>
		</div>
		<div class="para" label-module="para">
			⑴幼犬的食品：如幼犬专用<a target="_blank" href="/item/%E7%8B%97%E7%B2%AE">狗粮</a>和罐头。
		</div>
		<div class="para" label-module="para">⑵钙：补充天然含量高，像超能钙一类的钙产品，促进幼犬的骨骼和牙齿发育。</div>
		<div class="para" label-module="para">⑶幼犬用的奶粉：有专用的幼犬羊奶粉。</div>
		<div class="para" label-module="para">⑷蛋黄：蛋黄的优点是不但含有丰富的蛋白质，而且含有易消化吸收的维生素A、钙质、矿物质。</div>
		<div class="para" label-module="para">⑸维生素矿物质：对于体质较差的幼犬，考虑额外补充一些维生素和矿物质，可以考虑喂食21金维他，也有宠物专用的幼犬金维他。</div>
		<div class="para" label-module="para">
			⑹肉类：牛、猪、鸡肉等虽然是优良食品，但在喂养<a target="_blank"
				href="/item/%E5%B9%BC%E7%8A%AC">幼犬</a>的时候，宜选择不含脂肪的部分，因为脂肪容易变质。但要喂熟的，不要喂生肉！注：4个月前幼犬最好不要过量喂肉食。
		</div>
		<div class="para" label-module="para">
			<b>喂食用具</b>
		</div>
		<div class="para" label-module="para">
			厚厚的陶瓷盆作为食盆一般不易被狗打破。如果给狗煮肉食，可以任用一种长柄有盖的锅，但是从卫生学的角度看，最好把煮狗食的用具和你厨房中的其他厨具分开使用。当然每餐之后务必要洗净所有的碗和餐具，将剩余的罐头食品盖上塑胶盖存放妥当。跟人一样，放在冰箱内最多可存放三天，而后吃不完就应丢掉，因为食物里面已经产生了大量肉眼看不见的细菌。<sup
				class="sup--normal" data-sup="7"> [7]</sup><a class="sup-anchor"
				name="ref_[7]_28807">&nbsp;</a>
		</div>
		<div class="anchor-list">
			<a name="8" class="lemma-anchor para-title"></a> <a name="sub28807_8"
				class="lemma-anchor "></a> <a name="鉴别挑选" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-2" label-module="para-title">
			<h2 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>鉴别挑选
			</h2>
			<a class="edit-icon j-edit-link" data-edit-dl="8" href="javascript:;"
				style="display: block;"><em
				class="cmn-icon wiki-lemma-icons wiki-lemma-icons_edit-lemma"></em>编辑</a>
		</div>
		<div class="anchor-list">
			<a name="8_1" class="lemma-anchor para-title"></a> <a
				name="sub28807_8_1" class="lemma-anchor "></a> <a name="鉴别"
				class="lemma-anchor "></a> <a name="8-1" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-3" label-module="para-title">
			<h3 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>鉴别
			</h3>
		</div>
		<div class="para" label-module="para">
			有一种狗狗和哈士奇长得很像，毛要比哈士奇长了许多。不要惊讶，它叫“阿拉斯加”。原产美国的<a target="_blank"
				href="/item/%E9%98%BF%E6%8B%89%E6%96%AF%E5%8A%A0%E5%B7%9E">阿拉斯加州</a>，为什么它长得那么像哈士奇，而且都是雪橇犬呢？
		</div>
		<div class="para" label-module="para">
			二十世纪前20年，随着狗拉雪橇竞速赛（<b>the sport of sled dog racing</b>）在北美的风靡，美国人意识到有必要重新拾回阿拉斯加雪橇犬这一本土的雪橇犬种，在1926年，美国的雪橇犬爱好者开始致力于以本土雪橇犬的培育。
		</div>
		<div class="para" label-module="para">这两种狗没有经过任何杂交，是地道的、古老的、原汁原味的纯种犬，它们是天然造化的杰作。</div>
		<div class="para" label-module="para">阿拉斯加雪橇犬和西伯利亚雪橇犬外表相似，很多人都分不清楚这两种犬。阿拉斯加雪橇犬与西伯利亚雪橇犬（哈士奇）的差异在于：阿拉斯加雪橇犬长得比较粗壮高大，西伯利亚雪橇犬（哈士奇）比较轻巧优雅；西伯利亚雪橇犬（哈士奇）行为比较野性，而阿拉斯加雪橇犬比较温顺。</div>
		<div class="para" label-module="para">体形：阿拉斯加雪橇犬比西伯利亚雪橇犬在形体上要大。阿拉斯加雪橇犬的骨架无论公狗、母狗都比西伯利亚雪橇犬要大一些，所以阿拉斯加雪橇犬看起来比较胖，西伯利亚雪橇犬看起来就比较纤瘦。</div>
		<div class="para" label-module="para">头部：有非常明显的区别：阿拉斯加雪橇犬的头颅比较宽，耳朵之间的距离也比较大；西伯利亚雪橇犬则相反。</div>
		<div class="para" label-module="para">眼睛的颜色：西伯利亚雪橇犬的眼睛可以是蓝色、棕色等。而阿拉斯加雪橇犬的眼睛则必须是棕色的。</div>
		<div class="para" label-module="para">
			尾巴：阿拉斯加雪橇犬的尾巴，在多数的情况下都是向上翘，卷向背部，特别是在工作的时候。西伯利亚雪橇犬的尾巴多数都是垂下来的，除了摇尾巴的时候。<sup
				class="sup--normal" data-sup="8"> [8]</sup><a class="sup-anchor"
				name="ref_[8]_28807">&nbsp;</a>
		</div>
		<div class="para" label-module="para">
			<b>1，眼睛：</b>西伯利亚－－棕色、蓝色（包括深棕色，浅棕色，鸳鸯眼）；阿拉斯加－－虹膜颜色只允许棕褐色系。
		</div>
		<div class="para" label-module="para">
			<b>2，毛色：</b>西伯利亚－－灰白，黑白，咖啡白，全白。；阿拉斯加－－黑白、灰白、全白、红白。
		</div>
		<div class="para" label-module="para">
			<b>3，毛质：</b>西伯利亚－－被毛稍短，毛质较硬；阿拉斯加－－两种毛质。一种属长毛，柔软。另一种在总体上跟哈士奇的被毛类似，但在某种程度上比哈士奇的被毛略显得粗糙。
		</div>
		<div class="para" label-module="para">
			<b>4，耳朵：</b>西伯利亚－－两耳间距较窄，耳尖弧度较小，似三角形；阿拉斯加－－耳朵之间距离较宽，耳尖弧度大，成半圆形。
		</div>
		<div class="para" label-module="para">
			<b>5：额头：</b>西伯利亚－－额头和眉间颜色分布有十字形，双线型，两点眉型；阿拉斯加－－额头眉间形状一般是美人尖型
		</div>
		<div class="para" label-module="para">
			<b>6，尾巴：</b>西伯利亚－－放松状态时，尾巴自然下垂，较接近狼。兴奋或奔跑时，尾巴上摆，但尾尖始终成水平状态；阿拉斯加－－尾根部粗壮，毛发旺盛，始终卷曲，尾尖弯曲接近尾根。
		</div>
		<div class="para" label-module="para">
			<b>7，体型：</b>西伯利亚－－中型；阿拉斯加－－大型。<a
				class="lemma-album layout-right nslog:10000206" title="表情"
				href="/pic/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A%E9%9B%AA%E6%A9%87%E7%8A%AC/540855/18554905/503d269759ee3d6dc972203945166d224e4ade88?fr=lemma&amp;ct=cover"
				target="_blank" style="width: 222px;" nslog-type="10000206">
				<div class="album-wrap" style="width: 220px; height: 146px;">
					<img class="picture" alt="表情"
						src="https://gss0.bdstatic.com/-4o3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=160b2bc34c90f60300b09b450913b370/503d269759ee3d6dc972203945166d224e4ade88.jpg"
						style="width: 220px; height: 146px;">
				</div>
				<div class="description">
					表情<span class="number">(5张)</span>
				</div>
				<div class="albumBg">
					<div class="albumBgFir" style="width: 214px;"></div>
					<div class="albumBgSec" style="width: 208px;"></div>
				</div>
			</a>
		</div>
		<div class="para" label-module="para">
			<b>8，性格特点：</b>
		</div>
		<div class="para" label-module="para">西伯利亚－－习性更接近狼，聪明，机敏，活泼，善变```</div>
		<div class="para" label-module="para">阿拉斯加－－敦厚，勇敢，忠诚，耐性十足````</div>
		<div class="para" label-module="para">
			<b>9，价格：</b>
		</div>
		<div class="para" label-module="para">
			<a target="_blank"
				href="/item/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A/63915"
				data-lemmaid="63915">西伯利亚</a>－－宠物级平均价位：2000-2500元左右
		</div>
		<div class="para" label-module="para">
			<a target="_blank" href="/item/%E9%98%BF%E6%8B%89%E6%96%AF%E5%8A%A0">阿拉斯加</a>－－宠物级平均价位：2500元左右(标准体)
			3500元以上（巨型体）
		</div>
		<div class="para" label-module="para">
			<b>10，智商：</b>西伯利亚比阿拉斯加聪明许多。在世界<a target="_blank"
				href="/item/%E7%8A%AC%E7%B1%BB%E6%99%BA%E5%95%86%E6%8E%92%E5%90%8D">犬类智商排名</a>中，西伯利亚排名第45位，阿拉斯加第50位
		</div>
		<div class="para" label-module="para">
			<b>11，城市适应度：</b>西伯利亚－－三颗星（一般适应）；阿拉斯加－－两颗星（不太适应，有一定饲养难度）
		</div>
		<div class="para" label-module="para">
			<b><i>AKC标准</i></b>
		</div>
		<div class="para" label-module="para">
			阿拉斯加雪橇犬和西伯利亚雪橇犬分别在1935年和1930年被<a target="_blank" href="/item/AKC">AKC</a>承认。从AKC标准里得知，这两种狗没有经过任何杂交，是地道的、古老的、原汁原味的纯种犬，它们是天然造化的杰作。
		</div>
		<div class="para" label-module="para">
			<i><b>“狼”的身材也不同</b></i>
		</div>
		<div class="para" label-module="para">即便都是狼，身材也相异。通常情况下，阿拉斯加雪橇比西伯利亚雪橇个头儿要猛上六七厘米，体重差别更大，有时甚至相差20公斤以上。其实，这是因为它们在雪地里的工作性质造成的。阿拉斯加借助高大魁梧的身躯，可以拖动较重的雪橇，而且不需要展示特别快的速度，力量和耐力的均衡是极其重要的；哈士奇天生就是拉稍轻雪橇的，与身材匹配的力量、中等速度和超长的耐久力，三者完美结合。这些因素造就了它们身体形态的差别。</div>
		<div class="para" label-module="para">阿拉斯加最理想的体型：雄性肩高25英寸，体重85磅；雌性肩高23英寸，体重75磅。</div>
		<div class="para" label-module="para">哈士奇体型：雄性肩高21-23英寸，体重45-60磅；雌性肩高20-22英寸，体重35-50磅。</div>
		<div class="para" label-module="para">
			体重和身高需要协调。这是它们高度和重量的极限值，在此极限之外的不能算优秀而且超过上限即为<a target="_blank"
				href="/item/%E5%A4%B1%E6%A0%BC">失格</a>。
		</div>
		<div class="para" label-module="para">很明显，阿拉斯加在这里并没有规定上下限，给人感觉相对宽泛，而哈士奇则严格得多。这也许是一种巧合，但体现了美国对它们的不同繁殖观念，因此也产生了这两种“狼”的不同体态感觉。凭借远观，也不难区分它们。</div>
		<div class="para" label-module="para">
			<a target="_blank" href="/item/%E4%B8%9C%E4%BA%9A"><b><i>东亚</i></b></a><b><i>“狼”和</i></b><a
				target="_blank" href="/item/%E7%BE%8E%E6%B4%B2"><b><i>美洲</i></b></a><b><i>“狼”的面容差异</i></b>
		</div>
		<div class="para" label-module="para">
			如人类一样，不同地域有着不同的面部特征。阿拉斯加和哈士奇具有很相像的脸，一样倾斜的杏核眼，一样直立的三角形耳廓，一样深深的额段，尽管如此，我们仍然可以看到很多区别：阿拉斯加的颅部和吻部必须配合它雄壮的身躯，显得更加宽大，哈士奇则纤细一些；以耳而论，阿拉
			<div class="lemma-picture text-pic layout-right"
				style="width: 220px; float: right;">
				<a class="image-link" nslog-type="9317"
					href="/pic/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A%E9%9B%AA%E6%A9%87%E7%8A%AC/540855/0/4a36acaf2edda3cc9ebb1c8004e93901213f9237?fr=lemma&amp;ct=single"
					target="_blank" title="" style="width: 220px; height: 165px;">
					<img class="lazy-img"
					src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAMAAAAoyzS7AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAAZQTFRF9fX1AAAA0VQI3QAAAAxJREFUeNpiYAAIMAAAAgABT21Z4QAAAABJRU5ErkJggg=="
					data-src="https://gss2.bdstatic.com/9fo3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=890167b46e600c33f479d9ca2a4d5134/4a36acaf2edda3cc9ebb1c8004e93901213f9237.jpg"
					alt="" style="width: 220px; height: 165px;">
				</a>
			</div>
			斯加的耳朵与头部相比明显小一些，而且两耳间距比较大，哈士奇完全相反；整体观看，它们面部的表情也不同，阿拉斯加温和，充满情感，哈士奇友善，调皮，充满好奇。
		</div>
		<div class="para" label-module="para">阿拉斯加不能接受蓝色眼睛，只可以是褐色的。哈士奇不仅允许蓝色眼睛，而且，即便是两只眼睛分别为褐色和蓝色，也不算失格。</div>
		<div class="para" label-module="para">
			想想看，这是不是跟它们的表情有些许关联？蓝色眼睛多少显得有点轻飘飘的，如果是一褐一蓝，就多少有点滑稽了，这种气质，怎么也不像是一只东亚“狼”应该有的样子。<sup
				class="sup--normal" data-sup="4"> [4]</sup><a class="sup-anchor"
				name="ref_[4]_28807">&nbsp;</a>
		</div>
		<div class="para" label-module="para">
			<i><b>“狼”尾巴泄露了秘密<sup class="sup--normal" data-sup="4">
						[4]</sup><a class="sup-anchor" name="ref_[4]_28807">&nbsp;</a>
			</b></i>
		</div>
		<div class="para" label-module="para">
			说句心里话，就尾巴而论，<a target="_blank"
				href="/item/%E5%93%88%E5%A3%AB%E5%A5%87">哈士奇</a>更像一只踟躇在原野里的狼。一头为了生计奔波的野生狼，很少无端地久久高举着尾巴。除了兴奋或奔跑时，哈士奇的尾巴很少高于背部，总是顺滑地指向地面。阿拉斯加的尾巴在平静状态下就可以卷曲到背上，这是和血统有关的，毕竟阿拉斯加没有北极狼血统嘛！但它一定和这种狗的原始功用及生存状态相关联。
		</div>
		<div class="para" label-module="para">这里有非常有趣的描述，阿拉斯加的尾巴像一根招展的大羽毛（a
			waving plume），哈士奇的尾巴像一把圆头刷子（a round
			brush）。从这样的描述里，也许可以品出两条尾巴的不同味道。另外，在哈士奇的标准里，尾巴被作为一个章节单独出来，可见，在这只“狼”的评判中，尾巴相对更加重要。</div>
		<div class="para" label-module="para">
			<i><b>购买哈士奇的常见错误</b></i>
		</div>
		<div class="para" label-module="para">1、火蓝三角眼才是纯种，错。一窝如果是6只狗，出现火蓝三角眼的概率大概是4只，还有一只鸳鸯眼，一只黑眼或褐色眼，狗贩子炒作三火无非是要多卖钱。</div>
		<div class="para" label-module="para">2、狗要买2个月的才好，错。这个时候是危险最大的，小狗死亡率最高的时候，当然也是最便宜的时候，40-60天尤其容易出细小和狗瘟。</div>
		<div class="para" label-module="para">3、打样犬：店里的小狗就是门面上打样犬生的，错。公狗不用看，母狗看看乳房是不是涨大，不涨的就说明这个狗起码在半年内没有生过。</div>
		<div class="para" label-module="para">4、毛色：黑白色要纯，不能有杂毛，哈士奇是双层体毛，外面一层长且硬，里面的软且短，多为白色和淡黄色，国际AKC标准接受任何毛色的哈士奇参加比赛。</div>
		<div class="para" label-module="para">5、养犬是什么样的，最好能到犬舍去看，切忌到狗贩子处买狗。</div>
		<div class="anchor-list">
			<a name="8_2" class="lemma-anchor para-title"></a> <a
				name="sub28807_8_2" class="lemma-anchor "></a> <a name="挑选方法"
				class="lemma-anchor "></a> <a name="8-2" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-3" label-module="para-title">
			<h3 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>挑选方法
			</h3>
		</div>
		<div class="para" label-module="para">1、双耳双眼。要注意小狗是否双耳灵活，耳道清洁而无异味，耳朵则以粉红色为健康；眼睛要干净，无任何异物或排泄物。</div>
		<div class="para" label-module="para">2、足垫。有柔软、不干裂的足垫，才是一条健康小狗所必备的。</div>
		<div class="para" label-module="para">3、皮肤。要柔软而有弹性，不能硬结、肥厚，要注意皮肤是否有虱子或螨虫等寄生虫。看小狗是否有皮肤病很简单，重点观察它是否连续多次挠抓一个地方，这个部位如有红斑，则为有问题。</div>
		<div class="para" label-module="para">4、小狗尾部下方。如果这里有一些黄色的印子，就说明小狗有过腹泻或下痢的迹象，不宜购买。</div>
		<div class="para" label-module="para">
			5、在性格上，如果是想购买小狗，千万不要选取太文静的，因为小狗天性活泼，过分文静肯定有问题。
			<div class="lemma-picture text-pic layout-right"
				style="width: 220px; float: right;">
				<a class="image-link" nslog-type="9317"
					href="/pic/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A%E9%9B%AA%E6%A9%87%E7%8A%AC/540855/0/a1ec08fa513d2697985550cb51fbb2fb4216d8a6?fr=lemma&amp;ct=single"
					target="_blank" title="" style="width: 220px; height: 165px;">
					<img class="lazy-img"
					src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAMAAAAoyzS7AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAAZQTFRF9fX1AAAA0VQI3QAAAAxJREFUeNpiYAAIMAAAAgABT21Z4QAAAABJRU5ErkJggg=="
					data-src="https://gss1.bdstatic.com/9vo3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=0e4773b18e82b90139adc431438ca97e/a1ec08fa513d2697985550cb51fbb2fb4216d8a6.jpg"
					alt="" style="width: 220px; height: 165px;">
				</a>
			</div>
		</div>
		<div class="anchor-list">
			<a name="9" class="lemma-anchor para-title"></a> <a name="sub28807_9"
				class="lemma-anchor "></a> <a name="美容方法" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-2" label-module="para-title">
			<h2 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>美容方法
			</h2>
			<a class="edit-icon j-edit-link" data-edit-dl="9" href="javascript:;"
				style="display: block;"><em
				class="cmn-icon wiki-lemma-icons wiki-lemma-icons_edit-lemma"></em>编辑</a>
		</div>
		<div class="anchor-list">
			<a name="9_1" class="lemma-anchor para-title"></a> <a
				name="sub28807_9_1" class="lemma-anchor "></a> <a name="美容"
				class="lemma-anchor "></a> <a name="9-1" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-3" label-module="para-title">
			<h3 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>美容
			</h3>
		</div>
		<div class="para" label-module="para">西伯利亚雪橇犬一年换两次毛，主要在春秋两季的时候，在其他时间里掉毛的情况并不严重。在换季的日子里替它每天梳理2～3次，把它将快要脱落的毛发一起梳掉，免得弄得到处都是。夏天每隔10～14天左右洗一次澡；冬天可以隔3～4星期洗1次澡，因为有丰厚的毛，所以在使用浴液时也要选用质量较好的，冲完后也要过1次护发素。</div>
		<div class="anchor-list">
			<a name="9_2" class="lemma-anchor para-title"></a> <a
				name="sub28807_9_2" class="lemma-anchor "></a> <a name="挑选沐浴露"
				class="lemma-anchor "></a> <a name="9-2" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-3" label-module="para-title">
			<h3 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>挑选沐浴露
			</h3>
		</div>
		<div class="para" label-module="para">主人可以根据自身的经济状况、哈士奇自身的毛发、皮肤特质挑选经济实惠、适合使用的沐浴露。</div>
		<div class="anchor-list">
			<a name="9_3" class="lemma-anchor para-title"></a> <a
				name="sub28807_9_3" class="lemma-anchor "></a> <a name="皮肤构造"
				class="lemma-anchor "></a> <a name="9-3" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-3" label-module="para-title">
			<h3 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>皮肤构造
			</h3>
		</div>
		<div class="para" label-module="para">别看哈士奇有厚厚的毛发作保护，但是皮肤结构却是非常脆弱的。哈士奇的皮肤一般只有3~5层。所以选择性质温和，无刺激性的专用宠物香波显然是最合适。</div>
		<div class="anchor-list">
			<a name="9_4" class="lemma-anchor para-title"></a> <a
				name="sub28807_9_4" class="lemma-anchor "></a> <a name="皮肤酸碱度"
				class="lemma-anchor "></a> <a name="9-4" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-3" label-module="para-title">
			<h3 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>皮肤酸碱度
			</h3>
		</div>
		<div class="para" label-module="para">为哈士奇挑选沐浴露时要选择PH值适中的产品。因为哈士奇的皮肤是弱碱性的(pH值大约为7.5)，若遇到同样是碱性的沐浴露，会使皮肤表面的油脂失衡，造成皮肤干燥，产生瘙痒、过敏、皮屑等一系列问题。晚秋、初冬尤为干燥，应该考虑较为滋润、弱酸性的沐浴露为好。</div>
		<div class="anchor-list">
			<a name="9_5" class="lemma-anchor para-title"></a> <a
				name="sub28807_9_5" class="lemma-anchor "></a> <a name="毛发特质"
				class="lemma-anchor "></a> <a name="9-5" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-3" label-module="para-title">
			<h3 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>毛发特质
			</h3>
		</div>
		<div class="para" label-module="para">不同大小的哈士奇，毛发质地也不一样，根据哈士奇毛发的特质，选择无刺激，可以柔顺哈士奇毛发的沐浴露产品。纯天然配方的沐浴产品，不仅能有效解决哈士奇毛发色素减退、干枯易断裂、光泽度差等问题，而且较为环保。</div>
		<div class="anchor-list">
			<a name="10" class="lemma-anchor para-title"></a> <a
				name="sub28807_10" class="lemma-anchor "></a> <a name="注意事项"
				class="lemma-anchor "></a>
		</div>
		<div class="para-title level-2" label-module="para-title">
			<h2 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>注意事项
			</h2>
			<a class="edit-icon j-edit-link" data-edit-dl="10"
				href="javascript:;" style="display: block;"><em
				class="cmn-icon wiki-lemma-icons wiki-lemma-icons_edit-lemma"></em>编辑</a>
		</div>
		<div class="anchor-list">
			<a name="10_1" class="lemma-anchor para-title"></a> <a
				name="sub28807_10_1" class="lemma-anchor "></a> <a name="训练注意"
				class="lemma-anchor "></a> <a name="10-1" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-3" label-module="para-title">
			<h3 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>训练注意
			</h3>
		</div>
		<div class="para" label-module="para">
			西伯利亚雪橇犬与其他猎犬不一样，每日适当的运动即可，不需要很大的运动量。雪橇犬是一种十分干净的犬种，当它们大概6个月大时就不喜欢在家里大小便，所以身为一个负责任的主人，你应该每天早上和黄昏带您的爱犬外出大小便，也可以利用这个机会给予它适度的运动。每次15分钟的步行是最基本的。它的热情是其他犬无法相伴的，只是叫的时候很少，只会在一些特殊情况下，发出狼嚎似的声音。虽然晚上听起来有点毛骨悚然，但是这与它狼般的外貌很相配，可能很多人还因此觉得这是它的本性。多数情况下，它几乎不发出声音，非常安静。<a
				target="_blank" href="/item/%E9%9B%AA%E6%A9%87%E7%8A%AC">雪橇犬</a>的个性很温顺，几乎不会出现主动攻击人类的现象，温顺友好的性格特点能让你和它在周围的环境中有一定的优势，比较容易被接受。<sup
				class="sup--normal" data-sup="3"> [3]</sup><a class="sup-anchor"
				name="ref_[3]_28807">&nbsp;</a>
			<div class="lemma-picture text-pic layout-right"
				style="width: 220px; float: right;">
				<a class="image-link" nslog-type="9317"
					href="/pic/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A%E9%9B%AA%E6%A9%87%E7%8A%AC/540855/0/d1160924ab18972bb92b5a5ce2cd7b899e510a16?fr=lemma&amp;ct=single"
					target="_blank" title="" style="width: 220px; height: 165px;">
					<img class="lazy-img"
					src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAMAAAAoyzS7AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAAZQTFRF9fX1AAAA0VQI3QAAAAxJREFUeNpiYAAIMAAAAgABT21Z4QAAAABJRU5ErkJggg=="
					data-src="https://gss1.bdstatic.com/-vo3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=dc195c5c868ba61edbeecf2d713597cc/d1160924ab18972bb92b5a5ce2cd7b899e510a16.jpg"
					alt="" style="width: 220px; height: 165px;">
				</a>
			</div>
		</div>
		<div class="anchor-list">
			<a name="10_2" class="lemma-anchor para-title"></a> <a
				name="sub28807_10_2" class="lemma-anchor "></a> <a name="疾病防治"
				class="lemma-anchor "></a> <a name="10-2" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-3" label-module="para-title">
			<h3 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>疾病防治
			</h3>
		</div>
		<div class="para" label-module="para">
			●<b>过敏性皮炎</b>
		</div>
		<div class="para" label-module="para">
			<a class="lemma-album layout-right nslog:10000206" title="哈士奇犬图册"
				href="/pic/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A%E9%9B%AA%E6%A9%87%E7%8A%AC/540855/631007/b6045da909e5909e1f17a203?fr=lemma&amp;ct=cover"
				target="_blank" style="width: 221px;" nslog-type="10000206">
				<div class="album-wrap" style="width: 219px; height: 180px;">
					<img class="picture" alt="哈士奇犬图册"
						src="https://gss3.bdstatic.com/-Po3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike60%2C5%2C5%2C60%2C20/sign=06d35e8b3901213fdb3e468e358e5db4/0e2442a7d933c8955a80f229d11373f0830200e1.jpg"
						style="width: 219px; height: 180px;">
				</div>
				<div class="description">
					哈士奇犬图册<span class="number">(2张)</span>
				</div>
				<div class="albumBg">
					<div class="albumBgFir" style="width: 213px;"></div>
					<div class="albumBgSec" style="width: 207px;"></div>
				</div>
			</a> 【临床症状】过敏性皮炎是由<a target="_blank"
				href="/item/%E5%85%8D%E7%96%AB%E7%90%83%E8%9B%8B%E7%99%BDE">免疫球蛋白E</a>参与的皮肤过敏反应，也叫特异性皮炎。病因有内源性和外源性两个方面的因素。内源性因素有遗传性、激素异常、过敏性因素。外源性因素有季节性和非季节性的环境因素，如吸入花粉、<a
				target="_blank" href="/item/%E5%B0%98%E5%9F%83">尘埃</a>、羊毛等，食入马肉、火腿、牛乳等食品；此外注射药物、蚊虫叮咬、内外<a
				target="_blank" href="/item/%E5%AF%84%E7%94%9F%E8%99%AB">寄生虫</a>、病原体感染，以及理化因素等也可引起外源性过敏。
		</div>
		<div class="para" label-module="para">
			本病1～3岁犬易发。初发部位为眼周、趾间、腋下、腹股沟部、阴部，<a target="_blank"
				href="/item/%E8%B7%B3%E8%9A%A4">跳蚤</a>叮咬的过敏性皮炎易发生于腰背部。病犬主要表现为剧烈瘙痒、红斑、肿胀，有的出现丘疹、鳞屑、脱毛。病程长的可出现色素沉着、皮肤增厚、形成苔藓、<a
				target="_blank" href="/item/%E7%9A%B1%E8%A3%82">皱裂</a>。慢性的患病犬瘙痒较轻或消失，但有的病程长达一年以上。通常，冬季初次发生的，可自然痊愈。季节性复发时，患部范围扩大，常并发<a
				target="_blank" href="/item/%E5%A4%96%E8%80%B3%E7%82%8E">外耳炎</a>、结膜炎、鼻炎，用类固醇治愈后可复发。
		</div>
		<div class="anchor-list">
			<a name="10_3" class="lemma-anchor para-title"></a> <a
				name="sub28807_10_3" class="lemma-anchor "></a> <a name="养殖注意"
				class="lemma-anchor "></a> <a name="10-3" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-3" label-module="para-title">
			<h3 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>养殖注意
			</h3>
		</div>
		<div class="para" label-module="para">
			随着养犬数量的增多，犬伤人、犬扰民、破坏环境卫生等问题。为了将因养犬而给社会和他人造成的危害降到最低程度，希望通过地方性法规对养犬行为进行规范，以达到文明养犬，保障公民健康和人身安全，维护社会公共秩序和市容环境卫生的目的。各地依据《<a
				target="_blank"
				href="/item/%E4%B8%AD%E5%8D%8E%E4%BA%BA%E6%B0%91%E5%85%B1%E5%92%8C%E5%9B%BD%E6%B0%91%E6%B3%95%E9%80%9A%E5%88%99">中华人民共和国民法通则</a>》、《<a
				target="_blank"
				href="/item/%E4%B8%AD%E5%8D%8E%E4%BA%BA%E6%B0%91%E5%85%B1%E5%92%8C%E5%9B%BD%E8%A1%8C%E6%94%BF%E5%A4%84%E7%BD%9A%E6%B3%95">中华人民共和国行政处罚法</a>》、《<a
				target="_blank"
				href="/item/%E4%B8%AD%E5%8D%8E%E4%BA%BA%E6%B0%91%E5%85%B1%E5%92%8C%E5%9B%BD%E6%B2%BB%E5%AE%89%E7%AE%A1%E7%90%86%E5%A4%84%E7%BD%9A%E6%B3%95">中华人民共和国治安管理处罚法</a>》、《<a
				target="_blank"
				href="/item/%E4%B8%AD%E5%8D%8E%E4%BA%BA%E6%B0%91%E5%85%B1%E5%92%8C%E5%9B%BD%E5%8A%A8%E7%89%A9%E9%98%B2%E7%96%AB%E6%B3%95">中华人民共和国动物防疫法</a>》等法律、法规，参考外地立法，并结合养犬管理工作的实际情况拟定《养狗条例》。<sup
				class="sup--normal" data-sup="2"> [2]</sup><a class="sup-anchor"
				name="ref_[2]_28807">&nbsp;</a>
		</div>
		<div class="anchor-list">
			<a name="10_4" class="lemma-anchor para-title"></a> <a
				name="sub28807_10_4" class="lemma-anchor "></a> <a name="常见问题"
				class="lemma-anchor "></a> <a name="10-4" class="lemma-anchor "></a>
		</div>
		<div class="para-title level-3" label-module="para-title">
			<h3 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>常见问题
			</h3>
		</div>
		<div class="para" label-module="para">
			<b>如何喂养哈士奇？</b>
		</div>
		<div class="para" label-module="para">推荐全价幼犬粮。有的主人喜欢自己给狗做食物，喂些鸡肝什么的就以为对狗好，其实不对的。这些食物对狗害处很大，而且成本完全不比全价狗粮低。</div>
		<div class="para" label-module="para">
			狗粮营养全面，不易<a target="_blank" href="/item/%E8%9B%80%E9%BD%BF">蛀齿</a>或产生<a
				target="_blank" href="/item/%E7%89%99%E5%9E%A2">牙垢</a>，此外还避免宠物口臭，均衡的营养是宠物健康的基础。
		</div>
		<div class="para" label-module="para">
			<b>幼犬喂养定时定量？</b>
		</div>
		<div class="para" label-module="para">小狗少量多餐，50天应该是1天4顿
			而且每次应该隔6个小时。小狗的成长发育期所需的热量是成年犬的2倍。断奶后至第3个月左右，喂食时间应定为早晨7点、中午12点、傍晚5点、夜里10点，每天4次。出生第5个月至第8个月，可在早晨、中午、傍晚分3次喂食，这段时间内给幼犬的喂食量，大约相当于成犬的三分之一至一半。</div>
		<div class="para" label-module="para">
			<b>饮食方面有哪些注意？</b>
		</div>
		<div class="para" label-module="para">不能给它吃鸡、鸭骨头，可以吃点猪的棒骨！哈士奇的肠胃不太好，稍有喂不好的情况，就能导致拉稀！所以平时可以给点酸奶喝，记住，是酸奶哦，牛奶的话狗狗会吐的。自来水也是不可以的哦。偶尔可以给他点咬骨，既能磨牙又能吃下肚的，还有要注意不能给小哈吃剩菜剩饭。</div>
		<div class="para" label-module="para">
			<b>狗狗不吃狗粮怎么办呢？</b>
		</div>
		<div class="para" label-module="para">
			把它的零食全部没收。等它饿了就把狗粮放他跟前。他要再不吃，就饿它一天。千万不要心疼哦。为了他的健康。<a target="_blank"
				href="/item/%E5%93%88%E5%A3%AB%E5%A5%87">哈士奇</a>运动量大，没过多久就会乖乖投降了。
		</div>
		<div class="para" label-module="para">
			<b>狗吃不惯硬质专用狗粮怎么办？</b>
		</div>
		<div class="para" label-module="para">绝大部分幼犬长到2个月大左右，就可以吃硬质专用狗粮了。如果幼犬一时还吃不惯，可以用开水先泡软后，再喂它们。</div>
		<div class="para" label-module="para">
			<b>怎样判断喂食量是否合适？</b>
		</div>
		<div class="para" label-module="para">每只狗的食量大小并不完全一样，刚开始可以喂得稍多一些，再视吃剩的食物多少判断喂食量是否过多。可以随幼犬长大的过程慢慢增加喂食量。喂食量应该根据幼犬的进食状况，大约3个星期调整1-2次。</div>
		<div class="para" label-module="para">
			<b>狗狗的必备的东西</b>
		</div>
		<div class="para" label-module="para">钙片和营养膏。这是无数小哈的伺主，普遍首肯的宝贝。前者帮助爱犬建立完好的骨骼结构，长大了不容易得外伤，后者帮助小哈调理肠胃，增进食欲。</div>
		<div class="para" label-module="para">
			<b>哈士奇如何减肥</b>
		</div>
		<div class="para" label-module="para">如果家养宠物犬过于肥胖，不仅会失去美感.也会让犬变懒、不能尽忠职守，因此应注意适时减肥。</div>
		<div class="para" label-module="para">一般犬体重超过了该犬品种标准体重10%以上，即为过于肥胖。其原因多是肠胃强壮，吃了过多的淀肠类食物、脂肪。</div>
		<div class="para" label-module="para">减肥的方法主要是：</div>
		<div class="para" label-module="para">(1)减少淀粉和脂类食物，狗粮中应减少淀粉与脂类食物含量，增加鱼汤、内汤、蔬菜类食物。</div>
		<div class="para" label-module="para">(2)杜绝零食玩赏犬向主人讨吃食物，因此，应停止甜糖果类零食。</div>
		<div class="para" label-module="para">(3)防止便秘，犬食中可适当增加一些含纤维的蔬菜和含膘酸较多的糖类食物，使肠通便。</div>
		<div class="para" label-module="para">
			在减肥过程中，应逐渐过渡，热量不可突然大幅度减少，而只减少一顿喂食。<sup class="sup--normal"
				data-sup="5"> [5]</sup><a class="sup-anchor" name="ref_[5]_28807">&nbsp;</a>
		</div>
		<div class="para" label-module="para">
			<b>怎么控制哈士奇的食量</b>
		</div>
		<div class="para" label-module="para">狗狗的食量是个大问题，吃多了，容易发胖，吃少了，容易营养不良。所以控制哈士奇的食量很重要，小编为您具体介绍不同状态的狗狗的食量问题。</div>
		<div class="para" label-module="para">1、幼年的狗狗：在生长期的幼犬吃东西是十分疯狂的，如果不适当的控制喂给量，狗狗很容易撑着，所以这个时候控制狗狗的食量是必须的。不过还要说一句，如果盲目的少给会引起狗狗的营养不良，最好的办法是参考狗狗粮食袋上针对不同体重不同生长期的参考喂食量，通常大品牌的狗粮袋上都会有。</div>
		<div class="para" label-module="para">2、年老的狗狗：年老的狗狗，一来消化能力差了，二来许多老年疾病都会因为食物中含有太多的蛋白质，而引起病情的恶化。不过还好的就是，狗狗进入老年，食欲也会下降，所以对于年老的狗狗，控制食量似乎倒不是特别难。</div>
		<div class="para" label-module="para">3、肥胖的狗狗：有些狗狗的品种天生就容易发胖，比如巴哥、斗牛、京吧等，所以它们要比哈士奇重，在喂养的时候更注意一下它们的饭量。</div>
		<div class="para" label-module="para">4、绝育的哈士奇狗：做了绝育的狗狗很容易发胖，而且食欲也很好，为了减少因为肥胖引起的其它疾病，我们要在狗狗做了绝育手术后，伤口恢复完开始，就给狗狗限制饭量。</div>
		<div class="para" label-module="para">
			控制狗狗吃东西，有的时候真是挺难的，通常我们都没法忍受狗狗期待的眼神，不过把狗狗喂馋了，倒是有一个好处，就是你要是想让它少吃，就给它纯狗粮就成了。<sup
				class="sup--normal" data-sup="6"> [6]</sup><a class="sup-anchor"
				name="ref_[6]_28807">&nbsp;</a>
		</div>
		<div class="para" label-module="para">
			<b>哈士奇与阿拉斯加的区别</b>
		</div>
		<div class="para" label-module="para">
			眼睛：哈士奇——棕色、蓝色；阿拉斯加——只有棕色。<br> 毛色：哈士奇——灰白，黑白，咖啡白；阿拉斯加——黑白和红白和灰白色。
		</div>
		<div class="para" label-module="para">毛质：哈士奇——被毛稍短，毛质较硬；阿拉斯加——属长毛，柔软。</div>
		<div class="para" label-module="para">
			耳朵：哈士奇——两耳间距较窄，耳尖弧度较小，似三角形；阿拉斯加——耳朵之间距离较宽``耳尖弧度大，成半圆形。<sup
				class="sup--normal" data-sup="9"> [9]</sup><a class="sup-anchor"
				name="ref_[9]_28807">&nbsp;</a>
		</div>
		<div class="para" label-module="para">额头：哈士奇——额头和眉间颜色分布一般为三把火，桃脸；阿拉斯加——额头眉间形状一般是桃脸和一把火，两把火。</div>
		<div class="para" label-module="para">尾巴：哈士奇——放松状态时，尾巴自然下垂，较接近狼。兴奋或奔跑时，尾巴上摆，但尾尖始终成水平状态；阿拉斯加——尾根部粗壮，毛发旺盛，始终卷曲，尾尖弯曲接近尾根。</div>
		<div class="para" label-module="para">体型：哈士奇——中型；阿拉斯加——大型。</div>
		<div class="para" label-module="para">
			智商：哈士奇比阿拉斯加聪明许多。在世界犬类服从性和智商排名中，哈士奇排名第45位，阿拉斯加第50位。<sup
				class="sup--normal" data-sup="7"> [7]</sup><a class="sup-anchor"
				name="ref_[7]_28807">&nbsp;</a>
		</div>
		<div class="para" label-module="para">
			<div class="lemma-picture text-pic layout-right"
				style="width: 220px; float: right;">
				<a class="image-link" nslog-type="9317"
					href="/pic/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A%E9%9B%AA%E6%A9%87%E7%8A%AC/540855/0/2fdda3cc7cd98d10e2feab91243fb80e7bec906c?fr=lemma&amp;ct=single"
					target="_blank" title="" style="width: 220px; height: 165px;">
					<img class="lazy-img"
					src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAMAAAAoyzS7AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAAZQTFRF9fX1AAAA0VQI3QAAAAxJREFUeNpiYAAIMAAAAgABT21Z4QAAAABJRU5ErkJggg=="
					data-src="https://gss3.bdstatic.com/-Po3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=88779ea38244ebf86971633de9f8d736/2fdda3cc7cd98d10e2feab91243fb80e7bec906c.jpg"
					alt="" style="width: 220px; height: 165px;">
				</a>
			</div>
		</div>
		<div class="anchor-list">
			<a name="11" class="lemma-anchor para-title"></a> <a
				name="sub28807_11" class="lemma-anchor "></a> <a name="训练小贴士"
				class="lemma-anchor "></a>
		</div>
		<div class="para-title level-2" label-module="para-title">
			<h2 class="title-text">
				<span class="title-prefix">西伯利亚雪橇犬</span>训练小贴士
			</h2>
			<a class="edit-icon j-edit-link" data-edit-dl="11"
				href="javascript:;" style="display: block;"><em
				class="cmn-icon wiki-lemma-icons wiki-lemma-icons_edit-lemma"></em>编辑</a>
		</div>
		<div class="para" label-module="para">
			前面介绍了训练哈士奇<sup class="normal">[13]</sup>随行的步骤，但是在训练时个性开朗的哈士奇总会出现不同的反应，让主人来个<a
				target="_blank" href="/item/%E6%8E%AA%E6%89%8B%E4%B8%8D%E5%8F%8A">措手不及</a>。想要好好的训练哈士奇随行，不让自己在训练半途而狼狈的跑去追狗，那么小编就来告诉你，哈士奇训练的三个小贴士。
		</div>
		<div class="para" label-module="para">一、食物诱导，适当鼓励。</div>
		<div class="para" label-module="para">
			在哈士奇随行训练中，要注意用食物、物品等诱导哈士奇与狗主并排前进。只要哈士奇依令保持在正确位置时，就给予奖励。如此反复训练，也能使哈士奇对“靠”的口令、手势形成<a
				target="_blank" href="/item/%E6%9D%A1%E4%BB%B6%E5%8F%8D%E5%B0%84">条件反射</a>。
		</div>
		<div class="para" label-module="para">二、避免误踩哈士奇。</div>
		<div class="para" label-module="para">
			训练刚开始时，人、哈士奇的动作互不协调。训练哈士奇者要注意不要踩着哈士奇，以免哈士奇产生<a target="_blank"
				href="/item/%E6%81%90%E6%83%A7%E6%84%9F">恐惧感</a>。
		</div>
		<div class="para" label-module="para">三、牵引带的使用要灵活，要松紧适度。</div>
		<div class="para" label-module="para">
			在纠正哈士奇的位置时，牵引带只是瞬间被拉紧，哈士奇一回到正确位置，应立即放松牵引带，以免哈士奇感到不舒服。如哈士奇超前、偏离，用急扯牵引带的方法不能纠正的话，可采用转弯的方法纠正。<sup
				class="sup--normal" data-sup="8"> [8]</sup><a class="sup-anchor"
				name="ref_[8]_28807">&nbsp;</a> <a
				class="lemma-album layout-right nslog:10000206" title="西伯利亚雪橇犬"
				href="/pic/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A%E9%9B%AA%E6%A9%87%E7%8A%AC/540855/17026398/5ab5c9ea15ce36d33097c6a63ef33a87e850b191?fr=lemma&amp;ct=cover"
				target="_blank" style="width: 222px;" nslog-type="10000206">
				<div class="album-wrap" style="width: 220px; height: 165px;">
					<img class="picture" alt="西伯利亚雪橇犬"
						src="https://gss1.bdstatic.com/-vo3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=b2826179adec8a13101a50e2c7029157/5ab5c9ea15ce36d33097c6a63ef33a87e850b191.jpg"
						style="width: 220px; height: 165px;">
				</div>
				<div class="description">
					西伯利亚雪橇犬<span class="number">(3张)</span>
				</div>
				<div class="albumBg">
					<div class="albumBgFir" style="width: 214px;"></div>
					<div class="albumBgSec" style="width: 208px;"></div>
				</div>
			</a>
		</div>
		<div class="anchor-list">
			<a name="a" class="lemma-anchor a"></a>
		</div>
		<div class="album-list">
			<div class="header">
				<span class="title">词条图册</span> <a class="more-link"
					href="/pic/%E8%A5%BF%E4%BC%AF%E5%88%A9%E4%BA%9A%E9%9B%AA%E6%A9%87%E7%8A%AC/540855?fr=lemma"
					target="_blank" nslog-type="10000204">更多图册<em></em></a>
			</div>
			<div class="scroller">
				<div class="list"></div>
			</div>
			<div class="footer"></div>
		</div>
		<div class="tashuo-bottom" id="tashuo_bottom">
			<div class="tashuo-bottom-title-essence">
				<img
					src="https://bkssl.bdimg.com/static/wiki-lemma/widget/lemma_content/mainContent/tashuo/img/ta-logo-blue_6da9967.png"
					alt=""> <span>解读词条背后的知识</span>
			</div>
			<div class="tashuo-multiple">
				<div class="tashuo-wrapper">
					<div class="tashuo-view">
						<ul class="tashuo-slider maqueeCanvas" style="width: 1968px">
							<li class="slider-item">
								<ul class="tashuo-list">
									<li class="tashuo-item J-item"
										data-tashuoid="e3ce1325331674e731416fe8">
										<div class="tashuo-author">
											<a
												href="/tashuo/authorcenter?authorId=ad8965055d41f6c20cc8f426"
												target="_blank">
												<div class="ta-author-area">
													<span><img
														src="https://imgsa.baidu.com/baike/pic/item/342ac65c103853432d4b36cb9b13b07ecb808850.jpg"></span>
												</div>
												<div class="ta-author-slogan-area">
													<strong>有宠</strong> <span>有宠网</span>
												</div> <i></i>
											</a>
										</div> <a
										href="/tashuo/browse/content?id=e3ce1325331674e731416fe8&amp;lemmaId=&amp;fromLemmaModule=pcBottom"
										class="cover" target="_blank"> <img
											src="https://imgsa.baidu.com/baike/pic/item/09fa513d269759ee575895e7bbfb43166d22df96.jpg"
											data-width="570" data-height="452" class="cover-img"
											style="width: 100%; margin-top: -12.821052631578944px">
											<div class="overlay">
												<img
													src="https://bkssl.bdimg.com/static/wiki-lemma/widget/lemma_content/mainContent/tashuo/img/overlay_1ccc6d9.png">
											</div>
											<p class="title">雪橇三傻真的傻吗？</p></a>
										<p class="abstract">
											<a
												href="/tashuo/browse/content?id=e3ce1325331674e731416fe8&amp;lemmaId=&amp;fromLemmaModule=pcBottom"
												target="_blank">
												不知道从什么时候开始，雪橇三傻成了智商令人堪忧的代表，但是三傻真的傻吗？是实至名归还是有冤无处诉？今天就让有宠君带你看看，雪橇三傻到底傻不傻。哈士奇雪橇三傻被黑的最惨的应该就是哈士奇了。哈士奇原名叫西伯利亚雪橇犬，它们是英雄的后裔。早在1925年，阿拉斯加地区流行白喉，急需...</a>
										</p>
										<div class="tashuo-operator">
											<span class="tashuo-publish-date">2016-11-28</span><span
												class="tashuo-like J-like " data-isvote="0"><i></i><strong
												class="J-number">1545</strong></span>
										</div>
									</li>
									<li class="tashuo-item J-item"
										data-tashuoid="e8676af1bf43bab8ab1c6262">
										<div class="tashuo-author">
											<a
												href="/tashuo/authorcenter?authorId=ad8965055d41f6c20cc8f426"
												target="_blank">
												<div class="ta-author-area">
													<span><img
														src="https://imgsa.baidu.com/baike/pic/item/342ac65c103853432d4b36cb9b13b07ecb808850.jpg"></span>
												</div>
												<div class="ta-author-slogan-area">
													<strong>有宠</strong> <span>有宠网</span>
												</div> <i></i>
											</a>
										</div> <a
										href="/tashuo/browse/content?id=e8676af1bf43bab8ab1c6262&amp;lemmaId=&amp;fromLemmaModule=pcBottom"
										class="cover" target="_blank"> <img
											src="https://imgsa.baidu.com/baike/pic/item/aa18972bd40735faeb14b7f897510fb30e24088e.jpg"
											data-width="570" data-height="373" class="cover-img"
											style="width: 100%; margin-top: -5.336842105263159px">
											<div class="overlay">
												<img
													src="https://bkssl.bdimg.com/static/wiki-lemma/widget/lemma_content/mainContent/tashuo/img/overlay_1ccc6d9.png">
											</div>
											<p class="title">击破5大谣言！还哈士奇一个清白</p></a>
										<p class="abstract">
											<a
												href="/tashuo/browse/content?id=e8676af1bf43bab8ab1c6262&amp;lemmaId=&amp;fromLemmaModule=pcBottom"
												target="_blank">
												哈士奇，一个傻萌傻萌但又极负争议的一个物种，有人说哈士奇像狼一样的凶悍且不可靠近，还有人会说哈士奇是犬界最傻的狗狗，因为体型大，又会给人安全感。民间一直流传着关于哈士奇的5大谣言，今天为大家一一击破。谣言1：哈士奇的祖先是狼因为外形的缘故，很多人觉得哈士奇的祖先是狼，然而实...</a>
										</p>
										<div class="tashuo-operator">
											<span class="tashuo-publish-date">2017-01-16</span><span
												class="tashuo-like J-like " data-isvote="0"><i></i><strong
												class="J-number">194</strong></span>
										</div>
									</li>
									<li class="tashuo-item J-item"
										data-tashuoid="0c64d05c8925304119d96e60">
										<div class="tashuo-author">
											<a
												href="/tashuo/authorcenter?authorId=69372428306f0d08a1384721"
												target="_blank">
												<div class="ta-author-area">
													<span><img
														src="https://imgsa.baidu.com/baike/pic/item/1c950a7b02087bf4bad00ac4f9d3572c11dfcfdb.jpg"></span>
												</div>
												<div class="ta-author-slogan-area">
													<strong>动物的影像声色</strong> <span>动物保护主义者</span>
												</div> <i></i>
											</a>
										</div> <a
										href="/tashuo/browse/content?id=0c64d05c8925304119d96e60&amp;lemmaId=&amp;fromLemmaModule=pcBottom"
										class="cover" target="_blank"> <img
											src="https://imgsa.baidu.com/baike/pic/item/267f9e2f0708283803c71bf2b399a9014d08f10a.jpg"
											data-width="1024" data-height="720" class="cover-img"
											style="width: 100%; margin-top: -7.96875px">
											<div class="overlay">
												<img
													src="https://bkssl.bdimg.com/static/wiki-lemma/widget/lemma_content/mainContent/tashuo/img/overlay_1ccc6d9.png">
											</div>
											<p class="title">哈士奇的祖先可一点都不二，还是西伯利亚顶级的食肉猛兽</p></a>
										<p class="abstract">
											<a
												href="/tashuo/browse/content?id=0c64d05c8925304119d96e60&amp;lemmaId=&amp;fromLemmaModule=pcBottom"
												target="_blank">
												作为当今世界知名度最高的犬种之一，哈士奇（西伯利亚雪橇犬）一直都以“二”“蠢”著称，故而业界又将其称为“二哈”。但哈士奇可不是自古以来就这么二的，事实上它们的祖先西伯利亚平原狼不止凶猛无比，而且也非常机警狡诈，算是西伯利亚平原及高加索地区最顶级的猎食者之一。作为灰狼家族的一...</a>
										</p>
										<div class="tashuo-operator">
											<span class="tashuo-publish-date">2018-01-04</span><span
												class="tashuo-like J-like " data-isvote="0"><i></i><strong
												class="J-number">114</strong></span>
										</div>
									</li>
									<li class="tashuo-item J-item"
										data-tashuoid="91d7722a173c0d4fb01e1f68">
										<div class="tashuo-author">
											<a
												href="/tashuo/authorcenter?authorId=ad8965055d41f6c20cc8f426"
												target="_blank">
												<div class="ta-author-area">
													<span><img
														src="https://imgsa.baidu.com/baike/pic/item/342ac65c103853432d4b36cb9b13b07ecb808850.jpg"></span>
												</div>
												<div class="ta-author-slogan-area">
													<strong>有宠</strong> <span>有宠网</span>
												</div> <i></i>
											</a>
										</div> <a
										href="/tashuo/browse/content?id=91d7722a173c0d4fb01e1f68&amp;lemmaId=&amp;fromLemmaModule=pcBottom"
										class="cover" target="_blank"> <img
											src="https://imgsa.baidu.com/baike/pic/item/810a19d8bc3eb135e9ad491baf1ea8d3fd1f442c.jpg"
											data-width="570" data-height="481" class="cover-img"
											style="width: 100%; margin-top: -15.568421052631578px">
											<div class="overlay">
												<img
													src="https://bkssl.bdimg.com/static/wiki-lemma/widget/lemma_content/mainContent/tashuo/img/overlay_1ccc6d9.png">
											</div>
											<p class="title">哈士奇掉毛太严重，主人应该怎么办？</p></a>
										<p class="abstract">
											<a
												href="/tashuo/browse/content?id=91d7722a173c0d4fb01e1f68&amp;lemmaId=&amp;fromLemmaModule=pcBottom"
												target="_blank">
												养只二哈虽然会为生活带来无限的乐趣，但是很多麻烦也随之而来。不仅每天回家像进了案发现场，无处不在的毛发也着实让人感到烦恼。按说二哈应该有个固定的换毛期，以此来适应天气，但是生活在家养环境中，夏天有空调，冬天有暖气，正常的换毛规律就被破坏了，可是是毛总是要换的，该什么时候换二...</a>
										</p>
										<div class="tashuo-operator">
											<span class="tashuo-publish-date">2017-02-08</span><span
												class="tashuo-like J-like " data-isvote="0"><i></i><strong
												class="J-number">39</strong></span>
										</div>
									</li>
								</ul>
							</li>
							<li class="slider-item">
								<ul class="tashuo-list">
									<li class="tashuo-item J-item"
										data-tashuoid="ec9f5e1cf168d7a4d5d74aed">
										<div class="tashuo-author">
											<a
												href="/tashuo/authorcenter?authorId=446bcbc9a55bb9eec244b225"
												target="_blank">
												<div class="ta-author-area">
													<span><img
														src="https://imgsa.baidu.com/baike/pic/item/1f178a82b9014a9083cdf416a1773912b21beeae.jpg"></span>
												</div>
												<div class="ta-author-slogan-area">
													<strong>影视工业网</strong> <span>影视制作门户网站</span>
												</div> <i></i>
											</a>
										</div> <a
										href="/tashuo/browse/content?id=ec9f5e1cf168d7a4d5d74aed&amp;lemmaId=&amp;fromLemmaModule=pcBottom"
										class="cover" target="_blank"> <img
											src="https://imgsa.baidu.com/baike/pic/item/b8014a90f603738d83c4ea10ba1bb051f819ec72.jpg"
											data-width="1280" data-height="960" class="cover-img"
											style="width: 100%; margin-top: -10.5px">
											<div class="overlay">
												<img
													src="https://bkssl.bdimg.com/static/wiki-lemma/widget/lemma_content/mainContent/tashuo/img/overlay_1ccc6d9.png">
											</div>
											<p class="title">如何把哈士奇拍成狼？</p></a>
										<p class="abstract">
											<a
												href="/tashuo/browse/content?id=ec9f5e1cf168d7a4d5d74aed&amp;lemmaId=&amp;fromLemmaModule=pcBottom"
												target="_blank">
												在很多纪录片学者看来，“真实”与“再现”这两个词本身就彼此矛盾、水火不容，然而当所有“真实”的人与事都已经消失，历史纪录片将依靠什么来填补那巨大、茫漠的时间空白，重新搭建起记忆的宫殿——尤其面对照片、遗迹、当事人都已不复存在的古代？
												难道我们唯一“正确”的手段只有用空镜来填...</a>
										</p>
										<div class="tashuo-operator">
											<span class="tashuo-publish-date">2017-03-18</span><span
												class="tashuo-like J-like " data-isvote="0"><i></i><strong
												class="J-number">26</strong></span>
										</div>
									</li>
								</ul>
							</li>
						</ul>
					</div>
					<div class="tashuo-bottom-pager">
						<div class="module-pager">
							<span><em class="index">1</em>/2</span><a href="javascript:;"
								class="pTag prev disabled"><em
								class="cmn-icon cmn-icons cmn-icons_arrow-l-2"></em></a><a
								href="javascript:;" class="pTag next"><em
								class="cmn-icon cmn-icons cmn-icons_arrow-r-2"></em></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<dl class="lemma-reference collapse nslog-area log-set-param"
			data-nslog-type="2" log-set-param="ext_reference">
			<dt class="reference-title">参考资料</dt>
			<dd class="reference-list-wrap">
				<ul class="reference-list">
					<li class="reference-item reference-item--type1 "
						id="reference-[1]-28807-wrap"><span class="index">1.</span> <a
						class="gotop anchor" name="refIndex_1_28807" id="refIndex_1_28807"
						title="向上跳转" href="#ref_[1]_28807">&nbsp;&nbsp;</a> <a
						rel="nofollow"
						href="/redirect/ca65ixEctc67y-Xnq_T2Wt7rrIzjjTzqk-6VWC7Ek9dJpv5vR1QrY7kCFLJ-fx7acS1jvNvoQZNlSW8"
						target="_blank" class="text">狗狗智商排名，哈士奇智商仅排名第45名<span
							class="linkout">&nbsp;</span></a> <span class="site">．二哈连萌</span><span>[引用日期2017-01-11]</span></li>
					<li class="reference-item reference-item--type1 "
						id="reference-[2]-28807-wrap"><span class="index">2.</span> <a
						class="gotop anchor" name="refIndex_2_28807" id="refIndex_2_28807"
						title="向上跳转" href="#ref_[2]_28807">&nbsp;&nbsp;</a> <a
						rel="nofollow"
						href="/redirect/7c95CVIj5Lr3QgTb74HJzslyTokERohWnuQcZGA9xwxxjwQt-4fLuJQhXrd315KE0Mkxs31rhzp1ucAByWPpUhyO58hRhaM1TZ_wybcW6VZGaYqBt_T8yPG4cX3qxb8"
						target="_blank" class="text">哈士奇究竟是怎样的“神犬”？智商真的是硬伤！<span
							class="linkout">&nbsp;</span></a> <span class="site">．汉网</span><span>[引用日期2016-11-15]</span></li>
					<li class="reference-item reference-item--type1 "
						id="reference-[3]-28807-wrap"><span class="index">3.</span> <a
						class="gotop anchor" name="refIndex_3_28807" id="refIndex_3_28807"
						title="向上跳转" href="#ref_[3]_28807">&nbsp;&nbsp;</a> <a
						rel="nofollow"
						href="/redirect/39aaZbke-Bc59SI0RDPUfaZO5ljcLfFnUdEW-cxNay_1aCA_jhLc0mkofWoFTB7cemutoBL4UamTqP_FOiDhgQX4cfIR1uI"
						target="_blank" class="text">傲立于冰天雪地的风之子<span class="linkout">&nbsp;</span></a>
						<span class="site">．成都宠物</span><span>[引用日期2015-02-03]</span></li>
					<li class="reference-item reference-item--type1 "
						id="reference-[4]-28807-wrap"><span class="index">4.</span> <a
						class="gotop anchor" name="refIndex_4_28807" id="refIndex_4_28807"
						title="向上跳转" href="#ref_[4]_28807">&nbsp;&nbsp;</a> <a
						rel="nofollow"
						href="/redirect/1c0eWBGGO6XG0FN1E2sVczYsAcAhZxHGD8aDZ6yhQ-ksu7AXe3_eL8CRtaJWKM_PHsMfHZ7dmXCPX61QnRADGu0uL0w"
						target="_blank" class="text">养哈士奇是怎样一种体验？<span class="linkout">&nbsp;</span></a>
						<span class="site">．知乎</span><span>[引用日期2016-11-15]</span></li>
					<li class="reference-item reference-item--type1 "
						id="reference-[5]-28807-wrap"><span class="index">5.</span> <a
						class="gotop anchor" name="refIndex_5_28807" id="refIndex_5_28807"
						title="向上跳转" href="#ref_[5]_28807">&nbsp;&nbsp;</a> <a
						rel="nofollow"
						href="/redirect/e44bVkfbzOnAUC07pUQo9vtQH8GT5x1C0Pc0a3Y4Fj86t1G13CtizlwxECXWLrCiGnYukJi4OGEu97r45zsy7tHFRqtWqgaJsg2m"
						target="_blank" class="text">山东一动物园狼舍现哈士奇 园方：在狼群中有地位<span
							class="linkout">&nbsp;</span></a> <span class="site">．搜狐</span><span>[引用日期2016-11-15]</span></li>
					<li class="reference-item reference-item--type1 "
						id="reference-[6]-28807-wrap"><span class="index">6.</span> <a
						class="gotop anchor" name="refIndex_6_28807" id="refIndex_6_28807"
						title="向上跳转" href="#ref_[6]_28807">&nbsp;&nbsp;</a> <a
						rel="nofollow"
						href="/redirect/b5e8eruhc9KUbYkoWthcjWhKyU6aqJ6q9BKbHG2kWksB2xl7dgMJuj7qbAWxK8gRh4C7CnBIglnOvLIDNgIENAwayzahuyJ8Ne2Lytg_nPS9Mg"
						target="_blank" class="text">网友曝山东一动物园狼舍现哈士奇疑似被咬伤，园方：钢筋刮伤<span
							class="linkout">&nbsp;</span></a> <span class="site">．网易新闻</span><span>[引用日期2016-11-15]</span></li>
					<li class="reference-item reference-item--type1 "
						id="reference-[7]-28807-wrap"><span class="index">7.</span> <a
						class="gotop anchor" name="refIndex_7_28807" id="refIndex_7_28807"
						title="向上跳转" href="#ref_[7]_28807">&nbsp;&nbsp;</a> <a
						rel="nofollow"
						href="/redirect/5273eMQGMPmLrzs4A4RY0KzELKoOTI85uN6lMuzzDFZJTi3GQTo-KmjbEGexFF-vbpOJQ9umAGcfKcK1Vy8ozAvfmQ"
						target="_blank" class="text">说出来你可能不信，这就是我迷上哈士奇的十个理由！<span
							class="linkout">&nbsp;</span></a> <span class="site">．搜狐</span><span>[引用日期2016-11-15]</span></li>
					<li class="reference-item reference-item--type1 "
						id="reference-[8]-28807-wrap"><span class="index">8.</span> <a
						class="gotop anchor" name="refIndex_8_28807" id="refIndex_8_28807"
						title="向上跳转" href="#ref_[8]_28807">&nbsp;&nbsp;</a> <a
						rel="nofollow"
						href="/redirect/b86eCZUefK1q216ptuwk4ayVShvPQIl0-B0q3mBUQF6BbJWRGBvnlYFWFTHd0i85EAUqCXYWG4wNqrV3fRJykG8Vtsg88Tt9OOCJ"
						target="_blank" class="text">哈士奇中毒后强撑着想再见主人最后一面(图)<span
							class="linkout">&nbsp;</span></a> <span class="site">．搜狐</span><span>[引用日期2016-11-15]</span></li>
					<li class="reference-item reference-item--type1 "
						id="reference-[9]-28807-wrap"><span class="index">9.</span> <a
						class="gotop anchor" name="refIndex_9_28807" id="refIndex_9_28807"
						title="向上跳转" href="#ref_[9]_28807">&nbsp;&nbsp;</a> <a
						rel="nofollow"
						href="/redirect/887ai6jbNrR-_brmDBUKqdq084kTFX7JDgsR2xGkjd-IbGAzEcxb3a5EYa0_Eeo_oZLhgjFXDC75fYEgYStx5Q0ja0U"
						target="_blank" class="text">哈士奇和阿拉斯加的区别是什么？<span
							class="linkout">&nbsp;</span></a> <span class="site">．知乎</span><span>．2017-03-22</span><span>[引用日期2017-03-22]</span></li>
				</ul>
			</dd>
		</dl>
		<div id="open-tag">
			<div class="open-tag-title">词条标签：</div>
			<dd id="open-tag-item">
				<span class="taglist"> 自然 </span> ，<span class="taglist">
					生物物种 </span> ，<span class="taglist"> 宠物 </span> ，<span class="taglist">
					动物 </span>
			</dd>
			<div class="open-tag-collapse" id="open-tag-collapse"
				style="display: none;"></div>
		</div>
		<div class="clear"></div>

	</div>
</body>
</html>