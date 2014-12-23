<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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