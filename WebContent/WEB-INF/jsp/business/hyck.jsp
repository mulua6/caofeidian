<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/common.jsp"%>

<!DOCTYPE HTML>
<html>
<head>

<title>海运出口-锦程国际物流</title>
<meta name="keywords" content="海运出口" />
<meta name="description"
	content="锦程国际物流集团是国家商务部批准的一级国际货运代理企业，同时也是国家交通部批准的具有无船承运业务经营...。电话:4000205556" />

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Content/base.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Content/nav.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Content/pos.css" />

<script src="${pageContext.request.contextPath}/Scripts/jquery-1.7.1.js"></script>



<script src="${pageContext.request.contextPath}/Scripts/JsonPort.js?152"></script>
<script
	src="${pageContext.request.contextPath}/Scripts/JsonAirPort.js?152"></script>
<script
	src="${pageContext.request.contextPath}/Scripts/JsonShipCompany.js?152"></script>
<script
	src="${pageContext.request.contextPath}/Scripts/JsonAirLines.js?152"></script>

<script
	src="${pageContext.request.contextPath}/Scripts/Index_BsPostion.js"></script>
<script
	src="${pageContext.request.contextPath}/Scripts/Index_Postion.js"></script>


<script type="text/javascript"
	src="${pageContext.request.contextPath}/Scripts/jquery.hoverIntent.minified.js"></script>

<script src="${pageContext.request.contextPath}/Scripts/Index.js"></script>

<script src="${pageContext.request.contextPath}/Scripts/Index_Pub.js"></script>


<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Content/wlfw.css" />


</head>

<body>
	<div class="main_banner">


		<div class="wrapper">
			<div class="main_left">
				<div id="main_wlfw">
					<!--[if !IE]>业务介绍主体开始<![endif]-->

					<div id="wlfw_msg">
						<h1>${plate.name}</h1>
						<p>${plate.describe}</p>
					</div>



					<!--[if !IE]>业务介绍结束<![endif]-->
					<!--[if !IE]>内容主体开始<![endif]-->
					<div id="wlfw_con">

						<dl>
							<dt>■ ${plate.name}业务范围</dt>
							<dd>
								<p>${plate.business}</p>
							</dd>
						</dl>

						<dl>
							<dt>■ ${plate.name}操作流程</dt>
							<dd>
								<s:iterator value="plate.processes" var="p">
									<div>${step}、${name}</div>
									<div>&nbsp; &nbsp; &nbsp; &nbsp;${describe}</div>
								</s:iterator>
							</dd>
						</dl>

						<dl>
							<dt>■ ${plate.name}操作注意事项</dt>
							<dd>
								<s:iterator value="plate.attentions" var="a">
									<p>${order}、${content}</p>
								</s:iterator>
								<p>&nbsp;&nbsp;&nbsp;&nbsp;</p>
							</dd>
						</dl>

					</div>
					<!--[if !IE]>内容结束<![endif]-->
				</div>
				<div class="c" align="center">
					&nbsp; <font size="5"><s:a
							action="plateAction_check?plateId=%{plateId}&stateId=2">通过</s:a>&nbsp;&nbsp;
						<s:a action="plateAction_check?plateId=%{plateId }&stateId=1">不通过</s:a></font>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
