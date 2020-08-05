$(function(){
	
	
    //工单系统
    var flightShowData = [{
        order: "1",
        responseMan: "刘明哲",
        type: "网络故障",
        code: "ABCDEFG0021211",
        time: "2019-08-29"
    },{
        order: "2",
        responseMan: "管理员",
        type: "硬件故障",
        code: "BBCDEFG0021212",
        time: "2019-08-29"
    },{
        order: "3",
        responseMan: "刘明哲",
        type: "网络故障",
        code: "CBCDEFG0021213",
        time: "2019-08-29"
    },{
        order: "4",
        responseMan: "张津",
        type: "网络故障",
        code: "DBCDEFG0021214",
        time: "2019-08-29"
    },{
        order: "5",
        responseMan: "刘明哲",
        type: "网络故障",
        code: "EBCDEFG0021215",
        time: "2019-08-29"
    },{
        order: "6",
        responseMan: "刘明哲",
        type: "网络故障",
        code: "FBCDEFG0021216",
        time: "2019-08-29"
    },{
        order: "7",
        responseMan: "刘明哲",
        type: "智商886故障",
        code: "GBCDEFG0021217",
        time: "2019-08-29"
    },{
        order: "8",
        responseMan: "张津",
        type: "no123故障",
        code: "HBCDEFG0021218",
        time: "2019-08-29"
    },{
        order: "9",
        responseMan: "刘明哲",
        type: "网络故障",
        code: "IBCDEFG0021219",
        time: "2019-08-29"
    },{
        order: "10",
        responseMan: "刘明哲",
        type: "网络故障",
        code: "JBCDEFG0021210",
        time: "2019-08-29"
    },{
        order: "11",
        responseMan: "刘明哲",
        type: "网络故障",
        code: "KBCDEFG0021211",
        time: "2019-08-29"
    },{
        order: "12",
        responseMan: "刘明哲",
        type: "12网络故障",
        code: "LBCDEFG0021212",
        time: "2019-08-29"
    }];
    var flightShow = $(".flightShowUl").flightShow(flightShowData);
    flightShow.autoRefresh();
    //资产信息1
    var assetsData = [{
        assetsOrder: "001",
        assetsCode: "涉密网络安全态势感知",
        assetsName: "东华软件"
    },{
        assetsOrder: "002",
        assetsCode: "统一身份认证",
        assetsName: "东华软件"
    },{
        assetsOrder: "003",
        assetsCode: "账号可视化系统",
        assetsName: "东华软件"
    },{
        assetsOrder: "004",
        assetsCode: "主机监控与审计系统",
        assetsName: "东华软件"
    },{
        assetsOrder: "005",
        assetsCode: "统一身份认证",
        assetsName: "东华软件"
    },{
        assetsOrder: "006",
        assetsCode: "统一身份认证",
        assetsName: "东华软件"
    },{
        assetsOrder: "007",
        assetsCode: "统一身份认证",
        assetsName: "东华软件"
    },{
        assetsOrder: "008",
        assetsCode: "主机监控与审计系统",
        assetsName: "东华软件"
    },{
        assetsOrder: "009",
        assetsCode: "主机监控与审计系统",
        assetsName: "东华软件"
    },{
        assetsOrder: "010",
        assetsCode: "主机监控与审计系统",
        assetsName: "东华软件"
    },{
        assetsOrder: "011",
        assetsCode: "统一身份认证",
        assetsName: "东华软件"
    },{
        assetsOrder: "012",
        assetsCode: "统一身份认证",
        assetsName: "东华软件"
    },{
        assetsOrder: "013",
        assetsCode: "统一身份认证",
        assetsName: "东华软件"
    },{
        assetsOrder: "014",
        assetsCode: "统一身份认证",
        assetsName: "东华软件"
    },{
        assetsOrder: "015",
        assetsCode: "统一身份认证",
        assetsName: "东华软件"
    },{
        assetsOrder: "016",
        assetsCode: "统一身份认证",
        assetsName: "东华软件"
    },{
        assetsOrder: "017",
        assetsCode: "统一身份认证",
        assetsName: "东华软件"
    },{
        assetsOrder: "018",
        assetsCode: "统一身份认证",
        assetsName: "东华软件"
    }];
    var scrollTable1 = $(".assetsBlock .trBodyBorder").scrollTable(assetsData);
    //终端信息1
    var zdData1 = [{
        deptName: "办公厅",
        ip: "192.168.1.1"
    },{
        deptName: "组织部",
        ip: "192.168.1.2"
    },{
        deptName: "宣传部",
        ip: "192.168.1.3"
    },{
        deptName: "研究室",
        ip: "192.168.1.4"
    },{
        deptName: "法规室",
        ip: "192.168.1.5"
    },{
        deptName: "信访室",
        ip: "192.168.1.6"
    },{
        deptName: "信息室",
        ip: "192.168.1.7"
    },{
        deptName: "老干部处",
        ip: "192.168.1.8"
    },{
        deptName: "机关党委",
        ip: "192.168.1.9"
    },{
        deptName: "秘书处",
        ip: "192.168.1.10"
    },{
        deptName: "综合处",
        ip: "192.168.1.11"
    },{
        deptName: "党风政风监督室",
        ip: "192.168.1.12"
    },{
        deptName: "案件监督管理室",
        ip: "192.168.1.13"
    },{
        deptName: "第一监督检查室",
        ip: "192.168.1.14"
    },{
        deptName: "第二监督检查室",
        ip: "192.168.1.15"
    },{
        deptName: "第三监督检查室",
        ip: "192.168.1.16"
    },{
        deptName: "第四监督检查室",
        ip: "192.168.1.17"
    }];
    var scrollTable2 = $(".infoBlock1 .trBodyBorder").scrollTable(zdData1);
    //终端信息2
    var zdData2 = [{
        pzjgName: "驻科技厅",
        zcbh: "192.168.1.1"
    },{
        pzjgName: "驻工信厅",
        zcbh: "192.168.1.2"
    },{
        pzjgName: "驻公安厅",
        zcbh: "192.168.1.3"
    },{
        pzjgName: "驻政府办公厅",
        zcbh: "192.168.1.4"
    },{
        pzjgName: "驻发改委",
        zcbh: "192.168.1.5"
    },{
        pzjgName: "驻教育厅",
        zcbh: "192.168.1.6"
    },{
        pzjgName: "驻统战部",
        zcbh: "192.168.1.7"
    },{
        pzjgName: "驻政法委",
        zcbh: "192.168.1.8"
    },{
        pzjgName: "驻省人大机关",
        zcbh: "192.168.1.9"
    },{
        pzjgName: "驻住建厅",
        zcbh: "192.168.1.10"
    },{
        pzjgName: "驻交通厅",
        zcbh: "192.168.1.11"
    },{
        pzjgName: "驻自然资源厅",
        zcbh: "192.168.1.12"
    },{
        pzjgName: "驻生态环境厅",
        zcbh: "192.168.1.13"
    },{
        pzjgName: "驻财政厅",
        zcbh: "192.168.1.14"
    },{
        pzjgName: "驻人社厅",
        zcbh: "192.168.1.15"
    },{
        pzjgName: "驻国资委",
        zcbh: "192.168.1.16"
    },{
        pzjgName: "驻统计局",
        zcbh: "192.168.1.17"
    },{
        pzjgName: "驻机关事务局",
        zcbh: "192.168.1.18"
    }];
    var scrollTable3 = $(".infoBlock2 .trBodyBorder").scrollTable(zdData2);
    //报警信息
    var bjData = [{
        type: "1",
        bjDate: "2018-09-26",
        bjTime: "16:10:19",
        bjInfo: "系统温度过高报警"
    },{
        type: "2",
        bjDate: "2018-09-26",
        bjTime: "16:10:17",
        bjInfo: "系统压力过高报警"
    },{
        type: "1",
        bjDate: "2018-09-26",
        bjTime: "16:10:15",
        bjInfo: "系统温度过高报警"
    },{
        type: "2",
        bjDate: "2018-09-26",
        bjTime: "16:10:06",
        bjInfo: "系统温度过高报警"
    },{
        type: "1",
        bjDate: "2018-09-26",
        bjTime: "16:10:00",
        bjInfo: "空气纯度过低报警"
    },{
        type: "1",
        bjDate: "2018-09-26",
        bjTime: "16:09:38",
        bjInfo: "系统温度过高报警"
    },{
        type: "2",
        bjDate: "2018-09-26",
        bjTime: "16:08:32",
        bjInfo: "领导示意报警"
    },{
        type: "1",
        bjDate: "2018-08-22",
        bjTime: "12:10:03",
        bjInfo: "系统温度过高报警"
    },{
        type: "1",
        bjDate: "2018-07-30",
        bjTime: "05:11:03",
        bjInfo: "系统压力过大报警"
    },{
        type: "1",
        bjDate: "2018-07-30",
        bjTime: "16:10:09",
        bjInfo: "系统没有压力报警"
    },{
        type: "1",
        bjDate: "2018-06-30",
        bjTime: "16:10:09",
        bjInfo: "系统温度过高报警"
    },{
        type: "2",
        bjDate: "2018-06-28",
        bjTime: "16:10:30",
        bjInfo: "系统温度太低报警"
    },{
        type: "1",
        bjDate: "2018-06-28",
        bjTime: "13:10:09",
        bjInfo: "空气纯度过高报警"
    },{
        type: "1",
        bjDate: "2018-06-28",
        bjTime: "11:10:02",
        bjInfo: "系统温度过高报警"
    },{
        type: "1",
        bjDate: "2018-06-27",
        bjTime: "16:20:29",
        bjInfo: "系统温度过高报警"
    },{
        type: "1",
        bjDate: "2018-06-27",
        bjTime: "12:13:09",
        bjInfo: "系统温度过高报警"
    },{
        type: "1",
        bjDate: "2018-06-26",
        bjTime: "18:10:30",
        bjInfo: "系统温度过高报警"
    },{
        type: "1",
        bjDate: "2018-06-25",
        bjTime: "16:10:09",
        bjInfo: "系统温度过高报警"
    }];
    var bjTable1 = $(".bjBlock .trBodyBorder").bjTable(bjData);
    bjTable1.autoRefresh();
    //随机信息2
    var randomData2 = [{
        string1: "01",
        string2: "HSJAT KSL 012"
    },{
        string1: "02",
        string2: "ZHANGJIN 66"
    },{
        string1: "03",
        string2: "HAHA 123 123"
    },{
        string1: "04",
        string2: "WHATATTKAL"
    },{
        string1: "05",
        string2: "110 119 120"
    },{
        string1: "06",
        string2: "MAMABABAYEYE"
    }];
    var randomInfo2 = $(".randomBlock2").randomInfo(randomData2);
    randomInfo2.autoRefresh();
    //随机信息3
    var randomData3 = [{
        string1: "01",
        string2: "HSJAT KSL 012"
    },{
        string1: "02",
        string2: "ZHANGJIN 66"
    },{
        string1: "03",
        string2: "HAHA 123 123"
    },{
        string1: "04",
        string2: "WHATATTKAL"
    },{
        string1: "05",
        string2: "110 119 120"
    },{
        string1: "06",
        string2: "MAMABABAYEYE"
    },{
        string1: "07",
        string2: "HSJAT KSL 011"
    },{
        string1: "08",
        string2: "DATESASDFG"
    },{
        string1: "09",
        string2: "HAMEIHSKLAIF"
    },{
        string1: "10",
        string2: "HSJAT KSL 012"
    },{
        string1: "11",
        string2: "888888888"
    },{
        string1: "12",
        string2: "123 ABC 123"
    },{
        string1: "13",
        string2: "LLLLAAAAASD"
    },{
        string1: "14",
        string2: "TEST TEST TEST"
    }];
    var randomInfo3 = $(".randomBlock3").randomInfo(randomData3);
    randomInfo3.autoRefresh();
    //设置右侧视频区域时间，以当前时间为准每分刷新
    function setVideoAreaTime(){
        var date = new Date();
        var month = date.getMonth();
        var hour = date.getHours();
        if (hour < 10) hour = "0" + hour;
        var minute = date.getMinutes();
        if (minute < 10) minute = "0" + minute;
        var nowTime = hour + ":" + minute;
        $(".nowTime").text(nowTime);
        var day = date.getDay();
        var dayArray = ["SUNDAY", "MONDAY", "TUESDAY", "WEDNESDAY", "THRUSDAY", "FRIDAY", "SATURDAY"];
        $(".nowDay").text(dayArray[day]);
    }
    setVideoAreaTime();
    var videoAreaTimmer = setInterval(function(){
        setVideoAreaTime();
    }, 6000);
    //tps折线图
    var tpsData = [30,35,80,70,65,20,80,90,32,45,22,92,31,50,10,60,70,80,25,45,45];
    var currentValueSpan = $(".currentValueSpan");
    var tps = new TPS("tpsLine", tpsData);
    function setTpsMove(){
        var newTpsValue = Math.floor(Math.random() * 100);
        tpsData.shift();
        tpsData.push(newTpsValue);
        tps.refresh(tpsData);
        currentValueSpan.text(newTpsValue + "%");
    }
    var tpsMoveTimmer = setInterval(function(){
        setTpsMove();
    }, 2000);
    //五个系统动画
    var funBlockCount = 0;
    var systemFuncBlock = $(".systemFuncBlock");
    var funBlocks = systemFuncBlock.find(".funBlock");
    function setfunBlockLight(){
        var selectBlock = systemFuncBlock.find("[index='" + funBlockCount + "']");
        selectBlock.addClass("active");
        funBlocks.not(selectBlock).removeClass("active");
        funBlockCount += 1;
        if(funBlockCount == funBlocks.length)
            funBlockCount = 0;
    }
    var funBlockTimmer = setInterval(function(){
        setfunBlockLight();
    }, 2000);
    //机房四图标动画
    var houseIconCount = 0;
    var houseBlock = $(".houseBlock");
    var houseIcons = houseBlock.find(".houseIcon");
    function setHouseAreaLight(){
        var selectIcon = houseBlock.find("[index='" + houseIconCount + "']");
        selectIcon.addClass("currentLight");
        houseIcons.not(selectIcon).removeClass("currentLight");
        houseIconCount += 1;
        if(houseIconCount == houseIcons.length)
            houseIconCount = 0;
    }
    var houseAreaTimmer = setInterval(function(){
        setHouseAreaLight();
    }, 2000);
    //添加雷达中间小点
    var pointAreaCount = 0;
    var pointArea = $(".pointArea");
    var pointAreaWidth = pointArea.width();
    var pointAreaHeight = pointArea.height();
    var pointAreaTimmer = setInterval(function () {
        var width = Math.floor(Math.random() * pointAreaWidth);
        var height = Math.floor(Math.random() * pointAreaHeight);
        pointArea.append("<div class='point-success' style='left:" + width + "px;top:" + height + "px;'></div>");
        pointAreaCount += 1;
        if (pointAreaCount > 30) {
            clearInterval(pointAreaTimmer);
        }
    }, 600);
    //雷达点击切换成报警状态
    $(".ldBlock").on("click", function(){
        var ldBlock = $(this);
        if(ldBlock.hasClass("warnning"))
            ldBlock.removeClass("warnning");
        else
            ldBlock.addClass("warnning");
    });
    //在线人数1
    var online1Count = 0;
    var online1Data = [1895, 1324, 250, 31, 1, 66];
    var runNum1 = $(".online1").runNum();
    runNum1.goValue(online1Data[0]);
    online1Count += 1;
    var online1Timmer = setInterval(function(){
        runNum1.goValue(online1Data[online1Count]);
        online1Count += 1;
        if(online1Count == online1Data.length)
            online1Count = 0;
    }, 3000);
    //在线人数1_1
    var online2Count = 0;
    var online2Data = [11, 666, 2501, 331, 88, 12];
    var runNum1_1 = $(".online2").runNum();
    runNum1_1.goValue(online2Data[0]);
    online2Count += 1;
    var online2Timmer = setInterval(function(){
        runNum1_1.goValue(online2Data[online2Count]);
        online2Count += 1;
        if(online2Count == online2Data.length)
            online2Count = 0;
    }, 3000);
    //故障1
    var fault1Count = 0;
    var fault1Data = [62, 1234, 886, 23, 10, 999];
    var runNum2 = $(".fault1").runNum();
    runNum2.goValue(fault1Data[0]);
    fault1Count += 1;
    var fault1Timmer = setInterval(function(){
        runNum2.goValue(fault1Data[fault1Count]);
        fault1Count += 1;
        if(fault1Count == fault1Data.length)
            fault1Count = 0;
    }, 3000);
    //故障1_1
    var fault2Count = 0;
    var fault2Data = [162, 234, 1886, 203, 110, 9];
    var runNum2_1 = $(".fault2").runNum();
    runNum2_1.goValue(fault2Data[0]);
    fault2Count += 1;
    var fault2Timmer = setInterval(function(){
        runNum2_1.goValue(fault2Data[fault2Count]);
        fault2Count += 1;
        if(fault2Count == fault2Data.length)
            fault2Count = 0;
    }, 3000);
    //未连通1
    var unconnect1Count = 0;
    var unconnect1Data = [13, 100, 3215, 137, 555, 1101];
    var runNum3 = $(".unconnect1").runNum();
    runNum3.goValue(unconnect1Data[0]);
    unconnect1Count += 1;
    var unconnect1Timmer = setInterval(function(){
        runNum3.goValue(unconnect1Data[unconnect1Count]);
        unconnect1Count += 1;
        if(unconnect1Count == unconnect1Data.length)
            unconnect1Count = 0;
    }, 3000);
    //未连通2
    var unconnect2Count = 0;
    var unconnect2Data = [313, 2100, 215, 53, 655, 109];
    var runNum3_1 = $(".unconnect2").runNum();
    runNum3_1.goValue(unconnect2Data[0]);
    unconnect2Count += 1;
    var unconnect2Timmer = setInterval(function(){
        runNum3_1.goValue(unconnect2Data[unconnect2Count]);
        unconnect2Count += 1;
        if(unconnect2Count == unconnect2Data.length)
            unconnect2Count = 0;
    }, 3000);
    //设置四个CPU
    var cpuBlockWidth = $(".cpuBlock").width();
    function setCpuValue(obj){
        var cpu1Value = obj.cpu1Value;
        var cpu2Value = obj.cpu2Value;
        var cpu3Value = obj.cpu3Value;
        var cpu4Value = obj.cpu4Value;
        var cpu1NameS = obj.cpu1NameS;
        var cpu2NameS = obj.cpu2NameS;
        var cpu3NameS = obj.cpu3NameS;
        var cpu4NameS = obj.cpu4NameS;
        var cpu1NameE = obj.cpu1NameE;
        var cpu2NameE = obj.cpu2NameE;
        var cpu3NameE = obj.cpu3NameE;
        var cpu4NameE = obj.cpu4NameE;
        var cpu1Label = $(".cpu1Label");
        var cpu2Label = $(".cpu2Label");
        var cpu3Label = $(".cpu3Label");
        var cpu4Label = $(".cpu4Label");
        $(".cpu1Value").text(cpu1Value + "%");
        cpu1Label.find(".nameS").text(cpu1NameS);
        cpu1Label.find(".nameE").text(cpu1NameE);
        $(".process1").width(cpuBlockWidth * cpu1Value / 100 - 4);
        $(".cpu2Value").text(cpu2Value + "%");
        cpu2Label.find(".nameS").text(cpu2NameS);
        cpu2Label.find(".nameE").text(cpu2NameE);
        $(".process2").width(cpuBlockWidth * cpu2Value / 100 - 4);
        $(".cpu3Value").text(cpu3Value + "%");
        cpu3Label.find(".nameS").text(cpu3NameS);
        cpu3Label.find(".nameE").text(cpu3NameE);
        $(".process3").width(cpuBlockWidth * cpu3Value / 100 - 4);
        $(".cpu4Value").text(cpu4Value + "%");
        cpu4Label.find(".nameS").text(cpu4NameS);
        cpu4Label.find(".nameE").text(cpu4NameE);
        $(".process4").width(cpuBlockWidth * cpu4Value / 100 - 4);
        var average = parseInt((cpu1Value + cpu2Value + cpu3Value + cpu4Value) / 4);
        $(".pRateNum").text(average + "%");
        var round = Math.round(average / 10);//四舍五入取到值为1到10
        var dots1 = $(".rateDiv1 .dot").removeClass("lightDot");
        var dots2 = $(".rateDiv2 .dot").removeClass("lightDot");
        for(var i = 0; i < round; i++){
            dots1.eq(-1 - i).addClass("lightDot");
            dots2.eq(-1 - i).addClass("lightDot");
        }
    }
    //大的机站数字
    var terminalData = [{
        terminalNo: 1,
        cpu1Value: 43,
        cpu1NameS: "统一身份认证",
        cpu1NameE: "系统",
        cpu2Value: 49,
        cpu2NameS: "OA",
        cpu2NameE: "系统",
        cpu3Value: 39,
        cpu3NameS: "涉密风险管理",
        cpu3NameE: "平台",
        cpu4Value: 28,
        cpu4NameS: "安全态势感知",
        cpu4NameE: "平台"
    },{
        terminalNo: 2,
        cpu1Value: 35,
        cpu1NameS: "综合监控",
        cpu1NameE: "平台",
        cpu2Value: 31,
        cpu2NameS: "运维工单运维",
        cpu2NameE: "系统",
        cpu3Value: 31,
        cpu3NameS: "账号可视化",
        cpu3NameE: "系统",
        cpu4Value: 44,
        cpu4NameS: "机要交换",
        cpu4NameE: "系统"
    },{
        terminalNo: 3,
        cpu1Value: 39,
        cpu1NameS: "涉密安全邮件",
        cpu1NameE: "系统",
        cpu2Value: 28,
        cpu2NameS: "电子档案管理",
        cpu2NameE: "系统",
        cpu3Value: 25,
        cpu3NameS: "公文传输",
        cpu3NameE: "系统",
        cpu4Value: 49,
        cpu4NameS: "可视化运维",
        cpu4NameE: "系统"
    }];
    var terminalNoCount = 0;
    var runNum4 = $(".terminalNo").runNum(1, {
        dHeight: 92
    });
    setCpuValue(terminalData[0]);
    terminalNoCount += 1;
    var terminalNoTimmer = setInterval(function(){
        runNum4.goValue(terminalData[terminalNoCount].terminalNo);
        setCpuValue(terminalData[terminalNoCount]);
        terminalNoCount += 1;
        if(terminalNoCount == terminalData.length)
            terminalNoCount = 0
    }, 3000);
    //ups 动画
    var ups1Data = [{
        percent: 60,
        value: 16789
    },{
        percent: 26,
        value: 367
    },{
        percent: 93,
        value: 10086
    },{
        percent: 52,
        value: 886
    }];
    var ups2Data = [{
        percent: 36,
        value: 12525
    },{
        percent: 80,
        value: 33670
    },{
        percent: 62,
        value: 11023
    },{
        percent: 6,
        value: 6543
    }];
    var ups1Percent = $(".ups1Percent");
    var ups2Percent = $(".ups2Percent");
    var ups1Dots = $(".ups1Div .dot");
    var ups2Dots = $(".ups2Div .dot");
    var upsCount = 0;
    var runNum5 = $(".ups1Num").runNum(ups1Data[0].value, {
        dHeight: 90
    });
    ups1Percent.text(ups1Data[0].percent + "%");
    var round1 = Math.round(ups1Data[0].percent / 10);//四舍五入取到值为1到10
    for(var i = 0; i < round1; i++){
        ups1Dots.eq(-1 - i).addClass("lightDot");
    }
    var round2 = Math.round(ups2Data[0].percent / 10);//四舍五入取到值为1到10
    for(var j = 0; j < round2; j++){
        ups2Dots.eq(-1 - j).addClass("lightDot");
    }
    var runNum6 = $(".ups2Num").runNum(ups2Data[0].value, {
        dHeight: 90
    });
    ups2Percent.text(ups2Data[0].percent + "%");
    upsCount += 1;
    var upsTimmer = setInterval(function(){
        runNum5.goValue(ups1Data[upsCount].value);
        runNum6.goValue(ups2Data[upsCount].value);
        ups1Percent.text(ups1Data[upsCount].percent + "%");
        ups2Percent.text(ups2Data[upsCount].percent + "%");
        round1 = Math.round(ups1Data[upsCount].percent / 10);//四舍五入取到值为1到10
        ups1Dots.removeClass("lightDot");
        for(var i = 0; i < round1; i++){
            ups1Dots.eq(-1 - i).addClass("lightDot");
        }
        round2 = Math.round(ups2Data[upsCount].percent / 10);//四舍五入取到值为1到10
        ups2Dots.removeClass("lightDot");
        for(var j = 0; j < round2; j++){
            ups2Dots.eq(-1 - j).addClass("lightDot");
        }
        upsCount += 1;
        if(upsCount == ups1Data.length)
            upsCount = 0
    }, 3000);
	$('.house1').on('click',function(){//互联网机房
		//var url = "http://156.8.11.20/vmdb-sso/external/operation/poclogin?loginCode=admin&targetUrl=http://156.8.11.20/tarsier-vmdb/dcvWeb/dcv/home.html?ID=100000000000001";
		var url = "http://156.8.11.20/vmdb-sso/external/operation/poclogin?loginCode=admin&targetUrl=";
		var target = "http://156.8.11.20/tarsier-vmdb/dcvWeb/dcv/home.html?ID=100000000000001";
		var redirectUrl = url+encodeURIComponent(target)+"#func=uinv.u3d.funcSet.setSelectionRootObjByBID('3F非涉密机房')";
		console.log('url--->',redirectUrl);
		let urlTest = 'http://www.baidu.com';
		//window.open(url);
		$("body").show().html('<iframe frameborder="0" scrolling="no" src="' + redirectUrl + '" width="100%"' +
		    ' height="100%"></iframe>');
	})
	$('.house2').on('click',function(){//涉密机房
		var url = "http://156.8.11.20/vmdb-sso/external/operation/poclogin?loginCode=admin&targetUrl=http://156.8.11.20/tarsier-vmdb/dcvWeb/dcv/home.html?ID=100000000000001#func=uinv.u3d.funcSet.setSelectionRootObjByBID('4F屏蔽机房')";
		window.open(url);
		/* $("body").show().html('<iframe frameborder="0" scrolling="no" src="' + url + '" width="100%"' +
			    ' height="100%"></iframe>'); */
	})
	$('.house3').on('click',function(){//A区机房
		var url = "http://156.8.11.20/vmdb-sso/external/operation/poclogin?loginCode=admin&targetUrl=http://156.8.11.20/tarsier-vmdb/dcvWeb/dcv/home.html?ID=100000000000001#func=uinv.u3d.funcSet.setSelectionRootObjByBID('1F屏蔽机房')";
		window.open(url);
		// $("body").show().html('<iframe frameborder="0" scrolling="no" src="' + url + '" width="100%"' +
		// 	    ' height="100%"></iframe>');
	})
	$('.house4').on('click',function(){//备份机房
		var url = "http://156.8.11.20/vmdb-sso/external/operation/poclogin?loginCode=admin&targetUrl=";
		var target = "http://156.8.11.20/tarsier-vmdb/dcvWeb/dcv/home.html?ID=100000000000001";
		var redirectUrl = url+encodeURIComponent(target)+"#func=uinv.u3d.funcSet.setSelectionRootObjByBID('吉莲3F屏蔽机房')";
		window.open(redirectUrl);
		// $("body").show().html('<iframe frameborder="0" scrolling="no" src="' + url + '" width="100%"' +
		// 	    ' height="100%"></iframe>');
	})
	$('.allIntenet').on('click',function(){//全省网络
		var url = "http://156.8.11.20/vmdb-sso/external/operation/poclogin?loginCode=admin&targetUrl=http://156.8.11.20/tarsier-vmdb/dcvWeb/giv/ie-main.html?ugeo=1";
		window.open(url);
		/* $("body").show().html('<iframe frameborder="0" scrolling="no" src="' + url + '" width="100%"' +
			    ' height="100%"></iframe>'); */
	})
	$('.park').on('click',function(){//机关园区
		var url = "http://156.8.11.20/vmdb-sso/external/operation/poclogin?loginCode=admin&targetUrl=";
		var target = "http://156.8.11.20/tarsier-vmdb/dcvWeb/dcv/home.html?ID=100000000000001";
		var redirectUrl = url+encodeURIComponent(target);
		window.open(redirectUrl);
	})
	$('.videosBlock').on('click',function(){//即时调度二级页面
		var url = window.location.origin+"/SjwProject/system/jsdd";
		window.location.href="alert:"+window.location.origin+"/SjwProject/system/jsdd"
		/* $("body").show().html('<iframe frameborder="0" scrolling="no" src="' + url + '" width="100%"' +
			    ' height="100%"></iframe>'); */
	})
	$('.flightShowBlock').on('click',function(){//工单系统二级页面
		var url = window.location.origin+"/SjwProject/system/gdgl";
		window.open(url);
		/* $("body").show().html('<iframe frameborder="0" scrolling="no" src="' + url + '" width="100%"' +
			    ' height="100%"></iframe>'); */
	})
	$('.assetsBlock').on('click',function(){//资产信息二级页面
		var url = window.location.origin+"/SjwProject/system/zcgl";
		window.open(url);
		/* $("body").show().html('<iframe frameborder="0" scrolling="no" src="' + url + '" width="100%"' +
			    ' height="100%"></iframe>'); */
	})
});