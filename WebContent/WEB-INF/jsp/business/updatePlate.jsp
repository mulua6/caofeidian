<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/common.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>添加模块</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<!-- <script type="text/javascript">
	$(document).ready(function() {

		$("#plate").hide();
		$("#type").change(function() {
			$("#type option").each(function(i, o) {
				if ($(this).attr("selected")) {
					var id = $(this).val();
					if (id != 4) {
						$("#plate").hide();
					}
					if (id == 4) {
						$("#plate").show();
					}
				}
			});
		});
	});
</script> -->
<script type="text/javascript">
		var i =1;
		var j =1;
	function addOne(){
		//$("#table").append("<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;步骤名称</td><td>&nbsp;&nbsp;<input type=\"text\" name=\"process.name\" value=\"\" id=\"userAction_save_process_name\" class=\"InputStyle\" style=\"  width:250px;\"/><br/></td><td>步骤描述</td><td>&nbsp;&nbsp;<input type=\"text\" name=\"process.content\" value=\"\" id=\"userAction_save_process_content\" class=\"InputStyle\" style=\"  width:300px;\"/></td><td><input type=\"button\" id=\"addButton1\" value=\"+\" onclick=\"addOne()\"/><br/></td></tr>");
//		$("#table").append("<tr><td>步骤名称"+i+"</td><td>&nbsp;&nbsp;<input type=\"text\" name=\"processes["+(i-1)+"].name\" value=\"\" id=\"userAction_save_process_name\" class=\"InputStyle\" style=\"  width:250px;\"/><br/></td><td>描述</td><td>&nbsp;&nbsp;<input type=\"text\" name=\"processes["+(i-1)+"].describe\" value=\"\" id=\"userAction_save_process_content\" class=\"InputStyle\" style=\"  width:300px;\"/></td></tr>");
		$("#table").append("<tr><td>步骤名称"+i+"</td><td>&nbsp;&nbsp;<input type=\"text\" name=\"processName\" value=\"\" id=\"userAction_save_process_name\" class=\"InputStyle\" style=\"  width:250px;\"/><br/></td><td>描述</td><td>&nbsp;&nbsp;<input type=\"text\" name=\"processDescribe\"  id=\"userAction_save_process_content\" class=\"InputStyle\" style=\"  width:300px;\"/></td></tr>");
		i++;
		};
	function addAttention(){
			//$("#table").append("<tr id=\"attention\"><td>注意事项</td><td>&nbsp;&nbsp;<input type=\"text\" style=\"  width:250px;\" class=\"InputStyle\" id=\"userAction_save_attention_name\" value=\"\" name=\"attention.name\"><br></td><td><input type=\"button\" onclick=\"addOne()\" value=\"+\" id=\"addButton1\"><br></td></tr>");
			$("#addButton1").hide();
			$("#table").append("<tr><td>注意事项"+j+"</td><td>&nbsp;&nbsp;<input type=\"text\" style=\"  width:250px;\" class=\"InputStyle\" id=\"userAction_save_attention_name\" value=\"\" name=\"attentionContent\"><br></td></tr>");
			j++;
			};
	
</script>
</head>

<body>
	<!-- 标题显示 -->
	<div id="Title_bar">
		<div id="Title_bar_Head">
			<div id="Title_Head"></div>
			<div id="Title">
				<!--页面标题-->
				<img border="0" width="13" height="13"
					src="./css/images/title_arrow.gif" /> 模块信息
			</div>
			<div id="Title_End"></div>
		</div>
	</div>

	<!--显示表单内容-->
	<div id=MainArea>
		<s:form action="plateAction_updatePlate">
			<div class="ItemBlock_Title1">
				<!-- 信息说明 -->
				<div class="ItemBlock_Title1">
					<img border="0" width="4" height="7"
						src="./css/blue/images/item_point.gif" /> 模块信息
				</div>
			</div>
			<!-- 表单内容显示 -->
			<div class="ItemBlockBorder">
				<div class="ItemBlock">
					<table cellpadding="0" cellspacing="0" class="mainForm" id="table">
						<%-- <tr>
							<td>类型</td>
							<td><s:select id="type" name="typeId"
									list="#{2:'门户管理员',3:'审核管理员',4:'板块管理员'}" theme="simple"
									listKey="key" listValue="value" headerKey="0"
									headerValue="请选择类型" cssClass="InputStyle"></s:select>*</td>
						</tr>
						<tr id="plate">
							<td>板块</td>
							<td><s:select name="plateId" list="#{1:'船舶代理',2:'仓储',3:'汽车运输'}"
									theme="simple" listKey="key" listValue="value" headerKey="0"
									headerValue="请选择板块" cssClass="InputStyle"></s:select>*</td>
						</tr> --%>
						<tr>
							<td><s:hidden name="fplateId" ></s:hidden></td>
						</tr>
						<tr>
							<td><s:hidden name="id" value="%{plate.id}"></s:hidden></td>
						</tr>
						<tr>
							<td>模块名称</td>
							<td><s:textfield name="name" value="%{plate.name}" style="  width:350px;" cssClass="InputStyle"></s:textfield></td>
						</tr>

						<tr>
							<td>简介</td>
							<td><s:textarea name="describe" value="%{plate.describe}" style="  width:350px; height:100px;" cssClass="InputStyle"></s:textarea>
							</td>
						</tr>
						<tr>
							<td>业务</td>
							<td><s:textarea name="business" value="%{plate.business}" style="  width:350px; height:100px;" cssClass="InputStyle"></s:textarea>
							</td>
						</tr>
						<tr><td>步骤：</td></tr>
						<s:iterator value="plate.processes" var="p">
							<tr>
								<td><s:hidden name="processIds" value="%{#p.id}"></s:hidden></td>
								<td><s:textfield name="processName" value="%{#p.name}"></s:textfield></td>
								<td><s:textfield name="processDescribe" value="%{#p.describe}"></s:textfield></td>
							</tr>
						</s:iterator>
						<tr><td>注意事项：</td></tr>
						<s:iterator value="plate.attentions" var="a">
							<tr>
								<td><s:hidden name="attentionIds" value="%{#a.id}"></s:hidden></td>
								<td><s:textfield name="attentionContent" value="%{#a.content}"></s:textfield></td>
							</tr>
						</s:iterator>
					</table>
				</div>
			</div>



			<!-- 表单操作 -->
			<div id="InputDetailBar">
				<input type="image" src="./css/images/save.png" />
				<s:a href="javascript:history.go(-1);">
					<img src="./css/images/goBack.png" />
				</s:a>
			</div>
		</s:form>
	</div>
</body>
</html>
