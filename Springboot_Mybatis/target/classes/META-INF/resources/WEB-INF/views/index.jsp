<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>吉林省纪委监委信息化运维平台</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/static/css/index.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/static/css/light.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/static/css/title.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/static/flightShow/flightShow.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/static/css/bulingbuling.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/static/css/animate.min.css">
</head>
<body>
<div class="wrapper realScreen">
<!--<div class="wrapper">-->
    <div class="mainTitle ub ub-pc">
        <div class="showcase" style="--duration: 4; --step: 0.1;">
            <h1 class="showcase__text words chars splitting" data-splitting="" style="--word-total:1; --char-total:15;">
                <span class="word" data-word="吉林省纪委省监委可视化运维平台" style="--word-index:0;">
                    <span class="char" data-char="吉" style="--char-index:0;">吉</span>
                    <span class="char" data-char="林" style="--char-index:1;">林</span>
                    <span class="char" data-char="省" style="--char-index:2;">省</span>
                    <span class="char" data-char="纪" style="--char-index:3;">纪</span>
                    <span class="char" data-char="委" style="--char-index:4;">委</span>
                    <span class="char" data-char="省" style="--char-index:5;">省</span>
                    <span class="char" data-char="监" style="--char-index:6;">监</span>
                    <span class="char" data-char="委" style="--char-index:7;">委</span>
                    <span class="char" data-char="可" style="--char-index:8;">可</span>
                    <span class="char" data-char="视" style="--char-index:9;">视</span>
                    <span class="char" data-char="化" style="--char-index:10;">化</span>
                    <span class="char" data-char="运" style="--char-index:11;">运</span>
                    <span class="char" data-char="维" style="--char-index:12;">维</span>
                    <span class="char" data-char="平" style="--char-index:13;">平</span>
                    <span class="char" data-char="台" style="--char-index:14;">台</span>
                </span>
            </h1>
        </div>
        <div><!--密级标识-->
            <span data-char="非密" style="font-size:80px; right:-2610px;" >非密</span>
        </div>
    </div>
    <div class="light light1">
        <img src="<%=request.getContextPath()%>/resources/static/img/1.png" />
    </div>
    <div class="light light2">
        <img src="<%=request.getContextPath()%>/resources/static/img/2.png" />
    </div>
    <div class="flightShowBlock">
        <div class="title">工单系统</div>
        <div class="trHead ub">
            <div class="order">序号</div>
            <div class="responseMan">处理人</div>
            <div class="type">故障类型</div>
            <div class="code">故障编码</div>
            <div class="time">派单时间</div>
        </div>
        <div class="trBody flightShowUl">
            <div class="li">
                <div class="in ub">
                    <div class="order"></div>
                    <div class="responseMan"></div>
                    <div class="type"></div>
                    <div class="code"></div>
                    <div class="time"></div>
                </div>
            </div>
            <div class="li bg">
                <div class="in ub">
                    <div class="order"></div>
                    <div class="responseMan"></div>
                    <div class="type"></div>
                    <div class="code"></div>
                    <div class="time"></div>
                </div>
            </div>
            <div class="li">
                <div class="in ub">
                    <div class="order"></div>
                    <div class="responseMan"></div>
                    <div class="type"></div>
                    <div class="code"></div>
                    <div class="time"></div>
                </div>
            </div>
            <div class="li bg">
                <div class="in ub">
                    <div class="order"></div>
                    <div class="responseMan"></div>
                    <div class="type"></div>
                    <div class="code"></div>
                    <div class="time"></div>
                </div>
            </div>
            <div class="li">
                <div class="in ub">
                    <div class="order"></div>
                    <div class="responseMan"></div>
                    <div class="type"></div>
                    <div class="code"></div>
                    <div class="time"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="earthBlock">
        <div class="earthBlockTitle">全省网络</div>
        <video muted autoplay="autoplay" loop="loop" width="790" height="435" class="allIntenet">
          <source src="<%=request.getContextPath()%>/resources/static/img/earth.mp4" type="video/mp4" />
        Your browser does not support the video tag.
        </video>
        <div class="dataBlock dataBlock1">
            <p class="partTitle"></p>
            <p style="color:#58fb34;">在线</p>
            <div class="numBlock online1">
                <div class="numSpan"></div>
                <div class="numSpan"></div>
                <div class="numSpan"></div>
                <div class="numSpan"></div>
                <div class="desString"></div>
                <div class="clearBoth"></div>
            </div>
            <p style="color:#ee9a00;">故障</p>
            <div class="numBlock fault1">
                <div class="numSpan"></div>
                <div class="numSpan"></div>
                <div class="numSpan"></div>
                <div class="numSpan"></div>
                <div class="desString"></div>
                <div class="clearBoth"></div>
            </div>
            <p style="color:yellow;">离线</p>
            <div class="numBlock unconnect1">
                <div class="numSpan"></div>
                <div class="numSpan"></div>
                <div class="numSpan"></div>
                <div class="numSpan"></div>
                <div class="desString"></div>
                <div class="clearBoth"></div>
            </div>
        </div>
        <!--<div class="dataBlock dataBlock2">
            <p class="partTitle">区县：</p>
            <p>在线</p>
            <div class="numBlock online2">
                <div class="numSpan"></div>
                <div class="numSpan"></div>
                <div class="numSpan"></div>
                <div class="numSpan"></div>
                <div class="desString">人</div>
                <div class="clearBoth"></div>
            </div>
            <p>故障</p>
            <div class="numBlock fault2">
                <div class="numSpan"></div>
                <div class="numSpan"></div>
                <div class="numSpan"></div>
                <div class="numSpan"></div>
                <div class="desString">次</div>
                <div class="clearBoth"></div>
            </div>
            <p>未联通</p>
            <div class="numBlock unconnect2">
                <div class="numSpan"></div>
                <div class="numSpan"></div>
                <div class="numSpan"></div>
                <div class="numSpan"></div>
                <div class="desString">次</div>
                <div class="clearBoth"></div>
            </div>
        </div>-->
    </div>
    <div class="mapBlockTitle">派驻网络</div>
    <div class="mapBlock">
        <img src="<%=request.getContextPath()%>/resources/static/img/map.gif" />
    </div>
    <div class="xnString">虚拟化资源池</div>
    <div class="buildingBlock">
        <div class="buildingBlockTitle">机关园区</div>
        <video muted autoplay="autoplay" loop="loop" width="790" height="415" class="park">
          <source src="<%=request.getContextPath()%>/resources/static/img/building.mp4" type="video/mp4" />
        Your browser does not support the video tag.
        </video>
        <div class="buildingName"></div>
    </div>
    <div class="terminalNo ub ub-pc">
        <div class="numSpan"></div>
        <div class="numSpan"></div>
    </div>
    <div class="terminalBlock">
        <div class="terminalTitle">TERMINAL</div>
        <p>资源池节点</p>
        <div class="num">23</div>
        <p>硬盘存储</p>
        <div class="num">20T</div>
        <p>管理主机</p>
        <div class="num">156.8.25.1</div>
        <p>内存占用</p>
        <div class="num">30%</div>
    </div>
    <div class="systemBlock">
        <div class="systemTitle">SYSTEM CONNECTION</div>
        <div class="systemLabel cpu1Label">
            <span class="nameS"></span>
            <span class="nameE"></span>
        </div>
        <div class="systemState">CONNECTED</div>
        <div class="systemLabel cpu2Label">
            <span class="nameS"></span>
            <span class="nameE"></span>
        </div>
        <div class="systemState">CONNECTED</div>
        <div class="systemLabel cpu3Label">
            <span class="nameS"></span>
            <span class="nameE"></span>
        </div>
        <div class="systemState">CONNECTED</div>
        <div class="systemLabel cpu4Label">
            <span class="nameS"></span>
            <span class="nameE"></span>
        </div>
        <div class="systemState">CONNECTED</div>
    </div>
    <div class="cpuBlock">
        <div class="bigCpuTitle">CPU<span>使用率</span></div>
        <div class="cpuTitle">OCCUPATING COEFFICIENT</div>
        <div class="rateBlock">
            <div class="ub ub-pj">
                <div class="rate1Name">CPU-01</div>
                <div class="rateNum cpu1Value"></div>
            </div>
            <div class="processBar process1"></div>
        </div>
        <div class="rateBlock">
            <div class="ub ub-pj">
                <div class="rate2Name">CPU-02</div>
                <div class="rateNum cpu2Value"></div>
            </div>
            <div class="processBar process2"></div>
        </div>
        <div class="rateBlock">
            <div class="ub ub-pj">
                <div class="rate3Name">CPU-03</div>
                <div class="rateNum cpu3Value"></div>
            </div>
            <div class="processBar process3"></div>
        </div>
        <div class="rateBlock">
            <div class="ub ub-pj">
                <div class="rate4Name">CPU-04</div>
                <div class="rateNum cpu4Value"></div>
            </div>
            <div class="processBar process4"></div>
        </div>
        <div class="pRateBlock">
            <div class="rateDiv1">
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
            </div>
            <div class="rateDiv2">
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
            </div>
            <div class="pRateLabel">平均使用率</div>
            <div class="pRateNum">69%</div>
        </div>
        <div class="cpuEndTitle">UNITY PERCENT</div>
    </div>
    <div class="tpsBlock">
        <div class="bigCpuTitle">CPU<span>性能</span></div>
        <div class="tpsTitle">TRANSACTION PER SECOND</div>
        <div class="tpsLineArea" id="tpsLine">
            
        </div>
        <div class="currentValue">当前值<span class="currentValueSpan"></span></div>
        <div class="tpsEndTitle">UNIT.VALUE/S</div>
    </div>
    <div class="infoBlock">
        <div class="infoRow ub ub-pj">
            <div class="infoName">虚拟资源占用率</div>
            <div class="infoValue">23/100</div>
        </div>
        <div class="infoRow ub ub-pj">
            <div class="infoName">硬盘占用率</div>
            <div class="infoValue">39/100</div>
        </div>
        <div class="infoRow ub ub-pj">
            <div class="infoName">内存占用率</div>
            <div class="infoValue">45%</div>
        </div>
        <div class="infoRow ub ub-pj">
            <div class="infoName">总流量</div>
            <div class="infoValue">13450M</div>
        </div>
        <div class="infoEndTitle">INFOMATION</div>
    </div>
    <div class="assetsBlock">
        <div class="title">资产信息</div>
        <div class="trHead ub">
            <div class="assetsOrder">序号</div>
            <div class="assetsCode">资产名称</div>
            <div class="assetsName">品牌</div>
        </div>
        <div class="trBodyBorder">
            <div class="trBody">
                <div class="trRow ub"><div class="assetsOrder"></div><div class="assetsCode"></div><div class="assetsName"></div></div>
                <div class="trRow ub"><div class="assetsOrder"></div><div class="assetsCode"></div><div class="assetsName"></div></div>
                <div class="trRow ub"><div class="assetsOrder"></div><div class="assetsCode"></div><div class="assetsName"></div></div>
                <div class="trRow ub"><div class="assetsOrder"></div><div class="assetsCode"></div><div class="assetsName"></div></div>
                <div class="trRow ub"><div class="assetsOrder"></div><div class="assetsCode"></div><div class="assetsName"></div></div>
            <!--    <div class="trRow ub"><div class="assetsOrder"></div><div class="assetsCode"></div><div class="assetsName"></div></div>
                <div class="trRow ub"><div class="assetsOrder"></div><div class="assetsCode"></div><div class="assetsName"></div></div>
                <div class="trRow ub"><div class="assetsOrder"></div><div class="assetsCode"></div><div class="assetsName"></div></div>
                <div class="trRow ub"><div class="assetsOrder"></div><div class="assetsCode"></div><div class="assetsName"></div></div>
                <div class="trRow ub"><div class="assetsOrder"></div><div class="assetsCode"></div><div class="assetsName"></div></div>
                <div class="trRow ub"><div class="assetsOrder"></div><div class="assetsCode"></div><div class="assetsName"></div></div>
                <div class="trRow ub"><div class="assetsOrder"></div><div class="assetsCode"></div><div class="assetsName"></div></div>
                <div class="trRow ub"><div class="assetsOrder"></div><div class="assetsCode"></div><div class="assetsName"></div></div>-->
            </div>
        </div>
    </div>
    <div class="fxpgbgBlock">
        <div class="title">风险评估</div>
        <div class="firstTitle">风险评估结果分析</div>

        <!--日期控件-->
        <div class="TimeBox" style="position: absolute;top:220px;left:69px;width:230px;height: 68px;display:flex;">
            <div class="hour" id="hour" style="font-size: 34px;height: 100%;font-weight: bold;text-align: center;width: 60px;line-height: 68px;">00</div>
            <div class="point" style="font-size: 34px;height: 100%;font-weight: bold;text-align: center;width: 25px;line-height: 68px;">:</div>
            <div class="min" id="min" style="font-size: 34px;height: 100%;font-weight: bold;text-align: center;width: 60px;line-height:  68px;">00</div>
            <div class="point" style="font-size: 34px;height: 100%;font-weight: bold;text-align: center;width: 25px;line-height: 68px;">:</div>
            <div class="second" id="second"  style="font-size: 34px;height:100%;font-weight: bold;text-align: center;width: 60px;line-height:68px;">00</div>
        </div>
        <div class="dateBox" id="curentDate" style="padding-top:10px;font-size: 18px;font-weight: bold;letter-spacing:4px;text-align: center; position: absolute;top:286px;left:69px;width:230px;height:34px;line-height:34px;">
            2020-01-01  星期三
        </div>
        

        <!--进度条控件-->
        <div class="processWrap" style="position: absolute;
        top: 96px;
        left: 404px;
        width: 390px;
        height: 228px;">

            <div class="circle" id="circle">
                <!--产生伞形用的start-->
                <div class="pie_left">
                    <div class="left" id="leftOfProcessCricle"></div>
                </div>
                <div class="pie_right">
                    <div class="right" id="rightOfProcessCricle"></div>
                </div>
                <!--产生伞形用的end-->

                <!--产生圆环用的start-->
                <div class="mask">
                    <!--center中间红色的可有可无-->
                    <div class="center" id="circleCenter">
                        <p class="score" id="circleScore"></p>
                        <p class="level" id="circleLevel"></p>
                    </div>
                </div>
                <!--产生圆环用的end-->
            </div>

        </div>
        

        <div class="LD-Wrap">
                <div class='LD-main' id='LD-main1'></div>
                <!-- <div class='space item'></div>
                <div class='LD-main' id='LD-main2'></div> -->
                <!-- <div class='LD-Box1 item'>
                        <div class='LD-main' id='LD-main1'></div>
                    </div>
                    <div class='space item'></div>
                    <div class='LD-Box2 item'>
                        <div class='LD-main' id='LD-main2'></div>
                    </div> -->

        </div>
        
        
        <!-- <div class='LD-main' style="height: 312px; margin-top: 44px;" id ='LD-main1'></div>
        <div class="thirdTitle">资产类短板情况分析</div>
        <div class='LD-main' id ='LD-main2'></div> -->
        <!--<div class="infoBlock1">
            <div class="numString">省委机关：在线<span>20</span></div>
            <div class="trHead ub">
                <div class="deptName">部门名称</div>
                <div class="ip">IP地址</div>
            </div>
            <div class="trBodyBorder">
                <div class="trBody">
                    <div class="trRow ub"><div class="deptName"></div><div class="ip"></div></div>
                    <div class="trRow ub"><div class="deptName"></div><div class="ip"></div></div>
                    <div class="trRow ub"><div class="deptName"></div><div class="ip"></div></div>
                    <div class="trRow ub"><div class="deptName"></div><div class="ip"></div></div>
                    <div class="trRow ub"><div class="deptName"></div><div class="ip"></div></div>
                    <div class="trRow ub"><div class="deptName"></div><div class="ip"></div></div>
                    <div class="trRow ub"><div class="deptName"></div><div class="ip"></div></div>
                    <div class="trRow ub"><div class="deptName"></div><div class="ip"></div></div>
                    <div class="trRow ub"><div class="deptName"></div><div class="ip"></div></div>
                    <div class="trRow ub"><div class="deptName"></div><div class="ip"></div></div>
                    <div class="trRow ub"><div class="deptName"></div><div class="ip"></div></div>
                    <div class="trRow ub"><div class="deptName"></div><div class="ip"></div></div>
                    <div class="trRow ub"><div class="deptName"></div><div class="ip"></div></div>
                </div>
            </div>
        </div>-->
       <!-- <div class="infoBlock2">
           <div class="numString">派驻机构：在线<span>20</span></div>
            <div class="trHead ub">
                <div class="pzjgName">派驻机构</div>
                <div class="zcbh">资产编号</div>
            </div>-->
           <!-- <div class="trBodyBorder">
                <div class="trBody">
                    <div class="trRow ub"><div class="pzjgName"></div><div class="zcbh"></div></div>
                    <div class="trRow ub"><div class="pzjgName"></div><div class="zcbh"></div></div>
                    <div class="trRow ub"><div class="pzjgName"></div><div class="zcbh"></div></div>
                    <div class="trRow ub"><div class="pzjgName"></div><div class="zcbh"></div></div>
                    <div class="trRow ub"><div class="pzjgName"></div><div class="zcbh"></div></div>
                    <div class="trRow ub"><div class="pzjgName"></div><div class="zcbh"></div></div>
                    <div class="trRow ub"><div class="pzjgName"></div><div class="zcbh"></div></div>
                    <div class="trRow ub"><div class="pzjgName"></div><div class="zcbh"></div></div>
                    <div class="trRow ub"><div class="pzjgName"></div><div class="zcbh"></div></div>
                    <div class="trRow ub"><div class="pzjgName"></div><div class="zcbh"></div></div>
                    <div class="trRow ub"><div class="pzjgName"></div><div class="zcbh"></div></div>
                    <div class="trRow ub"><div class="pzjgName"></div><div class="zcbh"></div></div>
                    <div class="trRow ub"><div class="pzjgName"></div><div class="zcbh"></div></div>
                </div>
            </div>
        </div>-->
    </div>
    <div class="zdBlock">
        <div class="title">终端信息</div>
        <div class="infoBlock1">
            <div class="numString">省委机关 ：在 线<span id="deptNum">2 0</span></div>
            <div class="trHead ub">
                <div class="deptName">部门名称</div>
                <div class="ip">IP地址</div>
            </div>
            <div class="trBodyBorder" id="wjgzdxx">
                <div class="trBody">
                    <div class="trRow ub"><div class="deptName"></div><div class="ip"></div></div>
                    <div class="trRow ub"><div class="deptName"></div><div class="ip"></div></div>
                    <div class="trRow ub"><div class="deptName"></div><div class="ip"></div></div>
                    <div class="trRow ub"><div class="deptName"></div><div class="ip"></div></div>
                    <div class="trRow ub"><div class="deptName"></div><div class="ip"></div></div>
                <!--    <div class="trRow ub"><div class="deptName"></div><div class="ip"></div></div>
                    <div class="trRow ub"><div class="deptName"></div><div class="ip"></div></div>
                    <div class="trRow ub"><div class="deptName"></div><div class="ip"></div></div>
                    <div class="trRow ub"><div class="deptName"></div><div class="ip"></div></div>
                    <div class="trRow ub"><div class="deptName"></div><div class="ip"></div></div>
                    <div class="trRow ub"><div class="deptName"></div><div class="ip"></div></div>
                    <div class="trRow ub"><div class="deptName"></div><div class="ip"></div></div>
                    <div class="trRow ub"><div class="deptName"></div><div class="ip"></div></div>-->
                </div>
            </div>
        </div>
        <div class="infoBlock2">
            <div class="numString">派驻机构 ：在 线<span id="jgName">1 9</span></div>
            <div class="trHead ub">
                <div class="pzjgName">派驻机构</div>
                <div class="zcbh">IP地址</div>
            </div>
            <div class="trBodyBorder" id="pzjgzdxx">
                <div class="trBody">
                    <div class="trRow ub"><div class="pzjgName"></div><div class="zcbh"></div></div>
                    <div class="trRow ub"><div class="pzjgName"></div><div class="zcbh"></div></div>
                    <div class="trRow ub"><div class="pzjgName"></div><div class="zcbh"></div></div>
                    <div class="trRow ub"><div class="pzjgName"></div><div class="zcbh"></div></div>
                    <div class="trRow ub"><div class="pzjgName"></div><div class="zcbh"></div></div>
                <!--    <div class="trRow ub"><div class="pzjgName"></div><div class="zcbh"></div></div>
                    <div class="trRow ub"><div class="pzjgName"></div><div class="zcbh"></div></div>
                    <div class="trRow ub"><div class="pzjgName"></div><div class="zcbh"></div></div>
                    <div class="trRow ub"><div class="pzjgName"></div><div class="zcbh"></div></div>
                    <div class="trRow ub"><div class="pzjgName"></div><div class="zcbh"></div></div>
                    <div class="trRow ub"><div class="pzjgName"></div><div class="zcbh"></div></div>
                    <div class="trRow ub"><div class="pzjgName"></div><div class="zcbh"></div></div>
                    <div class="trRow ub"><div class="pzjgName"></div><div class="zcbh"></div></div>-->
                </div>
            </div>
        </div>
    </div>
    <div class="ldBlock">
        <div class="o1"></div>
        <div class="o1_1"></div>
        <div class="o2"></div>
        <div class="o2_1"></div>
        <div class="layer1">
            <div class="pointLight p0 active"></div>
            <div class="pointLight p1"></div>
            <div class="pointLight p2"></div>
            <div class="pointLight p3"></div>
            <div class="pointLight p4"></div>
            <div class="pointLight p5"></div>
            <div class="pointLight p6"></div>
            <div class="pointLight p7"></div>
            <div class="pointLight p8"></div>
            <div class="pointLight p9"></div>
            <div class="pointLight p10"></div>
            <div class="pointLight p11"></div>
            <div class="pointLight p12"></div>
            <div class="pointLight p13"></div>
            <div class="kd1">
                <div class="s s1"></div>
                <div class="s s2"></div>
                <div class="s s3"></div>
                <div class="s s4"></div>
                <div class="s s5"></div>
                <div class="s s6"></div>
                <div class="s s7"></div>
                <div class="s s8"></div>
                <div class="s s9"></div>
                <div class="s s10"></div>
                <div class="s s11"></div>
                <div class="s s12"></div>
                <div class="s s13"></div>
                <div class="s s14"></div>
                <div class="s s15"></div>
                <div class="s s16"></div>
                <div class="s s17"></div>
                <div class="s s18"></div>
                <div class="s s19"></div>
                <div class="s s20"></div>
            </div>
            <div class="kd2">
                <div class="s s1"></div>
                <div class="s s2"></div>
                <div class="s s3"></div>
                <div class="s s4"></div>
                <div class="s s5"></div>
                <div class="s s6"></div>
                <div class="s s7"></div>
                <div class="s s8"></div>
                <div class="s s9"></div>
                <div class="s s10"></div>
                <div class="s s11"></div>
                <div class="s s12"></div>
                <div class="s s13"></div>
                <div class="s s14"></div>
                <div class="s s15"></div>
                <div class="s s16"></div>
                <div class="s s17"></div>
                <div class="s s18"></div>
                <div class="s s19"></div>
                <div class="s s20"></div>
            </div>
        </div>
<!--
        <div class="layer2">
            <div class="layer3"></div>
        </div>
-->
        <div class="circleLine"></div>
        <div class="circleLine1"></div>
<!--        <div class="floatIcon pos1"></div>-->
<!--        <div class="ldBlockTitle">态势感知</div>-->
        <div class="zzArea">
            <div class="zzPoint point1"></div>
            <div class="zzPoint point2"></div>
            <div class="zzPoint point3"></div>
            <div class="zzPoint point4"></div>
        </div>
        <div class="scanArea"></div>
        <div class="pointArea"></div>
    </div>
    <div class="connectLine1"></div>
    <div class="connectLine2"></div>
    <div class="connectLine3"></div>
    <div class="upsBlock">
        <div class="title">UPS状态</div>
        <div class="ups1icon"></div>
        <div class="ups1Title">UPS1</div>
        <div class="ups1Percent">60%</div>
        <div class="ups1Div">
            <div class="dot"></div>
            <div class="dot"></div>
            <div class="dot"></div>
            <div class="dot"></div>
            <div class="dot"></div>
            <div class="dot"></div>
            <div class="dot"></div>
            <div class="dot"></div>
            <div class="dot"></div>
            <div class="dot"></div>
        </div>
        <div class="ups1Num">
            <div class="numSpan"></div>
            <div class="numSpan"></div>
            <div class="numSpan"></div>
            <div class="dotSpan">.</div>
            <div class="numSpan"></div>
            <div class="numSpan"></div>
            <div class="clearBoth"></div>
            <div class="wString">M</div>
        </div>
        <div class="ups2icon"></div>
        <div class="ups2Title">UPS2</div>
        <div class="ups2Percent">50%</div>
        <div class="ups2Div">
            <div class="dot"></div>
            <div class="dot"></div>
            <div class="dot"></div>
            <div class="dot"></div>
            <div class="dot"></div>
            <div class="dot"></div>
            <div class="dot"></div>
            <div class="dot"></div>
            <div class="dot"></div>
            <div class="dot"></div>
        </div>
        <div class="ups2Num">
            <div class="numSpan"></div>
            <div class="numSpan"></div>
            <div class="numSpan"></div>
            <div class="dotSpan">.</div>
            <div class="numSpan"></div>
            <div class="numSpan"></div>
            <div class="clearBoth"></div>
            <div class="wString">M</div>
        </div>
    </div>
	<div class="bjBlock">
        <div class="bjBlockRow">资产告警信息</div>
        <div class="trHead ub">
            <div class="flagIcon"></div>
            <div class="bjDate">告警日期</div>
            <div class="bjTime">告警时间</div>
            <div class="bjInfo">备注</div>
        </div>
        <div class="trBodyBorder">
            <div class="trBody">
                <div class="trRow ub"><div class="flagIcon"></div><div class="bjDate"></div><div class="bjTime"></div><div class="bjInfo"></div></div>
                <div class="trRow ub"><div class="flagIcon"></div><div class="bjDate"></div><div class="bjTime"></div><div class="bjInfo"></div></div>
                <div class="trRow ub"><div class="flagIcon"></div><div class="bjDate"></div><div class="bjTime"></div><div class="bjInfo"></div></div>
                <div class="trRow ub"><div class="flagIcon"></div><div class="bjDate"></div><div class="bjTime"></div><div class="bjInfo"></div></div>
                <div class="trRow ub"><div class="flagIcon"></div><div class="bjDate"></div><div class="bjTime"></div><div class="bjInfo"></div></div>
                <div class="trRow ub"><div class="flagIcon"></div><div class="bjDate"></div><div class="bjTime"></div><div class="bjInfo"></div></div>
            </div>
        </div>
    </div>
    <div class="bjBlock" style="top:595.9px;">
        <div class="bjBlockRow">资产健康度信息</div>
        <div class="trHead ub">
            <div class="flagIcon"></div>
            <div class="bjDate">资产名称</div>
            <div class="bjTime">IP地址</div>
            <div class="bjInfo">健康度</div>
        </div>
        <div class="trBodyBorder1">
            <div class="trBody">
                <div class="trRow ub"><div class="flagIcon"></div><div class="bjDate"></div><div class="bjTime"></div><div class="bjInfo"></div></div>
                <div class="trRow ub"><div class="flagIcon"></div><div class="bjDate"></div><div class="bjTime"></div><div class="bjInfo"></div></div>
                <div class="trRow ub"><div class="flagIcon"></div><div class="bjDate"></div><div class="bjTime"></div><div class="bjInfo"></div></div>
                <div class="trRow ub"><div class="flagIcon"></div><div class="bjDate"></div><div class="bjTime"></div><div class="bjInfo"></div></div>
                <div class="trRow ub"><div class="flagIcon"></div><div class="bjDate"></div><div class="bjTime"></div><div class="bjInfo"></div></div>
                <div class="trRow ub"><div class="flagIcon"></div><div class="bjDate"></div><div class="bjTime"></div><div class="bjInfo"></div></div>
            </div>
        </div>
    </div>
    <div class="bjBlock" style="top:970px;">
        <div class="bjBlockRow">资产风险信息</div>
        <div class="trHead ub">
            <div class="flagIcon"></div>
            <div class="bjDate">资产名称</div>
            <div class="bjTime">IP地址</div>
            <div class="bjInfo">风险值</div>
        </div>
        <div class="trBodyBorder2">
            <div class="trBody">
                <div class="trRow ub"><div class="flagIcon"></div><div class="bjDate"></div><div class="bjTime"></div><div class="bjInfo"></div></div>
                <div class="trRow ub"><div class="flagIcon"></div><div class="bjDate"></div><div class="bjTime"></div><div class="bjInfo"></div></div>
                <div class="trRow ub"><div class="flagIcon"></div><div class="bjDate"></div><div class="bjTime"></div><div class="bjInfo"></div></div>
                <div class="trRow ub"><div class="flagIcon"></div><div class="bjDate"></div><div class="bjTime"></div><div class="bjInfo"></div></div>
                <div class="trRow ub"><div class="flagIcon"></div><div class="bjDate"></div><div class="bjTime"></div><div class="bjInfo"></div></div>
                <div class="trRow ub"><div class="flagIcon"></div><div class="bjDate"></div><div class="bjTime"></div><div class="bjInfo"></div></div>
            </div>
        </div>
    </div>
    <!--<div class="bjBlock">
        <div class="bjBlockRow">资产弱点信息</div>
        <div class="trHead ub">
            <div class="flagIcon"></div>
            <div class="bjDate">告警日期</div>
            <div class="bjTime">告警时间</div>
            <div class="bjInfo">备注</div>
        </div>
        <div class="trBodyBorder">
            <div class="trBody">
                <div class="trRow ub"><div class="flagIcon"></div><div class="bjDate"></div><div class="bjTime"></div><div class="bjInfo"></div></div>
                <div class="trRow ub"><div class="flagIcon"></div><div class="bjDate"></div><div class="bjTime"></div><div class="bjInfo"></div></div>
                <div class="trRow ub"><div class="flagIcon"></div><div class="bjDate"></div><div class="bjTime"></div><div class="bjInfo"></div></div>
                <div class="trRow ub"><div class="flagIcon"></div><div class="bjDate"></div><div class="bjTime"></div><div class="bjInfo"></div></div>
                <div class="trRow ub"><div class="flagIcon"></div><div class="bjDate"></div><div class="bjTime"></div><div class="bjInfo"></div></div>
                <div class="trRow ub"><div class="flagIcon"></div><div class="bjDate"></div><div class="bjTime"></div><div class="bjInfo"></div></div>
            </div>
        </div>
    </div>
    <div class="randomBlock randomBlock2">
        <div class="randomTitleRow ub">
            <div class="ub-f1 randomBlockTitle">资产告警信息</div>
        </div>
        <div class="randomRow ub"><div class="lineBlock"></div><div class="randomString1"></div><div class="lineBlock mr5"></div><div class="lineBlock"></div><div class="ub-f1 randomString2"></div><div class="lineBlock"></div></div>
        <div class="randomRow ub"><div class="lineBlock"></div><div class="randomString1"></div><div class="lineBlock mr5"></div><div class="lineBlock"></div><div class="ub-f1 randomString2"></div><div class="lineBlock"></div></div>
        <div class="randomRow ub"><div class="lineBlock"></div><div class="randomString1"></div><div class="lineBlock mr5"></div><div class="lineBlock"></div><div class="ub-f1 randomString2"></div><div class="lineBlock"></div></div>
        <div class="randomRow ub"><div class="lineBlock"></div><div class="randomString1"></div><div class="lineBlock mr5"></div><div class="lineBlock"></div><div class="ub-f1 randomString2"></div><div class="lineBlock"></div></div>
        <div class="randomRow ub"><div class="lineBlock"></div><div class="randomString1"></div><div class="lineBlock mr5"></div><div class="lineBlock"></div><div class="ub-f1 randomString2"></div><div class="lineBlock"></div></div>
        <div class="randomRow ub"><div class="lineBlock"></div><div class="randomString1"></div><div class="lineBlock mr5"></div><div class="lineBlock"></div><div class="ub-f1 randomString2"></div><div class="lineBlock"></div></div>
        <div class="randomRow ub"><div class="lineBlock"></div><div class="randomString1"></div><div class="lineBlock mr5"></div><div class="lineBlock"></div><div class="ub-f1 randomString2"></div><div class="lineBlock"></div></div>
    </div>
    <div class="randomBlock randomBlock3">
        <div class="randomTitleRow ub">
            <div class="ub-f1 randomBlockTitle">资产风险信息</div>
        </div>
        <div class="randomRow ub"><div class="lineBlock"></div><div class="randomString1"></div><div class="lineBlock mr5"></div><div class="lineBlock"></div><div class="ub-f1 randomString2"></div><div class="lineBlock"></div></div>
        <div class="randomRow ub"><div class="lineBlock"></div><div class="randomString1"></div><div class="lineBlock mr5"></div><div class="lineBlock"></div><div class="ub-f1 randomString2"></div><div class="lineBlock"></div></div>
        <div class="randomRow ub"><div class="lineBlock"></div><div class="randomString1"></div><div class="lineBlock mr5"></div><div class="lineBlock"></div><div class="ub-f1 randomString2"></div><div class="lineBlock"></div></div>
        <div class="randomRow ub"><div class="lineBlock"></div><div class="randomString1"></div><div class="lineBlock mr5"></div><div class="lineBlock"></div><div class="ub-f1 randomString2"></div><div class="lineBlock"></div></div>
        <div class="randomRow ub"><div class="lineBlock"></div><div class="randomString1"></div><div class="lineBlock mr5"></div><div class="lineBlock"></div><div class="ub-f1 randomString2"></div><div class="lineBlock"></div></div>
        <div class="randomRow ub"><div class="lineBlock"></div><div class="randomString1"></div><div class="lineBlock mr5"></div><div class="lineBlock"></div><div class="ub-f1 randomString2"></div><div class="lineBlock"></div></div>
        <div class="randomRow ub"><div class="lineBlock"></div><div class="randomString1"></div><div class="lineBlock mr5"></div><div class="lineBlock"></div><div class="ub-f1 randomString2"></div><div class="lineBlock"></div></div>
    </div>-->
    <div class="systemFuncBlock">
        <div class="funBlock yjBlock state1" index="0" id="type1">
            <div class="icon"></div>
            <div class="stateIcon"></div>
            <div class="funcName">邮件系统</div>
            <div class="cpuString">CPU:60%</div>
            <div class="stateString">异常</div>
            <div class="memoryString">内存: 50%</div>
            <div class="netString">网络: 80%</div>
        </div>
        <div class="funBlock jyBlock state1" index="1" id="type5">
            <div class="icon"></div>
            <div class="stateIcon"></div>
            <div class="funcName">机要交换</div>
            <div class="cpuString">CPU:60%</div>
            <div class="stateString">告警</div>
            <div class="memoryString">内存: 50%</div>
            <div class="netString">网络: 80%</div>
        </div>
        <div class="funBlock oaBlock state1" index="2" id="type2">
            <div class="icon"></div>
            <div class="stateIcon"></div>
            <div class="funcName">OA系统</div>
            <div class="cpuString">CPU:60%</div>
            <div class="stateString">正常</div>
            <div class="memoryString">内存: 50%</div>
            <div class="netString">网络: 80%</div>
        </div>
        <div class="funBlock dzBlock state1" index="3" id="type4">
            <div class="icon"></div>
            <div class="stateIcon"></div>
            <div class="funcName">电子档案</div>
            <div class="cpuString">CPU:60%</div>
            <div class="stateString">正常</div>
            <div class="memoryString">内存: 50%</div>
            <div class="netString">网络: 80%</div>
        </div>
        <div class="funBlock gwBlock state1" index="4" id="type3">
            <div class="icon"></div>
            <div class="stateIcon"></div>
            <div class="funcName">公文传输</div>
            <div class="cpuString">CPU:60%</div>
            <div class="stateString">正常</div>
            <div class="memoryString">内存: 50%</div>
            <div class="netString">网络: 80%</div>
        </div>
<!--
        <div class="funBlock znBlock state1">
            <div class="icon"></div>
            <div class="funcName">智能会议</div>
            <div class="cpuString">CPU:60%</div>
            <div class="stateString">正常</div>
            <div class="memoryString">内存: 50%</div>
            <div class="netString">网络: 80%</div>
        </div>
-->
    </div>
    <div class="videosBlock">
        <div class="videosTitle">即时调度</div>
        <div class="nowTime"></div>
        <div class="nowDay"></div>
        <div class="date1">DEC 25TH</div>
        <div class="video1">
            
        </div>
        <div class="date2">DEC 22TH</div>
        <div class="video2">
            <div class="blink"></div>
        </div>
        <div class="date3">DEC 19TH</div>
        <div class="video3">
            <div class="blink"></div>
        </div>
        <div class="date4">DEC 11TH</div>
        <div class="video4">
            <div class="blink"></div>
        </div>
        <div class="centerIcon">
<!--
            <object type="application/x-shockwave-flash" data="./img/capture.swf" width="222" height="204">
                <param name="movie" value="./img/capture.swf" />
                <param name="quality" value="high"/>
                <param name="wmode" value="transparent">
            </object>
-->
        </div>
    </div>
    <div class="waveBlock">
        <div class="header">涉密存储备份</div>
        <div class="main">
            <div class='left_box'></div>
            <div class='circle' id='rotateImg'></div>
            <div class='right_box'>
                <div class="block" id="block"></div>
            </div>
            <div class="percentage" id="percentage">20%</div>
        </div>
    </div>
    <div class="houseBlock">
        <div class="houseTitle">机房可视化</div>
        <div class="houseString1">互联网机房</div>
        <div class="house1 houseIcon" index="0">
            <div class="icon"></div>
            <div class="lightNode"></div>
            <div class="lightLine"></div>
        </div>
        <div class="houseString2">涉密机房</div>
        <div class="house2 houseIcon" index="1">
            <div class="icon"></div>
            <div class="lightNode"></div>
            <div class="lightLine"></div>
        </div>
        <div class="houseString3">A区机房</div>
        <div class="house3 houseIcon" index="3">
            <div class="icon"></div>
            <div class="lightNode"></div>
            <div class="lightLine"></div>
        </div>
        <div class="houseString4">备份机房</div>
        <div class="house4 houseIcon" index="2">
            <div class="icon"></div>
            <div class="lightNode"></div>
            <div class="lightLine"></div>
        </div>
        <div class="bulingbuling">
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
            <div class="circle-container"><div class="circle"></div></div>
        </div>
    </div>
</div>
<script src="<%=request.getContextPath()%>/resources/static/js/jquery172.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/static/flightShow/flightShow.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/static/scrollTable/scrollTable.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/static/scrollTable/bjTable.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/static/randomInfo/randomInfo.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/static/js/runNum.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/static/js/tps.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/static/js/echarts.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/static/js/index.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/static/js/wow.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/resources/static/js/dayjs.js"></script>
<script>
            //风险评估--时间
            setInterval(() => {
                let hourValue=dayjs().hour();//时
                hourValue=String(hourValue).padStart(2,'0');
                document.querySelector("#hour").innerHTML=hourValue;
                let minValue=dayjs().minute();//分
                minValue=String(minValue).padStart(2,'0');
                document.querySelector("#min").innerHTML=minValue;
                let secondValue=dayjs().second();//秒
                secondValue=String(secondValue).padStart(2,'0');
                document.querySelector("#second").innerHTML=secondValue;

                console.log(hourValue);
                let day=getDay(dayjs().day());
                let date=dayjs().format("YYYY-MM-DD")+" "+day;
                document.querySelector('#curentDate').innerHTML=date;
            }, 1000);
           
            function getDay(num){
                num=String(num);
                let day="";
                switch(num){
                    case "0": day="星期日";break;
                    case "1": day="星期一";break;
                    case "2": day="星期二";break;
                    case "3": day="星期三";break;
                    case "4": day="星期四";break;
                    case "5": day="星期五";break;
                    case "6": day="星期六";break;
                }
                return day;
            }
</script>
<script>
            //数据备份
            window.onload=function(){
            //半圆旋转效果
            let rotateImg=document.querySelector('#rotateImg');
            rotateImg.style.transition=`all 2s ease 0s`;
            rotateImg.style.transform="rotate(360deg)";
    
            //数字增长效果
            let numValue=30;
            let num=document.querySelector('#num');
            let curentNumValue=0;
            let timer1=setInterval(function(){
                if(curentNumValue++>numValue){
                    clearInterval(timer1);
                }
                else{
                    num.innerText=curentNumValue;
                }
            },100);
    
            //进度条动效 + 进度条比例文字动效
            let block=document.querySelector('#block');
            let rateValue=90;
            let percentage=document.querySelector('#percentage');
            block.style.width=(100-rateValue)+"%";
            let curentrateValue=0;
             let timer2=setInterval(function(){
                if(curentrateValue++>rateValue){
                    clearInterval(timer1);
                }
                else{
                    percentage.innerText=curentrateValue+"%";
                }
            },5);
            //加载整体缓冲效果
            new WOW().init(); 
        };
</script>
<!--环形进度条-->
<script>
        //风险评估--环形、数值、状态、雷达
        $(function () {

			let percent=0;//要设定的百分比的值
			let stateName = '';
			let circle=$('#circle');
			let circleCenter=$('#circleCenter');
			let circleScore=$("#circleScore");
			let circleLevel=$("#circleLevel");
			let LD_Main_Data1=[
							{
			                    name: '基础保护要求(10)',
			                    max: 100
			                },
			                {
			                    name: '信息保密管理',
			                    max: 100
			                },
			                {
			                    name: '运行与开发',
			                    max: 100
			                },
			                {
			                    name: '设备与介质',
			                    max: 100
			                },
			                {
			                    name: '物理环境与建设',
			                    max: 100
			                },
			                {
			                    name: '人员管理',
			                    max: 100
			                },
			                {
			                    name: '基本管理要求',
			                    max: 100
			                },
			                {
			                    name: '过程管理(7)',
			                    max: 100
			                },
			                {
			                    name: '信息保密(45)',
			                    max: 100
			                },
			                {
			                    name: '运行安全(9)',
			                    max: 100
			                },
			                {
			                    name: '物理安全(6)',
			                    max: 100
			                }];
			$.ajax({
			    url: window.location.origin+"/SjwProject/fxpg/getFxpgDate",
			    data: {},
				async: false,
			    success: function (res) {
			        let data = res.evaStatisticsList;
					let LD_LD_Main = [];
					let cricleData = [];

					for(let i = 0; i < data.length; i++){
						let map = {};
						map.name = data[i].name;
						map.max = 100;
						LD_LD_Main.push(map);
						cricleData.push(Math.round(data[i].risk));
					}
					percent = res.score;
					stateName = res.state;
					console.log('LD_LD_Main',LD_LD_Main);
					console.log('cricleData',cricleData);
					initLDMap('LD-main1',LD_LD_Main,cricleData);
			    }
			})
            circleScore.html(percent+"分");
            //跳转风险评估系统登陆页面
            $('.fxpgbgBlock').on('click',function(){//风险评估系统登陆页面
		    // var url = "http://156.8.25.10:8081/security-manage/login";  20200329更换 风险评估地址url调整
		    var url = "http://156.8.11.232:8081/security-manage/login";
		    window.open(url);
	        })
			//根据数值变换颜色
			if(percent<60.00){//红色
			    let tempColor="#f00";
			    circle.css({"background":tempColor});
			    circleCenter.css({"border":"8px solid "+tempColor});
			    circleScore.css({"color":tempColor});
			    circleLevel.css({"color":tempColor});
			}
			else if(60.00<=percent & percent<80.00){//橘黄色
			    let tempColor="#ffeb3b";
			    circle.css({"background":tempColor});
			    circleCenter.css({"border":"8px solid "+tempColor});
			    circleScore.css({"color":tempColor});
			    circleLevel.css({"color":tempColor});
			}
			else {//颜色保持 #21f729
                let tempColor = "#21f729";
                circle.css({"background": tempColor});
                circleCenter.css({"border": "8px solid " + tempColor});
                circleScore.css({"color": tempColor});
                circleLevel.css({"color": tempColor});
            }
			circleLevel.html(stateName);
			let num = percent * 3.6;
			let curentNum = 0;
			setInterval(() => {
			    if (curentNum++ <= num) {
			        if (curentNum <= 180) {
			            $('#rightOfProcessCricle').css('transform', "rotate(" + curentNum + "deg)");
			        } else {
			            $('#rightOfProcessCricle').css('transform', "rotate(180deg)");
			            $('#leftOfProcessCricle').css('transform', "rotate(" + (curentNum - 180) + "deg)");
			        };
			    } else {
			        //clearInterval(timer);
			        curentNum=0;
			        $('#right').css('transform', "rotate(" + curentNum + "deg)");
			        $('#leftOfProcessCricle').css('transform', "rotate(" + (curentNum ) + "deg)");
			    }
			}, 10);
		});
        
        //安全短板情况分析雷达图
 //       setInterval(() => {
            //$("#LD-main1").html('');
			
            
		
        //let cricleData1=[84, 80, 85, 87, 60, 70, 50, 68, 50, 90, 78];
        //let cricleData1=[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
       // initLDMap('LD-main1',LD_Main_Data1,cricleData1);
 //           }, 5000);
        // let LD_Main_Data1=[{
        //                     name: '基础保护要求(10)',
        //                     max: 100
        //                 },
        //                 {
        //                     name: '信息保密管理',
        //                     max: 100
        //                 },
        //                 {
        //                     name: '运行与开发',
        //                     max: 100
        //                 },
        //                 {
        //                     name: '设备与介质',
        //                     max: 100
        //                 },
        //                 {
        //                     name: '物理环境与建设',
        //                     max: 100
        //                 },
        //                 {
        //                     name: '人员管理',
        //                     max: 100
        //                 },
        //                 {
        //                     name: '基本管理要求',
        //                     max: 100
        //                 },
        //                 {
        //                     name: '过程管理(7)',
        //                     max: 100
        //                 },
        //                 {
        //                     name: '信息保密(45)',
        //                     max: 100
        //                 },
        //                 {
        //                     name: '运行安全(9)',
        //                     max: 100
        //                 },
        //                 {
        //                     name: '物理安全(6)',
        //                     max: 100
        //                 }];
        // let cricleData1=[100, 80, 85, 87, 60, 70,50,68,50,90,78];
        // initLDMap('LD-main1',LD_Main_Data1,cricleData1);
   
        function initLDMap(LDId,data,cricleData) {
            let Chart = echarts.init(document.getElementById(LDId));

            // 指定图表的配置项和数据
            let option = {
                title: {
                    show: false,
                    text: '基础雷达图'
                },
                tooltip: {},
                legend: {
                    show: false,
                },
                radar: {
                    // shape: 'circle',
                    name: {
                        textStyle: {
                            color: '#ffffff',
                            fontSize:28,
                            fontWeight:'bolder',
                            backgroundColor: '#000',
                            borderRadius: 3,
                            padding: [3, 5]
                        }
                    },
                    indicator: data,
                     name: {
                        formatter: '{value}',
                        textStyle: {
                            fontWeight:'bolder',
                            fontSize:28,
                            color: '#ffffff' // 文字颜色
                        }
                    },
                    //雷达图背景的颜色，在这儿随便设置了一个颜色，完全不透明度为0，就实现了透明背景
                    splitArea: {
                        show: true,
                        areaStyle: {
                            color: '#072849', //'rgba(255,0,0,0)', // 图表背景的颜色
                        },
                    },
                    splitLine:{
                        show:true,
                        lineStyle:{
                            width:5.5,
                            color:'#ffffff'
                        },
                    }
                },
                series: [{
                    name: '数据详情',
                    type: 'radar',
                    symbolSize:8,
                    lineStyle: {
                                    width : 8,
                                    color: '#f75050' //'rgba(255,225,0,.3)',
                                },
                    // areaStyle: {normal: {}},
                    data: [{
                        value: cricleData,
                        name: '',
                        areaStyle: {
                            opacity: 0.9,
                            color: new echarts.graphic.RadialGradient(0.5, 0.5, 1, [{
                                    color: '#05687f',
                                    offset: 0
                                },
                                {
                                    color: '#72ACD1',
                                    offset: 1
                                }
                            ]),
                        },
                        // 设置区域边框和区域的颜色
                        itemStyle: {
                            normal: {
                                color: '#f75050', //'rgba(255,225,0,.3)',
                                borderWidth:8
                            },
                        }
                    }]
                }]
            };

            // 使用刚指定的配置项和数据显示图表。
            // Chart.setOption(option);
			
			// setInterval(()=>{
			// 	Chart.clear();
			// 	Chart.setOption(option);
			// },10000)
            // 使用刚指定的配置项和数据显示图表。
            Chart.setOption(option);
            var jianfa = true;
            var jiafa = false;
            var first = true;
            setInterval(()=>{
                var xxx = [];
                let sum = option.series[0].data[0].value.reduce((currentSum,currentValue)=>{
                    currentSum += currentValue;
                    return currentSum;
                }, 0);
                var maxs = Math.max.apply(null, option.series[0].data[0].value);
                option.series[0].data[0].value.forEach(function (k, v) {
                    if (jianfa) {
                        if (k > 0) {
                            if (k > Math.floor(cricleData[v]/10)) {
                                xxx.push(k - Math.floor(cricleData[v]/10));
                            } else {
                                xxx.push(k - 1);
                            }

                        } else {
                            xxx.push(k - 0);
                        }
                    }
                    if (jiafa) {
                        if (k < cricleData[v]) {
                            xxx.push(k + Math.floor(cricleData[v]/10));
                        } else {
                            xxx.push(k + 0);
                        }
                    }
                    if (sum == 0) {
                        jianfa = !jianfa;
                        jiafa = !jiafa;
                    }
                    if (maxs >= Math.max.apply(null, cricleData)){
                        sleep(600).then(() => {
                            if (!first) {
                                jianfa = true;
                                jiafa = false;
                            }
                            first = false;
                        });
                    }
                });
                option.series[0].data[0].value = xxx;
                Chart.setOption(option, true);
			},150);
        }
        function sleep (time) {
            return new Promise((resolve) => setTimeout(resolve, time));
        }
    </script>
    <script>
            window.onload=function(){
            //半圆旋转效果
            let rotateImg=document.querySelector('#rotateImg');
            rotateImg.style.transition=`all 2s ease 0s`;
            rotateImg.style.transform="rotate(360deg)";
    
            //数字增长效果
            let numValue=30;
            let num=document.querySelector('#num');
            let curentNumValue=0;
            let timer1=setInterval(function(){
                if(curentNumValue++>numValue){
                    clearInterval(timer1);
                }
                else{
                    num.innerText=curentNumValue;
                }
            },100);
    
            //进度条动效 + 进度条比例文字动效
            let block=document.querySelector('#block');
            let rateValue=90;
            let percentage=document.querySelector('#percentage');
            block.style.width=(100-rateValue)+"%";
            let curentrateValue=0;
             let timer2=setInterval(function(){
                if(curentrateValue++>rateValue){
                    clearInterval(timer1);
                }
                else{
                    percentage.innerText=curentrateValue+"%";
                }
            },5);
            //加载整体缓冲效果
            new WOW().init(); 
        };
            </script>
<script>
        window.onload=function(){
            //半圆旋转效果
            let rotateImg=document.querySelector('#rotateImg');
            rotateImg.style.transition=`all 500s ease 0s`;
            rotateImg.style.transform="rotate(108000deg)";
        }
            //数据备份进度条
        $(function(){
            let block=document.querySelector('#block');
           
            let rateValue=99;
            let percentage=document.querySelector('#percentage');

            //block.style.transition=`all .05s ease 0s`;
            // block.style.width=(100-rateValue)+"%";
            let curentrateValue=0;
                let timer1=setInterval(function(){
                if(curentrateValue++>rateValue){
                    curentrateValue=0;
                    block.style.width="100%";
                }
                else{
                    percentage.innerText=curentrateValue+"%";
                    block.style.width=(100-curentrateValue)+"%";
                }
            },100);
        })
   </script>
</body>
</html>