<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script src="../jquery/jquery-1.7.2.js"></script>
<script>
	/* $(function(){
	
	 $(window).load(function(){
	
	 var tempdata=document.getElementById("main-content-control").innerHTML; 
	
	 var tempdata=$("#basicInfo-item-TDname").text();
	
	 alert(tempdata); 


	 $.ajax({
	 url:"..//GetWebDataDispose.action",
	 type:"post",
	 data:{"webdata":tempdata},
	
	 })
	 })
	 })
	
	 */
	$(function() {
		$(window).load(
				function() {

					var PetName = $("#lemmaWgt-lemmaTitle-titleID").find("h1")
							.text();/*得到宠物性名*/
					/* var PetDesip=$(".lemma-summary").find("div").text();得到宠物基本描述信息*/
					var PetData = $(".lemma-summary").find("div");/*得到宠物基本描述信息下的所有DIV组*/
					var Petdescription = "";

					for (var i = 0; i < PetData.length; i++) {
						var divdata = $(".lemma-summary").find(
								"div:eq(" + i + ")").text();

						divdata = "<p>" + divdata + "</p>";

						Petdescription += divdata;

					}
					
					var $baseicinfoNameCalss = $(".basic-info-cmn-clearfix").find("dd");
					var baseicinfoNameArray=[];
					baseicinfoNameArray[$baseicinfoNameCalss.length]=PetName;
					baseicinfoNameArray[$baseicinfoNameCalss.length+1]=Petdescription;
					for (var x = 0; x < $baseicinfoNameCalss.length; x++) {
						baseicinfoNameArray[x]=$baseicinfoNameCalss.eq(x).text();

					}
					
					var $catalogforli = $(".catalog-list-column-4").find(
							"li[class=level1]").find("span[class=text]");/*在Class为catalog-list-column-4的DIV下面选取Class为Level1的li标签*/
					
					for (var j = 0; j < $catalogforli.length; j++) {
						/* alert($(".catalog-list-column-4").find("li[class=level1]").find("span[class=text]:eq("+j+")").text()); */
						/* alert($catalogforli.eq(j).text()); */
					}
					
					 $.ajax({
						 
								url:"..//GetAllPetData.action",
								
								
								data:{"baseicinfoNameArray":baseicinfoNameArray},
								traditional:true,
								type:"post",
								success:function(str){
								
							
									}
									
							 }) 

				})
	})
</script>
</head>
<body>

	<a class="posterFlag expert-icon " href="javascript:;" title="权威专家认证词条"></a>
	<div class="top-tool">
		<a class="add-sub-icon top-tool-icon" href="javascript:;" title="添加义项"
			nslog-type="50000101"> <em
			class="cmn-icon wiki-lemma-icons wiki-lemma-icons_add-subLemma-solid"></em>
		</a> <a href="/divideload/%E8%B4%B5%E5%AE%BE%E7%8A%AC" title="拆分词条"
			target="_blank" class="split-icon top-tool-icon"
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
			class="vote-count">0</span> <span class="vote-tip">有用+1</span> <span
			class="voted-tip">已投票</span>
		</a>
		<div class="bksharebuttonbox top-share">
			<a class="top-share-icon top-tool-icon" nslog-type="9067"> <em
				class="cmn-icon wiki-lemma-icons wiki-lemma-icons_share"></em> <span
				class="share-count" id="j-topShareCount">0</span>
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
		<dd class="lemmaWgt-lemmaTitle-title" id="lemmaWgt-lemmaTitle-titleID">
			<h1>贵宾犬</h1>
			<a href="javascript:;"
				class="edit-lemma cmn-btn-hover-blue cmn-btn-28 j-edit-link"><em
				class="cmn-icon wiki-lemma-icons wiki-lemma-icons_edit-lemma"></em>编辑</a>
			<a class="lock-lemma" target="_blank" href="/view/10812319.htm"
				title="锁定"><em
				class="cmn-icon wiki-lemma-icons wiki-lemma-icons_lock-lemma"></em>锁定</a>
		</dd>
	</dl>
	<div class="authorityListPrompt">
		<div class="main-content-zj">
			本词条由<a href="http://www.cast.org.cn" target="_blank"
				class="nslog:7175">“科普中国”百科科学词条编写与应用工作项目</a> 审核 。
		</div>
	</div>
	<div class="promotion-declaration"></div>
	<div class="lemma-summary" label-module="lemmaSummary">
		<div class="para" label-module="para">贵宾犬（Poodle），也称“贵妇犬”，又称“卷毛狗”，在德语中，Pudel是“水花飞溅”的意思，是犬亚科犬属的一种动物。贵宾犬的来源就像它为了拖出猎禽所涉过的水一样浑浊不清。</div>
		<div class="para" label-module="para">
			<a target="_blank" href="/item/%E6%B3%95%E5%9B%BD/1173384"
				data-lemmaid="1173384">法国</a>的长卷毛犬、匈牙利的水猎犬、<a target="_blank"
				href="/item/%E8%91%A1%E8%90%84%E7%89%99%E6%B0%B4%E7%8A%AC">葡萄牙水犬</a>、爱尔兰水犬、<a
				target="_blank"
				href="/item/%E8%A5%BF%E7%8F%AD%E7%89%99%E7%8C%8E%E7%8A%AC">西班牙猎犬</a>，甚至<a
				target="_blank"
				href="/item/%E9%A9%AC%E5%B0%94%E6%B5%8E%E6%96%AF%E7%8A%AC">马尔济斯犬</a>，都有可能是贵宾犬的祖先。
		</div>
	</div>
	<div class="configModuleBanner"></div>
	<div class="basic-info-cmn-clearfix">
		<dl class="basicInfo-block-basicInfo-left">
			<dt class="basicInfo-item-name" id="basicInfo-item-TDname">中文学名</dt>
			<dd class="basicInfo-item value">贵宾犬</dd>
			<dt class="basicInfo-item-name">别&nbsp;&nbsp;&nbsp;&nbsp;称</dt>
			<dd class="basicInfo-item-value">贵妇犬、卷毛狗、泰迪犬</dd>
			<dt class="basicInfo-item-name">界</dt>
			<dd class="basicInfo-item value">动物界</dd>
			<dt class="basicInfo-item-name">门</dt>
			<dd class="basicInfo-item value">
				<a target="_blank"
					href="/item/%E8%84%8A%E7%B4%A2%E5%8A%A8%E7%89%A9%E9%97%A8">脊索动物门</a>
			</dd>
			<dt class="basicInfo-item-name">亚&nbsp;&nbsp;&nbsp;&nbsp;门</dt>
			<dd class="basicInfo-item value">
				<a target="_blank"
					href="/item/%E8%84%8A%E6%A4%8E%E5%8A%A8%E7%89%A9%E4%BA%9A%E9%97%A8">脊椎动物亚门</a>
			</dd>
			<dt class="basicInfo-item-name">纲</dt>
			<dd class="basicInfo-item value">
				<a target="_blank" href="/item/%E5%93%BA%E4%B9%B3%E7%BA%B2">哺乳纲</a>
			</dd>
			<dt class="basicInfo-item-name">亚&nbsp;&nbsp;&nbsp;&nbsp;纲</dt>
			<dd class="basicInfo-item value">
				<a target="_blank" href="/item/%E7%9C%9F%E5%85%BD%E4%BA%9A%E7%BA%B2">真兽亚纲</a>
			</dd>
			<dt class="basicInfo-item-name">目</dt>
			<dd class="basicInfo-item value">
				<a target="_blank" href="/item/%E9%A3%9F%E8%82%89%E7%9B%AE">食肉目</a>
			</dd>
			<dt class="basicInfo-item-name">亚&nbsp;&nbsp;&nbsp;&nbsp;目</dt>
			<dd class="basicInfo-item value">裂脚亚目</dd>
			<dt class="basicInfo-item-name">科</dt>
			<dd class="basicInfo-item value">
				<a target="_blank" href="/item/%E7%8A%AC%E7%A7%91">犬科</a>
			</dd>
			<dt class="basicInfo-item_name">亚&nbsp;&nbsp;&nbsp;&nbsp;科</dt>
			<dd class="basicInfo-item value">
				<a target="_blank" href="/item/%E7%8A%AC%E4%BA%9A%E7%A7%91">犬亚科</a>
			</dd>
		</dl>
		<dl class="basicInfo-block basicInfo-right">
			<dt class="basicInfo-item-name">属</dt>
			<dd class="basicInfo-item value">
				<a target="_blank" href="/item/%E7%8A%AC%E5%B1%9E">犬属</a>
			</dd>
			<dt class="basicInfo-item-name">种</dt>
			<dd class="basicInfo-item value">
				<a target="_blank" href="/item/%E7%81%B0%E7%8B%BC/9780069"
					data-lemmaid="9780069">灰狼</a>
			</dd>
			<dt class="basicInfo-item-name">亚&nbsp;&nbsp;&nbsp;&nbsp;种</dt>
			<dd class="basicInfo-item value">
				<a target="_blank" href="/item/%E5%AE%B6%E7%8A%AC">家犬</a>
			</dd>
			<dt class="basicInfo-item-name">分布区域</dt>
			<dd class="basicInfo-item value">
				原产<a target="_blank" href="/item/%E6%AC%A7%E6%B4%B2/145550"
					data-lemmaid="145550">欧洲</a>，今分部世界各地
			</dd>
			<dt class="basicInfo-item name">市场参考价</dt>
			<dd class="basicInfo-item value">500-4000元</dd>
			<dt class="basicInfo-item name">贵宾禁食食物</dt>
			<dd class="basicInfo-item value">
				<a target="_blank" href="/item/%E6%B4%8B%E8%91%B1/6409"
					data-lemmaid="6409">洋葱</a>、<a target="_blank"
					href="/item/%E5%B7%A7%E5%85%8B%E5%8A%9B/69266" data-lemmaid="69266">巧克力</a>、<a
					target="_blank" href="/item/%E8%91%A1%E8%90%84/1116"
					data-lemmaid="1116">葡萄</a>、冰淇淋&nbsp;
			</dd>
			<dt class="basicInfo-item name">英文名</dt>
			<dd class="basicInfo-item value">Poodle</dd>
			<dt class="basicInfo-item name">身&nbsp;&nbsp;&nbsp;&nbsp;高</dt>
			<dd class="basicInfo-item value">37-39cm</dd>
			<dt class="basicInfo-item name">易患病</dt>
			<dd class="basicInfo-item value">
				&nbsp;<a target="_blank" href="/item/%E7%9A%AE%E8%82%A4%E7%97%85">皮肤病</a>、<a
					target="_blank" href="/item/%E5%A4%96%E8%80%B3%E7%82%8E">外耳炎</a>、<a
					target="_blank" href="/item/%E6%B3%AA%E7%97%95/82332"
					data-lemmaid="82332">泪痕</a>、<a target="_blank"
					href="/item/%E9%AB%8C%E9%AA%A8/1663536" data-lemmaid="1663536">髌骨</a>病
			</dd>
			<dt class="basicInfo-item name">体&nbsp;&nbsp;&nbsp;&nbsp;重</dt>
			<dd class="basicInfo-item value">20-32Kg</dd>
			<dt class="basicInfo-item name">寿&nbsp;&nbsp;&nbsp;&nbsp;命</dt>
			<dd class="basicInfo-item value">13-15年</dd>
		</dl>
	</div>
	<div class="lemmaWgt-lemmaCatalog">
		<div class="lemma-catalog">
			<h2 class="block-title">目录</h2>
			<div class="catalog-list-column-4">
				<ol>
					<li class="level1"><span class="index">1</span> <span
						class="text"><a href="#1">发展历史</a></span></li>
					<li class="level1"><span class="index">2</span> <span
						class="text"><a href="#2">形态特征</a></span></li>
					<li class="level1"><span class="index">3</span> <span
						class="text"><a href="#3">性格特征</a></span></li>
					<li class="level1"><span class="index">4</span> <span
						class="text"><a href="#4">毛色特征</a></span></li>
				</ol>
				<ol>
					<li class="level1"><span class="index">5</span> <span
						class="text"><a href="#5">优缺点评价</a></span></li>
					<li class="level1"><span class="index">6</span> <span
						class="text"><a href="#6">饲养方法</a></span></li>
					<li class="level1"><span class="index">7</span> <span
						class="text"><a href="#7">梳理犬毛</a></span></li>
					<li class="level1"><span class="index">8</span> <span
						class="text"><a href="#8">常见病的防治和养犬者的自身保护</a></span></li>
				</ol>
				<ol>
					<li class="level1"><span class="index">9</span> <span
						class="text"><a href="#9">繁殖与配种</a></span></li>
					<li class="level2"><span class="index">▪</span> <span
						class="text"><a href="#9_1">选种</a></span></li>
					<li class="level2"><span class="index">▪</span> <span
						class="text"><a href="#9_2">种犬第一次开始交配繁殖的最佳年龄</a></span></li>
					<li class="level2"><span class="index">▪</span> <span
						class="text"><a href="#9_3">发情和发情期</a></span></li>
					<li class="level2"><span class="index">▪</span> <span
						class="text"><a href="#9_4">最佳配种日和配种</a></span></li>
				</ol>
				<ol>
					<li class="level2"><span class="index">▪</span> <span
						class="text"><a href="#9_5">孕犬的饲养管理</a></span></li>
				</ol>

			</div>
		</div>
	</div>
	<div class="para" label-module="para">
		<b></b>
	</div>
	<div class="anchor-list">
		<a name="1" class="lemma-anchor para-title"></a> <a name="sub42901_1"
			class="lemma-anchor "></a> <a name="发展历史" class="lemma-anchor "></a>
	</div>
	<div class="para-title level-2" label-module="para-title">
		<h2 class="title-text">
			<span class="title-prefix">贵宾犬</span>发展历史
		</h2>
		<a class="edit-icon j-edit-link" data-edit-dl="1" href="javascript:;"><em
			class="cmn-icon wiki-lemma-icons wiki-lemma-icons_edit-lemma"></em>编辑</a>
	</div>
	<div class="para" label-module="para" style="clear: both;">
		<a class="lemma-album layout-right nslog:10000206" title="贵宾犬"
			href="/pic/%E8%B4%B5%E5%AE%BE%E7%8A%AC/787021/21458048/d50735fae6cd7b890c17460e062442a7d8330ec7?fr=lemma&amp;ct=cover"
			target="_blank" style="width: 148px;" nslog-type="10000206">
			<div class="album-wrap" style="width: 146px; height: 220px;">
				<img class="picture" alt="贵宾犬"
					src="https://gss2.bdstatic.com/9fo3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=3a95b4a24834970a4373172da5cbd1c0/d50735fae6cd7b890c17460e062442a7d8330ec7.jpg"
					style="width: 146px; height: 220px;">
			</div>
			<div class="description">
				贵宾犬<span class="number">(9张)</span>
			</div>
			<div class="albumBg">
				<div class="albumBgFir" style="width: 140px;"></div>
				<div class="albumBgSec" style="width: 134px;"></div>
			</div>
		</a>
	</div>
	<div class="para" label-module="para">
		贵宾犬在<a target="_blank" href="/item/%E6%B3%95%E5%9B%BD/1173384"
			data-lemmaid="1173384">法国</a>被视为国犬，很多人认为贵宾犬原产于法国，但许多国家仍对贵宾犬的起源争执不休，都想把它据为己有。德国、前苏联、意大利等国均各抒己见，认为有些品种的贵宾犬产于他们的国家，如白毛品种以法国居多，棕毛品种多产于德国，黑毛品种以前苏联为多，茶褐色品种则以意大利为多。有些史学家深信，德国、前苏联、法国在贵宾犬的发展过程中，均扮演过极其重要的角色<sup
			class="sup--normal" data-sup="1"> [1]</sup><a class="sup-anchor"
			name="ref_[1]_42901">&nbsp;</a> 。贵宾犬起源于<a target="_blank"
			href="/item/%E6%AC%A7%E6%B4%B2/145550" data-lemmaid="145550">欧洲</a>，具体是哪个国家还有争议。贵宾犬以水中捕猎而著称，是<a
			target="_blank" href="/item/%E6%B0%B4%E7%8C%8E%E7%8A%AC">水猎犬</a>。但是只有标准贵宾具有工作能力。它是聪明而善解人意的犬种。多年以来，它一直被认为是法国的国犬。贵宾犬根据体型大小被AKC标准分为标准型，迷你型，玩具型三种。而FCI把它们分为大型，中型，迷你型，玩具型四种。贵宾犬气质独特，造型多变，赢得了许多人的欢心，给人一种漂亮的、聪明的印象。值得注意的是，并没有泰迪这个品种的犬，泰迪不是犬种，它只是贵宾犬众多美容造型中的一种的名称。
	</div>
	<div class="anchor-list">
		<a name="2" class="lemma-anchor para-title"></a> <a name="sub42901_2"
			class="lemma-anchor "></a> <a name="形态特征" class="lemma-anchor "></a>
	</div>
	<div class="para-title level-2" label-module="para-title">
		<h2 class="title-text">
			<span class="title-prefix">贵宾犬</span>形态特征
		</h2>
		<a class="edit-icon j-edit-link" data-edit-dl="2" href="javascript:;"><em
			class="cmn-icon wiki-lemma-icons wiki-lemma-icons_edit-lemma"></em>编辑</a>
	</div>
	<div class="para" label-module="para">
		<a class="lemma-album layout-right nslog:10000206" title="合并图册"
			href="/pic/%E8%B4%B5%E5%AE%BE%E7%8A%AC/787021/21458049/1f178a82b9014a90898f0ed4a1773912b31bee22?fr=lemma&amp;ct=cover"
			target="_blank" style="width: 222px;" nslog-type="10000206">
			<div class="album-wrap" style="width: 220px; height: 165px;">
				<img class="picture" alt="合并图册"
					src="https://gss3.bdstatic.com/7Po3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=0292af4206f41bd5de53eff661db81a0/1f178a82b9014a90898f0ed4a1773912b31bee22.jpg"
					style="width: 220px; height: 165px;">
			</div>
			<div class="description">
				合并图册<span class="number">(2张)</span>
			</div>
			<div class="albumBg">
				<div class="albumBgFir" style="width: 214px;"></div>
				<div class="albumBgSec" style="width: 208px;"></div>
			</div>
		</a> 头颅顶部稍圆，眉头随浅但很清晰，面颊平坦。眼睛颜色很深呈卵圆形，两眼间距宽，眼神机警。<a target="_blank"
			href="/item/%E5%90%BB%E9%83%A8">吻部</a>长直而纤细，眼睛下方有轻微诶凹陷。颈部强壮，颈长可以使头部高高抬起。胸部深而扩张，<a
			target="_blank" href="/item/%E8%82%8B%E9%83%A8">肋部</a>伸展。后脚跟短，与地面垂直<sup
			class="sup--normal" data-sup="2"> [2]</sup><a class="sup-anchor"
			name="ref_[2]_42901">&nbsp;</a> 。
	</div>
	<div class="anchor-list">
		<a name="3" class="lemma-anchor para-title"></a> <a name="sub42901_3"
			class="lemma-anchor "></a> <a name="性格特征" class="lemma-anchor "></a>
	</div>
	<div class="para-title level-2" label-module="para-title">
		<h2 class="title-text">
			<span class="title-prefix">贵宾犬</span>性格特征
		</h2>
		<a class="edit-icon j-edit-link" data-edit-dl="3" href="javascript:;"><em
			class="cmn-icon wiki-lemma-icons wiki-lemma-icons_edit-lemma"></em>编辑</a>
	</div>
	<div class="para" label-module="para">
		<a class="lemma-album layout-right nslog:10000206" title="贵宾犬"
			href="/pic/%E8%B4%B5%E5%AE%BE%E7%8A%AC/787021/21986547/7dd98d1001e9390100d9e95171ec54e737d19681?fr=lemma&amp;ct=cover"
			target="_blank" style="width: 175px;" nslog-type="10000206">
			<div class="album-wrap" style="width: 173px; height: 220px;">
				<img class="picture" alt="贵宾犬"
					src="https://gss1.bdstatic.com/9vo3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=a6a2baa7104c510faac4e51850582528/7dd98d1001e9390100d9e95171ec54e737d19681.jpg"
					style="width: 173px; height: 220px;">
			</div>
			<div class="description">
				贵宾犬<span class="number">(5张)</span>
			</div>
			<div class="albumBg">
				<div class="albumBgFir" style="width: 167px;"></div>
				<div class="albumBgSec" style="width: 161px;"></div>
			</div>
		</a> 活泼，性情优良，极易近人，是一种忠实的犬种。非常敏捷，聪明而优雅的狗，正方形结构、比例匀称，步伐有力而自信<sup
			class="sup--normal" data-sup="3"> [3]</sup><a class="sup-anchor"
			name="ref_[3]_42901">&nbsp;</a> 。
	</div>
	<div class="anchor-list">
		<a name="4" class="lemma-anchor para-title"></a> <a name="sub42901_4"
			class="lemma-anchor "></a> <a name="毛色特征" class="lemma-anchor "></a>
	</div>
	<div class="para-title level-2" label-module="para-title">
		<h2 class="title-text">
			<span class="title-prefix">贵宾犬</span>毛色特征
		</h2>
		<a class="edit-icon j-edit-link" data-edit-dl="4" href="javascript:;"><em
			class="cmn-icon wiki-lemma-icons wiki-lemma-icons_edit-lemma"></em>编辑</a>
	</div>
	<div class="para" label-module="para">
		<div class="lemma-picture text-pic layout-right"
			style="width: 220px; cursor: move; text-indent: 28px; white-space: normal; float: right;">
			<a class="image-link" nslog-type="9317"
				href="/pic/%E8%B4%B5%E5%AE%BE%E7%8A%AC/787021/0/48540923dd54564e8c9cac50bbde9c82d0584fd9?fr=lemma&amp;ct=single"
				target="_blank" title="" style="width: 220px; height: 162px;"> <img
				class="lazy-img"
				src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAMAAAAoyzS7AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAAZQTFRF9fX1AAAA0VQI3QAAAAxJREFUeNpiYAAIMAAAAgABT21Z4QAAAABJRU5ErkJggg=="
				data-src="https://gss2.bdstatic.com/-fo3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=12304cf4c3ef7609380b9e9d1edca301/48540923dd54564e8c9cac50bbde9c82d0584fd9.jpg"
				alt="" style="width: 220px; height: 162px;">
			</a>
		</div>
		它的<a target="_blank" href="/item/%E8%A2%AB%E6%AF%9B">被毛</a>通常修剪成传统的形状，被毛有卷曲型和绳索型：卷曲型被毛粗硬、浓密：绳索型被毛下垂，身体各部位被毛长度不等，颈部、躯干、头部和耳部的被毛很长<sup
			class="sup--normal" data-sup="4"> [4]</sup><a class="sup-anchor"
			name="ref_[4]_42901">&nbsp;</a> <a name="ref_4"></a><a name="ref_4"></a>。
	</div>
	<div class="anchor-list">
		<a name="5" class="lemma-anchor para-title"></a> <a name="sub42901_5"
			class="lemma-anchor "></a> <a name="优缺点评价" class="lemma-anchor "></a>
	</div>
	<div class="para-title level-2" label-module="para-title">
		<h2 class="title-text">
			<span class="title-prefix">贵宾犬</span>优缺点评价
		</h2>
		<a class="edit-icon j-edit-link" data-edit-dl="5" href="javascript:;"><em
			class="cmn-icon wiki-lemma-icons wiki-lemma-icons_edit-lemma"></em>编辑</a>
	</div>
	<div class="para" label-module="para">
		头部较小的犬，为了弥补这一缺点，可把头上的毛留长些，并剪成圆形，而颈部的被毛要自然垂下，耳朵的毛要留长，这样才显得头部稍大而美观。头部较大的犬，则应将毛剪短，而颈部的毛不需剪短<sup
			class="sup--normal" data-sup="4"> [4]</sup><a class="sup-anchor"
			name="ref_[4]_42901">&nbsp;</a> <a name="ref_4"></a><a name="ref_4"></a>。
	</div>
	<div class="anchor-list">
		<a name="6" class="lemma-anchor para-title"></a> <a name="sub42901_6"
			class="lemma-anchor "></a> <a name="饲养方法" class="lemma-anchor "></a>
	</div>
	<div class="para-title level-2" label-module="para-title">
		<h2 class="title-text">
			<span class="title-prefix">贵宾犬</span>饲养方法
		</h2>
		<a class="edit-icon j-edit-link" data-edit-dl="6" href="javascript:;"><em
			class="cmn-icon wiki-lemma-icons wiki-lemma-icons_edit-lemma"></em>编辑</a>
	</div>
	<div class="para" label-module="para">
		<a class="lemma-album layout-right nslog:10000206" title="贵宾犬"
			href="/pic/%E8%B4%B5%E5%AE%BE%E7%8A%AC/787021/17262756/b219ebc4b74543a93ef4f2a21b178a82b80114f4?fr=lemma&amp;ct=cover"
			target="_blank" style="width: 222px;" nslog-type="10000206">
			<div class="album-wrap" style="width: 220px; height: 165px;">
				<img class="picture" alt="贵宾犬"
					src="https://gss0.bdstatic.com/-4o3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=40d1af1bd388d43ff4a996f04d1fd2aa/b219ebc4b74543a93ef4f2a21b178a82b80114f4.jpg"
					style="width: 220px; height: 165px;">
			</div>
			<div class="description">
				贵宾犬<span class="number">(7张)</span>
			</div>
			<div class="albumBg">
				<div class="albumBgFir" style="width: 214px;"></div>
				<div class="albumBgSec" style="width: 208px;"></div>
			</div>
		</a> 贵宾犬的幼犬很容易患病，平时要特别注意预防，注意它的饮食卫生。食物中必须具有丰富的<a target="_blank"
			href="/item/%E8%9B%8B%E7%99%BD%E8%B4%A8/309120" data-lemmaid="309120">蛋白质</a>，每天给予<a
			target="_blank" href="/item/%E8%82%89%E7%B1%BB">肉类</a>不得少于100克。喂前要加等量的素食或饼干用水调和，同时应供给些新鲜清洁的饮水<sup
			class="sup--normal" data-sup="4"> [4]</sup><a class="sup-anchor"
			name="ref_[4]_42901">&nbsp;</a> <a name="ref_4"></a><a name="ref_4"></a>。
	</div>
	<div class="anchor-list">
		<a name="7" class="lemma-anchor para-title"></a> <a name="sub42901_7"
			class="lemma-anchor "></a> <a name="梳理犬毛" class="lemma-anchor "></a>
	</div>
	<div class="para-title level-2" label-module="para-title">
		<h2 class="title-text">
			<span class="title-prefix">贵宾犬</span>梳理犬毛
		</h2>
		<a class="edit-icon j-edit-link" data-edit-dl="7" href="javascript:;"><em
			class="cmn-icon wiki-lemma-icons wiki-lemma-icons_edit-lemma"></em>编辑</a>
	</div>
	<div class="para" label-module="para">
		<a class="lemma-album layout-right nslog:10000206" title="贵宾犬"
			href="/pic/%E8%B4%B5%E5%AE%BE%E7%8A%AC/787021/17262757/11385343fbf2b211d0bfabc0cc8065380dd78eae?fr=lemma&amp;ct=cover"
			target="_blank" style="width: 222px;" nslog-type="10000206">
			<div class="album-wrap" style="width: 220px; height: 146px;">
				<img class="picture" alt="贵宾犬"
					src="https://gss3.bdstatic.com/-Po3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=653b42503b6d55fbc1c671245d234f40/11385343fbf2b211d0bfabc0cc8065380dd78eae.jpg"
					style="width: 220px; height: 146px;">
			</div>
			<div class="description">
				贵宾犬<span class="number">(17张)</span>
			</div>
			<div class="albumBg">
				<div class="albumBgFir" style="width: 214px;"></div>
				<div class="albumBgSec" style="width: 208px;"></div>
			</div>
		</a> 早晚应各梳毛1次，每次梳毛5分钟。
	</div>
	<div class="para" label-module="para">
		<b>梳毛要注意顺序：</b>由颈部开始，由前向后，自上而下顺次进行，即先从颈部到肩部，然后依次背、胸、腰、腹、后躯，再梳头部，最后是四肢和尾部，梳理过程中应梳完一侧再梳另一侧。
	</div>
	<div class="para" label-module="para">
		<b>梳毛的手法：</b>梳毛应按顺毛方向快速梳拉。许多人在给长毛犬梳毛时，只梳表面的长毛而忽略了下面的细茸毛梳理。犬的底毛，细软而绵密，长期不梳理，会形成<a
			target="_blank" href="/item/%E7%BC%A0%E7%BB%93/12010760"
			data-lemmaid="12010760">缠结</a>，甚至会引起<a target="_blank"
			href="/item/%E6%B9%BF%E7%96%B9">湿疹</a>、<a target="_blank"
			href="/item/%E7%9A%AE%E7%99%A3">皮癣</a>或其他<a target="_blank"
			href="/item/%E7%9A%AE%E8%82%A4%E7%97%85">皮肤病</a>。因此在对长毛犬梳理时，应一层一层地梳，还要把长毛翻起来，然后对其底毛进行梳理。<b></b>
	</div>
	<div class="para" label-module="para">
		<b>梳子的种类：</b>毛刷、弹性钢丝刷和长而疏的金属梳。毛刷只能使长毛的末端蓬松，而细茸毛却梳不到。梳理长毛犬时，毛刷、弹性钢丝刷和长而疏的金属梳应配合使用<sup
			class="sup--normal" data-sup="5"> [5]</sup><a class="sup-anchor"
			name="ref_[5]_42901">&nbsp;</a> 。
	</div>
	<div class="anchor-list">
		<a name="8" class="lemma-anchor para-title"></a> <a name="sub42901_8"
			class="lemma-anchor "></a> <a name="常见病的防治和养犬者的自身保护"
			class="lemma-anchor "></a>
	</div>
	<div class="para-title level-2" label-module="para-title">
		<h2 class="title-text">
			<span class="title-prefix">贵宾犬</span>常见病的防治和养犬者的自身保护
		</h2>
		<a class="edit-icon j-edit-link" data-edit-dl="8" href="javascript:;"><em
			class="cmn-icon wiki-lemma-icons wiki-lemma-icons_edit-lemma"></em>编辑</a>
	</div>
	<div class="para" label-module="para">
		<b>现将犬病中最严重和最常见的做以下简介</b>
	</div>
	<ol class="custom_num  para-list list-paddingleft-1">
		<li class="list-num-1-1 list-num-paddingleft-1"><div class="para"
				label-module="para">
				<a target="_blank" href="/item/%E7%8B%82%E7%8A%AC%E7%97%85">狂犬病</a>：是由滤过性病毒引起的急性传染病，该病人畜共患，危害十分严重，死亡率几乎100%，至今无药可医，注射狂犬疫苗是惟一的有效预防措施。目前我国生产的预防狂犬病的疫苗有两种：狂犬病弱毒细胞冻干苗和狂犬病疫苗。狂犬病弱毒细胞冻干苗，用灭菌水稀释后，不论犬只大小，一律皮下注射1毫升，免疫期1年。狂犬病疫苗，体重4千克以下的犬，每次注射3毫升；体重4千克以上的犬，每次注射5毫升，免疫期半年。此外，注射五联苗或六联苗，更是预防狂犬病等多种疫病的良法：上述疫苗接种后虽无明显的不良反应，但应按说明注射。
			</div></li>
		<li class="list-num-1-2 list-num-paddingleft-1"><div class="para"
				label-module="para">
				<a target="_blank" href="/item/%E8%9B%94%E8%99%AB%E7%97%85">蛔虫病</a>：是传播很广泛的肠道寄生虫病，严重影响幼犬和青年犬的正常发育。
			</div></li>
		<li class="list-num-1-3 list-num-paddingleft-1"><div class="para"
				label-module="para">
				<a target="_blank" href="/item/%E4%BC%AA%E7%8B%82%E7%8A%AC%E7%97%85">伪狂犬病</a>：本病是由病毒引起的多种家畜和野生动物共患的传染病，猪的发病率高，犬也感染。犬是由于吃了患伪狂犬病的牛肉、猪肉、鼠肉等被感染，或由犬的伤口感染所致。病犬死亡率高，但并不向外排泄病毒。病初凝视、沉郁、搔抓受伤处。伤口周围红肿，病犬呻吟、拒食、呕吐，啃咬异物，咽麻痹，流口涎，出现类似狂犬病的症状而死亡。本病以预防为主：严禁犬进入猪舍，对4月龄以上的幼犬注射伪狂犬病弱毒疫苗是良策。
			</div></li>
		<li class="list-num-1-4 list-num-paddingleft-1"><div class="para"
				label-module="para">
				<a target="_blank"
					href="/item/%E7%8A%AC%E7%BB%86%E5%B0%8F%E7%97%85%E6%AF%92%E7%97%85">犬细小病毒病</a>：本病是近几年分别发现由病畜的粪、尿，唾液等感染的犬科动物传染病。主要危害幼犬。肠炎型的病人精神不振，体温升高，拒食、呕吐、腹泻，排出稀糊便、水样便和喷射式排出番茄样的臭便，不久因脱水死亡，心肌型的病犬腹泻轻，往往突然死于呼吸困难。本病易误诊为肠炎、痢疾、肺炎等。病犬死亡率10%—50%，病犬由兽医对症治疗，注射抗毒素1号对本病有较好的疗效。发病前注射犬细小病毒疫苗或五联疫苗是预防本病的上策。
			</div></li>
		<li class="list-num-1-5 list-num-paddingleft-1"><div class="para"
				label-module="para">
				<a target="_blank" href="/item/%E7%8A%AC%E7%98%9F%E7%83%AD">犬瘟热</a>：本病是病毒引起的急性传染病，主要危害3—12月龄的幼犬。病犬食欲减退、呕吐、倦怠、寒战、咳嗽、高烧，粪便恶臭或带血；跟怕光、流泪，流鼻涕或脓样鼻液，出现支气管炎或肺炎病变；躯体痉挛样运动，尖叫狂奔，口吐白沫或倒地抽搐，病程或长或短，愈后往往有后躯无力的后遗症，有的几个月后死亡。本病多发生在寒冷的10—4月，病死率高。治疗本病可注射安乃近、肌肉注射青霉素或口服磺胺类药物。断奶的幼犬接种五联疫苗是预防本病的上策。
			</div></li>
		<li class="list-num-1-6 list-num-paddingleft-1"><div class="para"
				label-module="para">
				<a target="_blank"
					href="/item/%E7%8A%AC%E4%BC%A0%E6%9F%93%E6%80%A7%E8%82%9D%E7%82%8E">犬传染性肝炎</a>：本病是由犬传染肝炎病毒引起的急性败血性传染病，主要侵害1岁龄以内的幼犬。本病初起，体温升至41℃，倦怠、渴饮、腹泻、便血、怕光、拱背等。幼犬死亡率高；成年犬耐过危险期可康复。本病输液和补充维生素B、维生素C治疗，注射抗生素预防感染，口服肝太乐护肝。
			</div></li>
		<li class="list-num-1-7 list-num-paddingleft-1"><div class="para"
				label-module="para">
				<a target="_blank" href="/item/%E7%8A%AC%E7%BB%93%E6%A0%B8%E7%97%85">犬结核病</a>：结核病有人型、牛型、禽型三种。犬结核病由人型或牛型结核病菌引起。幼犬易发病，对人也有威胁。患开放性肺结核的病犬，应扑杀和深埋处理，以免扩大传染。
			</div></li>
		<li class="list-num-1-8 list-num-paddingleft-1"><div class="para"
				label-module="para">大脑膜炎：本病由脑膜炎病原菌感染发病。病犬阵发性
				肌肉僵直或抽搐，角弓反张。病犬无治疗价值，应扑杀深埋处理。</div></li>
		<li class="list-num-1-9 list-num-paddingleft-1"><div class="para"
				label-module="para">
				<a target="_blank" href="/item/%E7%8A%AC%E8%84%91%E7%82%8E">犬脑炎</a>：本病或因神经细胞被破坏、或由犬瘟热病毒引起、或因脑内原虫侵入、或其他病毒感染等不同的病因引起的病变。主要症状是高烧、呕吐、嗜睡、颈强直、惊厥抽搐、意识不清，死于呼吸衰竭。发病早期可对症治疗；病情严重的应扑杀和深埋处理。
			</div></li>
		<li class="list-num-1-10 list-num-paddingleft-1"><div
				class="para" label-module="para">
				<a target="_blank" href="/item/%E8%82%BA%E7%82%8E">肺炎</a>：病犬精神不振，食欲不佳，喜卧地，爱饮水，体温39.5—40℃。有明显的肺炎征兆。本病可注射安痛定降体温，肌肉注射青霉素或口服红霉素的疗效也很好。
			</div></li>
		<li class="list-num-1-11 list-num-paddingleft-1"><div
				class="para" label-module="para">犬霉菌肺炎：本病系霉菌感染，也传染人。霉菌性肺炎的症状：咳嗽、呼吸困难、腹水、腹泻、严重脱水等。</div>
		</li>
		<li class="list-num-1-12 list-num-paddingleft-1"><div
				class="para" label-module="para">
				<a target="_blank" href="/item/%E7%8A%AC%E6%84%9F%E5%86%92">犬感冒</a>：本病由于淋雨、受凉、疲劳过度和营养不良等致病。病犬厌食、高烧、流泪、咳嗽、呼吸和脉搏加快、精神沉郁等<sup
					class="sup--normal" data-sup="6"> [6]</sup><a class="sup-anchor"
					name="ref_[6]_42901">&nbsp;</a> 。
			</div></li>
	</ol>
	<div class="anchor-list">
		<a name="9" class="lemma-anchor para-title"></a> <a name="sub42901_9"
			class="lemma-anchor "></a> <a name="繁殖与配种" class="lemma-anchor "></a>
	</div>
	<div class="para-title level-2" label-module="para-title">
		<h2 class="title-text">
			<span class="title-prefix">贵宾犬</span>繁殖与配种
		</h2>
		<a class="edit-icon j-edit-link" data-edit-dl="9" href="javascript:;"><em
			class="cmn-icon wiki-lemma-icons wiki-lemma-icons_edit-lemma"></em>编辑</a>
	</div>
	<div class="anchor-list">
		<a name="9_1" class="lemma-anchor para-title"></a> <a
			name="sub42901_9_1" class="lemma-anchor "></a> <a name="选种"
			class="lemma-anchor "></a> <a name="9-1" class="lemma-anchor "></a>
	</div>
	<div class="para-title level-3" label-module="para-title">
		<h3 class="title-text">
			<span class="title-prefix">贵宾犬</span>选种
		</h3>
	</div>
	<div class="para" label-module="para">
		<a class="lemma-album layout-right nslog:10000206" title="合并图册"
			href="/pic/%E8%B4%B5%E5%AE%BE%E7%8A%AC/787021/18532734/e61190ef76c6a7efd596f666fbfaaf51f3de6639?fr=lemma&amp;ct=cover"
			target="_blank" style="width: 169px;" nslog-type="10000206">
			<div class="album-wrap" style="width: 167px; height: 220px;">
				<img class="picture" alt="合并图册"
					src="https://gss3.bdstatic.com/-Po3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=ceb4dd703cf33a879a6d0718f65d1018/e61190ef76c6a7efd596f666fbfaaf51f3de6639.jpg"
					style="width: 167px; height: 220px;">
			</div>
			<div class="description">
				合并图册<span class="number">(2张)</span>
			</div>
			<div class="albumBg">
				<div class="albumBgFir" style="width: 161px;"></div>
				<div class="albumBgSec" style="width: 155px;"></div>
			</div>
		</a> 选用<a target="_blank" href="/item/%E8%89%AF%E7%A7%8D">良种</a>犬<a
			target="_blank" href="/item/%E4%BA%A4%E9%85%8D">交配</a>和<a
			target="_blank" href="/item/%E7%B9%81%E6%AE%96/22480"
			data-lemmaid="22480">繁殖</a>，使犬的优秀品质在它们的后代身上得到巩固和发展，使人们不希望的缺点在它们后代身上逐渐消失，这是<a
			target="_blank" href="/item/%E9%80%89%E7%A7%8D">选种</a>的目的。
	</div>
	<div class="para" label-module="para">
		同一品种具有相同优良性状的公犬和母犬交配繁殖时，不但可以保证它们后代的品种纯正，还可以在它们的后代身上巩固和发展它们双亲身上的那些优良品质，这种交配繁殖叫纯种繁殖。用某一优良品种的公犬与另一品种的母犬交配，由于它们各具不同的优良性状，因此可以获得具有双亲不同优良品质的后代，这种繁殖叫<a
			target="_blank"
			href="/item/%E5%93%81%E7%A7%8D%E9%97%B4%E6%9D%82%E4%BA%A4">品种间杂交</a>。使用两个不同种的公兽和母兽交配，培育出的新品种或具有新性状的后代，这种繁殖叫<a
			target="_blank" href="/item/%E6%B7%B7%E7%A7%8D">混种</a>杂交，如使用公狼与优秀的母犬杂交，可以<a
			target="_blank" href="/item/%E5%9F%B9%E8%82%B2">培育</a>出对敌凶狠对主人温顺的新犬种。
	</div>
	<div class="anchor-list">
		<a name="9_2" class="lemma-anchor para-title"></a> <a
			name="sub42901_9_2" class="lemma-anchor "></a> <a
			name="种犬第一次开始交配繁殖的最佳年龄" class="lemma-anchor "></a> <a name="9-2"
			class="lemma-anchor "></a>
	</div>
	<div class="para-title level-3" label-module="para-title">
		<h3 class="title-text">
			<span class="title-prefix">贵宾犬</span>种犬第一次开始交配繁殖的最佳年龄
		</h3>
	</div>
	<div class="para" label-module="para">
		<a target="_blank" href="/item/%E5%8A%A8%E7%89%A9/216062"
			data-lemmaid="216062">动物</a>都有<a target="_blank"
			href="/item/%E6%80%A7%E6%88%90%E7%86%9F">性成熟</a>的具体时间，<a
			class="lemma-album layout-right nslog:10000206" title="贵宾犬"
			href="/pic/%E8%B4%B5%E5%AE%BE%E7%8A%AC/787021/18024692/faacb564f0e295a0f636545b?fr=lemma&amp;ct=cover"
			target="_blank" style="width: 222px;" nslog-type="10000206">
			<div class="album-wrap" style="width: 220px; height: 186px;">
				<img class="picture" alt="贵宾犬"
					src="https://gss3.bdstatic.com/-Po3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=4298deaa828ba61edbeecf2d713597cc/d1160924ab18972b27aad8aae6cd7b899e510a3a.jpg"
					style="width: 220px; height: 186px;">
			</div>
			<div class="description">
				贵宾犬<span class="number">(17张)</span>
			</div>
			<div class="albumBg">
				<div class="albumBgFir" style="width: 214px;"></div>
				<div class="albumBgSec" style="width: 208px;"></div>
			</div>
		</a> 性成熟的具体时间并不是最佳生育后代的年龄，犬也是这样。以中型犬为例，它们在出生后7～8月龄开始性成熟，这时公犬和母犬虽然都有了生育后代的能
		力，但它们的躯体发育尚不健全，这时繁殖的后代也不会太好。就<a target="_blank"
			href="/item/%E9%BB%91%E8%83%8C/187421" data-lemmaid="187421">黑背</a>、<a
			target="_blank" href="/item/%E7%8B%BC%E9%9D%92">狼青</a>、<a
			target="_blank" href="/item/%E7%81%B5%E6%8F%90">灵提</a>、<a
			target="_blank" href="/item/%E6%98%86%E6%98%8E%E7%8A%AC">昆明犬</a>等来说，它们第一次繁殖后代的最佳犬龄：母犬应从出生后18月龄或20月龄开始，这时它们的躯体才发育完善，也具有哺育乳犬的力，因此母犬应在第三次发
		情期配种；公犬发育定型比母犬晚，因此，第一次配种的最佳犬龄应在两周岁开始。公犬的配种年龄从两周岁可以延续到七八岁龄，要想得到良种犬的优良后代，配种前还必须加强种公犬和种母犬的营养，注意对它们进行适当训练和运动，不但要保持躯体健康、还要保持它们兴奋工作的积极性。
	</div>
	<div class="anchor-list">
		<a name="9_3" class="lemma-anchor para-title"></a> <a
			name="sub42901_9_3" class="lemma-anchor "></a> <a name="发情和发情期"
			class="lemma-anchor "></a> <a name="9-3" class="lemma-anchor "></a>
	</div>
	<div class="para-title level-3" label-module="para-title">
		<h3 class="title-text">
			<span class="title-prefix">贵宾犬</span>发情和发情期
		</h3>
	</div>
	<div class="para" label-module="para">
		<a target="_blank" href="/item/%E6%80%A7%E6%88%90%E7%86%9F">性成熟</a>的犬每年<a
			target="_blank" href="/item/%E5%8F%91%E6%83%85">发情</a>两次。春季<a
			target="_blank" href="/item/%E5%8F%91%E6%83%85%E6%9C%9F">发情期</a>在3～5月，秋季发情期在9—11月，两次发情间隔约6个月。就母犬来说，母犬发情以母犬阴道流血为标志：阴道流血一般持续21天左右，但老龄母犬发情期阴道流血可能稍短一两天：
	</div>
	<div class="para" label-module="para">母犬发情期的主要特征：</div>
	<div class="para" label-module="para">1、发情母犬的阴唇肿胀、肥大、外突、初期粉红色，明显充血并有少量黏液伴随血液从母犬的阴道流出。随着发情期的延续，流出的血量逐日增加，血液的颜色也由粉红色变为深红色：发情的第8天，血量最多最浓，血色最深。第9天以后血量渐少，浓度渐稀，这时阴唇也逐渐变为暗红色。由于这时阴唇肿胀渐消，开始出现皱纹，发情的母犬进入了排卵期。排卵期大约持续5—6天，这时的发情母犬乐意接受公犬爬跨。随着排卵期的延伸，发情母犬的求爱表现日炽，直到发情期的第16天，母犬开始讨厌公犬纠缠、这时发情母犬的阴道仍有血水流出，到第21天时，阴道流血停止，阴唇肿胀消退，母犬发情结束。</div>
	<div class="para" label-module="para">
		2、发情期母犬表情兴奋。随着发情期的持续，母犬的兴奋增强，表情比平时恍惚不安，吠声粗大，双目发亮。发情炽期，母犬坐卧不安，食欲锐减，拴养的母犬不断对空发出求偶吠，养犬者这时如果用手按压母犬的腰部或抚摸犬尾时，母犬站立不动，或把犬尾偏向一侧，犬的阴唇不断抽动，并且阴门频频开启和闭合，这时如用性成熟的公犬试情时，发情的母犬后肢叉开，出现主动接受交配状。养犬者在犬的发情期，一定要密切观察发情母犬的上述变化和表情，一定要记住母犬发情开始（母犬阴道流血第一天）的日子，以便推算出该母犬最佳的交配日：只有在最佳交配日配种，才能提高母犬的<a
			target="_blank" href="/item/%E5%8F%97%E8%83%8E%E7%8E%87">受胎率</a>和产仔数。
	</div>
	<div class="anchor-list">
		<a name="9_4" class="lemma-anchor para-title"></a> <a
			name="sub42901_9_4" class="lemma-anchor "></a> <a name="最佳配种日和配种"
			class="lemma-anchor "></a> <a name="9-4" class="lemma-anchor "></a>
	</div>
	<div class="para-title level-3" label-module="para-title">
		<h3 class="title-text">
			<span class="title-prefix">贵宾犬</span>最佳配种日和配种
		</h3>
	</div>
	<div class="para" label-module="para">
		根据观察研究和养犬实践证明：发育正常母犬的<a target="_blank"
			href="/item/%E5%8F%91%E6%83%85%E6%9C%9F">发情期</a>共21天，母犬发情的第10天至第13天是最佳的配种日配种母犬最易受孕。所以一般在母犬发情的第10天进行首次交配，以后每天交配1次，连续交配4次，最后1次交配是母犬发情的第13天；或在母犬发情第10天首次交配，以后每隔1天交配1次，在最佳配种日交配2次。
		就发情母犬外生殖器的变化来说，到了第10天的最佳配种日时，发情母犬肿胀的阴唇已明显消退，颜色呈暗红色，阴唇周围出现皱纹，养犬者用手指触动刺激发情母犬的阴唇时，犬的阴唇神经很敏感，会出现有节律的收缩，母犬还会本能地叉开后肢，出现接受交配状。
		就发情母犬这时的生理状况来说，当母犬接受公犬交配、子宫受到<a target="_blank"
			href="/item/%E7%B2%BE%E5%AD%90/18377" data-lemmaid="18377">精子</a>刺激后，12～14小时开始<a
			target="_blank" href="/item/%E6%8E%92%E5%8D%B5">排卵</a>，排卵时间持续12～48小时。公犬射入母犬体内的精子，在母犬的子宫里存活48小时左右，这时遇到母犬的卵子则结合“坐胎”。在母犬发情的第10～13天的排卵期连续交配或隔日交配，都会获得最佳的<a
			target="_blank" href="/item/%E5%8F%97%E8%83%8E">受胎</a>效果。
	</div>
	<div class="anchor-list">
		<a name="9_5" class="lemma-anchor para-title"></a> <a
			name="sub42901_9_5" class="lemma-anchor "></a> <a name="孕犬的饲养管理"
			class="lemma-anchor "></a> <a name="9-5" class="lemma-anchor "></a>
	</div>
	<div class="para-title level-3" label-module="para-title">
		<h3 class="title-text">
			<span class="title-prefix">