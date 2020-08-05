/*
zhangjin
jquery选中如下类列表元素
<div class="demo trBodyBorder">
    <div class="trBody">
        <div class="trRow ub">
            <div class="assetsOrder">001</div>
            <div class="assetsCode"> VirtualDevice0000000005</div>
            <div class="assetsName"> 涉密网络安全态势感知</div>
            <div class="assetsLevel">秘密</div>
        </div>
    </div>
</div>
调用
$(".demo").bjTable();
即可实现grid表格第一条消失，其他的往上推，最下面加一条新的
*/
function BjTable(elem, data){
    this.dom = elem;
    this.data = data;
    this.hideTime = 500;//第一项隐藏的时间
    this.autoRefreshTime = 3000;//自动刷新时间，多久动一下
    this.timmer = null;//自动刷新的timmer
    this.index = 0;//第一条数据在数组data中的脚标
    this.init();
}
BjTable.prototype = {
    init: function(){
        this.dom.addClass("scrollTable");
        this.trBody = this.dom.find(".trBody");
        var lis = this.dom.find(".trRow");
        this.perDom = lis.eq(0).clone();
        this.liLength = lis.length;//当前列表有多少项
        this.index = this.liLength;
        this._fillDefaultData();
    },
    _fillDefaultData: function(){//array为要填充的数据
        var array = this.data;
        var datalength = array.length;
        var length = datalength > this.liLength ? this.liLength : datalength;
        var arrayBuffer = [];
        for(var i = 0; i < length; i++){
            arrayBuffer.push(array[i]);
        }
        var lis = this.trBody.find(".trRow");
        this.index = this.liLength;
        for(var i = 0; i < length; i++){
            var li = lis.eq(i);
            if(i % 2 == 0)
                li.addClass("rowtype1");
            else
                li.addClass("rowtype2");
            var icon = $("<div class='bjStateIcon" + array[i].type + "'></div>")
            li.find(".flagIcon").append(icon);
            li.find(".bjDate").text(array[i].bjDate);
            li.find(".bjTime").text(array[i].bjTime);
            li.find(".bjInfo").text(array[i].bjInfo);
        }
    },
    _creatNewTrRow: function(){
        var obj = this.data[this.index];
        var perDom = this.perDom.clone();
        if(this.index % 2 == 0)
            perDom.addClass("rowtype1");
        else
            perDom.addClass("rowtype2");
        var icon = $("<div class='bjStateIcon" + obj.type + "'></div>")
        perDom.find(".flagIcon").append(icon);
        perDom.find(".bjDate").text(obj.bjDate);
        perDom.find(".bjTime").text(obj.bjTime);
        perDom.find(".bjInfo").text(obj.bjInfo);
        return perDom;
    },
    autoRefresh: function(){
        if(this.data.length < this.liLength)
            return console.log("长度不够，拒绝翻滚。");
        var self = this;
        this.timmer = setInterval(function(){
            var perDom = self._creatNewTrRow();
            self.trBody.append(perDom);
            self.dom.find(".trRow").eq(0).hide(self.hideTime, function(){
                $(this).remove();
            });
            if(self.index == self.data.length - 1)
                self.index = 0;
            else
                self.index += 1;
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
$.fn.bjTable = function(data){
    return new BjTable($(this), data);
};