function TPS(domId, data){
    this.domId = domId;
    this.data = data;
    this.myChart = null;
    this.init();
}
TPS.prototype = {
    init: function(){
        this._initDom();
    },
    _initDom: function(){
        var dom = document.getElementById(this.domId);
        this.myChart = echarts.init(dom);
        var option = {
            xAxis: {
                type: 'category',
                data: ['0','1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20'],
                splitLine: {
                    show: true,
                    lineStyle:{
                        color: ['#103243'],
                        width: 1,
                        type: 'solid'
                    }
                }
            },
            yAxis: {
                type: 'value',
                splitNumber: 10,
                //网格样式
                splitLine: {
                    show: true,
                    lineStyle:{
                        color: ['#103243'],
                        width: 1,
                        type: 'solid'
                    }
                }
            },
            grid:{
                x: 0,
                y: 0,
                x2: 0,
                y2: 0,
                borderWidth:1
            },
            lineStyle: {
                color: "#05fff8",
                width: 1
            }, //线条的样式
            animation: false,
            series: [{
                data: this.data,
                type: 'line',
                symbol: "none"
            }]
        };
        if (option && typeof option === "object") {
            this.myChart.setOption(option, true);
        }
        $(".currentValueSpan").text(this.data[this.data.length - 1] + "%");
    },
    refresh: function(data){
        this.myChart.setOption({
            series: [{
                data: data
            }]
        });
    }
};