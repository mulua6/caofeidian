<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/common.jsp"%>

<HTML>
<HEAD>
	<TITLE>图片上传</TITLE>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script language="javascript" src="${pageContext.request.contextPath}/style/js/pageCommon.js" charset="utf-8"></script>
    <script language="javascript" src="${pageContext.request.contextPath}/style/js/PageUtils.js" charset="utf-8"></script>
    <script language="javascript" src="${pageContext.request.contextPath}/style/js/DemoData.js" charset="utf-8"></script>
	<script language="javascript" src="${pageContext.request.contextPath}/style/js/DataShowManager.js" charset="utf-8"></script>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/style/blue/pageCommon.css" />
    <script type="text/javascript">
    
    
    
    
    </script>


</HEAD>
<body>

<!-- 标题显示 -->
<div id="Title_bar">
    <div id="Title_bar_Head">
        <div id="Title_Head"></div>
        <div id="Title"><!--页面标题-->
            <img border="0" width="13" height="13" src="${pageContext.request.contextPath}/style/images/title_arrow.gif"/> 图片上传
        </div>
        <div id="Title_End"></div>
    </div>
</div>

<!--显示表单内容-->
<div id=MainArea>
    <form action="businessAction_uploadPic.action" method="POST" enctype="multipart/form-data">
        <div class="ItemBlock_Title1"><!-- 信息说明<DIV CLASS="ItemBlock_Title1">
        	<IMG BORDER="0" WIDTH="4" HEIGHT="7" SRC="${pageContext.request.contextPath}/style/blue/images/item_point.gif" /> 公司简介</DIV>  -->
        </div>
        
        <!-- 表单内容显示 -->
        <div class="ItemBlockBorder">
            <div class="ItemBlock">
                <table cellpadding="0" cellspacing="0" class="mainForm">
                      <tr>
                        <td width="100"><h3>所属公司:&nbsp;&nbsp;</h3></td>
                        <td>
                        <s:select list="#{1:'河南思齐集团',2:'郑州思齐不动产有限公司',3:'河南思齐置业有限公司',4:'河南思齐建设有限公司',5:'河南思齐评估有限公司'}"  name= "typeId"  listKey="key" listValue="value"   style="  width:200px; height:30px; "></s:select> 
                        </td>
                    </tr>
                	<tr>
                        <td width="100"><h3>图片标题:&nbsp;&nbsp;</h3></td>
                        <td><s:textfield  style="  width:600px; height:23px;  " name="title" class="InputStyle" ></s:textfield> *</td>
                    </tr>

                	<tr>
                        <td width="100"><h3>选择图片:&nbsp;&nbsp;</h3></td>
                        <td>
                        <s:file  id="ifpic" name="photo" value="上传图片"></s:file>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        
        <!-- 表单操作 -->
        <div id="InputDetailBar">
            <input type="image" src="${pageContext.request.contextPath}/style/images/save.png"/>
            <a href="javascript:history.go(-1);"><img src="${pageContext.request.contextPath}/style/images/goBack.png"/></a>
        </div>
    </form>
</div>

<div class="Description">
	说明：<br />
	1:为保持页面美观，请将需要上传的图片修改为宽201px、高190px
</div>

</body>
</html>
