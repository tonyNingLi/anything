<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/sences/css/init.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/sences/css/index-pz.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/sences/css/animate.css"/>
    <title>感知系统整合</title>
</head>

<body>

    <div class="wrap-pz" id='app' @click='this.clearFloatBox'>
        <!-- 4个按钮 -->
        <div class='btnBox'>
            <div :class='{btn:true,btn2:true, btn2Selected: contentShowFlagList[1] }' @click.stop='cutTab(1);'></div>
            <div :class='{btn:true,btn3:true, btn3Selected: contentShowFlagList[2] }' @click.stop='cutTab(2);'></div>
            <div :class='{btn:true,btn4:true, btn4Selected: contentShowFlagList[3] }' @click.stop='cutTab(3);'></div>
        </div>

        <!--4个内容-->
        <div class='contentBox' id='contentBox'>
            <transition enter-active-class='animated slideInLeft' level-active-class='animated slideOutLeft'>
                <!-- 各部门情况 -->
                <div class='ContentItem item1' v-show='contentShowFlagList[0]'>
                    <ul >
                        <li :class={red:item.isRed} v-for='item in contentItem1List' :key='item.id' @click.stop='redLiClick(item,$event)'>
                            <div>
                                <p>{{item.name}}</p>
                            </div>
                        </li>

                    </ul>
                </div>
            </transition>

            <!--派驻机构情况-->
            <transition enter-active-class='animated slideInLeft' level-active-class='animated slideOutLeft'>
                <div class='ContentItem item2' v-show='contentShowFlagList[1]'>
                    <ul >
                        <li :class={red:item.isRed} v-for='item in contentItem2List' :key='item.id' @click.stop='redLiClick(item,$event)'>
                            <div>
                                <p>{{item.name}}</p>
                            </div>
                        </li>
                    </ul>
                </div>
            </transition>
            <!--各大学情况-->
            <transition enter-active-class='animated slideInLeft' level-active-class='animated slideOutLeft'>
                <div class='ContentItem item3' v-show='contentShowFlagList[2]'>
                    <ul id='ListBoxUl'>
                        <li :class={red:item.isRed} v-for='item in contentItem3List' :key='item.id' @click.stop='redLiClick(item,$event)'>
                            <div>
                                <p>{{item.name}}</p>
                            </div>
                        </li>
                    </ul>
                </div>
            </transition>
            <!--省属企业情况-->
            <transition enter-active-class='animated slideInLeft' level-active-class='animated slideOutLeft'>
                <div class='ContentItem item4' v-show='contentShowFlagList[3]'>
                    <ul id='ListBoxUl'>
                        <li :class={red:item.isRed} v-for='item in contentItem4List' :key='item.id' @click.stop='redLiClick(item,$event)'>
                            <div>
                                <p>{{item.name}}</p>
                            </div>
                        </li>

                    </ul>
                </div>
            </transition>
        </div>

        <!--弹出的盒子-->
        <!-- <div class='floatBox' id='floatBox'>
            <div class='outBox'>
                <div class='innerBox'>
                    <div class='header'>
                        纪委监察干部监督室
                    </div>
                    <ul class='list'>
                        <li>
                            <img src='../img/logo.jpg'><span>49.221.18.25</span>
                        </li>
                        <li>
                            <img src='../img/logo.jpg'><span>49.221.18.25</span>
                        </li>
                        <li>
                            <img src='../img/logo.jpg'><span>49.221.18.25</span>
                        </li>
                        <li>
                            <img src='../img/logo.jpg'><span>49.221.18.25</span>
                        </li>
                        <li>
                            <img src='../img/logo.jpg'><span>49.221.18.25</span>
                        </li>
                        <li>
                            <img src='../img/logo.jpg'><span>49.221.18.25</span>
                        </li>
                    </ul>
                </div>
            </div>
        </div> -->

    </div>




  <script src='<%=request.getContextPath()%>/resources/sences/js/common.js'></script>
 <script src='<%=request.getContextPath()%>/resources/sences/js/vue.min.js'></script>
 <script src='<%=request.getContextPath()%>/resources/sences/js/axios.js'></script>
 <script src='<%=request.getContextPath()%>/resources/sences/js/jquery.min.js'></script>
    <script>
        let app = new Vue({
            el: '#app',
            data: {
                contentShowFlagList: [false,true,  false, false],
                contentItem1List:  [
                    {
                        id: 1,
                        name: '办公厅',
                        isRed: true,
                    },
                    {
                        id: 2,
                        name: '组织部',
                        isRed: false,
                    },
                    {
                        id: 3,
                        name: '宣传部',
                        isRed: true,
                    },
                    {
                        id: 4,
                        name: '研究室',
                        isRed: false,
                    },
                    {
                        id: 5,
                        name: '法规室',
                        isRed: false,
                    },
                    {
                        id: 6,
                        name: '党风政风监督室',
                        isRed: false,
                    },
                    {
                        id: 7,
                        name: '信访室',
                        isRed: false,
                    },
                    {
                        id: 8,
                        name: '案件监察管理室',
                        isRed: false,
                    },
                    {
                        id: 9,
                        name: '第一监督监察室',
                        isRed: false,
                    },
                    {
                        id: 10,
                        name: '第二监督监察室',
                        isRed: false,
                    },
                    {
                        id: 11,
                        name: '第三监督监察室',
                        isRed: false,
                    },
                    {
                        id: 12,
                        name: '第四监督监察室',
                        isRed: false,
                    },
                    {
                        id: 13,
                        name: '第五监督监察室',
                        isRed: false,
                    },
                    {
                        id: 14,
                        name: '第六监督监察室',
                        isRed: false,
                    },
                    {
                        id: 15,
                        name: '第七监督监察室',
                        isRed: false,
                    },
                    {
                        id: 16,
                        name: '第八监督监察室',
                        isRed: false,
                    },
                    {
                        id: 17,
                        name: '第九监督监察室',
                        isRed: false,
                    },
                    {
                        id: 18,
                        name: '第十监督监察室',
                        isRed: false,
                    },
                    {
                        id: 19,
                        name: '第十一监督监察室',
                        isRed: false,
                    },
                    {
                        id: 20,
                        name: '第十二监督监察室',
                        isRed: false,
                    },
                    {
                        id: 21,
                        name: '第十三监督监察室',
                        isRed: false,
                    },
                    {
                        id: 22,
                        name: '第十四监督监察室',
                        isRed: false,
                    },
                    {
                        id: 23,
                        name: '第十五监督监察室',
                        isRed: false,
                    },
                    {
                        id: 24,
                        name: '第十六监督监察室',
                        isRed: false,
                    },
                    {
                        id: 25,
                        name: '第十七监督监察室',
                        isRed: true,
                    },
                    {
                        id: 26,
                        name: '第十八监督监察室',
                        isRed: false,
                    },
                    {
                        id: 27,
                        name: '案件审查室',
                        isRed: false,
                    },
                    {
                        id: 28,
                        name: '纪委监察干部监督室',
                        isRed: false,
                    },
                    {
                        id: 29,
                        name: '信息技术管理室',
                        isRed: false,
                    },
                    {
                        id: 30,
                        name: '机关事务管理室',
                        isRed: false,
                    },
                    {
                        id: 31,
                        name: '老干部处',
                        isRed: false,
                    },
                    {
                        id: 32,
                        name: '机关党委',
                        isRed: false,
                    },
                ],
                contentItem2List: [
                    {
                        id: 1,
                        name: '驻省委办公厅纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 2,
                        name: '驻省委组织部纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 3,
                        name: '驻省委宣传部纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 4,
                        name: '驻省委统战部纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 5,
                        name: '驻省委政法委纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 6,
                        name: '驻省人大常委会机关纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 7,
                        name: '驻省政府办公厅纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 8,
                        name: '驻省发展和改革委员会纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 9,
                        name: '驻省教育厅纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 10,
                        name: '驻省科学技术厅纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 11,
                        name: '驻省工业和信息化厅纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 12,
                        name: '驻省公安厅纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 13,
                        name: '驻省民政厅纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 14,
                        name: '驻省司法厅纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 15,
                        name: '驻省财政厅纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 16,
                        name: '驻省人力资源和社会保障厅纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 17,
                        name: '驻省自然资源厅纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 18,
                        name: '驻省生态环保厅纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 19,
                        name: '驻省住房和城乡建设厅纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 20,
                        name: '驻省交通运输厅纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 21,
                        name: '驻省水利厅纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 22,
                        name: '驻农业农村厅纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 23,
                        name: '驻省商务厅纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 24,
                        name: '驻省文化和旅游厅纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 25,
                        name: '驻卫生健康委员会纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 26,
                        name: '驻省退役军人事务厅纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 27,
                        name: '驻省应急管理厅纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 28,
                        name: '驻省审计厅纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 29,
                        name: '驻省市场监督管理厅纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 30,
                        name: '驻省政府国有资产监督管理委员会纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 31,
                        name: '驻省统计局纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 32,
                        name: '驻省机关事务管理局纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 33,
                        name: '驻省粮食和物资储备局纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 34,
                        name: '驻省政务服务和数字化建设管理局纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 35,
                        name: '驻省林业和草原局纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 36,
                        name: '驻省政协机关纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 37,
                        name: '驻省高级人民法院纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 38,
                        name: '驻省人民检察院纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 39,
                        name: '驻省总工会机关纪检监察组',
                        isRed: false,
                    },
                    {
                        id: 40,
                        name: '驻省直机关纪检监察组工作委员会',
                        isRed: false,
                    },
                        {
                            id: 41,
                            name: '',
                            isRed: false,
                        },
                        {
                            id: 42,
                            name: '',
                            isRed: false,
                        },
                        {
                            id: 43,
                            name: '',
                            isRed: false,
                        },
                        {
                            id: 44,
                            name: '',
                            isRed: false,
                        },
                        {
                            id: 45,
                            name: '',
                            isRed: false,
                        }

                ],
                contentItem3List: [

                    {
                        id: 1,
                        name: '长春理工大学',
                        isRed: false,
                    },
                    {
                        id: 2,
                        name: '吉林农业大学',
                        isRed: false,
                    },
                    {
                        id: 3,
                        name: '长春中医药大学',
                        isRed: false,
                    },
                    {
                        id: 4,
                        name: '长春工业大学',
                        isRed: false,
                    },
                    {
                        id: 5,
                        name: '吉林财经大学',
                        isRed: false,
                    },
                    {
                        id: 6,
                        name: '吉林建筑大学',
                        isRed: false,
                    },
                    {
                        id: 7,
                        name: '长春师范大学',
                        isRed: false,
                    },
                    {
                        id: 8,
                        name: '长春大学',
                        isRed: false,
                    },
                    {
                        id: 9,
                        name: '长春工程学院',
                        isRed: false,
                    },
                    {
                        id: 10,
                        name: '吉林工程技术师范学院',
                        isRed: false,
                    },
                    {
                        id: 11,
                        name: '吉林工商学院',
                        isRed: false,
                    },
                    {
                        id: 12,
                        name: '吉林艺术学院',
                        isRed: false,
                    },
                    {
                        id: 13,
                        name: '吉林体育学院',
                        isRed: false,
                    },
                    {
                        id: 14,
                        name: '吉林警察学院',
                        isRed: false,
                    },
                    {
                        id: 15,
                        name: '北华大学',
                        isRed: false,
                    },
                    {
                        id: 16,
                        name: '东北电力大学',
                        isRed: false,
                    },
                    {
                        id: 17,
                        name: '吉林化工学院',
                        isRed: false,
                    },
                    {
                        id: 18,
                        name: '吉林医药学院',
                        isRed: false,
                    },
                    {
                        id: 19,
                        name: '吉林农业科技学院',
                        isRed: false,
                    },
                    {
                        id: 20,
                        name: '延边大学',
                        isRed: false,
                    },
                    {
                        id: 21,
                        name: '吉林师范大学',
                        isRed: false,
                    },
                    {
                        id: 22,
                        name: '通化师范学院',
                        isRed: false,
                    },
                    {
                        id: 23,
                        name: '白城师范学院',
                        isRed: false,
                    },
                    {
                        id: 24,
                        name: '吉林省教育学院',
                        isRed: false,
                    },
                    {
                        id: 25,
                        name: '吉林广播电视大学',
                        isRed: false,
                    },
                    {
                        id: 26,
                        name: '长春金融高等专科学校',
                        isRed: false,
                    },
                    {
                        id: 27,
                        name: '吉林交通职业技术学院',
                        isRed: false,
                    },
                    {
                        id: 28,
                        name: '吉林司法警官职业学院',
                        isRed: false,
                    },
                    {
                        id: 29,
                        name: '吉林工程职业学院',
                        isRed: false,
                    },
                    {
                        id: 30,
                        name: '吉林电子信息职业技术学院',
                        isRed: false,
                    },
                    {
                        id: 31,
                        name: '吉林工业职业技术学院',
                        isRed: false,
                    },
                    {
                        id: 32,
                        name: '吉林铁道职业技术学院',
                        isRed: false,
                    },
                    {
                        id: 33,
                        name: '白城医学高等专科学校',
                        isRed: false,
                    },
                    {
                        id: 34,
                        name: '吉林大学',
                        isRed: false,
                    },
                    {
                        id: 35,
                        name: '东北师范大学',
                        isRed: false,
                    },
                        {
                            id: 36,
                            name: '',
                            isRed: false,
                        },
                        {
                            id: 37,
                            name: '',
                            isRed: false,
                        },
                        {
                            id: 38,
                            name: '',
                            isRed: false,
                        },
                        {
                            id: 39,
                            name: '',
                            isRed: false,
                        },
                        {
                            id: 40,
                            name: '',
                            isRed: false,
                        }

                ],
                contentItem4List: [
                    {
                        id: 1,
                        name: '吉林银行股份有限公司',
                        isRed: false,
                    },
                    {
                        id: 2,
                        name: '吉林省信托有限责任公司',
                        isRed: false,
                    },
                    {
                        id: 3,
                        name: '吉林省投资集团有限公司',
                        isRed: false,
                    },
                    {
                        id: 4,
                        name: '吉林省金融控股集团股份有限公司',
                        isRed: false,
                    },
                    {
                        id: 5,
                        name: '吉林省信用担保投资集团有限公司',
                        isRed: false,
                    },
                    {
                        id: 6,
                        name: '吉林省农村信用社联合社',
                        isRed: false,
                    },
                    {
                        id: 7,
                        name: '中国吉林森林工业集团有限责任公司',
                        isRed: false,
                    },
                    {
                        id: 8,
                        name: '吉林省煤业集团有限公司',
                        isRed: false,
                    },
                    {
                        id: 9,
                        name: '吉林省旅游控股集团有限责任公司',
                        isRed: false,
                    },
                    {
                        id: 10,
                        name: '吉林省国有资本运营有限责任公司',
                        isRed: false,
                    },
                    {
                        id: 11,
                        name: '吉林省农业投资集团有限公司',
                        isRed: false,
                    },
                    {
                        id: 12,
                        name: '吉林省高速公路集团有限公司',
                        isRed: false,
                    },
                    {
                        id: 13,
                        name: '吉林省水务投资集团有限公司',
                        isRed: false,
                    },
                    {
                        id: 14,
                        name: '吉林省吉盛资产管理有限责任公司',
                        isRed: false,
                    },
                    {
                        id: 15,
                        name: '吉林东北亚出版传媒集团有限公司',
                        isRed: false,
                    },
                    {
                        id: 16,
                        name: '吉视传媒股份有限公司',
                        isRed: false,
                    },
                    {
                        id: 17,
                        name: '长影集团有限责任公司',
                        isRed: false,
                    },
                    {
                        id: 18,
                        name: '吉林粮食集团有限公司',
                        isRed: false,
                    },
                    {
                        id: 19,
                        name: '吉林昊融集团股份有限公司',
                        isRed: false,
                    },
                    {
                        id: 20,
                        name: '吉林吉农高新技术发展股份有限公司',
                        isRed: false,
                    },
                    {
                        id: 21,
                        name: '吉林粮食资产管理有限公司',
                        isRed: false,
                    },
                    {
                        id: 22,
                        name: '吉林省中吉实业有限公司',
                        isRed: false,
                    },
                    {
                        id: 23,
                        name: '吉林省交通投资集团有限公司',
                        isRed: false,
                    },
                    {
                        id: 24,
                        name: '省国有资产经营管理有限公司',
                        isRed: false,
                    },
                    {
                        id: 25,
                        name: '吉林省国华资产管理有限责任公司',
                        isRed: false,
                    },
                    {
                        id: 26,
                        name: '中国第一汽车集团有限公司',
                        isRed: false,
                    },
                        {
                            id: 27,
                            name: '',
                            isRed: false,
                        },

                        {
                            id: 28,
                            name: '',
                            isRed: false,
                        },

                        {
                            id: 29,
                            name: '',
                            isRed: false,
                        },

                        {
                            id: 30,
                            name: '',
                            isRed: false,
                        }

                ],
                floatBox: null
            },
            methods: {
                initData: function () { //设置content2中的数据
                    let that = this;
                    $.ajax({
                        url: window.location.origin+"/SjwProject/zdsbgl/getZdsbgzDate17",
                        data: {
                        },
                        success: function (res) {
                            var data = JSON.parse(res);
                            that.assignmentData(data,that.contentItem2List,2);
                            that.assignmentData(data,that.contentItem3List,3);
                            that.assignmentData(data,that.contentItem4List,4);
                        }
                    })
                },
                assignmentData:function(data,list,index){
                    for (var i = 0; i < data.rows.length; i++) {
                        for (var j = 0; j < list.length; j++) {
                            if (data.rows[i].status == '开机') {
                                if (data.rows[i].adepartName == list[j].name) {
                                    console.log('开机----》',list);
                                    list[j].isRed = true;
                                    if (list[j].ip != null && list[j].ip != '' && typeof (list[j].ip) != 'undefined') {
                                        list[j].ip = list[j].ip + ',' + data.rows[i].IP;
                                    } else {
                                        list[j].ip = data.rows[i].IP;
                                    }
                                }
                            }
                        }
                    }
                    if(index == 2){
                        this.contentItem2List = list;
                    }
                    if(index == 3){
                        this.contentItem3List = list;
                    }
                    if(index == 4){
                        this.contentItem4List = list;
                    }
                    console.log('contentItem2List',this.contentItem2List);
                    console.log('contentItem3List',this.contentItem3List);
                    console.log('contentItem4List',this.contentItem4List);
                },
                cutTab: function (index) { //切换按钮
                    this.contentShowFlagList = [false, false, false, false];
                    this.contentShowFlagList[index] = true;
                    this.clearFloatBox();
                },

                redLiClick:function(data,event){//红色li点击的事件
                    if(data.isRed){
                        let el=event.currentTarget;
                        
                        //销毁之前的floatBox
                        if(this.floatBox!=null){
                            document.querySelector('#app').removeChild(this.floatBox);
                            floatBox=null;
                        }
                        //先将floatBox定位到当前元素的中心
                        //let liHeight=el.offsetHeight;
                        //let liWidth=el.offsetWidth;
                        //let x=el.offsetLeft+liWidth/2;
                        //let y=el.offsetTop+liHeight/2;
						
						let Ul=$(el).parent()[0];
                        console.log(Ul);
                        let x=Ul.offsetLeft+Ul.offsetWidth/2;
                        let y=Ul.offsetTop+Ul.offsetHeight/2;
                        console.log(x,y);
						//创建floatBox
                        let content = "<div class='innerBox'>\n" +
                            "<div class='header'>\n" +data.name+
                            "                    </div>\n" +
                            "                   <ul class='list'>";
                        console.log('arrIp',data);
                        let arrIp = data.ip.split(',');
                        for(let i = 0 ; i < arrIp.length; i++){
                            let a = "<li>" +
                                "<img src='<%=request.getContextPath()%>/resources/sences/img/logo.jpg'><span>"+arrIp[i]+"</span>" +
                                "</li>";
                            content +=a;
                        }
                        content = content + "</ul></div>";
                        console.log("content",content);
                        //创建floatBox
                        this.floatBox=document.createElement('div');
                        $(this.floatBox).attr('class','floatBox');
                        $(this.floatBox).html(content);
                        $(this.floatBox).appendTo('#app');

                        let floatBoxScale=0.5;//初始设置缩放为0.5
                        let floatBoxWidth=this.floatBox.offsetWidth;
                        let floatBoxHeight=this.floatBox.offsetHeight;
                        console.log(floatBoxWidth,floatBoxHeight);
                        $(this.floatBox).css({'top':y-floatBoxHeight/2+"px",'left':x-floatBoxWidth/2+"px"});
                        //显示floatBox
                        this.floatBox.style.visibility='visible';

                        $(this.floatBox).css({'-webkit-transition':'transform 700ms ease-out'});
                        $(this.floatBox).css({'-moz-transition':'transform 700ms ease-out'});
                        $(this.floatBox).css({'transition':'transform 700ms ease-out'});

                        $(this.floatBox).css({'-webkit-transform':'scale(1,1) rotateX(360deg)'});
                        $(this.floatBox).css({'-moz-transform':'scale(1,1) rotateX(360deg)'});
                        $(this.floatBox).css({'transform':'scale(1,1) rotateX(360deg)'});

                        return false;
                    }
                    else{
                        this.clearFloatBox();
                    }
                },
                clearFloatBox:function(){//销毁flexBox
                    //销毁floatBox
                    if(this.floatBox!=null){
                                    document.querySelector('#app').removeChild(this.floatBox);
                                    this.floatBox=null;
                                }
                }
                
            },
            mounted() {
                console.log('mounted');
                //默认显示content1先设置content1中的数据
                this.initData();
                
            }
        });
    </script>
</body>

</html>