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
        <video muted autoplay="autoplay" loop="loop" width="780" height="390" class="allIntenet">
          <source src="<%=request.getContextPath()%>/resources/static/img/earth.mp4" type="video/mp4" />
        Your browser does not support the video tag.
        </video>
        <div class="dataBlock dataBlock1">
            <p class="partTitle">地市州：</p>
            <p>在线</p>
            <div class="numBlock online1">
                <div class="numSpan"></div>
                <div class="numSpan"></div>
                <div class="numSpan"></div>
                <div class="numSpan"></div>
                <div class="desString">人</div>
                <div class="clearBoth"></div>
            </div>
            <p>故障</p>
            <div class="numBlock fault1">
                <div class="numSpan"></div>
                <div class="numSpan"></div>
                <div class="numSpan"></div>
                <div class="numSpan"></div>
                <div class="desString">次</div>
                <div class="clearBoth"></div>
            </div>
            <p>未联通</p>
            <div class="numBlock unconnect1">
                <div class="numSpan"></div>
                <div class="numSpan"></div>
                <div class="numSpan"></div>
                <div class="numSpan"></div>
                <div class="desString">次</div>
                <div class="clearBoth"></div>
            </div>
        </div>
        <div class="dataBlock dataBlock2">
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
        </div>
    </div>
    <div class="mapBlockTitle">派驻网络</div>
    <div class="mapBlock">
        <img src="<%=request.getContextPath()%>/resources/static/img/map.gif" />
    </div>
    <div class="xnString">虚拟化资源池</div>
    <div class="buildingBlock">
        <div class="buildingBlockTitle">机关园区</div>
        <video muted autoplay="autoplay" loop="loop" width="780" height="390" class="park">
          <source src="<%=request.getContextPath()%>/resources/static/img/building.mp4" type="video/mp4" />
        Your browser does not support the video tag.
        </video>
        <div class="buildingName">2号楼</div>
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
                <div class="rateName">CPU-01</div>
                <div class="rateNum cpu1Value"></div>
            </div>
            <div class="processBar process1"></div>
        </div>
        <div class="rateBlock">
            <div class="ub ub-pj">
                <div class="rateName">CPU-02</div>
                <div class="rateNum cpu2Value"></div>
            </div>
            <div class="processBar process2"></div>
        </div>
        <div class="rateBlock">
            <div class="ub ub-pj">
                <div class="rateName">CPU-03</div>
                <div class="rateNum cpu3Value"></div>
            </div>
            <div class="processBar process3"></div>
        </div>
        <div class="rateBlock">
            <div class="ub ub-pj">
                <div class="rateName">CPU-04</div>
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
            <div class="assetsCode">资产编号</div>
            <div class="assetsName">资产名称</div>
        </div>
        <div class="trBodyBorder">
            <div class="trBody">
                <div class="trRow ub"><div class="assetsOrder"></div><div class="assetsCode"></div><div class="assetsName"></div></div>
                <div class="trRow ub"><div class="assetsOrder"></div><div class="assetsCode"></div><div class="assetsName"></div></div>
                <div class="trRow ub"><div class="assetsOrder"></div><div class="assetsCode"></div><div class="assetsName"></div></div>
                <div class="trRow ub"><div class="assetsOrder"></div><div class="assetsCode"></div><div class="assetsName"></div></div>
                <div class="trRow ub"><div class="assetsOrder"></div><div class="assetsCode"></div><div class="assetsName"></div></div>
                <div class="trRow ub"><div class="assetsOrder"></div><div class="assetsCode"></div><div class="assetsName"></div></div>
                <div class="trRow ub"><div class="assetsOrder"></div><div class="assetsCode"></div><div class="assetsName"></div></div>
                <div class="trRow ub"><div class="assetsOrder"></div><div class="assetsCode"></div><div class="assetsName"></div></div>
                <div class="trRow ub"><div class="assetsOrder"></div><div class="assetsCode"></div><div class="assetsName"></div></div>
                <div class="trRow ub"><div class="assetsOrder"></div><div class="assetsCode"></div><div class="assetsName"></div></div>
                <div class="trRow ub"><div class="assetsOrder"></div><div class="assetsCode"></div><div class="assetsName"></div></div>
                <div class="trRow ub"><div class="assetsOrder"></div><div class="assetsCode"></div><div class="assetsName"></div></div>
                <div class="trRow ub"><div class="assetsOrder"></div><div class="assetsCode"></div><div class="assetsName"></div></div>
            </div>
        </div>
    </div>
    <div class="zdBlock">
        <div class="title">终端信息</div>
        <div class="infoBlock1">
            <div class="numString">省委机关：在线<span>20</span></div>
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
        </div>
        <div class="infoBlock2">
            <div class="numString">派驻机构：在线<span>20</span></div>
            <div class="trHead ub">
                <div class="pzjgName">派驻机构</div>
                <div class="zcbh">资产编号</div>
            </div>
            <div class="trBodyBorder" id="pzjgzdxx">
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
        </div>
    </div>
    <div class="ldBlock">
        <div class="ldBlockTitle">态势感知</div>
        <div class="arrawLeft ldLeft1"></div>
        <div class="arrawLeft ldLeft2"></div>
        <div class="arrawLeft ldLeft3"></div>
        <div class="arrawLeft ldLeft4"></div>
        <div class="arrawRight ldRight1"></div>
        <div class="arrawRight ldRight2"></div>
        <div class="arrawRight ldRight3"></div>
        <div class="arrawRight ldRight4"></div>
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
            <div class="wString">W</div>
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
            <div class="wString">W</div>
        </div>
    </div>
    <div class="bjBlock">
        <div class="bjBlockRow">资产健康度</div>
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
            <div class="ub-f1 randomBlockTitle">告警提示信息</div>
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
    </div>
    <div class="systemFuncBlock">
        <div class="funBlock yjBlock state3" index="0">
            <div class="icon"></div>
            <div class="stateIcon"></div>
            <div class="funcName">邮件系统</div>
            <div class="cpuString">CPU:60%</div>
            <div class="stateString">异常</div>
            <div class="memoryString">内存: 50%</div>
            <div class="netString">网络: 80%</div>
        </div>
        <div class="funBlock jyBlock state2" index="1">
            <div class="icon"></div>
            <div class="stateIcon"></div>
            <div class="funcName">机要交换</div>
            <div class="cpuString">CPU:60%</div>
            <div class="stateString">告警</div>
            <div class="memoryString">内存: 50%</div>
            <div class="netString">网络: 80%</div>
        </div>
        <div class="funBlock oaBlock state1" index="2">
            <div class="icon"></div>
            <div class="stateIcon"></div>
            <div class="funcName">OA系统</div>
            <div class="cpuString">CPU:60%</div>
            <div class="stateString">正常</div>
            <div class="memoryString">内存: 50%</div>
            <div class="netString">网络: 80%</div>
        </div>
        <div class="funBlock dzBlock state1" index="3">
            <div class="icon"></div>
            <div class="stateIcon"></div>
            <div class="funcName">电子档案</div>
            <div class="cpuString">CPU:60%</div>
            <div class="stateString">正常</div>
            <div class="memoryString">内存: 50%</div>
            <div class="netString">网络: 80%</div>
        </div>
        <div class="funBlock gwBlock state1" index="4">
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
    <div class="waveBlock">
        <div class="waveString1">业务备份</div>
        <div class="waveString2">文档管理</div>
        <div class="waveString3">容量存储</div>
        <div class="waveArea1">
            <img src="<%=request.getContextPath()%>/resources/static/img/wave1.gif" />
        </div>
        <div class="waveArea2">
            <img src="<%=request.getContextPath()%>/resources/static/img/wave1.gif" />
        </div>
        <div class="waveArea3">
            <img src="<%=request.getContextPath()%>/resources/static/img/wave1.gif" />
        </div>
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
</body>
</html>