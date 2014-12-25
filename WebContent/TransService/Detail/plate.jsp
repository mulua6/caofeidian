<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/jsp/common/common.jsp"%>
    <%@ include file="/kefu.html"%>
<!DOCTYPE HTML>
<html>
<head>
    
    <title>海运出口-锦程国际物流</title>
    <meta name="keywords" content="海运出口" />
    <meta name="description" content="锦程国际物流集团是国家商务部批准的一级国际货运代理企业，同时也是国家交通部批准的具有无船承运业务经营...。电话:4000205556" />

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Content/base.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Content/nav.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Content/pos.css" />

    <script src="${pageContext.request.contextPath}/Scripts/jquery-1.7.1.js"></script>

    
    
    <script src="${pageContext.request.contextPath}/Scripts/JsonPort.js?152"></script>
    <script src="${pageContext.request.contextPath}/Scripts/JsonAirPort.js?152"></script>
    <script src="${pageContext.request.contextPath}/Scripts/JsonShipCompany.js?152"></script>
    <script src="${pageContext.request.contextPath}/Scripts/JsonAirLines.js?152"></script>

    <script src="${pageContext.request.contextPath}/Scripts/Index_BsPostion.js"></script>
    <script src="${pageContext.request.contextPath}/Scripts/Index_Postion.js"></script>
    

    <script type="text/javascript" src="${pageContext.request.contextPath}/Scripts/jquery.hoverIntent.minified.js"></script>

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
                <a rel="nofollow" target="_self" href="http://www.jctrans.cn/cooperation/jmgs/">合作加盟</a>  | 
                <a rel="nofollow" href="${pageContext.request.contextPath}/MemberCenter/MemberCenter" target="_blank">会员中心</a> | 
                <a rel="nofollow" href="${pageContext.request.contextPath}/wap/intro.shtml" target="_blank">手机版</a> | 
                <a href="http://www.jctrans.cn/english/" target="_blank">ENGLISH</a> | 
                <a rel="nofollow" href="${pageContext.request.contextPath}/russian/russia.shtml" target="_blank" rel="nofollow">RUSSIAN</a> | 
                <a rel="nofollow" onclick="AddFavorite('http://www.jc56.com','锦程国际物流在线服务有限公司')">收藏锦程</a>  | 
                <span>400-020-5556</span>
            </p>
        </div>
    </div>
    <div class="nav-index">
        <div class="wrapper">
            <div class="logo-news">
                <a rel="nofollow" href="${pageContext.request.contextPath}/">
                    <img src="${pageContext.request.contextPath}/images/index1_02.png" alt="" width="223" height="122" border="0" align="top" />
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
                                    <option value="2">空&nbsp;运</option>
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
                                <ul>
                                    <li>
                                        <h2><a href="${pageContext.request.contextPath}/TransService/JcGP/">海运</a></h2>
                                    </li>
                                    <li><a href="${pageContext.request.contextPath}/TransService/Detail/hyck.html">海运出口</a></li>
                                    <li><a href="${pageContext.request.contextPath}/TransService/Detail/hyjk.html">海运进口 </a></li>
                                    <li><a href="${pageContext.request.contextPath}/TransService/Detail/nmhy.html">内贸海运</a></li>
                                    <li><a href="${pageContext.request.contextPath}/TransService/Detail/szys.html">散杂运输</a></li>
                                </ul>
                                <ul>
                                    <li>
                                        <h2><a href="${pageContext.request.contextPath}/TransService/JcAir/">空运</a></h2>
                                    </li>
                                    <li><a href="${pageContext.request.contextPath}/TransService/Detail/kyck.html">空运出口</a></li>
                                    <li><a href="${pageContext.request.contextPath}/TransService/Detail/kyjk.html">空运进口 </a></li>
                                    <li><a href="${pageContext.request.contextPath}/TransService/Detail/nmky.html">内贸空运</a></li>
                                    <li><a href="${pageContext.request.contextPath}/TransService/Detail/xgzq.html">香港专区</a></li>
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
                                        <h2><a href="${pageContext.request.contextPath}/TransService/JcRoad/">公路</a></h2>
                                    </li>
                                    <li><a href="${pageContext.request.contextPath}/TransService/Detail/gjqy.html">国际汽运</a></li>
                                    <li><a href="${pageContext.request.contextPath}/TransService/Detail/nmzc.html">内贸整车</a></li>
                                    <li><a href="${pageContext.request.contextPath}/TransService/Detail/nmld.html">内贸零担</a></li>
                                </ul>
                                <ul>
                                    <li>
                                        <h2><a href="${pageContext.request.contextPath}/TransService/JcExpress/">快递</a></h2>
                                    </li>
                                    <li><a href="${pageContext.request.contextPath}/TransService/Detail/ckkd.html">出口快递 </a></li>
                                    <li><a href="${pageContext.request.contextPath}/TransService/Detail/jkkd.html">进口快递</a></li>
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
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li><a href="${pageContext.request.contextPath}/SpecialService.html" class="nav_tsfw">特色服务</a>
                        <div class="sub">
                            <div class="row">
                                <ul>
                                    <li><a href="${pageContext.request.contextPath}/SpecialService/kjds/index.shtml" style="width: 150px;">跨境电商物流服务</a></li>
                                    <li><a href="${pageContext.request.contextPath}/SpecialService/srwp/index.shtml">私人物品</a></li>
                                    <li><a href="${pageContext.request.contextPath}/SpecialService/cwty/index.shtml">宠物托运</a></li>
                                    <li><a href="${pageContext.request.contextPath}/SpecialService/jcty/index.shtml">轿车托运</a></li>
                                    <li><a href="${pageContext.request.contextPath}/SpecialService/zhys/index.shtml">展会运输</a></li>
                                </ul>
                                <ul>
                                    <li><a href="${pageContext.request.contextPath}/SpecialService/gyljr/index.shtml" style="width: 140px;">供应链金融服务</a></li>
                                    <li><a href="${pageContext.request.contextPath}/SpecialService/tzgys/index.shtml">特种柜运输</a></li>
                                    <li><a href="${pageContext.request.contextPath}/SpecialService/wxpys/index.shtml">危险品运输</a></li>
                                    <li><a href="${pageContext.request.contextPath}/SpecialService/szhfw/index.shtml">散杂货运输</a></li>
                                    <li><a href="${pageContext.request.contextPath}/SpecialService/gzcyw/index.shtml">滚装船业务 </a></li>
                                </ul>
                                <ul>
                                    <li><a href="${pageContext.request.contextPath}/SpecialService/hwysbx/index.shtml">货物运输保险</a></li>
                                    <li><a href="${pageContext.request.contextPath}/SpecialService/qccjyw/index.shtml">汽车出境业务</a></li>
                                    <li><a href="${pageContext.request.contextPath}/SpecialService/hwys/index.shtml">大件货物运输</a></li>
                                    <li><a href="${pageContext.request.contextPath}/SpecialService/tlfw/index.shtml">边境铁路服务</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li><a href="${pageContext.request.contextPath}/GlobalNetwork.html" class="nav_qqwl">全球网络</a>
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
                    <li><a href="${pageContext.request.contextPath}/ApproachJC.html" class="nav_zjjc">走进锦程</a> </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="main_banner">
        
<div class="wrapper">
    <div class="navpostion c">
        您所在的位置：
        <a href="${pageContext.request.contextPath}/">首页</a>
        <span style="min-width: 10px;"></span>&gt; 
        <a href="${pageContext.request.contextPath}/">物流服务</a>
        <span style="min-width: 10px;"></span>&gt; 
       ${plate.name}
    </div>
</div>
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
					&nbsp; 
				</div>
			</div>
    <div class="main_right">

        <!--[if !IE]>分类导航主体开始<![endif]-->
        <div id="right_nav">
            <h2>${indexPlate.name}</h2>
            <ul>
            	<s:iterator value="indexPlate.childs">
                	<li><s:a action="plateAction_findPlateForView?plateId=%{id}" target="_blank">${name}</s:a></li>
            	</s:iterator>
            </ul>
        </div>
        <!--[if !IE]>分类导航结束<![endif]-->
        <!--[if !IE]>在线咨询<![endif]-->
        <div class="c">&nbsp;</div>
        
<div class="on-line_r">
    <div class="tit">
        <h2 style="" id="hourss"></h2>
    </div>
    <!--客服公共方法 -->
    <script type="text/javascript">
        var _Swt = function (r, p, e, arrname, LiClass, TportClass, TonlineClass, OnlineText, breaken) {
            this.r = r == "" ? "" : "&r=" + encodeURI(r);
            this.p = p == "" ? "" : "&p=" + encodeURI(p);
            this.e = e == "" ? "" : "&e=" + encodeURI(e);
            this.lk = breaken == 1 ? "/files/html/swt_jump.html" : "/files/html/swt_error.html";
            this.liclass = LiClass;
            this.portClass = TportClass;
            this.onlineClass = TonlineClass;
            this.arrname = arrname;
            this.href = this.lk + this.e + this.r + this.p;
            this.onlineText = OnlineText != "" ? OnlineText : "[在线]";
        }
        _Swt.prototype = {
            DocWritedd: function () {
                var li = "";
                var objArray = this.arrname.split(',');
                for (var i = 0; i < objArray.length; i++) {
                    li += "<dd id=\"" + this.liclass + i + "\"  target=\"_blank\" rel=\"nofollow\"></dd>";
                }
                return li;
            },
            DocWriteli: function () {
                var li = "";
                var objArray = this.arrname.split(',');
                for (var i = 0; i < objArray.length; i++) {
                    li += "<li id=\"" + this.liclass + i + "\"  target=\"_blank\" rel=\"nofollow\"></li>";
                }
                return li;
            }
        }
    </script>
    <!--客服 -->
    <ul class="linebtn1" id="linebtn1">
    </ul>
    <script type="text/javascript">
        var typef = "海&nbsp;运,空&nbsp;运,陆&nbsp;运,仓&nbsp;储,快&nbsp;递,其&nbsp;他";
        var C_Swt_type = new _Swt("", "", "", typef, "typeli", "type", "", "[在线]", 1);
        document.getElementById("linebtn1").innerHTML = C_Swt_type.DocWriteli();
        </script>
    <div class="m12 c">&nbsp;</div>

    <dl class="linezi" id="linezi">
    </dl>
    <script type="text/javascript">
        var portf = "上海,宁波,深圳,广州,青岛,天津,大连,厦门,北京,杭州,南京,苏州,重庆,长沙,武汉,西安,哈尔滨,石家庄,海外,其他";
        var C_Swt_part = new _Swt("", "", "", portf, "portdd", "port", "", "[在线]", 1);
        document.getElementById("linezi").innerHTML = C_Swt_part.DocWritedd();
    </script>
</div>

        <!--[if !IE]>在线咨询 END<![endif]-->
        <div class="c">&nbsp;</div>
        
            <!--[if !IE]>海运特价<![endif]-->
            <div id="tjtj">
                <dl>
                    <dt>
                        <b>海运特价</b>
                        <a href="${pageContext.request.contextPath}/feight/GPList/------1-1.html" target="_blank">更多»</a>                        
                        
                            <dd>
                                <a href="${pageContext.request.contextPath}/feight/GPDetail/30798.html" rel="nofollow">详细></a>
                                <b>深圳—仁川</b>
                                <div class="c"></div>
                                <ul>
                                    <li><i>20GP</i><span>40</span></li>
                                    <li><i>40GP</i><span>50</span></li>
                                    <li><i>40HQ</i><span>50</span></li>
                                    <li><i style="padding: 0">45GP</i><span>0</span></li>
                                </ul>
                                <div class="c">
                                    船公司：<b>CSCL</b>
                                    航程：<b>5天</b>
                                </div>
                            </dd>
                    
                            <dd>
                                <a href="${pageContext.request.contextPath}/feight/GPDetail/30800.html" rel="nofollow">详细></a>
                                <b>深圳—东京</b>
                                <div class="c"></div>
                                <ul>
                                    <li><i>20GP</i><span>100</span></li>
                                    <li><i>40GP</i><span>170</span></li>
                                    <li><i>40HQ</i><span>170</span></li>
                                    <li><i style="padding: 0">45GP</i><span>0</span></li>
                                </ul>
                                <div class="c">
                                    船公司：<b>CSCL</b>
                                    航程：<b>10天</b>
                                </div>
                            </dd>
                    
                            <dd>
                                <a href="${pageContext.request.contextPath}/feight/GPDetail/30801.html" rel="nofollow">详细></a>
                                <b>深圳—横滨</b>
                                <div class="c"></div>
                                <ul>
                                    <li><i>20GP</i><span>100</span></li>
                                    <li><i>40GP</i><span>170</span></li>
                                    <li><i>40HQ</i><span>170</span></li>
                                    <li><i style="padding: 0">45GP</i><span>0</span></li>
                                </ul>
                                <div class="c">
                                    船公司：<b>CSCL</b>
                                    航程：<b>11天</b>
                                </div>
                            </dd>
                    
                </dl>
                <div class="c">&nbsp;</div>
            </div>
            <div class="c">&nbsp;</div>
        

        <!--[if !IE]>常用工具开始<![endif]-->
        


<div id="tool">
    <dl>
        <dt><b>物流工具</b><a href="${pageContext.request.contextPath}/tools/shiper.shtml" target="_blank">更多&raquo;</a></dt>
        <dd>
            <ul>
                <li class="a0"><a href="${pageContext.request.contextPath}/tools/shiper.shtml">船公司查询</a></li>
                <li class="a1"><a href="${pageContext.request.contextPath}/tools/dangerousmarks.shtml">危险品标志</a></li>
                <li class="a2"><a href="${pageContext.request.contextPath}/tools/jzxcs.shtml">集装箱参数</a></li>
                <li class="a3"><a href="${pageContext.request.contextPath}/tools/dangername.shtml">危险品名</a></li>
                <li class="a4"><a href="${pageContext.request.contextPath}/tools/tariffinquires.shtml">关税查询</a></li>
                <li class="a5"><a href="${pageContext.request.contextPath}/tools/worldclock.html" target="_blank" rel="nofollow">世界时钟</a></li>
                <li class="a6"><a href="${pageContext.request.contextPath}/tools/portfees.shtml">口岸杂费</a></li>
                <li class="a7"><a href="${pageContext.request.contextPath}/tools/jzys.shtml" class="title2back_price_text" id="A1" target="_blank" rel="nofollow">积载因数</a></li>
                <li class="a8"><a href="${pageContext.request.contextPath}/tools/dwhs.shtml">单位换算</a></li>
                <li class="a9"><a href="${pageContext.request.contextPath}/tools/aircomcode.shtml">航空公司代码</a></li>
                <li class="a10"><a href="${pageContext.request.contextPath}/tools/customscode.shtml">报关代码</a></li>
                <li class="a11"><a href="${pageContext.request.contextPath}/tools/3code.shtml">空港三字码</a></li>
                <li class="a12"><a href="${pageContext.request.contextPath}/tools/jsq.html" class="title2back_price_text" target="_blank" rel="nofollow">在线计算</a></li>
                <li class="a13"><a href="${pageContext.request.contextPath}/tools/shippingterms.shtml">航运术语</a></li>
                <li class="a14"><a href="${pageContext.request.contextPath}/tools/worldcurrency.shtml">世界货币</a></li>
                <li class="a15"><a href="${pageContext.request.contextPath}/tools/tradeterms.shtml">贸易术语</a></li>
                <li class="a16"><a href="${pageContext.request.contextPath}/tools/portmap.shtml">港口地图</a></li>
                <li class="a17"><a href="${pageContext.request.contextPath}/tools/surcharge.shtml">附加费缩写</a></li>
            </ul>
            <div class="c"></div>
        </dd>
    </dl>
</div>
                      
        <!--[if !IE]>常用工具结束<![endif]-->
        <div class="c ">&nbsp;</div>
    </div>
</div>
<div class="c ">&nbsp;</div>

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
                    <dt><i></i>锦程服务 </dt>
                    <dd><a href="${pageContext.request.contextPath}/TransService/Detail/hyck.html" target="_blank">海运服务</a></dd>
                    <dd><a href="${pageContext.request.contextPath}/TransService/Detail/kyck.html" target="_blank">空运服务</a></dd>
                    <dd><a href="${pageContext.request.contextPath}/TransService/Detail/gjtl.html" target="_blank">铁路服务</a></dd>
                    <dd><a href="${pageContext.request.contextPath}/TransService/Detail/gjqy.html" target="_blank">公路服务</a></dd>
                    <dd><a href="${pageContext.request.contextPath}/TransService/Detail/ccfw.html" target="_blank">仓储服务</a></dd>
                    <dd><a href="${pageContext.request.contextPath}/TransService/Detail/ckkd.html" target="_blank">快递服务</a></dd>
                    <dd><a href="${pageContext.request.contextPath}/TransService/Detail/bgbj.html" target="_blank">进出口代理</a></dd>
                </dl>
                <dl class="footer_map" style="width: 100px;">
                    <dt><i></i>特色服务 </dt>
                    <dd><a href="${pageContext.request.contextPath}/SpecialService/kjds/index.shtml" target="_blank">跨境电商物流服务</a></dd>
                    <dd><a href="${pageContext.request.contextPath}/SpecialService/gyljr/index.shtml" target="_blank">供应链金融服务</a></dd>
                    <dd><a href="${pageContext.request.contextPath}/SpecialService/srwp/index.shtml" target="_blank">私人物品</a></dd>
                    <dd><a href="${pageContext.request.contextPath}/SpecialService/cwty/index.shtml" target="_blank">宠物托运</a></dd>
                    <dd><a href="${pageContext.request.contextPath}/SpecialService/zhys/index.shtml" target="_blank">展会运输</a></dd>
                    <dd><a href="${pageContext.request.contextPath}/SpecialService/jcty/index.shtml" target="_blank">轿车托运</a></dd>
                    <dd><a href="${pageContext.request.contextPath}/SpecialService/hwysbx/index.shtml" target="_blank">货物运输保险</a></dd>
                </dl>
                <dl class="footer_map">
                    <dt><i></i>会员中心 </dt>
                    <dd><a href="${pageContext.request.contextPath}/MemberCenter/MemberCenter" target="_blank" rel="nofollow">会员介绍</a></dd>
                    <dd><a href="${pageContext.request.contextPath}/MemberCenter/MemberCenter#memberC" target="_blank" rel="nofollow">如何成为会员</a></dd>
                </dl>
                <dl class="footer_map">
                    <dt><i></i>锦联成员</dt>
                    <dd><a href="http://www.jinlian.cn/" target="_blank" rel="nofollow">锦联集团</a></dd>
                    <dd><a href="http://www.jctrans.cn/" target="_blank" rel="nofollow">国际物流</a></dd>
                    <dd><a href="http://www.jinlian.com.cn/" target="_blank" rel="nofollow">地产开发</a></dd>
                    <dd><a href="http://www.jl-bank.com/" target="_blank" rel="nofollow">金融服务</a></dd>
                    <dd><a href="http://www.jinlian.cn/showint.asp?classid=181&id=181" target="_blank" rel="nofollow">产业园区</a></dd>
                </dl>
                <ul class="footer_con">
                    <li class="font14">您合理的建议是对我们最大的支持！</li>
                    <li class="tel" id="tel"></li>
                </ul>
                <ul class="footer_wx">
                    <li>
                        <img src="${pageContext.request.contextPath}/images/footer_contact.jpg" width="90" height="92"></li>
                    <li>
                        <b>扫一扫</b><br>
                        微信也能查运价扫二维码关注<br>
                        锦程货代小秘书
                    </li>
                </ul>
                <div class="footer_zs">
                    <p>
                        2006-2014 锦程物流全球服务网版权所有<br>
                        辽ICP备B2-20140011-1　　增值电信业务经营许可证辽B2-20140011
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
