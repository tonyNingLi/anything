/*
zhangjin
jquery选中如下类列表元素
<div class="randomBlock demo">
    <div class="randomRow ub">
        <div class="lineBlock"></div>
            <div class="randomString1">01</div>
            <div class="lineBlock mr5"></div>
            <div class="lineBlock"></div>
            <div class="ub-f1 randomString2">HSJAT KSL 012</div>
            <div class="lineBlock"></div>
        </div>
    </div>
</div>
调用
$(".demo").randomInfo();
grid各行数据随机变
*/
function RandomInfo(elem, data){
    this.dom = elem;
    this.data = data;
    this.autoRefreshTime = 500;//自动刷新时间
    this.timmer = null;//自动刷新的timmer
    this.init();
}
RandomInfo.prototype = {
    init: function(){
        this.dom.addClass("randomInfo");
        this.lis = this.dom.find(".randomRow");
        this.liLength = this.lis.length;//当前列表有多少项
        this._fillDefaultData();
    },
    _fillDefaultData: function(){//array为要填充的数据
        var array = this._getRandomArray();
        for(var i = 0; i < array.length; i++){
            var li = this.lis.eq(i);
            li.find(".randomString1").text(array[i].string1);
            li.find(".randomString2").text(array[i].string2);
        }
    },
    _getRandomArray: function(){
        var sArray = this.data;
        if(sArray.length < this.liLength)//数据量没格子多
            return sArray;
        var tArray = [];
        var dataLength = sArray.length;
        var obj = {};
        var count = 0;
        for(var i = 0; i < 1000; i++){
            var ran = Math.floor(Math.random() * dataLength);
            if(!obj["_" + ran]){
                obj["_" + ran] = true;
                tArray.push(this.data[ran]);
                count += 1;
                if(count == this.liLength + 1)
                    break;
            }
        }
        return tArray;
    },
    autoRefresh: function(){
        if(this.data.length < this.liLength)
            return console.log("长度不够，拒绝翻滚。");
        var self = this;
        this.timmer = setInterval(function(){
            self._fillDefaultData();
        }, self.autoRefreshTime);
    },
    stopAutoRefresh: function(){
        clearInterval(this.timmer);
    },
    destroy: function(){
        this.stopAutoRefresh();
        this.dom.remove();
    }
};
$.fn.randomInfo = function(data){
    return new RandomInfo($(this), data);
};