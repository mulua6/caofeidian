<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/common.jsp"%>

<HTML>
<body>

<div id="Title_bar">
    <div id="Title_bar_Head"> 
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="${pageContext.request.contextPath}/style/images/title_arrow.gif"/> 用户列表
        </div>
        <div id="Title_End"></div>
    </div>
</div>

<div id="MainArea">
    <table cellspacing="0" cellpadding="0" class="TableStyle">
       
        <!-- 表头-->
        <thead>
            <tr align=center valign=middle id=TableTitle>
                <td width="100">序号</td>
                <td width="200">用户名</td>
                <td width="200">类型</td>
                <td width="200">板块</td>
                <td width="180">电话</td>
                <td>相关操作</td>
            </tr>
        </thead>
        
        <!--显示数据列表-->
        <tbody id="TableData" class="dataContainer" datakey="userList">
           <s:iterator value="%{users}"  id = "c"   status = "s" >
	             <tr  class="TableDetail1 template">
		                <td align="center" nowrap = "nowrap"><s:property value ="%{#s.count}"/></td >
		                <td align="center" nowrap = "nowrap">${username}&nbsp;</td>
		                <td align="center" nowrap = "nowrap">
		                <s:if test="typeId==1">超级管理员</s:if>
		                <s:if test="typeId==2">门户管理员</s:if>
		                <s:if test="typeId==3">审核管理员</s:if>
		                <s:if test="typeId==4">板块管理员</s:if>
		                
		                &nbsp;</td>
             <%-- <s:debug></s:debug> --%>
		                <td align="center" nowrap = "nowrap">
						<s:if test="plateId==1">船舶代理</s:if>
		                <s:if test="plateId==2">仓储</s:if>
		                <s:if test="plateId==3">汽车运输</s:if>
		                <s:if test="plateId==4">集装箱业务</s:if>
		                <s:if test="plateId==5">燃油供应</s:if>
		                <s:if test="plateId==6">商品配送中心</s:if>
		                <s:if test="plateId==7">设备维保</s:if>
		                <s:if test="plateId==8">物流信息平台</s:if>
		                <s:if test="plateId==9">散货养护</s:if>
		                <s:if test="plateId==-1">无</s:if>
		                <s:if test="plateId==999">所有板块</s:if>
		                &nbsp;</td>
		                <td align="center">${phone}&nbsp;</td>
		                <td align="center"><s:a onClick="return delConfirm()" action="userAction_delete.action?uid=%{uid}">删除</s:a>
		                    <%-- <s:a action="userAction_updateUI?uid=%{uid}">修改</s:a> --%>
		                </td>
		            </tr>
             </s:iterator>
        </tbody>
    </table>
    
     <div id="TableTail">
        <div id="TableTail_inside">
            <a href="userAction_saveUI.action"><img src="${pageContext.request.contextPath}/style/images/createNew.png" /></a>
        </div>
    </div>
    
    <div class="ItemBlock_Title1" id="userTitle" style="display: none;"><!-- 信息说明 --><div class="ItemBlock_Title1">
        	<img border="0" width="4" height="7" src="../style/blue/images/item_point.gif"/>用户:王欣然
        	<div id="userImage"></div>
        </div>
    <div class="ItemBlock_Title1" id="privilegeTitle" style="display: none;"><div class="ItemBlock_Title1">
        	<img border="0" width="4" height="7" src="${pageContext.request.contextPath}/style/blue/images/item_point.gif" />选择权限</div> 
        </div>
        
        <!-- 表单内容显示 -->
        <div class="ItemBlockBorder" style="display: none;" id="privilegeContent">
            <div class="ItemBlock">
                <table cellpadding="0" cellspacing="0" class="mainForm">
					<!--表头-->
					<thead>
						<tr align="LEFT" valign="MIDDLE" id="TableTitle">
							<td width="300px" style="padding-left: 7px;">
								<!-- 如果把全选元素的id指定为selectAll，并且有函数selectAll()，就会有错。因为有一种用法：可以直接用id引用元素 -->
								<input type="checkbox" id="allchecked" onchange="privilegeCheckedAll(this.checked,this.id)"/>
								<label for="cbSelectAll">全选</label>
							</td>
						</tr>
					</thead>
                   
			   		<!--显示数据列表-->
					<tbody id="TableData">
						<tr class="TableDetail1">
							<!-- 显示权限树 -->
							<td>
								<ul id='privilegeTree' class="tree">
							</td>
						</tr>
					</tbody>
                </table>
            </div>
        </div>
        <!-- 表单操作 -->
        <div id="InputDetailBar">
            <image onclick="savePrivilege()" src="${pageContext.request.contextPath}/style/images/save.png"/>
        </div>
</div>

</body>
</html>

