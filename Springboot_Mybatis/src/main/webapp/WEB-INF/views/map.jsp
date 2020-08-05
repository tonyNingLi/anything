<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title></title>
	<script type="text/javascript" src="/SjwProject/resources/map/bmap/js/tilesInfo.js"></script>
	<script type="text/javascript" src="/SjwProject/resources/map/bmap/js/BaiduApi_2.0.js"></script>
	<script type="text/javascript" src="/SjwProject/resources/map/bmap/js/AreaRestriction_min.js"></script>
	<script type="text/javascript" src="/SjwProject/resources/map/bmap/js/TextIconOverlay_min.js"></script>
	<script type="text/javascript" src="/SjwProject/resources/map/bmap/js/DistanceTool_min.js"></script>
	<script type="text/javascript" src="/SjwProject/resources/map/bmap/js/data_Map.js"></script>
	<script type="text/javascript" src="/SjwProject/resources/map/bmap/js/RectangleZoom_min.js"></script>
	<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/resources/map/css/css.css">
	<script src="<%=request.getContextPath()%>/resources/map/js/jquery-1.9.1.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/map/js/index.js"></script>
	<style type="text/css">
		*{

			margin: 0;
			padding: 0;
		}
		html{
			width: 100%;
			height:100%
		}
		body{
			width: 100%;
			height:100%;
			margin:0px;
			padding:0px;
		}
		/* #lbt{
            width: 400px;
            height:600px;
            margin: auto;
            left:5%;
            top: 10%;
            position: absolute;
            padding-top:120px;
            z-index: 9000;
            background: url(./img/bg001.png) no-repeat center;
            background-size:100% 100%;
        } */
		#lbt {
			width: 370px;
			height: 590px;
			margin: auto;
			left: 5%;
			top: 5%;
			position: absolute;
			padding-top: 80px;
			z-index: 9000;
			background: url(<%=request.getContextPath()%>/resources/map/img/bg001.png) no-repeat center;
			background-size: 100% 100%;
		}
		/* #lb1{
            width: 300px;
            height:300px;
            margin: auto;
            left:18%;
            top: 18%;
            position: absolute;
            z-index: 9999;
            background: url(./img/tongji.png) no-repeat center;
            background-size:100% 100%;

        } */
		#lb2{
			width: 300px;
			height:300px;
			margin: auto;
			left:10%;
			top: 62%;
			position: absolute;
			z-index: 9999;

		}
		#container{
			width: 100%;
			height:100%;
			margin: auto;
		}
		.box{
			width: 150px;
			height: auto;
			font-size: 12px;
			padding: 10px 0;
			text-align: center;
			color: #fff;
			background: url(<%=request.getContextPath()%>/resources/map/img/bg001.png) no-repeat center;
			background-size:100% 100%;
		}
		/* .box1{
            width: 150px;
            height:  auto;
            color: #fff;
            padding: 10px 0;
            font-size: 12px;
            text-align: center;
            background: url(./img/red.png) no-repeat center;
            background-size:100% 100%;
        } */
		/*地图标题*/
		.BMap_bubble_title {
			color:white;
			font-size:13px;
			font-weight:bold;
			text-align:left;
			padding-left:5px;
			padding-top:5px;
			border-bottom:1px solid gray;
			background-color:#0066b3;
		}
		/* 消息内容 */
		.BMap_bubble_content {
			padding-left:5px;
			padding-top:5px;
			padding-bottom:10px;
		}
		/* 内容 */
		.BMap_pop div:nth-child(9) {
			top:35px !important;
			border-radius:7px;
		}
		/* 左上角删除按键 */
		.BMap_pop img {
			top:43px !important;
			left:215px !important;
		}
		.BMap_top {
			display:none;
		}
		.BMap_bottom {
			display:none;
		}
		.BMap_bottom +div {
			display:none;
		}
		.BMap_bottom +div +div {
			display:none;
		}
		.BMap_center {
			display:none;
		}
		.BMap_center + div{
			display:none;
		}
		/* 隐藏边角 */
		.BMap_pop div:nth-child(1) div {
			display:none;
		}
		.BMap_pop div:nth-child(3) {
			display:none;
		}
		.BMap_pop div:nth-child(7) {
			display:none;
		}
		.BMap_pop img{
			display: none;
		}
		.BMap_pop div:nth-child(9){
			top: 48px !important;
		}
		.BMap_bottom + div + div + div{
			width: auto !important;
			left: 26px !important;
		}
		.anchorBL{
			display: none;
		}
		.BMap_stdMpPan{
			display: none;
		}
		.BMap_stdMpZoom{
			display: none;
		}
		.demo{width:300px;margin:30px auto 0 auto;}
		#sidebar{color:#AFB0B1;float:left;margin:0 0 24px;padding:15px 10px 10px;width:280px;}
		#sidebar li{height:26px;overflow:hidden;}
		#sidebar li h5{color:#A5A9AB;font-size:1em;margin-bottom:0.5em;}
		#sidebar li h5 a{color:#fff;text-decoration:none;}
		#sidebar li img{float:left;border:solid 3px #fff;margin-right:8px;display:inline;}
		#sidebar li .info{color:#B1B1B1;font-size:1em;}
		#sidebar .spyWrapper{height:100%;overflow:hidden;position:relative;top:4px;}
		.ddd {
			float: right;
		}
	</style>
</head>
<body>

<div id="lbt">
	<div class="box2 ">
		<div class="box2-left"><img src="<%=request.getContextPath()%>/resources/map/img/jg.png" /><br/>派驻机构</div>
		<div class="box2-right">
			<div><img  src="<%=request.getContextPath()%>/resources/map/img/on.png" /><span id="data1online">在线：0</span></div>
			<div><img src="<%=request.getContextPath()%>/resources/map/img/out.png" /><span  id="data1offline">离线：40</span></div>
			<div><img  src="<%=request.getContextPath()%>/resources/map/img/xgz.png" /><span id="data1fault">故障：0</span></div>
		</div>
		<div class="clear"></div>
	</div>
	<div class="box2 ">
		<div class="box2-left"><img src="<%=request.getContextPath()%>/resources/map/img/dx.png" /><br/>派驻大学</div>
		<div class="box2-right">
			<div><img  src="<%=request.getContextPath()%>/resources/map/img/on.png" /><span id="data2online">在线：0</span></div>
			<div><img  src="<%=request.getContextPath()%>/resources/map/img/out.png" /><span id="data2offline">离线：35</span></div>
			<div><img  src="<%=request.getContextPath()%>/resources/map/img/xgz.png" /><span id="data2fault">故障：0</span></div>
		</div>
		<div class="clear"></div>
	</div>
	<div class="box2 ">
		<div class="box2-left"><img src="<%=request.getContextPath()%>/resources/map/img/gq.png" /><br/>派驻国企</div>
		<div class="box2-right">
			<div><img  src="<%=request.getContextPath()%>/resources/map/img/on.png" /><span id="data3online">在线：0</span></div>
			<div><img  src="<%=request.getContextPath()%>/resources/map/img/out.png" /><span id="data3offline">离线：25</span></div>
			<div><img  src="<%=request.getContextPath()%>/resources/map/img/xgz.png" /><span id="data3fault">故障：0</span></div>
		</div>
		<div class="clear"></div>
	</div>
	<div id="lb2">
		<div id="sidebar">
			<ul class="spy" id="lbqd">

			</ul>
		</div>
	</div>
</div>
</div>


<!-- <div class="box">
<div class="box2">
<div class="box2-left"><img src="./img/jg.png" /><br/>派驻机构</div>
<div class="box2-right">
    <div><img src="./img/on.png" /><span>在线：23</span></div>
    <div><img src="./img/out.png" /><span>离线：23</span></div>
    <div><img src="./img/xgz.png" /><span>故障：23</span></div>
</div>
<div class="clear"></div>
</div>
<div class="box2">
<div class="box2-left"><img src="./img/dx.png" /><br/>派驻大学</div>
<div class="box2-right">
    <div><img src="./img/on.png" /><span>在线：23</span></div>
    <div><img src="./img/out.png" /><span>离线：23</span></div>
    <div><img src="./img/xgz.png" /><span>故障：23</span></div>
</div>
<div class="clear"></div>
</div>
<div class="box2">
<div class="box2-left"><img src="./img/gq.png" /><br/>派驻国企</div>
<div class="box2-right">
    <div><img src="./img/on.png" /><span>在线：23</span></div>
    <div><img src="./img/out.png" /><span>离线：23</span></div>
    <div><img src="./img/xgz.png" /><span>故障：23</span></div>
</div>
<div class="clear"></div>
</div>
</div> -->
<div id="container">

</div>
</body>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/map/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript">
	$(function(){
    var list = [//status说明：1为在线  2为离线   3为故障
        //派驻机构
        {name: "驻省委办公厅", lng: "125.329027", lat: "43.902784", status: 2,py:"-25"},
        {name: "驻政法委", lng: "125.326604", lat: "43.903417", status: 2,py:"-15"},//
        {name: "驻省人大机关", lng: "125.330312", lat: "43.877023", status: 2,py:"-25"},//
        {name: "驻政府办公厅", lng: "125.333066", lat: "43.902693", status: 2,py:"-25"},
        {name: "驻发改委", lng: "125.332526", lat: "43.902264", status: 2,py:"-15"},//
        {name: "驻教育厅", lng: "125.330321", lat: "43.901103", status: 2,py:"-15"},//
        {name: "驻工信厅", lng: "125.315256", lat: "43.9", status: 2,py:"-15"},//
        {name: "驻公安厅", lng: "125.32624", lat: "43.900867", status: 2,py:"-15"},//
        {name: "驻民政厅", lng: "125.288446", lat: "43.891362", status: 2,py:"-15"},//
        {name: "驻司法厅", lng: "125.324046", lat: "43.901072", status: 2,py:"-15"},//
        {name: "驻财政厅", lng: "125.332655", lat: "43.881935", status: 2,py:"-15"},
        {name: "驻自然资源厅", lng: "125.337226", lat: "43.89449", status: 2,py:"-25"},
        {name: "驻生态环境厅", lng: "125.332278", lat: "43.900724", status: 2,py:"-25"},
        {name: "驻交通厅", lng: "125.326098", lat: "43.883544", status: 2,py:"-15"},//
        {name: "驻检察院", lng: "125.348788", lat: "43.825634", status: 2,py:"-15"},//
        {name: "驻总工会", lng: "125.332902", lat: "43.849293", status: 2,py:"-15"},//
        {name: "驻应急管理厅", lng: "125.330626", lat: "43.881243", status: 2,py:"-25"},
        {name: "驻科技厅", lng: "125.338835", lat: "43.889844", status: 2,py:"-15"},
        {name: "驻文旅厅", lng: "125.316077", lat: "43.873486", status: 2,py:"-15"},//
        {name: "驻省高法", lng: "125.386673", lat: "43.852874", status: 2,py:"-15"},//
        {name: "驻水利厅", lng: "125.368332", lat: "43.838557", status: 2,py:"-15"},//
        {name: "驻农业农村厅", lng: "125.331587", lat: "43.901243", status: 2,py:"-25"},//
        {name: "驻审计厅", lng: "125.344703", lat: "43.859493", status: 2,py:"-15"},//
        {name: "驻市场管理厅", lng: "125.357878", lat: "43.857822", status: 2,py:"-25"},//
        {name: "驻国资委", lng: "125.318691", lat: "43.870255", status: 2,py:"-15"},
        {name: "驻统计局", lng: "125.329615", lat: "43.901191", status: 2,py:"-15"},//
        {name: "驻机关事务局", lng: "125.328643", lat: "43.90012", status: 2,py:"-25"},
        {name: "驻粮资局", lng: "125.310402", lat: "43.891425", status: 2,py:"-15"},
        {name: "驻政务数字局", lng: "125.388634", lat: "43.821389", status: 2,py:"-25"},
        {name: "驻林草局", lng: "125.355461", lat: "43.882251", status: 2,py:"-15"},//
        {name: "驻省政协机关", lng: "125.341538", lat: "43.90495", status: 2,py:"-25"},//
        {name: "驻宣传部", lng: "125.328609", lat: "43.90116", status: 2,py:"-15"},//
        {name: "驻住建厅", lng: "125.335088", lat: "43.904143", status: 2,py:"-15"},
        {name: "驻商务厅", lng: "125.330973", lat: "43.880483", status: 2,py:"-15"},
        {name: "驻人社厅", lng: "125.35625", lat: "43.885745", status: 2,py:"-15"},
        //派驻高校
        {name: "长春金融高等专科学校",lng:"125.334465",lat:"43.84434",status:2,py:"-50"},//
        {name: "白城医学高等专科学校",lng:"122.808018",lat:"45.614916",status:2,py:"-60"},
        {name: "吉林电子信息职业技术学院",lng:"126.568902",lat:"43.929005",status:2,py:"-60"},
        {name: "长春工程学院",lng:"125.286625",lat:"43.861601",status:2,py:"-25"},
        {name: "吉林工程技术师范学院",lng:"125.326865",lat:"43.945531",status:2,py:"-50"},
        {name: "吉林工商学院",lng:"125.552095",lat:"43.997379",status:2,py:"-25"},
        {name: "吉林艺术学院",lng:"125.288848",lat:"43.865732",status:2,py:"-25"},
        {name: "吉林体育学院",lng:"125.346377",lat:"43.867846",status:2,py:"-25"},
        {name: "吉林警察学院",lng:"125.420686",lat:"43.832784",status:2,py:"-25"},
        {name: "吉林化工学院",lng:"126.625589",lat:"43.906761",status:2,py:"-25"},
        {name: "吉林医药学院",lng:"126.570604",lat:"43.809827",status:2,py:"-25"},
        {name: "吉林农业科技学院",lng:"126.485367",lat:"43.963913",status:2,py:"-40"},
        {name: "通化师范学院",lng:"125.994815",lat: "41.752858",status:2,py:"-25"},
        {name: "白城师范学院",lng:"122.81545",lat:"45.621158",status:2,py:"-35"},
        {name: "吉林省教育学院",lng:"125.331498",lat:"43.83186",status:2,py:"-30"},//
        {name: "吉林交通职业技术学院",lng:"125.272529",lat:"43.846466",status:2,py:"-50"},//
        {name: "吉林司法警官职业学院",lng:"125.184683",lat:"44.078816",status:2,py:"-60"},
        {name: "吉林工程职业学院",lng:"124.424396",lat:"43.174084",status:2,py:"-40"},
        {name: "吉林工业职业技术学院",lng:"126.56462",lat:"43.827356",status:2,py:"-60"},
        {name: "吉林铁道职业技术学院",lng:"126.556186",lat:"43.724907",status:2,py:"-60"},
        {name: "长春理工大学",lng:"125.319786",lat:"43.867592",status:2,py:"-25"},
        {name: "吉林农业大学",lng:"125.417014",lat:"43.816899",status:2,py:"-25"},
        {name: "长春中医药大学",lng:"125.426544",lat:"43.835538", status:2,py:"-35"},
        {name: "长春工业大学",lng:"125.296496",lat:"43.860359",status:2,py:"-25"},
        {name: "吉林财经大学",lng:"125.440213",lat:"43.825635",status:2,py:"-25"},
        {name: "吉林建筑大学",lng:"125.414243",lat:"43.801748",status:2,py:"-25"},
        {name: "长春师范大学",lng:"125.401573",lat:"43.920301",status:2,py:"-25"},
        {name: "长春大学", lng:"125.327794",lat:"43.840759",status:2,py:"-15"},//
        {name: "北华大学",lng:"126.612304",lat:"43.84326",status:2,py:"-15"},//
        {name: "东北电力大学",lng:"126.509698",lat:"43.829456",status:2,py:"-25"},
        {name: "延边大学",lng:"129.494816",lat:"42.91832",status:2,py:"-15"},//
        {name: "吉林师范大学",lng:"124.351461",lat:"43.16339",status:2,py:"-25"},
        {name: "吉林广播电视大学",lng:"125.331604",lat:"43.853371",status:2,py:"-38"},//
        {name: "吉林大学",lng:"125.284821",lat:"43.82835",status:2,py:"-13"},//
        {name: "东北师范大学",lng:"125.337958",lat:"43.867592",status:2,py:"-25"},
        //省属企业
        {name: "吉林银行股份有限公司",lng:"125.388622",lat:"43.858755",status:2,py:"-50"},//
        {name: "吉林省信托有限责任公司",lng:"125.331992",lat:"43.827613",status:2,py:"-55"},
        {name: "吉林省投资集团有限公司",lng:"125.267121",lat:"43.818544",status:2,py:"-55"},
        {name: "吉林省金融控股集团股份有限公司",lng:"125.340412",lat:"43.865127",status:2,py:"-80"},
        {name: "吉林省信用担保投资集团有限公司",lng:"125.316769",lat:"43.897494",status:2,py:"-80"},
        {name: "吉林省农村信用社联合社",lng:"125.331362",lat:"43.849636",status:2,py:"-55"},
        {name: "中国吉林森林工业集团有限责任公司",lng:"125.331919",lat:"43.878685",status:2,py:"-85"},
        {name: "吉林省煤业集团有限公司",lng:"125.257378",lat:"43.8184",status:2,py:"-55"},
        {name: "吉林省旅游控股集团有限责任公司",lng:"125.3232",lat:"43.92121",status:2,py:"-80"},
        {name: "吉林省国有资本运营有限责任公司",lng:"125.280648",lat:"43.810007",status:2,py:"-80"},
        {name: "吉林省农业投资集团有限公司",lng:"125.35989",lat:"43.856803",status:2,py:"-55"},
        {name: "吉林省高速公路集团有限公司",lng:"125.391666",lat:"43.864089",status:2,py:"-55"},
        {name: "吉林省水务投资集团有限公司",lng:"125.305606",lat: "43.898232",status:2,py:"-55"},
        {name: "吉林省吉盛资产管理有限责任公司",lng:"125.345512",lat:"43.886909",status:2,py:"-80"},
        {name: "吉林粮食集团有限公司",lng:"125.267919",lat:"43.894695",status:2,py:"-50"},//
        {name: "吉林昊融集团股份有限公司",lng:"125.394502",lat:"43.783152",status:2,py:"-55"},//
        {name: "吉林吉农高新技术发展股份有限公司",lng:"124.816347",lat:"43.519168",status:2,py:"-85"},
        {name: "吉林粮食资产管理有限公司",lng:"125.304002",lat:"43.890119",status:2,py:"-55"},
        {name: "吉林省中吉实业有限公司",lng:"126.548509",lat:"44.492583",status:2,py:"-55"},
        {name: "吉林省交通投资集团有限公司",lng:"125.369628",lat:"43.870842",status:2,py:"-60"},
        {name: "省国有资产经营管理有限公司",lng:"125.331746",lat:"43.851016",status:2,py:"-60"},
        {name: "吉林省国华资产管理有限责任公司",lng:"125.331746",lat:"43.851016",status:2,py:"-80"},
        {name: "吉林东北亚出版传媒集团有限公司",lng:"125.332265",lat:"43.873047", status:2,py:"-80"},
        {name: "吉视传媒股份有限公司",lng:"125.702507",lat:"44.545558",status:2,py:"-50"},
        {name: "长影集团有限责任公司",lng:"125.332547",lat:"43.911525",status:2,py:"-50"},
        {name: "驻一汽集团",lng:"125.167717",lat:"43.839243",status:2,py:"-20"}
    ];
	let dataList = [];
	$.ajax({
	    url: window.location.origin+"/SjwProject/zcyxzt/selectZPYXTSInfoList",
	    data: {},
		async: false,
	    success: function (res) {
			console.log('res',res)
			dataList = res;
	        let data1 = {};
			let data2 = {};
			let data3 = {};
			let count1 = 0;
			let count2 = 0;
			let count3 = 0;
			let count4 = 0;
			let count5 = 0;
			let count6 = 0;
			let count7 = 0;
			let count8 = 0;
			let count9 = 0;
			for(let i = 0; i < res.length; i++){
				if(res[i].Type == '1'){
					if(res[i].State == '故障'){
						count3 = count3+1;
					}else if(res[i].State == '在线'){
						count1 = count1+1;
					}
					
				}
				if(res[i].Type == '2'){
					if(res[i].State == '故障'){
						count6 = count6+1;
					}else if(res[i].State == '在线'){
						count4 = count4+1;
					}
					
				}
				if(res[i].Type == '3'){
					if(res[i].State == '故障'){
						count8 = count9+1;
					}else if(res[i].State == '在线'){
						count7 = count7+1;
					}
					
				}
			}
			// data1.count1 = count1;
			count2 = 40-count1-count3;
			// data1.count3 = count3;
			// data2.count1 = count4;
			count5 = 35-count4-count6;
			// data2.count3 = count6;
			// data3.count1 = count7;
			count8 = 26-count7-count9;
			// data3.count3 = count9;
			console.log('count2',count2);
			console.log('count5',count5);
			console.log('count8',count8);
			$('#data1online').html('在线：'+count1);
			$('#data1offline').html('离线：'+count2);
			$('#data1fault').html('故障：'+count3);
			
			$('#data2online').html('在线：'+count4);
			$('#data2offline').html('离线：'+count5);
			$('#data2fault').html('故障：'+count6);
			
			$('#data3online').html('在线：'+count7);
			$('#data3offline').html('离线：'+count8);
			$('#data3fault').html('故障：'+count9);
	    }
	})
	for(let i = 0 ; i < list.length; i++){
		for(let j = 0; j < dataList.length;j++){
			if(list[i].name == dataList[j].Name){
				if(dataList[j].State == '在线'){
					list[i].status = '1';
				}else if(dataList[j].State == '离线'){
					list[i].status = '2';
				}else if(dataList[j].State == '故障'){
					console.log('----------故障');
					list[i].status = '3';
				}
			}
		}
	}
	console.log('list',list);
    var tileLayer = new BMap.TileLayer();
    tileLayer.getTilesUrl = function (tileCoord, zoom) {
        var x = tileCoord.x;
        var y = tileCoord.y;
        var url = outputPath + zoom + '/' + x + '/' + y + format;
        return url;
    }
    var tileMapType = new BMap.MapType('tileMapType', tileLayer, {minZoom: minZoom, maxZoom: maxZoom});
    var map = new BMap.Map("container",{mapType: tileMapType});
    //var point = new BMap.Point(125.331756,43.823411);
    var mapStyle = { style: "midnight" };
    map.setMapStyle(mapStyle);
    var top_left_control = new BMap.ScaleControl({anchor: BMAP_ANCHOR_TOP_LEFT});// 左上角，添加比例尺
    map.removeControl(top_left_control);

    //      map.setMapStyle({
    //  		styleJson:[styles]
    //      })
    //map.centerAndZoom(point, 12);
    map.centerAndZoom(new BMap.Point(125.326725,43.902293), initZoom);
    map.enableScrollWheelZoom();
    map.enableContinuousZoom();
    var point = new Array();
    var opts = {
        width : 100,     // 信息窗口宽度
        height: 50,     // 信息窗口高度
        title : "" , // 信息窗口标题
        enableMessage:true//设置允许信息窗发送短息
    };

    for (var i = 0; i < list.length; i ++) {
        (function(x){
            var p0 = list[i].lng;
            var p1 = list[i].lat;
            var	pt = new BMap.Point(p0,p1);
            point[i] = pt;
            var	marker = new BMap.Marker(pt);

            var greenIcon =  new BMap.Icon("<%=request.getContextPath()%>/resources/map/img/lanx.png", new BMap.Size(16,16));
            var redIcon1 =  new BMap.Icon("<%=request.getContextPath()%>/resources/map/img/hongx.png", new BMap.Size(16,16));
            var redIcon =  new BMap.Icon("<%=request.getContextPath()%>/resources/map/img/hxs.gif", new BMap.Size(16,16));
            var address = list[i].name;
            if (list[i].status == 1) {
                marker = new BMap.Marker(point[i],{icon:greenIcon})
                var content = '';
                content += '<div class="box">'+address+'</div>';
                var myLabel = new BMap.Label(address,{offset:new BMap.Size(-60,-40),position:point})//label的偏移量，为了让label的中心显示在点上position:point}),
                myLabel.setStyle({                                   //给label设置样式，任意的CSS都是可以的
                    fontSize:"12px",               //字号
                    border:"0",                    //边
                    height:"47px",                //高度
                    width:"auto",  //宽
                    color:'#fff',
                    padding:"0 10px",
                    textAlign:"center",            //文字水平居中显示
                    lineHeight:"47px",            //行高，文字垂直居中显示
                    background:"url(<%=request.getContextPath()%>/resources/map/img/blue.png) no-repeat center",    //背景图片，
                    backgroundSize:"100% 100%",
                    cursor:"pointer"
                });
            } else if(list[i].status == 2){
                marker = new BMap.Marker(point[i],{icon:redIcon1})
                var content = '';
                var content = '<div class="box1">'+address+'</div>';
                var myLabel = new BMap.Label(address,{offset:new BMap.Size(-60,-40),position:point})//label的偏移量，为了让label的中心显示在点上position:point}),
                myLabel.setStyle({                                   //给label设置样式，任意的CSS都是可以的
                    fontSize:"12px",               //字号
                    border:"0",                    //边
                    height:"47px",                //高度
                    width:"auto",  //宽
                    color:'#fff',
                    padding:"0 10px",
                    textAlign:"center",            //文字水平居中显示
                    lineHeight:"47px",            //行高，文字垂直居中显示
                    background:"url(<%=request.getContextPath()%>/resources/map/img/red.png) no-repeat center",    //背景图片，
                    backgroundSize:"100% 100%",
                    cursor:"pointer"
                });
            }else{
                marker = new BMap.Marker(point[i],{icon:redIcon})
                var content = '';
                var content = '<div class="box1">'+address+'</div>';
                var myLabel = new BMap.Label(address,{offset:new BMap.Size(-60,-40),position:point})//label的偏移量，为了让label的中心显示在点上position:point}),
                myLabel.setStyle({                                   //给label设置样式，任意的CSS都是可以的
                    fontSize:"12px",               //字号
                    border:"0",                    //边
                    height:"47px",                //高度
                    width:"auto",  //宽
                    color:'#fff',
                    padding:"0 10px",
                    textAlign:"center",            //文字水平居中显示
                    lineHeight:"47px",            //行高，文字垂直居中显示
                    background:"url(<%=request.getContextPath()%>/resources/map/img/red.png) no-repeat center",    //背景图片，
                    backgroundSize:"100% 100%",
                    cursor:"pointer"
                });
            }
//				var infoWindow = new BMap.InfoWindow(content);
//				marker.addEventListener("click", function (e) {
//	               this.openInfoWindow(infoWindow); //开启信息窗口
//	            });

            map.addOverlay(marker);
            //marker.setLabel(myLabel);
//          marker.addEventListener("click", function () {
//             this.openInfoWindow(info_Window);
//          });
        })(i)
//			addClickHandler(content,marker);
        // var point = new BMap.Point(sw.lng + lngSpan * (Math.random() * 0.7), ne.lat - latSpan * (Math.random() * 0.7));
        // addMarker(point);
    }
    map.addEventListener("zoomend", function(e){

        var ZoomNum = map.getZoom();
        map.clearOverlays();
        for (var i = 0; i < list.length; i ++) {
            (function(x){
                var p0 = list[i].lng;
                var p1 = list[i].lat;
                var py = list[i].py;
                var	pt = new BMap.Point(p0,p1);
                point[i] = pt;
                var	marker = new BMap.Marker(pt);

                var greenIcon =  new BMap.Icon("<%=request.getContextPath()%>/resources/map/img/lan.png", new BMap.Size(41,41));
                var redIcon1 =  new BMap.Icon("<%=request.getContextPath()%>/resources/map/img/hong.png", new BMap.Size(41,41));
                var redIcon =  new BMap.Icon("<%=request.getContextPath()%>/resources/map/img/hds.gif", new BMap.Size(41,41));
                if (ZoomNum<13) {
                    //map.clearOverlays();
                    greenIcon =  new BMap.Icon("<%=request.getContextPath()%>/resources/map/img/lanx.png", new BMap.Size(16,16));
                    redIcon1 =  new BMap.Icon("<%=request.getContextPath()%>/resources/map/img/hongx.png", new BMap.Size(16,16));
                    redIcon =  new BMap.Icon("<%=request.getContextPath()%>/resources/map/img/hxs.gif", new BMap.Size(16,16));
                }else  if (ZoomNum<15) {
                    greenIcon =  new BMap.Icon("<%=request.getContextPath()%>/resources/map/img/lanz.png", new BMap.Size(26,26));
                    redIcon1 =  new BMap.Icon("<%=request.getContextPath()%>/resources/map/img/hongz.png", new BMap.Size(26,26));
                    redIcon =  new BMap.Icon("<%=request.getContextPath()%>/resources/map/img/hzs.gif", new BMap.Size(26,26));
                }
                var address = list[i].name;
                if (list[i].status == 1) {
                    marker = new BMap.Marker(point[i],{icon:greenIcon})
                    var content = '';
                    content += '<div class="box">'+address+'</div>';
                    var myLabel = new BMap.Label(address,{offset:new BMap.Size(py,-40),position:point})//label的偏移量，为了让label的中心显示在点上position:point}),
                    myLabel.setStyle({                                   //给label设置样式，任意的CSS都是可以的
                        fontSize:"12px",               //字号
                        border:"0",                    //边
                        height:"47px",                //高度
                        width:"auto",  //宽
                        color:'#fff',
                        padding:"0 10px",
                        textAlign:"center",            //文字水平居中显示
                        lineHeight:"47px",            //行高，文字垂直居中显示
                        background:"url(<%=request.getContextPath()%>/resources/map/img/blue.png) no-repeat center",    //背景图片，
                        backgroundSize:"100% 100%",
                        cursor:"pointer"
                    });
                } else if(list[i].status == 2){
                    marker = new BMap.Marker(point[i],{icon:redIcon1})
                    var content = '';
                    var content = '<div class="box1">'+address+'</div>';
                    var myLabel = new BMap.Label(address,{offset:new BMap.Size(py,-40),position:point})//label的偏移量，为了让label的中心显示在点上position:point}),
                    myLabel.setStyle({                                   //给label设置样式，任意的CSS都是可以的
                        fontSize:"12px",               //字号
                        border:"0",                    //边
                        height:"47px",                //高度
                        width:"auto",  //宽
                        color:'#fff',
                        padding:"0 10px",
                        textAlign:"center",            //文字水平居中显示
                        lineHeight:"47px",            //行高，文字垂直居中显示
                        background:"url(<%=request.getContextPath()%>/resources/map/img/red.png) no-repeat center",    //背景图片，
                        backgroundSize:"100% 100%",
                        cursor:"pointer"
                    });
                }else{
                    marker = new BMap.Marker(point[i],{icon:redIcon})
                    var content = '';
                    var content = '<div class="box1">'+address+'</div>';
                    var myLabel = new BMap.Label(address,{offset:new BMap.Size(py,-40),position:point})//label的偏移量，为了让label的中心显示在点上position:point}),
                    myLabel.setStyle({                                   //给label设置样式，任意的CSS都是可以的
                        fontSize:"12px",               //字号
                        border:"0",                    //边
                        height:"47px",                //高度
                        width:"auto",  //宽
                        color:'#fff',
                        padding:"0 10px",
                        textAlign:"center",            //文字水平居中显示
                        lineHeight:"47px",            //行高，文字垂直居中显示
                        background:"url(<%=request.getContextPath()%>/resources/map/img/red.png) no-repeat center",    //背景图片，
                        backgroundSize:"100% 100%",
                        cursor:"pointer"
                    });
                }
//				var infoWindow = new BMap.InfoWindow(content);
//				marker.addEventListener("click", function (e) {
//	               this.openInfoWindow(infoWindow); //开启信息窗口
//	            });

                map.addOverlay(marker);
                if (ZoomNum>=15) {
                    //map.addOverlay(marker);
                    marker.setLabel(myLabel);
                }else if (ZoomNum<12) {
                    //map.clearOverlays();
                    map.addOverlay(marker);
                    marker.setLabel("");
                }else{
                    map.addOverlay(marker);
                    marker.setLabel("");
                }

//          marker.addEventListener("click", function () {
//             this.openInfoWindow(info_Window);
//          });
            })(i)
//			addClickHandler(content,marker);
            // var point = new BMap.Point(sw.lng + lngSpan * (Math.random() * 0.7), ne.lat - latSpan * (Math.random() * 0.7));
            // addMarker(point);
        }


    });
    map.addControl(new BMap.NavigationControl());
    //		map.addControl(new BMap.NavigationControl());
    //		function addClickHandler(content,marker){
    //			marker.addEventListener("click",function(e){
    //				openInfo(content,e)}
    //			);
    //		}
    //		function openInfo(content,e){
    //			var p = e.target;
    //			var point = new BMap.Point(p.getPosition().lng, p.getPosition().lat);
    //			var infoWindow = new BMap.InfoWindow(content,opts);  // 创建信息窗口对象
    //			map.openInfoWindow(infoWindow,point); //开启信息窗口
    //		}
    /*setInterval(my, 1000);
    var x =1;
    function my(){
    if (x>16) {
        x=1;
    }
    //alert("dhm");
    //alert(str);
    //document.getElementById("lb2").innerHTML='<table>'+str+'</table>';
    //document.getElementById("lb2").style.backgroundImage="url(img/z"+x+".png)";
    var obj=document.getElementById("obj");
    obj.src="img/z"+x+".png";
    x=x+1;
    }*/
    var str="";
    for (var i = 0; i < list.length; i ++) {
        var name=list[i].name;
        //var subStr = name.substring(0, 20);

        //如果长度大于5就添加省略号否则就添加空
        var data = name ;
        var zt="在线";
        var ztz=list[i].status;
        var cal = "#fff";
        if (ztz==2) {
            zt="离线";
            cal = "#fecb00";
        }else if (ztz==3) {
            zt="故障";
            cal = "#f70f1a";
        }
        //'<div align="left"><font size = "5" color="#fff" >'+data+'</font><span class="ddd"><font size = "5" color="#fff" >'+zt+'</font></span></div>'
        if (i % 2==1) {
            str=str+'<li><div align="left" style="background-color:rgba(00,255,253,0.4);"><font size = "4" color="#fff" ">'+data+'</font><span class="ddd"><font size = "4" color="'+cal+'"" >'+zt+'</font></span></div></li>'
        }else{
            str=str+'<li><div align="left"><font size = "4" color="#fff" >'+data+'</font><span class="ddd"><font size = "4" color="'+cal+'"" >'+zt+'</font></span></div></li>'
        }
    }

    document.getElementById("lbqd").innerHTML=str;
	})
</script>
<script type="text/javascript">
    (function($){
        $.fn.simpleSpy = function (limit, interval){
            limit = limit || 9;
            interval = interval || 2000;

            return this.each(function(){
                // 1. 设置
                // 捕获所有的列表项的缓存
                // 列表限制li元素
                var $list = $(this),
                    items = [], // 未初始化
                    currentItem = limit,
                    total = 0, // 初始化以后
                    height = $list.find('> li:first').height();

                // 捕获缓存
                $list.find('> li').each(function(){
                    items.push('<li>' + $(this).html() + '</li>');
                });

                total = items.length;

                $list.wrap('<div class="spyWrapper" />').parent().css({height : height * limit});

                $list.find('> li').filter(':gt(' + (limit - 1) + ')').remove();

                // 2. 效果
                function spy(){
                    // 插入一个新的项目，透明度和高度为零
                    var $insert = $(items[currentItem]).css({height : 0,opacity : 0,display : 'none'}).prependTo($list);

                    // 褪色的最后一个事件
                    $list.find('> li:last').animate({ opacity : 0}, 1000, function(){
                        // 增加新的第一个项目的高度
                        $insert.animate({ height : height }, 1000).animate({ opacity : 1 }, 1000);
                        $(this).remove();
                    });

                    currentItem++;
                    if(currentItem >= total){
                        currentItem = 0;
                    }
                    setTimeout(spy, interval)
                }

                spy();
            });
        };
    })(jQuery);
</script>
<script type="text/javascript">
	
</script>
<script type="text/javascript">
    $(document).ready(function(){
        $('ul.spy').simpleSpy();
    });
</script>
</html>