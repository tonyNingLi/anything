function RunNum(dom, value, setting){
    this.dom = dom;
    this.value = value;
    this.setting = setting || {};
    this.init();
}
RunNum.prototype = {
    init: function(){
        this.dHeight = this.setting.dHeight || 26;
        this.speed = this.setting.speed || 1000;
        this.perTime = this.setting.perTime || 1000;
        this.numSpans = this.dom.find(".numSpan");
        this.totalCount = this.numSpans.length;
        this._setDefaultDom();
        if(this.value)
            this.goValue(this.value);
    },
    _setDefaultDom: function(){
        var dom = this.dom;
        var numSpans = dom.find(".numSpan");
        for(var i = 0; i < numSpans.length; i++){
            var ul = $("<div class='numUl'></div>");
            for(var j = 0; j < 10; j++){
                var li = $("<div class='numLi'>" + j + "</div>");
                ul.append(li);
            }
            numSpans.eq(i).append(ul);
        }
    },
    goValue: function(value){
        value = value.toString();
        if(value.length < this.totalCount){
            var dLength = this.totalCount - value.length;
            for(var k = 0; k < dLength; k++){
                value = "0" + value;
            }
        }
        for(var i = 0; i < this.totalCount; i++){
            var topPx = value[i] * this.dHeight;
            this.numSpans.eq(i).find(".numUl").animate({top: -topPx + 'px'}, this.speed);
        }
    }
};
$.fn.runNum = function(value, setting){
    return new RunNum($(this), value, setting);
};