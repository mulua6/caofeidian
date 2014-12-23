<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/common.jsp"%>

<HTML>
<head>
</head>
<body>

<div id="Title_bar">
    <div id="Title_bar_Head"> 
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="${pageContext.request.contextPath}/style/images/title_arrow.gif"/> 业务列表
        </div>
        <div id="Title_End"></div>
    </div>
</div>

<div id="MainArea">
    <table id="myTable" cellspacing="0" cellpadding="0" class="TableStyle">
       
        <!-- 表头-->
        <thead>
            <tr align=center valign=middle id=TableTitle>
                <td width="100">序号</td>
                <td width="350">业务名称</td>
                <td width="150">所属公司</td>
                <td width="180">创建时间</td>
                <td>相关操作</td>
            </tr>
        </thead>
        
        <!--显示数据列表-->
        <tbody id="TableData" class="dataContainer" datakey="userList">
        	<s:iterator value="%{businessList}"  id = "c"   status = "s">
	             <tr  class="TableDetail1 template">
		                <td align="center" nowrap = "nowrap"><s:property value ="%{#s.count}"/></td >
		                <td>${title}&nbsp;</td>
		                <td align="center">${creator}&nbsp;</td>
		                <td align="center">${createTime}&nbsp;</td>
		                <td align="center"><s:a onClick="return delConfirm()" action="businessAction_deleteBusiness.action?id=%{id}">删除</s:a>
		                    <s:a action="businessAction_findOneBusiness?id=%{id}">修改</s:a>
		                </td>
		            </tr>
             </s:iterator>
        </tbody>
    </table>
    
     <div id="TableTail">
        <div id="TableTail_inside">
            <a href="forwardAction_turn?turnTo=addBusiness"><img src="${pageContext.request.contextPath}/style/images/createNew.png" /></a>
        </div>
    </div>
</div>
<%@ include file="/WEB-INF/jsp/common/page.jsp"%>
</body>
</html>

