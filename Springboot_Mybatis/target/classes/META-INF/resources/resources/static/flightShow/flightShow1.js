/*
zhangjin
jquery选中如下类列表元素
<div class='demo'>
    <div class='li'></div>
    <div class='li'></div>
    <div class='li'></div>
</div>
调用
$(".demo").flightShow()
即可实现航站屏展示的逐条翻转效果
*/
function FlightShow(elem, data){
    this.dom = elem;
    this.data = data;
    this.rotateTime = 900;//由正到反，或由反到正的时间，全部刷新一次的时间为this.rotateTime*2
    this.autoRefreshTime = 5000;//自动刷新时，两次刷新的间隔时间
    this.timmer = null;//自动刷新的timmer
    this.countIndex = 0;//当前展示第几组数据，从0开始
    this.init();
}
FlightShow.prototype = {
    init: function(){
        this.dom.addClass("flightShow");
        this.lis = this.dom.find(".li");
        this.liLength = this.lis.length;//当前列表有多少项
        var arrayBuffer = [];
        for(var i = 0; i < this.liLength; i++){
            arrayBuffer.push(this.data[i]);
        }
        this._fillDefaultData(arrayBuffer);
    },
    _fillDefaultData: function(array){//array为要填充的数据
        for(var i = 0; i < this.liLength; i++){
            var inDom = this.lis.eq(i);
            inDom.find(".order").text(array[i].order);
            inDom.find(".responseMan").text(array[i].responseMan);
            inDom.find(".type").text(array[i].type);
            inDom.find(".code").text(array[i].code);
            inDom.find(".time").text(array[i].time);
        }
    },
    _show: function(){
        this.lis.each(function(i){
            var li = $(this);
            li.removeClass("delay1 delay2 delay3 delay4 delay5 delay6");
            li.addClass("delay" + (i + 1));
        });
        this.lis.removeClass("rotateX");
    },
    _hide: function(){
        var self = this;
        this.lis.each(function(i){
            var li = $(this);
            li.removeClass("delay1 delay2 delay3 delay4 delay5 delay6");
            li.addClass("delay" + (self.liLength - i));
        });
        this.lis.addClass("rotateX");
    },
    refresh: function(){
        var self = this;
        self._hide();
        setTimeout(function(){
            var arrayBuffer = [];
            if((self.countIndex + 1 + 1) * self.liLength >= self.data.length){//如果下一组超过总信息条数，取最后几条
                for(var i = self.data.length - self.liLength; i < self.data.length; i++){
                    arrayBuffer.push(self.data[i]);
                }
                self.countIndex = -1;//下次取第一组
            }else{
                self.countIndex += 1;
                for(var i = self.countIndex * self.liLength; i < (self.countIndex + 1) * self.liLength; i++){
                    arrayBuffer.push(self.data[i]);
                }
            }
            self._fillDefaultData(arrayBuffer);
            self._show();
        }, self.rotateTime);
    },
    autoRefresh: function(){
        var self = this;
        this.timmer = setInterval(function(){
            self.refresh()
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
$.fn.flightShow = function(data){
    return new FlightShow($(this), data);
};