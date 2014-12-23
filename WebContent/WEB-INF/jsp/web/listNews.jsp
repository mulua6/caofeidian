<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/web/title.jsp"%>

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
			style="border: 0px; background-image: url(http://#.png); padding: 0px; margin: 0px; height: 46px; background-position: initial initial; background-repeat: no-repeat no-repeat;">

			<link href="./files/nav.css" rel="stylesheet" type="text/css">
			<div id="nav">
				&nbsp;&nbsp;您现在的位置：
				<s:a action="webAction_index.action?typeId=%{typeId}">${companyName}</s:a>
				&gt; 新闻中心

			</div>

		</div>

	</div>
</div>

<!-- 文章翻页检索 -->

<div id="pdv_12029" class="pdv_class" title="文章检索"
	style="width: 674px; height: 430px; top: 120px; left: 290px; z-index: 12;">
	<div id="spdv_12029" class="pdv_content"
		style="overflow: visible; width: 100%;">
		<div class="pdv_border"
			style="margin: 0; padding: 0; height: 100%; border: 0px solid; background:;">
			<div style="padding: 0px">

				<link href="./files/newsquery.css" rel="stylesheet" type="text/css">

				<div id="newsquery">
					<ul id="queryul">
						<s:iterator value="%{newsList}" id="c" var="news" status="s">
							<li class="title">
								<div class="title">
									<s:a action="webAction_findOneNews?id=%{#news.id}"
										target="_self" class="newslist_diy">
										<s:property value="%{#news.title}" />
									</s:a>
								</div>
								<div class="time">
									<s:property value="%{#news.createTime}" />
								</div>
							</li>
						</s:iterator>

					</ul>
				</div>
			</div>
			<%@ include file="/WEB-INF/jsp/common/page.jsp"%>
		</div>
	</div>
</div>
</body>
</html>