<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/web/title.jsp"%>

<!-- 图片/FLASH -->

<div id="pdv_12020" class="pdv_class" title="" style="width:1002px;height:507px;top:0px;left:0px; z-index:2">
<div id="spdv_12020" class="pdv_content" style="overflow:hidden;width:100%;height:100%">
<div class="pdv_border" style="margin: 0px; padding: 0px; height: 507px; border: 0px solid; ">
	<div style="height:25px;margin:1px;display:none;background:;">
		<div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
		
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="http://www.baidu.com/news/class/-1" style="line-height:25px;color:">更多</a>
		</div>
	</div>
<div style="padding:0px">


<img src="./files/1291796237.jpg" border="0" width="100%">

</div>
</div>

</div>
</div>

<!-- HTML编辑区 -->

<div id="pdv_12019" class="pdv_class" title="联系我们" style="width:183px;height:111px;top:384px;left:35px; z-index:10">
<div id="spdv_12019" class="pdv_content" style="overflow:hidden;width:100%;height:100%">
<div class="pdv_border" style="margin: 0px; padding: 0px; height: 111px; border: 0px solid; ">
	<div style="height:25px;margin:1px;display:none;background:;">
		<div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
		联系我们
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="http://www.baidu.com/news/class/-1" style="line-height:25px;color:">更多</a>
		</div>
	</div>
<div style="padding: 0px">
				<div style="FONT: 12px/18px simsun; COLOR: #fff">
					地&nbsp; 址：郑州市金水区中州大道西<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;.农业路北苏荷公寓629号<br>电&nbsp; 话：0371-62299666<br>
					传&nbsp; 真：0371-62299666<br>邮&nbsp;
					箱：siqijituan@163.com
				</div>
			</div>
</div>

</div>
</div>

<!-- 当前位置提示条 -->

<div id="pdv_12028" class="pdv_class" title="当前位置" style="width:676px;height:46px;top:37px;left:287px; z-index:11">
<div id="spdv_12028" class="pdv_content" style="overflow:hidden;width:100%;height:100%">
<div class="pdv_border" style="border: 0px; background-image: url(./files/top.png); padding: 0px; margin: 0px; height: 46px; background-position: initial initial; background-repeat: no-repeat no-repeat; ">
 
<link href="./files/nav.css" rel="stylesheet" type="text/css">
<div id="nav">
&nbsp;&nbsp;您现在的位置：<s:a action="webAction_index.action?typeId=%{typeId}"><s:property value ="%{#aboutUs.name}"/></s:a> 
 
&gt; 关于我们 

</div>

</div>

</div>
</div>

<!-- 网页内容详情 -->

<div id="pdv_12212" class="pdv_class" title="内容标题" style="width: 674px; height: 354px; top: 120px; left: 290px; z-index: 12; ">
<div id="spdv_12212" class="pdv_content" style="overflow:visible;width:100%;">
<div class="pdv_border" style="margin:0;padding:0;height:100%;border:0px  solid;background:;">
	<div style="height:25px;margin:1px;display:none;background:;">
		<div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
		内容标题
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="http://www.baidu.com/page/contact/-1" style="line-height:25px;color:">更多</a>
		</div>
	</div>
<div style="padding:0px">
<link href="./files/pagecontent.css" rel="stylesheet" type="text/css">
<div id="pagecontent" class="page_content"><div style="FLOAT: left; HEIGHT: 100%"><img border="0" alt="" src="./files/201004131271141684316.gif" style="display: inline; "></div>
<div style="MARGIN-LEFT: 220px"><font style="COLOR: #2f2f2f; FONT-SIZE: 24px; FONT-WEIGHT: bold"><s:property value ="%{#aboutUs.name}"/></font><br>
<img border="0" alt="" src="./files/201004131271142057356.gif" style="display: inline; "> <br>
<span style="LINE-HEIGHT: 18px">&nbsp; <s:property value =""/><br>
&nbsp; 地址：<s:property value ="%{#aboutUs.address}"/><br>
&nbsp; 邮编：<s:property value ="%{#aboutUs.zipCode}"/><br>
&nbsp; 联系人：<s:property value ="%{#aboutUs.contacts}"/><br>
&nbsp; 电话：<s:property value ="%{#aboutUs.tel}"/><br>
&nbsp; 传真：<s:property value ="%{#aboutUs.fax}"/><br>
&nbsp; 电子邮件：<s:property value ="%{#aboutUs.mail}"/></span><br><br>
<font style="COLOR: #2f2f2f; FONT-SIZE: 20px; FONT-WEIGHT: bold"></font><br>
<img border="0" alt="" src="./files/201004131271142057356.gif" style="display: inline; "> <br>
</div></div>
<script>

$(document).ready(function(){
	$("#pagecontent").find("img").hide();
	var w=$("#pagecontent")[0].offsetWidth;
	$("#pagecontent").find("img").each(function(){
		$(this).show();
		if(this.offsetWidth>w){
			this.style.width=w + "px";
			$().setBg();
		}
	});
		
});

</script>

</div>
</div>

</div>
</div>
</div>
<div id="bottom" style="width: 1002px; height: 172px; background-image: none; background-attachment: scroll; background-color: transparent; background-position: 0% 0%; background-repeat: repeat repeat; ">

<!-- 图片/FLASH -->

<div id="pdv_12018" class="pdv_class" title="" style="width:1002px;height:116px;top:0px;left:0px; z-index:1">
<div id="spdv_12018" class="pdv_bottom" style="overflow:hidden;width:100%;height:100%">
<div class="pdv_border" style="margin: 0px; padding: 0px; height: 116px; border: 0px solid; ">
	<div style="height:25px;margin:1px;display:none;background:;">
		<div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
		
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="http://www.baidu.com/news/class/-1" style="line-height:25px;color:">更多</a>
		</div>
	</div>
<div style="padding:0px">


<img src="./files/1291860827.jpg" border="0" width="100%">

</div>
</div>

</div>
</div>

<!-- 底部菜单（一级） -->

<div id="pdv_12017" class="pdv_class" style="width:371px;height:28px;top:80px;left:263px; z-index:4">
<div id="spdv_12017" class="pdv_bottom" style="overflow:hidden;width:100%;height:100%">
<div class="pdv_border" style="margin: 0px; padding: 0px; height: 28px; border: 0px solid; ">
	<div style="height:25px;margin:1px;display:none;background:;">
		<div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
		脚注栏目
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="http://www.baidu.com/news/class/-1" style="line-height:25px;color:">更多</a>
		</div>
	</div>

</div>
</div>

</div>
</div>

<!-- 底部信息编辑区 -->

<div id="pdv_12026" class="pdv_class" title="脚注信息" style="width:337px;height:90px;top:82px;left:648px; z-index:8">
<div id="spdv_12026" class="pdv_bottom" style="overflow:hidden;width:100%;height:100%">
<div class="pdv_border" style="margin: 0px; padding: 0px; height: 90px; border: 0px solid; ">
	<div style="height:25px;margin:1px;display:none;background:;">
		<div style="float:left;margin-left:12px;line-height:25px;font-weight:bold;color:">
		脚注信息
		</div>
		<div style="float:right;margin-right:10px;display:none">
		<a href="http://www.baidu.com/news/class/-1" style="line-height:25px;color:">更多</a>
		</div>
	</div>
<div style="padding:0px">
<div style="width:100%;text-align:center;font:12px/20px Arial, Helvetica, sans-serif">
<div style="TEXT-ALIGN: center; LINE-HEIGHT: 24px; MARGIN: 0px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; COLOR: #fff">版权所有 Copyright(C)2009-2010 某某物业管理有限公司</div>
</div>

</div>
</div>

</div>
</div>
</div>
</div><div id="bodyex">

</div>

<object id="b5tplugin" type="application/x-bang5taoplugin" style="position:absolute;left:-9000px;top:-9000px;" width="0" height="0"></object></body></html>