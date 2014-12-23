<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/web/title_jt.jsp"%>

<!-- 图片/FLASH -->

<div id="pdv_12020" class="pdv_class" title=""
	style="width: 1002px; height: 507px; top: 0px; left: 0px; z-index: 2">
	<div id="spdv_12020" class="pdv_content"
		style="overflow: hidden; width: 100%; height: 100%">
		<div class="pdv_border"
			style="margin: 0px; padding: 0px; height: 507px; border: 0px solid;">
			<div style="padding: 0px">
				<img src="./files/1291796237.jpg" border="0" width="100%">
			</div>
		</div>

	</div>
</div>


<!-- 当前位置提示条 -->

<div id="pdv_12028" class="pdv_class" title="当前位置"
	style="width: 676px; height: 46px; top: 37px; left: 287px; z-index: 11">
	<div id="spdv_12028" class="pdv_content"
		style="overflow: hidden; width: 100%; height: 100%">
		<div class="pdv_border"
			style="border: 0px; background-image: url(./files/top.png); padding: 0px; margin: 0px; height: 46px; background-position: initial initial; background-repeat: no-repeat no-repeat;">

			<link href="./files/nav.css" rel="stylesheet" type="text/css">
			<div id="nav">
				&nbsp;&nbsp;您现在的位置：
				<s:a action="webAction_index_jt.action">河南思齐集团</s:a>
				&gt;
				<s:a action="webAction_findAllNewsByType_jt.action?typeId=1&page=1">新闻列表</s:a>
				&gt;新闻中心

			</div>

		</div>

	</div>
</div>

<!-- 网页内容详情 -->

<div id="pdv_12062" class="pdv_class" title="内容标题" style="width: 674px; height: 350px; top: 120px; left: 290px; z-index: 12;">
	<div id="spdv_12062" class="pdv_content"
		style="overflow: auto; width: 100%;">
		<div class="pdv_border"
			style="margin: 0; padding: 0; height: 100%; border: 0px solid; background:;">
			<div id="newscontent" style="overflow: auto">
				<div class="newstitle">
					<s:property value="%{#news.title}" />
				</div>

				<!-- <div class="info">作者：管理员 &nbsp;&nbsp; 发布于：2010-04-13 16:25:07 &nbsp;&nbsp;</div> -->
				<div id="con" class="con">
					<p>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<s:property value="%{#news.content}" />
					</p>
				</div>

			</div>
		</div>
	</div>
</div>

</body>
</html>