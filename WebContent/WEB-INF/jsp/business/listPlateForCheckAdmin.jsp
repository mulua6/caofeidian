<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/common.jsp"%>

<HTML>
<body>

<div id="Title_bar">
    <div id="Title_bar_Head"> 
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="${pageContext.request.contextPath}/style/images/title_arrow.gif"/> 板块列表
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
                <td width="200">所属板块</td>
                <td width="200">模块名</td>
                <td width="200">状态</td>
                <td width="200">相关操作</td>
            </tr>
        </thead>
        
        <!--显示数据列表-->
        <tbody id="TableData" class="dataContainer" datakey="plateList">
        	<s:hidden name="fplateId"></s:hidden>
           <s:iterator value="%{childrenPlates}"  id = "c"   status = "s" >
	             <tr  class="TableDetail1 template">
		                <td align="center" nowrap = "nowrap"><s:property value ="%{#s.count}"/></td >
		                 <td align="center" nowrap = "nowrap">
		                	<s:if test="fid==1">船舶代理</s:if>
		                	<s:if test="state==1">审核未通过</s:if>
		                	<s:if test="state==2">审核通过</s:if>
		                </td>
		                <td align="center" nowrap = "nowrap">
		                <s:a action="plateAction_lookForCheck?plateId=%{id}">${name}&nbsp;</s:a>
		                </td>
		                <td align="center" nowrap = "nowrap">
		                	<s:if test="state==0">未审核</s:if>
		                	<s:if test="state==1">审核未通过</s:if>
		                	<s:if test="state==2">审核通过</s:if>
		                </td>
		                
		                
		                <td align="center"><s:a onClick="return delConfirm()" action="plateAction_delete.action?plateId=%{id}">删除</s:a>
		                  	<s:a action="plateAction_updateUI?plateId=%{id}">修改</s:a>
		                </td>
		            </tr>
             </s:iterator>
        </tbody>
    </table>
    
     <div id="TableTail">
        <div id="TableTail_inside">
            <a href="plateAction_saveUI.action"><img src="${pageContext.request.contextPath}/style/images/createNew.png" /></a>
        </div>
    </div>

</body>
</html>

