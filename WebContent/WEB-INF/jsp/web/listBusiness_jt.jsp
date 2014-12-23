<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/web/title_jt.jsp"%>
<script>
	$(document).ready(function() {
		$("#pagecontent").find("img").hide();
		var w = $("#pagecontent")[0].offsetWidth;
		$("#pagecontent").find("img").each(function() {
			$(this).show();
			if (this.offsetWidth > w) {
				this.style.width = w + "px";
				$().setBg();
			}
		});

	});
</script>
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

				&gt;业务资源

			</div>

		</div>

	</div>
</div>

<!-- 网页内容详情 -->

<div id="pdv_12062" class="pdv_class" title="内容标题"
	style="width: 674px; height: 200px; top: 120px; left: 290px; z-index: 12;">
	<div id="spdv_12062" class="pdv_content"
		style="overflow: visible; width: 100%;">
		<div class="pdv_border"
			style="margin: 0; padding: 0; height: 100%; border: 0px solid; background:;">

			<div style="padding: 0px">
				<link href="./files/pagecontent.css" rel="stylesheet"
					type="text/css">
				<div id="pagecontent" class="page_content">
					<div style="font-size: 12px;">
						<s:iterator value="%{businessList}" id="c" var="business"
							status="s">
							<p>
								<font face="Verdana"><strong><s:property
											value="%{#business.title}" /><br></strong><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:property
										value="%{#business.content}" /></font>
							</p>
						</s:iterator>
					</div>

				</div>
				<div>
					<%-- <%@ include file="/WEB-INF/jsp/common/page.jsp"%> --%>
				</div>
			</div>

		</div>
	</div>
</div>
</body>
</html>
