<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <title>吉林省纪委监委信息化运维平台</title>
    <link href="<%=request.getContextPath()%>/resources/dist/css/layout.style.css" rel="stylesheet" type="text/css">
    <link href="<%=request.getContextPath()%>/resources/dist/css/jsdd.style.css" rel="stylesheet" type="text/css">
    <style>
        .plugin
        {
            width:1920px;
            height:1080px;
        }
        object{
            width: 100%;
            height: 100% ;
        }
    </style>
</head>
<body>
 <div id="divPlugin" class="plugin"></div>
<!--<div class="container xKing">
    <div class="con-part0">即时调度</div>
    <div class="con-part1" id="divPlugin"></div>
    <div class="con-part2"></div>
	<div class="con-part3" id="divPlugin1"></div>
    <div class="con-part4"></div>
    <div class="con-part5"></div>
    <div class="con-part6"></div>
    <div class="con-part7"></div>
    <div class="con-part8"></div>
    <div class="con-part9"></div>
    <div class="con-part10"></div>
    <div class="con-part11"></div>
    <div class="con-part12"></div>
    <div class="con-part13"></div>
    <div class="con-part14"></div>
    <div class="con-part15" id="con-part15"></div>
</div>-->
<div style="display: none;">
    <fieldset class="login">
        <legend>登录</legend>
        <table cellpadding="0" cellspacing="3" border="0">
            <tr>
                <td class="tt">IP地址</td>
                <td><input id="loginip" type="text" class="txt" value="10.6.144.106"/></td>
                <td class="tt">端口号</td>
                <td><input id="port" type="text" class="txt" value="80"/></td>
            </tr>
            <tr>
                <td class="tt">用户名</td>
                <td><input id="username" type="text" class="txt" value="admin"/></td>
                <td class="tt">密码</td>
                <td><input id="password" type="password" class="txt" value="hik12345"/></td>
            </tr>
            <tr>

                <td>
                    窗口分割数
                    <select class="sel2" onchange="changeWndNum(this.value);">
                        <option value="1"selected>1x1</option>
                        <option value="2" >2x2</option>
                        <option value="3">3x3</option>
                        <option value="4">4x4</option>
                    </select>
                </td>
            </tr>

            <tr>
                <td class="tt">已登录设备</td>
                <td>
                    <select id="ip" class="sel" onchange="getChannelInfo();getDevicePort();"></select>
                </td>
                <td class="tt">通道列表</td>
                <td>
                    <select id="channels" class="sel"></select>
                </td>
            </tr>

            <tr>
                <td colspan="4">
                    <input type="button" class="btn" value="登录" onclick="clickLogin();"/>
                    <input type="button" class="btn" value="退出" onclick="clickLogout();"/>
                </td>
            </tr>

        </table>
    </fieldset>
    <fieldset class="localconfig">
        <legend>本地配置</legend>
        <table cellpadding="0" cellspacing="3" border="0">

            <tr>
                <td class="tt">录像文件保存路径</td>
                <td colspan="3">
                    <input id="recordPath" type="text" class="txt"/><input type="button" class="btn" value="浏览" onclick="clickOpenFileDlg('recordPath', 0);"/>
                </td>
            </tr>
            <tr>
                <td class="tt">回放下载保存路径</td>
                <td colspan="3">
                    <input id="downloadPath" type="text" class="txt"/>&nbsp;<input type="button" class="btn" value="浏览" onclick="clickOpenFileDlg('downloadPath', 0);"/>
                </td>
            </tr>

            <tr>
                <td colspan="4">
                    <input type="button" class="btn" value="获取" onclick="clickGetLocalCfg();"/>&nbsp;<input type="button" class="btn" value="设置" onclick="clickSetLocalCfg();"/>
                </td>
            </tr>
        </table>
    </fieldset>
    <div class="left">
        <fieldset class="preview">
            <legend>预览</legend>
            <table cellpadding="0" cellspacing="3" border="0">
                <tr>
                    <td class="tt">码流类型</td>
                    <td>
                        <select id="streamtype" class="sel">
                            <option value="1">主码流</option>
                            <option value="2">子码流</option>
                            <option value="3">第三码流</option>
                            <option value="4">转码码流</option>
                        </select>
                    </td>
                    <td>
                        <input type="button" class="btn" value="开始预览" onclick="clickStartRealPlay();" />
                        <input type="button" class="btn" value="停止预览" onclick="clickStopRealPlay();" />
                    </td>
                </tr>

            </table>
        </fieldset>
        <fieldset class="ptz">
            <legend>云台控制</legend>
            <table cellpadding="0" cellspacing="3" border="0" class="left">
                <tr>
                    <td>
                        <input type="button" class="btn" value="左上" onmousedown="mouseDownPTZControl(5);" onmouseup="mouseUpPTZControl();" />
                        <input type="button" class="btn" value="上" onmousedown="mouseDownPTZControl(1);" onmouseup="mouseUpPTZControl();" />
                        <input type="button" class="btn" value="右上" onmousedown="mouseDownPTZControl(7);" onmouseup="mouseUpPTZControl();" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="button" class="btn" value="左" onmousedown="mouseDownPTZControl(3);" onmouseup="mouseUpPTZControl();" />
                        <input type="button" class="btn" value="自动" onclick="mouseDownPTZControl(9);" />
                        <input type="button" class="btn" value="右" onmousedown="mouseDownPTZControl(4);" onmouseup="mouseUpPTZControl();" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="button" class="btn" value="左下" onmousedown="mouseDownPTZControl(6);" onmouseup="mouseUpPTZControl();" />
                        <input type="button" class="btn" value="下" onmousedown="mouseDownPTZControl(2);" onmouseup="mouseUpPTZControl();" />
                        <input type="button" class="btn" value="右下" onmousedown="mouseDownPTZControl(8);" onmouseup="mouseUpPTZControl();" />
                    </td>
                </tr>
            </table>
            <table cellpadding="0" cellspacing="3" border="0" class="left">
                <tr>
                    <td class="tt">云台速度</td>
                    <td>
                        <select id="ptzspeed" class="sel">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4" selected>4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="tt">预置点号</td>
                    <td><input id="preset" type="text" class="txt" value="1" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="button" class="btn" value="设置" onclick="clickSetPreset();" />
                        <input type="button" class="btn" value="调用" onclick="clickGoPreset();" />
                    </td>
                </tr>
            </table>

        </fieldset>
        <fieldset class="playback">
            <legend>回放</legend>
            <table width="100%" cellpadding="0" cellspacing="3" border="0">

                <tr>
                    <td class="tt">码流类型</td>
                    <td>
                        <select id="record_streamtype" class="sel">
                            <option value="1">主码流</option>
                            <option value="2">子码流</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td class="tt">开始时间</td>
                    <td>
                        <input id="starttime" type="text" class="txt" value="2013-12-10 00:00:00" />（时间格式：2013-11-11 12:34:56）
                    </td>
                </tr>
                <tr>
                    <td class="tt">结束时间</td>
                    <td>
                        <input id="endtime" type="text" class="txt" value="2013-12-11 23:59:59" />
                        <input type="button" class="btn" value="搜索" onclick="clickRecordSearch(0);" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div id="searchdiv" class="searchdiv">
                            <table id="searchlist" class="searchlist" cellpadding="0" cellspacing="0" border="0"></table>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="button" class="btn2" value="开始回放" onclick="clickStartPlayback();" />
                        <input type="button" class="btn2" value="停止回放" onclick="clickStopPlayback();" />

                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="button" class="btn" value="暂停" onclick="clickPause();" />
                        <input type="button" class="btn" value="恢复" onclick="clickResume();" />
                        <input type="button" class="btn" value="慢放" onclick="clickPlaySlow();" />
                        <input type="button" class="btn" value="快放" onclick="clickPlayFast();" />
                    </td>
                </tr>

            </table>
        </fieldset>
    </div>
    <div class="left">
        <fieldset class="operate">
            <legend>操作信息</legend>
            <div id="opinfo" class="opinfo"></div>
        </fieldset>
        <fieldset class="callback">
            <legend>事件回调信息</legend>
            <div id="cbinfo" class="cbinfo"></div>
        </fieldset>
    </div>
</div>
<%----%>
<script src="<%=request.getContextPath()%>/resources/dist/js/common/jquery-3.3.1.min.js"></script>
<%--<script src="<%=request.getContextPath()%>/resources/dist/js/common/tools.js"></script>--%>
<script src="<%=request.getContextPath()%>/resources/dist/js/common/tools.js"></script>
<script src="<%=request.getContextPath()%>/resources/dist/haiKang/webVideoCtrl.js"></script>
<script src="<%=request.getContextPath()%>/resources/dist/js/sys/jsdd.js"></script>
<script src="<%=request.getContextPath()%>/resources/dist/js/sys/jsdd1.js"></script>
</body>
</html>
