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
$(".demo").scrollTable();
即可实现grid表格第一条消失，其他的往上推，最下面加一条新的
*/
function ScrollTable(elem, data){
    this.dom = elem;
    this.data = data;
    this.hideTime = 500;//第一项隐藏的时间
    this.autoRefreshTime = 3000;//自动刷新时间，多久动一下
    this.timmer = null;//自动刷新的timmer
    this.index = 0;//第一条数据在数组data中的脚标
    this.init();
}
ScrollTable.prototype = {
    init: function(){
        this.dom.addClass("scrollTable");
        this.trBody = this.dom.find(".trBody");
        var lis = this.dom.find(".trRow");
        this.perDom = lis.eq(0).clone();
        this.liLength = lis.length;//当前列表有多少项
        this.index = this.liLength;
        this._fillDefaultData();
        this._showGrid();
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
        //空数据项校验
        var newLiLength = lis.length;
        if(newLiLength > this.liLength){
            for(var m = this.liLength; m < newLiLength; m++){
                lis.eq(m).remove();
            }
        }
        this.index = this.liLength;
        for(var i = 0; i < length; i++){
            var li = lis.eq(i);
            li.find(".assetsOrder").text(array[i].assetsOrder);
            li.find(".assetsCode").text(array[i].assetsCode);
            li.find(".assetsName").text(array[i].assetsName);
            li.find(".deptName").text(array[i].deptName);
            li.find(".ip").text(array[i].ip);
            li.find(".pzjgName").text(array[i].pzjgName);
            li.find(".zcbh").text(array[i].zcbh);
        }
    },
    _showGrid: function(){
        var self = this;
        setTimeout(function(){
            self.trBody.show(500, function(){
            //self.trBody.slideDown(500, function(){
                self.autoRefresh();
            });
        },200);
    },
    _creatNewTrRow: function(){
        var obj = this.data[this.index];
        var perDom = this.perDom.clone();
        perDom.find(".assetsOrder").text(obj.assetsOrder);
        perDom.find(".assetsCode").text(obj.assetsCode);
        perDom.find(".assetsName").text(obj.assetsName);
        perDom.find(".deptName").text(obj.deptName);
        perDom.find(".ip").text(obj.ip);
        perDom.find(".pzjgName").text(obj.pzjgName);
        perDom.find(".zcbh").text(obj.zcbh);
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
            if(self.index == self.data.length - 1){
                self.index = 0;
                setTimeout(function(){
                    self.stopAutoRefresh();
                    var lis = self.trBody.find(".trRow");
                    //self.trBody.slideUp(500, function(){
                    self.trBody.hide(500, function(){
                        lis.find("div").text("");
                        self._fillDefaultData();
                        self._showGrid();
                    });
                }, self.autoRefreshTime);
            }else
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
$.fn.scrollTable = function(data){
    return new ScrollTable($(this), data);
};