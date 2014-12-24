<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/jsp/common/common.jsp"%>
    <%@ include file="/kefu.html"%>
<!DOCTYPE HTML>
<html>
<head>
    
    <title>曹妃甸港集团物流配套服务有限公司</title>
    <meta name="keywords" content="物流服务，船舶代理、仓储服务、汽车运输、集装箱装拆、港口设备维修保养 " />
    <meta name="description" content="曹妃甸港物流配套服务有限公司提供船舶代理、仓储服务、汽车运输、集装箱装拆、港口设备维修保养。电话:                   " />

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Content/base.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Content/nav.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Content/pos.css" />

    <script src="${pageContext.request.contextPath}/Scripts/jquery-1.7.1.js"></script>

    
    
    <script src="${pageContext.request.contextPath}/Scripts/JsonPort.js?92"></script>
    <script src="${pageContext.request.contextPath}/Scripts/JsonAirPort.js?92"></script>
    <script src="${pageContext.request.contextPath}/Scripts/JsonShipCompany.js?92"></script>
    <script src="${pageContext.request.contextPath}/Scripts/JsonAirLines.js?92"></script>

    <script src="${pageContext.request.contextPath}/Scripts/Index_BsPostion.js"></script>
    <script src="${pageContext.request.contextPath}/Scripts/Index_Postion.js"></script>
    

    <script type="${pageContext.request.contextPath}/text/javascript" src="${pageContext.request.contextPath}/Scripts/jquery.hoverIntent.minified.js"></script>

    <script src="${pageContext.request.contextPath}/Scripts/Index.js"></script>

    <script src="${pageContext.request.contextPath}/Scripts/Index_Pub.js"></script>

    
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Content/wlfw.css" />


</head>

<body>
    <div class="top">
        <div class="wrapper">
            <p>
                <a id="login_a" rel="nofollow" href="${pageContext.request.contextPath}/MemberCenter/Login" target="_blank" style="display: none;">登录  </a>
                <a id="register_a" rel="nofollow" href="${pageContext.request.contextPath}/MemberCenter/Register" target="_blank" style="display: none;">注册</a>
                <b id="loginSucc" style="display: none;"></b>
                <a id="loginSucc_a" rel="nofollow" href="${pageContext.request.contextPath}/MemberCenter/Exit" target="_blank" style="display: none;">[退出] </a>| 
                <a target="_blank" href="${pageContext.request.contextPath}/SpecialService/kjds/index.shtml">跨境电商物流服务</a>  | 
                <a rel="nofollow" target="_self" href="http://www.caofeidianport56.com/">合作加盟</a>  | 
                <a rel="nofollow" href="${pageContext.request.contextPath}/MemberCenter/MemberCenter" target="_blank">会员中心</a> | 
                <a rel="nofollow" href="${pageContext.request.contextPath}/wap/intro.shtml" target="_blank">手机版</a> | 
                <a href="http://www.jctrans.cn/english/" target="_blank">ENGLISH</a> | 
                <a rel="nofollow" href="${pageContext.request.contextPath}/russian/russia.shtml" target="_blank" rel="nofollow">RUSSIAN</a> | 
                <a rel="nofollow" onclick="AddFavorite('http://www.caofeidianport56.com','曹妃甸港集团物流配套服务有限公司')">收藏曹妃甸港集团物流</a>  | 
                <span>800-000-8888</span>
            </p>
        </div>
    </div>
    <div class="nav-index">
        <div class="wrapper">
            <div class="logo-news">
                <a rel="nofollow" href="${pageContext.request.contextPath}/">
                    <img src="${pageContext.request.contextPath}/images/index1_02.png" alt="" width="263" height="122" border="0" align="top" />
                </a>
            </div>
            <div class="search">
                <div class="search_box">
                    <div style="display: block;" class="s-content" id="con_scontent_1">
                        <ul>
                            <li><span>
                                <select name="select_yunjia" id="select_yunjia" class="kuang" onchange="search_Index()">
                                    <option value="0">整&nbsp;箱</option>
                                    <option value="1">拼&nbsp;箱</option>
                                    <option value="2">汽&nbsp;运</option>
                                </select>
                            </span></li>
                            <li id="con_s_1_0">
                                <em>起始港：</em>
                                <span class="ipt-asy bord">
                                    <input id="GPStartPort" name="GPStartPort" class="por_a" value="" vid="" vcountry="" type="text">
                                </span>
                                <em>目的港：</em>
                                <span class="ipt-ayb">
                                    <input id="GPEndPort" name="GPEndPort" class="por_a" value="" vid="" vcountry="" type="text">
                                </span>
                            </li>
                            <li id="con_s_1_1" style="display: none">
                                <em>起始港：</em>
                                <span class="ipt-asy bord">
                                    <input type="text" id="LCLStartPort" name="LCLStartPort" value="" vid="" vcountry="" class="por_a">
                                </span>
                                <em>目的港：</em>
                                <span class="ipt-ayb">
                                    <input type="text" id="LCLEndPort" name="LCLEndPort" value="" vid="" vcountry="" class="por_a">
                                </span>
                            </li>
                            <li id="con_s_1_2" style="display: none">
                                <em>起始地：</em>
                                <span class="ipt-asy bord">
                                    <input id="AirStartPort" name="AirStartPort" class="por_a" value="" vid="" vcountry="" type="text">
                                </span>
                                <em>目的地：</em>
                                <span class="ipt-ayb">
                                    <input id="AirEndPort" name="AirEndPort" class="por_a" value="" vid="" vcountry="" type="text">
                                </span>
                            </li>
                        </ul>
                    </div>
                    <input id="btnSearch" type="button" value="搜 索" onclick="GPSearch();" class="search-btn">
                </div>
            </div>
            <div class="menu">
                <ul id="topnav">
                    <li><a href="${pageContext.request.contextPath}/" class="home"></a></li>
                    <li><a href="${pageContext.request.contextPath}/Feight.html" class="nav_yj">运价中心</a>
                        <div class="sub">
                            <ul>
                                <li><a href="${pageContext.request.contextPath}/feight/GPList/-------1.html">整箱运价</a></li>
                                <li><a href="${pageContext.request.contextPath}/feight/LCLList/-------1.html">拼箱运价</a></li>
                                <li><a href="${pageContext.request.contextPath}/feight/AirList/-------1.html">空运运价</a></li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/TransService.html" class="nav_wlfw">物流服务</a>
                        <div class="sub">
                            <div class="row sub_wlfw">
                            
                            	<s:iterator value="indexPlates">
                            		 <ul>
	                                    <li>
	                                        <h2><s:a >${name}</s:a></h2>
	                                    </li>
	                                    <s:iterator value="indexPlates.childs">
	                                    	<li><s:a action="?plateId=%{id}">${name}</s:a></li>
	                                    </s:iterator>
                                	</ul>
                            	</s:iterator>
                            
                            
                            
                            
                            
                            
                               <%--  <ul>
                                    <li>
                                        <h2><a href="${pageContext.request.contextPath}/TransService/JcGP/">船舶代理</a></h2>
                                    </li>
                                    <li><a href="${pageContext.request.contextPath}/TransService/Detail/hyck.jsp">广州</a></li>
                                    <li><a href="${pageContext.request.contextPath}/TransService/Detail/hyjk.html">宁波</a></li>
                                    <li><a href="${pageContext.request.contextPath}/TransService/Detail/nmhy.html">上海</a></li>
                                    <li><a href="${pageContext.request.contextPath}/TransService/Detail/szys.html">待添加</a></li>
                                </ul>
                                <ul>
                                    <li>
                                        <h2><a href="${pageContext.request.contextPath}/TransService/JcAir/">集装箱业务</a></h2>
                                    </li>
                                    <li><a href="${pageContext.request.contextPath}/TransService/Detail/kyck.html">煤炭装箱</a></li>
                                    <li><a href="${pageContext.request.contextPath}/TransService/Detail/kyjk.html">水泥熟料 </a></li>
                                    <li><a href="${pageContext.request.contextPath}/TransService/Detail/nmky.html">冷卷装箱</a></li>
                                    <li><a href="${pageContext.request.contextPath}/TransService/Detail/xgzq.html">装拆箱</a></li>
                                </ul>
                                <ul>
                                    <li>
                                        <h2><a href="${pageContext.request.contextPath}/TransService/JcRail/">铁路</a></h2>
                                    </li>
                                    <li><a href="${pageContext.request.contextPath}/TransService/Detail/gjtl.html">国际铁路</a></li>
                                    <li><a href="${pageContext.request.contextPath}/TransService/Detail/gntl.html">国内铁路 </a></li>
                                    <li><a href="${pageContext.request.contextPath}/TransService/Detail/dsly.html">多式联运</a></li>
                                </ul>
                                <ul>
                                    <li>
                                        <h2><a href="${pageContext.request.contextPath}/TransService/JcRoad/">汽运</a></h2>
                                    </li>
                                    <li><a href="${pageContext.request.contextPath}/TransService/Detail/gjqy.html">短途倒运</a></li>
                                    <li><a href="${pageContext.request.contextPath}/TransService/Detail/nmzc.html">长途倒运</a></li>
                                    <li><a href="${pageContext.request.contextPath}/TransService/Detail/nmld.html">内贸零担</a></li>
                                </ul>
                                <ul>
                                    <li>
                                        <h2><a href="${pageContext.request.contextPath}/TransService/JcExpress/">散货养护</a></h2>
                                    </li>
                                    <li><a href="${pageContext.request.contextPath}/TransService/Detail/ckkd.html">饮用水业务 </a></li>
                                    <li><a href="${pageContext.request.contextPath}/TransService/Detail/jkkd.html">货物养护</a></li>
                                    <li>
                                        <h2><a href="${pageContext.request.contextPath}/TransService/Detail/ccfw.html">仓储</a></h2>
                                    </li>
                                    <li><a href="${pageContext.request.contextPath}/TransService/Detail/ccfw.html">仓储服务</a></li>
                                </ul>
                                <ul>
                                    <li>
                                        <h2><a href="${pageContext.request.contextPath}/TransService/JcImportAndExportAgent/">进出口代理</a></h2>
                                    </li>
                                    <li><a href="${pageContext.request.contextPath}/TransService/Detail/bgbj.html">报关报检 </a></li>
                                    <li><a href="${pageContext.request.contextPath}/TransService/Detail/whsf.html">外汇收付</a></li>
                                    <li><a href="${pageContext.request.contextPath}/TransService/Detail/hybx.html">货运保险</a></li>
                                    <li><a href="${pageContext.request.contextPath}/TransService/Detail/wldk.html">物流融资</a></li>
                                </ul> --%>
                            </div>
                        </div>
                    </li>
                    <li><a href="${pageContext.request.contextPath}/SpecialService.html" class="nav_tsfw">特色服务</a>
                        <div class="sub">
                            <div class="row">
                                <ul>
                                    <li><a href="${pageContext.request.contextPath}/SpecialService/kjds/index.shtml" style="width: 150px;">港口设备维保</a></li>
                                    <li><a href="${pageContext.request.contextPath}/SpecialService/srwp/index.shtml">门座式起重机</a></li>
                                    <li><a href="${pageContext.request.contextPath}/SpecialService/cwty/index.shtml">岸桥</a></li>
                                    <li><a href="${pageContext.request.contextPath}/SpecialService/jcty/index.shtml">卸船机</a></li>
                                    <li><a href="${pageContext.request.contextPath}/SpecialService/zhys/index.shtml">自动取料机</a></li>
                                </ul>
                                <ul>
                                    <li><a href="${pageContext.request.contextPath}/SpecialService/gyljr/index.shtml" style="width: 140px;">信息服务</a></li>
                                    <li><a href="${pageContext.request.contextPath}/SpecialService/tzgys/index.shtml">港口设备信息</a></li>
                                    <li><a href="${pageContext.request.contextPath}/SpecialService/wxpys/index.shtml">汽车倒运信息</a></li>
                                    <li><a href="${pageContext.request.contextPath}/SpecialService/szhfw/index.shtml">仓储信息</a></li>
                                    <li><a href="${pageContext.request.contextPath}/SpecialService/gzcyw/index.shtml">集装箱信息</a></li>
                                </ul>
                                <ul>
                                    <li><a href="${pageContext.request.contextPath}/SpecialService/hwysbx/index.shtml">货物运输保险</a></li>
                                    <li><a href="${pageContext.request.contextPath}/SpecialService/qccjyw/index.shtml">添加</a></li>
                                    <li><a href="${pageContext.request.contextPath}/SpecialService/hwys/index.shtml">添加</a></li>
                                    <li><a href="${pageContext.request.contextPath}/SpecialService/tlfw/index.shtml">添加</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li><a href="${pageContext.request.contextPath}/GlobalNetwork.html" class="nav_qqwl">全国网络</a>
                        <div class="sub">
                            <div class="row">
                                <ul style="width: 60px;">
                                    <li><a href="${pageContext.request.contextPath}/GlobalNetWork/Gnfgs-dalian.html">大连 </a></li>
                                    <li><a href="${pageContext.request.contextPath}/GlobalNetWork/Gnfgs-beijing.html">北京</a></li>
                                    <li><a href="${pageContext.request.contextPath}/GlobalNetWork/Gnfgs-tianjin.html">天津</a></li>
                                    <li><a href="${pageContext.request.contextPath}/GlobalNetWork/Gnfgs-qingdao.html">青岛</a></li>
                                    <li><a href="${pageContext.request.contextPath}/GlobalNetWork/Gnfgs-nanjing.html">南京</a></li>
                                </ul>
                                <ul style="width: 60px;">
                                    <li><a href="${pageContext.request.contextPath}/GlobalNetWork/Gnfgs-suzhou.html">苏州</a></li>
                                    <li><a href="${pageContext.request.contextPath}/GlobalNetWork/Gnfgs-shanghai.html">上海</a></li>
                                    <li><a href="${pageContext.request.contextPath}/GlobalNetWork/Gnfgs-ningbo.html">宁波</a></li>
                                    <li><a href="${pageContext.request.contextPath}/GlobalNetWork/Gnfgs-hangzhou.html">杭州</a></li>
                                    <li><a href="${pageContext.request.contextPath}/GlobalNetWork/Gnfgs-xiamen.html">厦门</a></li>
                                </ul>
                                <ul style="width: 60px;">
                                    <li><a href="${pageContext.request.contextPath}/GlobalNetWork/Gnfgs-shenzhen.html">深圳</a></li>
                                    <li><a href="${pageContext.request.contextPath}/GlobalNetWork/Gnfgs-guangzhou.html">广州</a></li>
                                    <li><a href="${pageContext.request.contextPath}/GlobalNetWork/Gnfgs-xian.html">西安</a></li>
                                    <li><a href="${pageContext.request.contextPath}/GlobalNetWork/Gnfgs-wuhan.html">武汉</a></li>
                                    <li><a href="${pageContext.request.contextPath}/GlobalNetWork/Gnfgs-chongqing.html">重庆</a></li>
                                </ul>
                                <ul style="width: 90px;">
                                    <li><a href="${pageContext.request.contextPath}/GlobalNetWork/Gnfgs-changsha.html">长沙</a></li>
                                    <li><a href="${pageContext.request.contextPath}/GlobalNetWork/Gnfgs-haerbin.html">哈尔滨</a></li>
                                    <li><a href="${pageContext.request.contextPath}/GlobalNetWork/Gnfgs-shijiazhuang.html">石家庄</a></li>
                                    <li><a href="${pageContext.request.contextPath}/GlobalNetWork/Hwyw.html">海外业务</a></li>
                                    <li><a href="${pageContext.request.contextPath}/GlobalNetWork/Other.html">其他</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li><a href="${pageContext.request.contextPath}/CustomerCase.html" class="nav_khal">客户案例</a> </li>
                    <li><a href="${pageContext.request.contextPath}/News.html" class="nav_xwzx">新闻中心</a> </li>
                    <li><a href="${pageContext.request.contextPath}/ApproachJC.html" class="nav_zjjc">走进</a> </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="main_banner">
        
 <div class="wrapper">
     <div class="navpostion c">您所在的位置：
         <a href="${pageContext.request.contextPath}/">首页</a> 
         <span style="min-width: 10px;"></span>&gt; 
         物流服务
     </div>
 </div>
 <div class="wrapper">
 	<s:iterator value="indexPlates" var="ip" status="s">
 	
	 	<s:if test="#s.count!=9">
	       <s:if test="#s.count%2==0">
	       		<div id="wlfwbox" style="margin-right: 15px;">
	 		</s:if>
	 		<s:if test="#s.count%2==1">
	       			<div id="wlfwbox">
	 		</s:if>
	         <div class="pic">
	             <img src="${pageContext.request.contextPath}/images/wlfw<s:property value="%{#s.count}"/>.png" width="523" height="164"></div>
	         <h2>${name}</h2>
	         <h4>${describe}</h4>
	         <ul>
	         	<s:iterator value="childs" var="ipc">
	             	<li><s:a action="plateAction_findPlateForView?plateId=%{id}" target="_blank">${name}</s:a></li>
	         	</s:iterator>
	         </ul>
	         <div class="more">
	             <!--<a href="wlfw-d.shtml">查看海运详情>></a>-->
	         </div>		
	 	</s:if>
	 	<s:if test="#s.count==9">
	     <div id="wlfwbox" style="width: 1138px;">
	         <div class="pic l">
	             <img src="${pageContext.request.contextPath}/images/wlfw<s:property value="%{#s.count}"/>.png" width="523" height="164"></div>
	         <div class="l" style="width: 550px; margin-left: 25px;">
	             <h2>${name}</h2>
	             <h4>${describe} </h4>
	             <ul>
	                 <s:iterator value="childs" var="ipc">
	             	 <li><s:a action="plateAction_findPlateForView?plateId=%{id}" target="_blank">${name}</s:a></li>
	         	</s:iterator>
	             </ul>
	         </div>
	     </div>
	 	
	 	</s:if>
     </div>
    		 <s:if test="#s.count%2==0">
	       			 <div class="c">&nbsp;</div>
	 		</s:if>
    </s:iterator>
 
 
 <%--
     <!--[if !IE]>海运主体开始<![endif]-->
     <div id="wlfwbox" style="margin-right: 15px;">
         <div class="pic">
             <img src="${pageContext.request.contextPath}/images/wlfw1.png" width="523" height="164"></div>
         <h2>船舶代理</h2>
         <h4>全国主要基本港海运内贸，目前开辟主要航线有广州、宁波、上海。</h4>
         <ul>
             <li><a href="${pageContext.request.contextPath}/TransService/Detail/hyck.html" target="_blank">广州</a></li>
             <li><a href="${pageContext.request.contextPath}/TransService/Detail/hyjk.html" target="_blank">上海</a></li>
             <li><a href="${pageContext.request.contextPath}/TransService/Detail/nmhy.html" target="_blank">宁波</a></li>
             <li><a href="${pageContext.request.contextPath}/TransService/Detail/szys.html" target="_blank">散杂运输</a></li>
         </ul>
         <div class="more">
             <!--<a href="wlfw-d.shtml">查看海运详情>></a>-->
         </div>
     </div>

     <!--[if !IE]>船舶代理结束<![endif]-->

     <!--[if !IE]>仓储主体开始<![endif]-->
     <div id="wlfwbox">
         <div class="pic">
             <img src="${pageContext.request.contextPath}/images/wlfw2.png" width="523" height="164"></div>
         <h2>仓储</h2>
         <h4>临近曹妃甸港口最近的大型现代化仓库；仓库面积50万平米；自动化装卸设备齐全；安放系统先进。</h4>
         <ul>
             <li><a href="${pageContext.request.contextPath}/TransService/Detail/kyck.html" target="_blank">内贸仓储</a></li>
             <li><a href="${pageContext.request.contextPath}/TransService/Detail/kyjk.html" target="_blank">转运仓储</a></li>
             <li><a href="${pageContext.request.contextPath}/TransService/Detail/nmky.html" target="_blank">预约存储</a></li>
             <li><a href="${pageContext.request.contextPath}/TransService/Detail/xgzq.html" target="_blank">预约提货</a></li>
         </ul>
         <div class="more">
             <!--<a href="wlfw-d.shtml">查看仓储详情>></a>-->
         </div>
     </div>
     <!--[if !IE]>仓储结束<![endif]-->
     <div class="c">&nbsp;</div>


     <!--[if !IE]>汽运主体开始<![endif]-->
     <div id="wlfwbox" style="margin-right: 15px;">
         <div class="pic">
             <img src="${pageContext.request.contextPath}/images/wlfw4.png" width="523" height="164"></div>
         <h2>汽车运输</h2>
         <h4>提供专业的国内运输、进站、装车；签发提单、运杂费结算，快邮国内、外单证；办理在国外的进口报关、纳税、转运、送货。</h4>
         <ul>
             <li><a href="${pageContext.request.contextPath}/TransService/Detail/gjqy.html" target="_blank">港内汽运</a></li>
             <li><a href="${pageContext.request.contextPath}/TransService/Detail/nmzc.html" target="_blank">内贸整车</a></li>
             <li><a href="${pageContext.request.contextPath}/TransService/Detail/nmld.html" target="_blank">内贸零担</a></li>
         </ul>
         <div class="more">
             <!--<a href="wlfw-d.shtml">查看汽运详情>></a>-->
         </div>
     </div>
     <!--[if !IE]>汽车运输结束<![endif]-->
     <!--[if !IE]>集装箱主体开始<![endif]-->
     <div id="wlfwbox">
         <div class="pic">
             <img src="${pageContext.request.contextPath}/images/wlfw3.png" width="523" height="164"></div>
         <h2>集装箱业务</h2>
         <h4>提供专业的集装箱拆装箱，集装箱倒运，装船。</h4>
         <ul>
             <li><a href="${pageContext.request.contextPath}/TransService/Detail/gjtl.html" target="_blank">冷卷装拆箱</a></li>
             <li><a href="${pageContext.request.contextPath}/TransService/Detail/gntl.html" target="_blank">散杂装拆箱</a></li>
             <li><a href="${pageContext.request.contextPath}/TransService/Detail/dsly.html" target="_blank">建杂装拆箱</a></li>
         </ul>
         <div class="more">
             <!--<a href="wlfw-d.shtml">查看集装箱详情>></a>-->
         </div>
     </div>

     <!--[if !IE]>集装箱业务结束<![endif]-->



     <div class="c">&nbsp;</div>

     <!--[if !IE]>燃油供应开始<![endif]-->
     <div id="wlfwbox" style="margin-right: 15px;">
         <div class="pic">
             <img src="${pageContext.request.contextPath}/images/wlfw9.png" width="523" height="164"></div>
         <h2>燃油供应</h2>
         <h4>供应汽油、柴油、润滑油，针对港口区域内汽车、船舶提供专业服务。</h4>
         <ul>
             <li><a href="${pageContext.request.contextPath}/TransService/Detail/ckkd.html" target="_blank">车辆加油</a></li>
             <li><a href="${pageContext.request.contextPath}/TransService/Detail/jkkd.html" target="_blank">船舶加油</a></li>
             <li><a href="${pageContext.request.contextPath}/TransService/Detail/jkkd.html" target="_blank">添加</a></li>
             <li><a href="${pageContext.request.contextPath}/TransService/Detail/jkkd.html" target="_blank">添加</a></li>
         </ul>
         <div class="more">
             <!--<a href="wlfw-d.shtml">燃油供应详情>></a>-->
         </div>
     </div>

     <!--[if !IE]>燃油供应结束<![endif]-->

     <!--[if !IE]>配送中心开始<![endif]-->
     <div id="wlfwbox">
         <div class="pic">
             <img src="${pageContext.request.contextPath}/images/wlfw8.png" width="523" height="164"></div>
         <h2>商品配送中心</h2>
         <h4>与国内多家生产企业合作，形成产供销立体化销售模式。</h4>
         <ul>
             <li><a href="${pageContext.request.contextPath}/TransService/Detail/bgbj.html" target="_blank">生活用品</a></li>
             <li><a href="${pageContext.request.contextPath}/TransService/Detail/hybx.html" target="_blank">五金配件</a></li>
             <li><a href="${pageContext.request.contextPath}/TransService/Detail/whsf.html" target="_blank">餐饮</a></li>
             <li><a href="${pageContext.request.contextPath}/TransService/Detail/wldk.html" target="_blank">添加</a></li>

        </ul>
         <div class="more">
             <!--<a href="wlfw-d.shtml">配送中心详情>></a>-->
         </div>
     </div>
     <!--[if !IE]>配送中心结束<![endif]-->
     <div class="c">&nbsp;</div>
     <!--[if !IE]>设备维保开始<![endif]-->
     <div id="wlfwbox" style="margin-right: 15px;">
         <div class="pic">
             <img src="${pageContext.request.contextPath}/images/shebei.png" width="523" height="164"></div>
         <h2>设备维保</h2>
         <h4>港口大型机械设备(岸吊、起重机、龙门吊、抓斗、输送带、传送管、卷扬机、牵引机)维修保养。 </h4>
         <ul>
             <li><a href="${pageContext.request.contextPath}/TransService/Detail/ckkd.html" target="_blank"> 起重机</a></li>
             <li><a href="${pageContext.request.contextPath}/TransService/Detail/jkkd.html" target="_blank">岸吊   </a></li>
         </ul>
         <div class="more">
             <!--<a href="wlfw-d.shtml">设备维保详情>></a>-->
         </div>
     </div>

     <!--[if !IE]>设备维保结束<![endif]-->

     <!--[if !IE]>物流信息主体开始<![endif]-->
     <div id="wlfwbox">
         <div class="pic">
             <img src="${pageContext.request.contextPath}/images/wlfw6.png" width="523" height="164"></div>
         <h2>物流信息平台</h2>
         <h4>打造贸易商面向物流提供商的网络物流集中采购渠道、物流提供商面向贸易商的网络营销渠道、物流提供商之间的同行网络采购合作渠道，打造全球最有影响力的物流行业传媒。</h4>
         <ul>
             <li><a href="${pageContext.request.contextPath}/TransService/Detail/bgbj.html" target="_blank">B2B企业信息平台
</a></li>
             <li><a href="${pageContext.request.contextPath}/TransService/Detail/hybx.html" target="_blank">OA办公系统
</a></li>
             <li><a href="${pageContext.request.contextPath}/TransService/Detail/whsf.html" target="_blank">CRM客户管理系统
</a></li>
             <li><a href="${pageContext.request.contextPath}/TransService/Detail/wldk.html" target="_blank">PDOS进销存系统
</a></li>
             <li><a href="${pageContext.request.contextPath}/TransService/Detail/wldk.html" target="_blank">TMS运输管理系统
</a></li>
             <li><a href="${pageContext.request.contextPath}/TransService/Detail/wldk.html" target="_blank">WMS仓储管理系统
</a></li>
             <li><a href="${pageContext.request.contextPath}/TransService/Detail/wldk.html" target="_blank">GPS定位外设接口
</a></li>
        </ul>
         <div class="more">
             <!--<a href="wlfw-d.shtml">查看海运详情>></a>-->
         </div>
     </div>
     <!--[if !IE]>信息结束<![endif]-->
     <div class="c">&nbsp;</div>
     <!--[if !IE]>散货养护开始<![endif]-->
     <div id="wlfwbox" style="width: 1138px;">
         <div class="pic l">
             <img src="${pageContext.request.contextPath}/images/wlfw7.png" width="523" height="164"></div>
         <div class="l" style="width: 550px; margin-left: 25px;">
             <h2>散货养护</h2>
             <h4>通过科学的作业方法、严格的管理制度、，为客户提供经济、安全、准确、实时的养护服务。 </h4>
             <ul>
                 <li><a href="${pageContext.request.contextPath}/TransService/Detail/ccfw.html" target="_blank">淡水供应</a></li>
                 <li><a href="${pageContext.request.contextPath}/TransService/Detail/ccfw.html" target="_blank">散货养护</a></li>
                 <li><a href="${pageContext.request.contextPath}/TransService/Detail/ccfw.html" target="_blank">添加</a></li>
             </ul>
         </div>
     </div>
     <!--[if !IE]>国仓储结束<![endif]--> --%>
 </div>
 <div class="c">&nbsp;</div>

        <div class="wrapper">
            <div class="footer">
                <dl class="footer_map">
                    <dt><i></i>网站功能 </dt>
                    <dd><a href="${pageContext.request.contextPath}/Home/SiteMap" target="_blank">网站地图</a></dd>
                    <dd><a href="${pageContext.request.contextPath}/ApproachJC/PositionList?c=0|16|0|0" target="_blank" rel="nofollow">人才招聘</a></dd>
                    <dd id="ppjm"></dd>
                    <dd><a href="${pageContext.request.contextPath}/ApproachJC/ContactUs" target="_blank" rel="nofollow">联系我们</a></dd>
                </dl>
                <dl class="footer_map">
                    <dt><i></i>物流服务 </dt>
                    <dd><a href="${pageContext.request.contextPath}/TransService/Detail/hyck.html" target="_blank">船舶代理</a></dd>
                    <dd><a href="${pageContext.request.contextPath}/TransService/Detail/kyck.html" target="_blank">仓储服务</a></dd>
                    <dd><a href="${pageContext.request.contextPath}/TransService/Detail/gjtl.html" target="_blank">汽运服务</a></dd>
                    <dd><a href="${pageContext.request.contextPath}/TransService/Detail/gjqy.html" target="_blank">集装箱服务</a></dd>
                    <dd><a href="${pageContext.request.contextPath}/TransService/Detail/ccfw.html" target="_blank">信息服务</a></dd>
                    <dd><a href="${pageContext.request.contextPath}/TransService/Detail/ckkd.html" target="_blank">养护服务</a></dd>
                    <dd><a href="${pageContext.request.contextPath}/TransService/Detail/bgbj.html" target="_blank">添加</a></dd>
                </dl>
                <dl class="footer_map" style="width: 100px;">
                    <dt><i></i>特色服务 </dt>
                   <dd><a href="${pageContext.request.contextPath}/SpecialService/kjds/index.shtml" target="_blank">跨境电商物流服务</a></dd>
                    <dd><a href="${pageContext.request.contextPath}/SpecialService/gyljr/index.shtml" target="_blank">供应链金融服务</a></dd>
 <!--                  <dd><a href="${pageContext.request.contextPath}/SpecialService/srwp/index.shtml" target="_blank">私人物品</a></dd>
                   <dd><a href="${pageContext.request.contextPath}/SpecialService/cwty/index.shtml" target="_blank">宠物托运</a></dd>
                    <dd><a href="${pageContext.request.contextPath}/SpecialService/zhys/index.shtml" target="_blank">展会运输</a></dd>
 -->                   <dd><a href="${pageContext.request.contextPath}/SpecialService/jcty/index.shtml" target="_blank">轿车托运</a></dd>
                    <dd><a href="${pageContext.request.contextPath}/SpecialService/hwysbx/index.shtml" target="_blank">货物运输保险</a></dd>
                </dl>
                <dl class="footer_map">
                    <dt><i></i>会员中心 </dt>
                    <dd><a href="${pageContext.request.contextPath}/MemberCenter/MemberCenter" target="_blank" rel="nofollow">会员介绍</a></dd>
                    <dd><a href="${pageContext.request.contextPath}/MemberCenter/MemberCenter#memberC" target="_blank" rel="nofollow">如何成为会员</a></dd>
                </dl>
                <dl class="footer_map">
                    <dt><i></i>港口成员</dt>
                    <dd><a href="http://www.caofeidianport.com/" target="_blank" rel="nofollow">弘毅码头</a></dd>
                    <dd><a href="http://www.caofeidianport.com/" target="_blank" rel="nofollow">通用码头</a></dd>
                    <dd><a href="http://www.caofeidianport.com/" target="_blank" rel="nofollow">矿石码头</a></dd>
                    <dd><a href="http://www.caofeidianport.com/" target="_blank" rel="nofollow">金融服务</a></dd>
                    <dd><a href="http://www.caofeidianport.com/" target="_blank" rel="nofollow">产业园区</a></dd>
                </dl>
                <ul class="footer_con">
                    <li class="font14">您合理的建议是对我们最大的支持！</li>
<!--                    <li class="tel" id="tel"></li>
                </ul>
                <ul class="footer_wx">
-->                    <li>
                        <img src="${pageContext.request.contextPath}/images/footer_contact.jpg" width="90" height="92"></li>
                    <li>
                        <b>扫一扫</b><br>
                        微信也能查运价扫二维码关注<br>
                        信息平台小秘书
                    </li>
                </ul>
                <div class="footer_zs">
                    <p>
                        2013-2014 曹妃甸港物流配套服务有限公司<br>
                        冀ICP备B6-20140013-7　　增值电信业务经营许可证冀B6-20140013
                    </p>
                    <div>
                        <a href="http://net.china.com.cn/" target="_blank" rel="nofollow">
                            <img src="${pageContext.request.contextPath}/images/Authentication_2.png" alt="不良信息举报中心" width="100" height="50">
                        </a>
                        <a href="http://www.cyberpolice.cn/wfjb/" rel="nofollow" target="_blank">
                            <img src="${pageContext.request.contextPath}/images/Authentication_4.png" alt="网络110报警服务" width="100" height="50">
                        </a>
                        <a href="http://www.ctws.com.cn/" rel="nofollow" target="_blank">
                            <img src="${pageContext.request.contextPath}/images/Authentication_5.png" alt="无线互联网业自律同盟" width="100" height="50">
                        </a>
                        
                        <br>
                        <script src="http://s11.cnzz.com/stat.php?id=2094930&web_id=2094930&show=pic" language="JavaScript"></script>
                    </div>
                </div>
                <!--百度页面访问分析代码开始-->
                <script type="text/javascript">
                    var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
                    document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F5c4ab49d593b763ed73fbaac21c23956' type='text/javascript'%3E%3C/script%3E"));
                </script>
                <!--百度页面访问分析代码结束-->
                <!--站点流量统计开始-->
                <script type="text/javascript">
                    var _py = _py || [];
                    _py.push(['a', 'qG..n4eBoGSiHovW5-MyiKLJlP']);
                    _py.push(['domain', 'stats.ipinyou.com']);
                    _py.push(['e', '']);
                    -function (d) {
                        var s = d.createElement('script'),
                        e = d.body.getElementsByTagName('script')[0]; e.parentNode.insertBefore(s, e),
                        f = 'https:' == location.protocol;
                        s.src = (f ? 'https' : 'http') + '://' + (f ? 'fm.ipinyou.com' : 'fm.p0y.cn') + '/j/adv.js';
                    }(document);
                </script>
                <noscript>
                    <img src="${pageContext.request.contextPath}//stats.ipinyou.com/adv.gif?a=qG..n4eBoGSiHovW5-MyiKLJlP&e=" style="display: none;" /></noscript>
                <!--站点流量统计结束-->
            </div>

            
        </div>
    </div>
</body>
</html>
