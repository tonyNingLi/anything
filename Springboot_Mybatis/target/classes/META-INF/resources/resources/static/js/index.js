$(function(){

    //setInterval(() => {
    //    //alert(1);
    //    window.location.reload();
    //}, 1000*60);


	$('body').append(`<iframe data-desc="网管系统" style="display:none" src="http://156.8.11.53:8080/itims/login.action?userName=admin&pwd=21232f297a57a5a743894a0e4a801fc3&DMSN=998"></iframe>`)

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
	$.ajax({
	    url: window.location.origin+"/SjwProject/zcgl/getGdListDate",
	    data: {
	        start: 0,
			limit: 10
	    },
	    success: function (res) {
	        var data = JSON.parse(res);
			console.log('data',data);
			var list = [];
			for(var i = 0; i < data.root.length; i++){
				var map = {};
				map.order = i+1;
				var name =""
				if((typeof data.root[i].assigneeInfo) =="object"){
					if(data.root[i].assigneeInfo.length>0){
						name = data.root[i].assigneeInfo[0].assignee?data.root[i].assigneeInfo[0].assignee.name:"待签收";
					}else if(data.root[i].solver){
						name=data.root[i].solver.xingMing;
					}else{
						name="无";
					}
				}else{
					name = "未签收";
				}
				map.responseMan = name;
				map.type = data.root[i].category.name;
				map.code = data.root[i].code;
				map.time = data.root[i].createdOn;
				list.push(map);
			}
			console.log('list---->>>',list);
			var flightShow = $(".flightShowUl").flightShow(list);
			flightShow.autoRefresh();
	    }
	})
    //资产信息1
    /* var assetsData = [{
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
    var scrollTable1 = $(".assetsBlock .trBodyBorder").scrollTable(assetsData); */
	$.ajax({
	    url: window.location.origin+"/SjwProject/zcgl/selectZcxxListDate",
	    data: {
	    },
	    success: function (res) {
	        var data = res;
			console.log('资产-->>',data);
			var list = [];
			for(var i = 0; i < data.length; i++){
				var map = {};
				map.assetsOrder = i+1;
				map.assetsCode = data[i].fAlias.substr(0,8);
                map.assetsName = data[i].fVendor;
				list.push(map);
			}
			var scrollTable1 = $(".assetsBlock .trBodyBorder").scrollTable(list);
	    }
	})
    //终端信息1
    /*var zdData1 = [{
        deptName: "办公厅",
        ip: "156.8.17.2"
    },{
        deptName: "组织部",
        ip: "156.8.17.14"
    },{
        deptName: "宣传部",
        ip: "156.8.17.9"
    },{
        deptName: "研究室",
        ip: "156.8.17.19"
    },{
        deptName: "法规室",
        ip: "156.8.17.25"
    },{
        deptName: "信访室",
        ip: "156.8.17.78"
    },{
        deptName: "信息室",
        ip: "156.8.17.33"
    },{
        deptName: "老干部处",
        ip: "156.8.17.69"
    },{
        deptName: "机关党委",
        ip: "156.8.17.34"
    },{
        deptName: "秘书处",
        ip: "156.8.17.12"
    },{
        deptName: "综合处",
        ip: "156.8.17.11"
    },{
        deptName: "党风政风监督室",
        ip: "156.8.17.74"
    },{
        deptName: "案件监督管理室",
        ip: "156.8.17.55"
    },{
        deptName: "第一监督检查室",
        ip: "156.8.17.23"
    },{
        deptName: "第二监督检查室",
        ip: "156.8.17.20"
    },{
        deptName: "第三监督检查室",
        ip: "156.8.17.18"
    },{
        deptName: "第四监督检查室",
        ip: "156.8.17.22"
    }];*/
	//终端数据查询，结果已经调通
	 $.ajax({
	    url: window.location.origin+"/SjwProject/zdsbgl/getZdsbgzDate",
	     data: {
	    },
	     success: function (res) {
	         var data = JSON.parse(res);
	 		console.log('terminal',data);
	 		var list = [];
	 		for(var i = 0; i < data.rows.length; i++){
	 			var map = {};
	 			if(data.rows[i].status == '开机' & data.rows[i].Registered=='已管理'){
	 				map.deptName = data.rows[i].adepartName.substr(0,6);
	 				map.ip = data.rows[i].IP;
	 				list.push(map);
	 			}
	 		}
	 		console.log('terminalList---->>>',list);
	 		$('#deptNum').html(list.length);
	 		var scrollTable2 = $(".infoBlock1 .trBodyBorder").scrollTable(list);
	     }
	 })
	//var scrollTable2 = $(".infoBlock1 .trBodyBorder").scrollTable(zdData1);
    //终端信息2
   /*var zdData2 = [{
        pzjgName: "驻科技厅",
        zcbh: "156.8.18.9"
    },{
        pzjgName: "驻工信厅",
        zcbh: "156.8.18.12"
    },{
        pzjgName: "驻公安厅",
        zcbh: "156.8.18.22"
    },{
        pzjgName: "驻政府办公厅",
        zcbh: "156.8.18.2"
    },{
        pzjgName: "驻发改委",
        zcbh: "156.8.18.6"
    },{
        pzjgName: "驻教育厅",
        zcbh: "156.8.18.78"
    },{
        pzjgName: "驻统战部",
        zcbh: "156.8.18.71"
    },{
        pzjgName: "驻政法委",
        zcbh: "156.8.18.31"
    },{
        pzjgName: "驻省人大机关",
        zcbh: "156.8.18.22"
    },{
        pzjgName: "驻住建厅",
        zcbh: "156.8.18.20"
    },{
        pzjgName: "驻交通厅",
        zcbh: "156.8.18.44"
    },{
        pzjgName: "驻自然资源厅",
        zcbh: "156.8.18.33"
    },{
        pzjgName: "驻生态环境厅",
        zcbh: "156.8.18.99"
    },{
        pzjgName: "驻财政厅",
        zcbh: "156.8.18.50"
    },{
        pzjgName: "驻人社厅",
        zcbh: "156.8.18.43"
    },{
        pzjgName: "驻国资委",
        zcbh: "156.8.18.34"
    },{
        pzjgName: "驻统计局",
        zcbh: "156.8.18.21"
    },{
        pzjgName: "驻机关事务局",
        zcbh: "156.8.18.19"
    }];*/
    //var scrollTable3 = $(".infoBlock2 .trBodyBorder").scrollTable(zdData2);
    $.ajax({
	    url: window.location.origin+"/SjwProject/zdsbgl/getZdsbgzDate17",
	     data: {
	    },
	     success: function (res) {
	         var data = JSON.parse(res);
	 		console.log('pzzd',data);
	 		var list = [];
	 		for(var i = 0; i < data.rows.length; i++){
	 			var map = {};
	 			if(data.rows[i].status == '开机' & data.rows[i].Registered=='已管理'){
	 				map.pzjgName = data.rows[i].adepartName.substr(0,6);
	 				map.zcbh = data.rows[i].IP;
	 				list.push(map);
	 			}
	 		}
	 		console.log('pzzdList---->>>',list);
	 		$('#jgName').html(list.length);
	 		var scrollTable3 = $(".infoBlock2 .trBodyBorder").scrollTable(list);
	     }
     })
     
    // $.ajax({
    //     url: window.location.origin+"/SjwProject/zdsbgl/getZdsbgzDate17",
    //     data: {
    //     },
    //     success: function (res) {
    //         var data = JSON.parse(res);
    // 		console.log('terminal',data);
    // 		var list = [];
    // 		for(var i = 0; i < data.rows.length; i++){
    // 			var map = {};
    // 			if(data.rows[i].status == '开机'& data.rows[i].Registered=="已管理"){
    // 				map.pzjgName = data.rows[i].adepartName.substr(0,6);
    // 				map.zcbh = data.rows[i].IP;
    // 				list.push(map);
    // 			}
    // 		}
    // 		console.log('pzjigouList---->>>',list);
    // 		$('#jgName').html(list.length);
    // 		var scrollTable3 = $(".infoBlock2 .trBodyBorder").scrollTable(list);
    //     }
    // })
    //资产告警信息
    /*var bjData = [{
        type: "2",
        bjDate: "2019-10-20",
        bjTime: "16:10:19",
        bjInfo: "系统温度过高报警"
    },{
        type: "2",
        bjDate: "2019-10-21",
        bjTime: "16:10:17",
        bjInfo: "系统压力过高报警"
    },{
        type: "2",
        bjDate: "2019-10-21",
        bjTime: "16:10:15",
        bjInfo: "系统温度过高报警"
    },{
        type: "2",
        bjDate: "2019-10-21",
        bjTime: "16:10:06",
        bjInfo: "系统温度过高报警"
    },{
        type: "2",
        bjDate: "2019-10-21",
        bjTime: "16:10:00",
        bjInfo: "空气纯度过低报警"
    },{
        type: "2",
        bjDate: "2019-10-21",
        bjTime: "16:09:38",
        bjInfo: "系统温度过高报警"
    },{
        type: "2",
        bjDate: "2019-10-21",
        bjTime: "16:08:32",
        bjInfo: "示意报警"
    },{
        type: "1",
        bjDate: "2019-10-21",
        bjTime: "12:10:03",
        bjInfo: "系统温度过高报警"
    },{
        type: "2",
        bjDate: "2019-10-21",
        bjTime: "05:11:03",
        bjInfo: "系统压力过大报警"
    },{
        type: "2",
        bjDate: "2019-10-21",
        bjTime: "16:10:09",
        bjInfo: "系统没有压力报警"
    },{
        type: "2",
        bjDate: "2019-10-21",
        bjTime: "16:10:09",
        bjInfo: "系统温度过高报警"
    },{
        type: "2",
        bjDate: "2019-10-21",
        bjTime: "16:10:30",
        bjInfo: "系统温度太低报警"
    },{
        type: "2",
        bjDate: "2019-10-21",
        bjTime: "13:10:09",
        bjInfo: "空气纯度过高报警"
    },{
        type: "2",
        bjDate: "2019-10-21",
        bjTime: "11:10:02",
        bjInfo: "系统温度过高报警"
    },{
        type: "2",
        bjDate: "2019-10-21",
        bjTime: "16:20:29",
        bjInfo: "系统温度过高报警"
    },{
        type: "2",
        bjDate: "2019-10-21",
        bjTime: "12:13:09",
        bjInfo: "系统温度过高报警"
    },{
        type: "2",
        bjDate: "2019-10-20",
        bjTime: "18:10:30",
        bjInfo: "系统温度过高报警"
    },{
        type: "2",
        bjDate: "2019-10-21",
        bjTime: "16:10:09",
        bjInfo: "系统温度过高报警"
    }];

    var bjTable1 = $(".bjBlock .trBodyBorder").bjTable(bjData);//bjData 就是上面的数据
    bjTable1.autoRefresh();*/
    $.ajax({
        url: window.location.origin+"/SjwProject/jgs/selectjginfoList",
        data: {
        },
        async: false,
        success: function (res) {
            var data = res;
            var list = [];
            for(var i = 0; i < data.length; i++){
                var map = {};
                map.type = data[i].fHealth
                // if(data[i].fHealth == '51'){
                //     if(!$(".ldBlock").hasClass("warnning")){
                //         $(".point-success").eq(0).removeClass("point-success").addClass("point-error");
                //         $(".ldBlock").addClass("warnning");
                //     }
                // }
                map.bjDate = data[i].fMOAlias.substr(0,6);
                map.bjTime = data[i].fLastTime.substr(0,10);
                map.bjInfo = data[i].fCauseAlias;
                list.push(map);
            }
            //console.log('list--->',list);
            $.ajax({
                url: window.location.origin + "/SjwProject/jump/getGjZcxxinfo",
                data: {},
                async: false,
                success: function (res) {
                    let data = JSON.parse(res);
                    //console.log('data--->',data);
                    if(data.total > 0){
                        console.log('total',data.total);
                        if(!$(".ldBlock").hasClass("warnning")){
                            $(".point-success").eq(0).removeClass("point-success").addClass("point-error");
                            $(".ldBlock").addClass("warnning");
                        }
                    }
                }
            })
            var bjTable1 = $(".bjBlock .trBodyBorder").bjTable(list);//bjData 就是上面的数据
            bjTable1.autoRefresh();
        }
    })
	//资产健康度信息
    /*var randomData2 = [{
        type: "",
        bjDate: "数据库应用",
        bjTime: "156.8.14.102",
        bjInfo: "健康"
    },{
        bjDate: "安全审计",
        bjTime: "156.8.14.100",
        bjInfo: "健康"
    },{
        type: "",
        bjDate: "安全保障",
        bjTime: "156.8.16.10",
        bjInfo: "健康"
    },{
        type: "",
        bjDate: "统一身份认证",
        bjTime: "156.8.11.28",
        bjInfo: "健康"
    },{
        type: "",
        bjDate: "边界防火墙",
        bjTime: "156.8.30.10",
        bjInfo: "健康"
    },{
        type: "2",
        bjDate: "漏洞扫描",
        bjTime: "156.8.16.18",
        bjInfo: "亚健康"
    },{
        type: "",
        bjDate: "日志审计",
        bjTime: "156.8.16.13",
        bjInfo: "健康"
    },{
        type: "2",
        bjDate: "准入控制系统",
        bjTime: "156.8.16.15",
        bjInfo: "健康"
    }];
    var randomInfo2 = $(".bjBlock .trBodyBorder1").bjTable(randomData2);//randomData2 就是上面的数据
    randomInfo2.autoRefresh();*/

    $.ajax({
        url: window.location.origin+"/SjwProject/zcgl/selectJkdListDate",
        data: {
        },
        success: function (res) {
            var data = res;
            var list = [];
            for(var i = 0; i < data.length; i++){
                var map = {};
                map.type = data[i].fHealth;
                map.bjDate = data[i].fMOAlias.substr(0,6);
                map.bjTime = data[i].fMOIP;
                if(data[i].fHealth == '1'){
                    map.bjInfo = '异常';
                    if(!$(".ldBlock").hasClass("warnning")){
                        $(".point-success").eq(0).removeClass("point-success").addClass("point-error");
                        $(".ldBlock").addClass("warnning");
                    }

                }else if(data[i].fHealth == '2'){
                    map.bjInfo = '亚健康';
                }else{
                    map.bjInfo = '健康';
                }
                list.push(map);
            }
            var randomInfo2 = $(".bjBlock .trBodyBorder1").bjTable(list);//randomData2 就是上面的数据
            randomInfo2.autoRefresh();
        }
    })
	//资产风险信息
    /*var randomData3 = [{
        type: "",
        bjDate: "堡垒机",
        bjTime: "156.8.16.14",
        bjInfo: "0"
    },{
        type: "2",
        bjDate: "数据库加密",
        bjTime: "156.8.11.100",
        bjInfo: "0.3"
    },{
        type: "",
        bjDate: "漏洞扫描",
        bjTime: "156.8.16.18",
        bjInfo: "0"
    },{
        type: "2",
        bjDate: "接入交换机1",
        bjTime: "156.8.30.21",
        bjInfo: "0.2"
    },{
        type: "",
        bjDate: "接入交换机2",
        bjTime: "156.8.30.22",
        bjInfo: "0"
    }
	,{
        type: "",
        bjDate: "入侵检测",
        bjTime: "156.8.16.11",
        bjInfo: "0"
    }
	,{
        type: "",
        bjDate: "安全域交换机",
        bjTime: "156.8.16.9",
        bjInfo: "0"
    }
	,{
        type: "",
        bjDate: "安全审计",
        bjTime: "156.8.14.100",
        bjInfo: "0"
    }];
    var randomInfo3 = $(".bjBlock .trBodyBorder2").bjTable(randomData3);
    randomInfo3.autoRefresh();*/
    $.ajax({
        url: window.location.origin+"/SjwProject/jump/getZcxxinfo",
        data: {
            pageNum :0,
            pageSize  :0
        },
        success: function (res) {
            console.log('-----------------------------',res);
            var data = JSON.parse(res) ;
            var list = [];
            for(var i = 0; i < data.root.length; i++){
                var map = {};

                map.bjDate = data.root[i].name.substr(0,6);
                map.bjTime = data.root[i].ip;
                map.bjInfo = data.root[i].riskValue;
                if(data.root[i].riskValue > 0){
                    map.type = '1';
                    if(!$(".ldBlock").hasClass("warnning")){
                        $(".point-success").eq(0).removeClass("point-success").addClass("point-error");
                        $(".ldBlock").addClass("warnning");
                    }
                }else if(data.root[i].score > 1){
                    map.type = '2';
                }else{
                    map.type = '3';
                }

                list.push(map);
            }
            console.log('xxxx--->>>',list);
            var randomInfo3 = $(".bjBlock .trBodyBorder2").bjTable(list);
            randomInfo3.autoRefresh();
        }
    })
    /*//随机信息2
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
    randomInfo2.autoRefresh();*/
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
	/**
	 * //五大业务系统接口
	 * 156.8.11.11  邮件   type=1
     * 156.8.11.13  OA     type=2
     * 156.8.11.34  公文传输  type=3
     * 156.8.11.105 电子档案  type=4
     * 156.8.11.106 机要交换  type=5
	 */
	function selectYWXT(type,ip){
		$.ajax({
		    url: window.location.origin+"/SjwProject/zcgl/selectYWXTByType",
		    data: {
				type:type
		    },
		    success: function (res) {
		        var data = res;
				console.log('data>>>',data);
				console.log('cpu--->>',data.fTotalCpu+'%');
				$('#type'+type+' .cpuString').html("CPU:"+data.fTotalCpu+'%');
				$('#type'+type+' .stateString').html(data.gjState);
				$('#type'+type+' .memoryString').html("内存:"+data.fMemRatio+'%')
				$('#type'+type+' .netString').html("网络:"+data.wlzt);
				if(data.wlzt == '离线'||data.gjState== '异常'){
					$('#type'+type).addClass('state3');
				}
				if(data.gjState=='告警'){
					$('#type'+type).addClass('state2');
				}
		    }
		})
	}
	var first = selectYWXT(1,"156.8.11.11");
	var second = selectYWXT(2,"156.8.11.13");
	var third = selectYWXT(3,"156.8.11.34");
	var fourth = selectYWXT(4,"156.8.11.105");
	var Fifth = selectYWXT(5,"156.8.11.106");

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
    var tpsData = [30,35,26,16,29,20,27,30,32,26,16,32,31,22,19,20,27,25,25,31];
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
	//雷达四个爪子旋转加光点中外移动动画
    var zzArea = $(".ldBlock .zzArea");
    var zzAreaDeg = 0;
    function doZzAnimate(){
        zzArea.addClass("goCenter");
        setTimeout(function(){
            zzArea.removeClass("goCenter");
            setTimeout(function(){
                //zzArea.animate({"-webkit-transform":"rotate(" + zzAreaDeg + "deg)"});
                zzArea.css("-webkit-transform", "rotate(" + zzAreaDeg + "deg)");
            }, 3000);
        }, 3000);
    }
    doZzAnimate();
    zzAreaDeg = 90;
    var zzAreaTimmer = setInterval(function(){
        doZzAnimate();
        zzAreaDeg += 90;
    }, 10000);
    /*//雷达点击切换成报警状态
    $(".ldBlock").on("click", function(){
        var ldBlock = $(this);
        if(ldBlock.hasClass("warnning"))
            ldBlock.removeClass("warnning");
        else
            ldBlock.addClass("warnning");
    });*/
	//雷达点击切换成报警状态
    $(".ldBlock").on("click", function(){
        var ldBlock = $(this);
        if(ldBlock.hasClass("warnning")){
            $(".point-error").removeClass("point-error").addClass("point-success");
            ldBlock.removeClass("warnning");
        }
        else{
            $(".point-success").eq(0).removeClass("point-success").addClass("point-error");
            ldBlock.addClass("warnning");
        }

    });
	//雷达游标动画
//    var floatIcon = $(".floatIcon");
//    var ybTimmer = setInterval(function(){
//        var random = Math.floor(Math.random()*(7) + 1);
//        var targetPos = "pos" + random;
//        floatIcon.fadeOut(200, function(){
//            floatIcon.removeClass("pos1 pos2 pos3 pos4 pos5 pos6 pos7");
//            floatIcon.addClass(targetPos);
//            floatIcon.fadeIn(200);
//        });
//    }, 1000);
    //跑马灯动画
    var pointLights = $(".ldBlock .pointLight");
    var pointLightCount = 0;
    var lightLength = pointLights.length;
    function setLight(){
        pointLights.eq(pointLightCount).removeClass("active");
        pointLightCount = pointLightCount + 1;
        if(pointLightCount == lightLength)
            pointLightCount = 0;
        pointLights.eq(pointLightCount).addClass("active");
    }
    var pointLightTimmer = setInterval(function(){
        setLight();
    }, 300);
    //在线人数1
    let data1 = '';
    let data2 = '';
    let data3 = '';
    $.ajax({
        url: window.location.origin + "/SjwProject/allprovince/getDataStatisticsForNet",
        data: {

        },
        async: false,
        success: function (res) {
            console.log('res',res);
            data1 = res.online;
            data2 = res.offline;
            data3 = res.fault;
        }
    })
    console.log('data1',data1);
    var online1Count = 0;
    //var online1Data = [70, 1324, 250, 31, 1, 66];
	var online1Data = [58, 0];
    online1Data[0] = data1;
    console.log('online1Data',online1Data);
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
    //var fault1Data = [62, 1234, 886, 23, 10, 999];
	var fault1Data = [1, 0];
	fault1Data[0] = data2;
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
    //var unconnect1Data = [13, 100, 3215, 137, 555, 1101];
	var unconnect1Data = [11,0];
    unconnect1Data[0] = data3;
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
    /*var cpuBlockWidth = $(".cpuBlock").width();
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
        //var cpu4NameE = obj.cpu4NameE;
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
        //cpu4Label.find(".nameE").text(cpu4NameE);
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
    }*/
	//设置四个CPU
    var cpuBlockWidth = $(".cpuBlock").width();
    function setCpuValue(obj){
        var cpu1Value = obj.cpu1Value;
        var cpu2Value = typeof (obj.cpu2Value) === 'undefined'?0:obj.cpu2Value;
        var cpu3Value = typeof (obj.cpu3Value) === 'undefined'?0:obj.cpu3Value;
        var cpu4Value = typeof (obj.cpu4Value) === 'undefined'?0:obj.cpu4Value;
		console.log('cpu4Value',cpu4Value);
        var cpu1NameS = obj.cpu1NameS;
        var cpu2NameS = obj.cpu2NameS;
        var cpu3NameS = obj.cpu3NameS;
        var cpu4NameS = obj.cpu4NameS;
        var cpu1NameE = obj.cpu1NameE;
        var cpu2NameE = obj.cpu2NameE;
        var cpu3NameE = obj.cpu3NameE;
        //var cpu4NameE = obj.cpu4NameE;
        var cpu1Label = $(".cpu1Label");
        var cpu2Label = $(".cpu2Label");
        var cpu3Label = $(".cpu3Label");
        var cpu4Label = $(".cpu4Label");
	if(typeof(cpu1NameS)!='undefined'){
		$(".cpu1Value").text(cpu1Value + "%");
		cpu1Label.find(".nameS").text(cpu1NameS);
		cpu1Label.find(".nameE").text(cpu1NameE);
		$(".rate1Name").text("CPU-"+obj.id1);
		$(".process1").width(cpuBlockWidth * cpu1Value / 100 - 4);
		}
        
		if(typeof(cpu2NameS)!='undefined'){
		$(".cpu2Value").text(cpu2Value + "%");
		cpu2Label.find(".nameS").text(cpu2NameS);
		cpu2Label.find(".nameE").text(cpu2NameE);
		$(".rate2Name").text("CPU-"+obj.id2);
		$(".process2").width(cpuBlockWidth * cpu2Value / 100 - 4);
		}else{
            $(".cpu2Value").empty();
            cpu2Label.find(".nameS").empty();
            cpu2Label.find(".nameE").empty();
            $(".rate2Name").empty();
            $(".process2").empty();
        }   
		if(typeof(cpu3NameS)!='undefined'){
		$(".cpu3Value").text(cpu3Value + "%");
		cpu3Label.find(".nameS").text(cpu3NameS);
		cpu3Label.find(".nameE").text(cpu3NameE);
		$(".rate3Name").text("CPU-"+obj.id3);
		$(".process3").width(cpuBlockWidth * cpu3Value / 100 - 4);
		}else{
            $(".cpu3Value").empty();
            cpu3Label.find(".nameS").empty();
            cpu3Label.find(".nameE").empty();
            $(".rate3Name").empty();
            $(".process3").empty();
        }
		if(typeof(cpu4NameS) !='undefined'){
		$(".cpu4Value").text(cpu4Value + "%");
		cpu4Label.find(".nameS").text(cpu4NameS);
		//cpu4Label.find(".nameE").text(cpu4NameE);
		$(".rate4Name").text("CPU-"+obj.id4);
		$(".process4").width(cpuBlockWidth * cpu4Value / 100 - 4);
		}else{
            $(".cpu4Value").empty();
            cpu4Label.find(".nameS").empty();
            cpu4Label.find(".nameE").empty();
            $(".rate4Name").empty();
            $(".process4").empty();
        }
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
    /* var terminalData = [{
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
    }]; */
	//
	var terminalData = [];
	$.ajax({
	    url: window.location.origin+"/SjwProject/zcgl/selectXnhZycListDate",
	    data: {
	    },
		async: false,
	    success: function (res) {
	        var data = res;
			console.log('虚拟化-->>',data);
			var list = [];
			var map = {};
			var count = 0;
			for(var i = 0; i < data.length; i++){
				if((i+1)%4 == 0){
                    count++;
					map.cpu4Value = data[i].fTotalCpu;
					map.cpu4NameS = data[i].fAlias;
                    map.terminalNo = count;
                    if((i+1)<10){
                        map["id4"] = "0"+(i+1)
                    }else{
                        map["id4"]  = i+1
                    }
					list.push(map);
					map = {};
				}else{
					map["cpu"+(i+1)%4+"Value"] = data[i].fTotalCpu;
					map["cpu"+(i+1)%4+"NameS"] = data[i].fAlias;
                    if((i+1)<10){
                        map["id"+(i+1)%4] = "0"+(i+1)
                    }else{
                        map["id"+(i+1)%4]  = i+1
                    }
					if(i == (data.length-1)){
                        count++;
                        map.terminalNo = count;
					    list.push(map);
                    }
				}
			}
			console.log('打印信息--->>',list);
			terminalData = list;
	    }
	})
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
    // var ups1Data = [{
    //     percent: 60,//电池容量
    //     value: 16789//后背时间
    // },{
    //     percent: 26,
    //     value: 367
    // },{
    //     percent: 93,
    //     value: 10086
    // },{
    //     percent: 52,
    //     value: 886
    // }];
    // var ups2Data = [{
    //     percent: 36,
    //     value: 12525
    // },{
    //     percent: 80,
    //     value: 33670
    // },{
    //     percent: 62,
    //     value: 11023
    // },{
    //     percent: 6,
    //     value: 6543
    // }];
	//获取ups值,
	var ups1Data = []
	var ups2Data = []
	 $.ajax({
		url: window.location.origin+"/SjwProject/ups/selectupsinfonew",
		data: {
		},
		async: false,
		success: function(res) {
			var data = res;
			console.log('terminal',data);

			for(var i = 0; i < data.length; i++){
				if(data[i].devid == '411'){
					var map = {};
					var list = [];
					map.percent = data[i].rl.substr(0,data[i].rl.length-1);
					map.value = data[i].sj.substr(0,data[i].sj.length-1);
					list.push(map);
					list.push(map);
					ups1Data = list;
					console.log('ups1Data---->>>',list);
				}
				if(data[i].devid == '412'){
					var map = {};
					var list = [];
					map.percent = data[i].rl.substr(0,data[i].rl.length-1);
					map.value = data[i].sj.substr(0,data[i].sj.length-1);
					list.push(map);
					list.push(map);
					ups2Data = list;
					console.log('ups2Data---->>>',list);
				}
			}

			return list;
		}
	})

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
	function QueryString(val) {
	    var uri = window.location.search;
	    var re = new RegExp("" + val + "\=([^\&\?]*)", "ig");
	    return ((uri.match(re)) ? (uri.match(re)[0].substr(val.length + 1)) : null);
	}
	$('.house1').on('click',function(){//互联网机房
		var url = "http://156.8.11.20/vmdb-sso/external/operation/poclogin?loginCode=admin&targetUrl=";
		var target = "http://156.8.11.20/tarsier-vmdb/dcvWeb/dcv/home.html?ID=100000000000001";
		var redirectUrl = url+encodeURIComponent(target)+"#func=uinv.u3d.funcSet.setSelectionRootObjByBID('3F非涉密机房')";
		window.open(redirectUrl);
	})
	$('.house2').on('click',function(){//涉密机房
		var url = "http://156.8.11.20/vmdb-sso/external/operation/poclogin?loginCode=admin&targetUrl=";
		var target = "http://156.8.11.20/tarsier-vmdb/dcvWeb/dcv/home.html?ID=100000000000001";
		var redirectUrl = url+encodeURIComponent(target)+"#func=uinv.u3d.funcSet.setSelectionRootObjByBID('4F屏蔽机房')";
		window.open(redirectUrl);
		/* $("body").show().html('<iframe frameborder="0" scrolling="no" src="' + url + '" width="100%"' +
			    ' height="100%"></iframe>'); */
	})
	$('.house3').on('click',function(){//A区机房
		var url = "http://156.8.11.20/vmdb-sso/external/operation/poclogin?loginCode=admin&targetUrl=";
		var target = "http://156.8.11.20/tarsier-vmdb/dcvWeb/dcv/home.html?ID=100000000000001";
		var redirectUrl = url+encodeURIComponent(target)+"#func=uinv.u3d.funcSet.setSelectionRootObjByBID('1F屏蔽机房')";
		window.open(redirectUrl);
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
    //      //var url = "http://156.8.11.20/vmdb-sso/external/operation/poclogin?loginCode=admin&targetUrl=";
    //    // var target = "http://156.8.11.20/tarsier-vmdb/dcvWeb/giv/ie-main.html?ugeo=1";
    //    //var redirectUrl = url+encodeURIComponent(target);
    //    // console.log(redirectUrl);
    //     ////window.location.href="alert:"+redirectUrl;
    //    // window.location.href="alert:"+redirectUrl;
	//    var url = "http://156.8.11.20/vmdb-sso/external/operation/poclogin?param={\"loginCode\":\"admin\",\"targetUrl\":\"";
    //     var target = "http://156.8.11.20/tarsier-vmdb/dcvWeb/giv/ie-main.html?ugeo=1";
    //     var redirectUrl = url+encodeURIComponent(target) + "\"}";
    //     console.log(redirectUrl);
    //     window.location.href="alert:"+redirectUrl;
        var url = "http://156.8.11.105:8999"
        window.open(url);
	})
	$('.park').on('click',function(){//机关园区
		var url = "http://156.8.11.20/vmdb-sso/external/operation/poclogin?loginCode=admin&targetUrl=";
		var target = "http://156.8.11.20/tarsier-vmdb/dcvWeb/dcv/home.html?ID=100000000000001";
		var redirectUrl = url+encodeURIComponent(target);
		window.open(redirectUrl);
	})
	$('.videosBlock').on('click',function(){//即时调度二级页面
		var url = window.location.origin+"/SjwProject/system/jsdd";
		//window.location.href="alert:"+window.location.origin+"/SjwProject/system/jsdd"
		window.location.href="alert:"+window.location.origin+"/SjwProject/system/jsdd"
		//window.open(url);
	})
	
	
	//工单系统
	function getZcLoginUrl(callback) {
	    $.ajax({
	        url: window.location.origin+"/SjwProject/zcgl/zcglGdJump",
	        data:{},
			//async:false,
	        success: function (data) {
	            return data;
	        }
	    })

	}
	$('.flightShowBlock').on('click',function(){//工单系统二级页面
		var url = window.location.origin+"/SjwProject/zcgl/zcglGdJump";
		$.ajax({
		    url: url,
		    success: function (data) {
		        $("body").show().html('<iframe frameborder="0" scrolling="no" src="' + data + '" width="100%"' +
		        	    ' height="100%"></iframe>');
		    }
		})
	})
	/*function getZcLoginUrl(callback) {
	    var type = QueryString("type");
	    $.ajax({
	        url: window.location.origin+"/SjwProject/zcgl/zcglSelectOneJump",
	        data:{type:type},
	        success: function (data) {
	            return data;
	        }
	    })

	}*/
	$('.assetsBlock').on('click',function(){//资产信息二级页面
        var url = "http://156.8.11.53:8080/itims/frmwk/portal.jsp?mnSbj=portal&mnCMP=0";
        //var url = "http://156.8.11.53:8080/itims/typNew/typNewMain.jsp?mnSbj=res&mnCMP=3_0&lunchFrom=portal&lunchFuncID=rootres_molist";
		// var type = QueryString("type");
		// $.ajax({
		//     url: url,
		//     data:{type:type},
		//     success: function (data) {
		// 		$("body").show().html('<iframe frameborder="0" scrolling="no" src="' + data + '" width="100%"' +
		// 			    ' height="100%"></iframe>');
		//     }
		// })
		// $("body").show().html('<iframe frameborder="0" scrolling="no" src="' + url + '" width="100%"' +
		// 	    ' height="100%"></iframe>');
		window.open(url);

	})
	$('#wjgzdxx').on('click',function(){//终端信息-省委机关
		//var url = window.location.origin+"/SjwProject/system/wjgzdxx";
		var url = window.location.origin+"/SjwProject/system/wjgzdxx";
		//$("body").show().html('<iframe frameborder="0" scrolling="no" src="' + url + '" width="100%"' +
		//	    ' height="100%"></iframe>');
		window.open(url);
	})
	$('#pzjgzdxx').on('click',function(){//终端信息-派驻机构
		var url = window.location.origin+"/SjwProject/system/pzjgzdxx";
		//$("body").show().html('<iframe frameborder="0" scrolling="no" src="' + url + '" width="100%"' +
		//	    ' height="100%"></iframe>');
		window.open(url);
	})
	$('.layer1').on('click',function(){//态势感知
        //var url = "http://156.8.11.233:8888/leadsec-soc/index.jsp";
        var url = "http://156.8.11.233:8888/leadsec-csa/signin?ignorecaptcha=true&u=sysadmin&p=581eeaf33207e2cf5b8a619a8246d792e8fb5e1c";  
		// $("body").show().html('<iframe frameborder="0" scrolling="no" src="' + url + '" width="100%"' +
		// 	    ' height="100%"></iframe>');
		window.open(url);
	})
    $('.mapBlock').on('click',function(){//派驻网络地图
        var url = window.location.origin+"/SjwProject/system/map";
        window.open(url);
    })
    //存储备份https://156.8.182.13:9801/login.html
    $('.waveBlock').on('click',function(){//存储备份
        var url = "https://156.8.182.13:9801/login-sso.html?userName=admin&pwd=1234567"; 
		window.open(url);
	})
});