let host="http://127.0.0.1:3000/";


//获取url中的参数
function GetQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return unescape(r[2]); return null;
}

//获取元素的纵坐标（相对于窗口）
function getTop(e){
  var offset=e.offsetTop;
  if(e.offsetParent!=null) offset+=getTop(e.offsetParent);
  return offset;
}
//获取元素的横坐标（相对于窗口）
function getLeft(e){
  var offset=e.offsetLeft;
  if(e.offsetParent!=null) offset+=getLeft(e.offsetParent);
  return offset;
}


//适配
(function(){
    let htmWidth = document.documentElement.clientWidth || document.body.clientWidth;
    let htmlDom = document.getElementsByTagName('html')[0];
    htmlDom.style.fontSize = htmWidth*96/1920 + "px";
    //监听页面的缩放事件 动态改变rem  不用重iphone5切换为iphone6时还得刷新页面
    window.addEventListener('resize', (e) => {
        let htmWidth = document.documentElement.clientWidth || document.body.clientWidth;
        htmlDom.style.fontSize = htmWidth*96/1920 + "px";
    })
})();


function getDepartName(list,callback){
    $.ajax({
        url: window.location.origin+"/SjwProject/zdsbgl/getZdsbgzDate",
        data: {
        },
		async:false,
        success: function (res) {
            var data = JSON.parse(res);
            console.log('wjgzdxx',data);
            for(var i = 0; i < data.rows.length; i++){
                for(var j = 0 ; j < list.length; j++){
                    if(data.rows[i].status == '开机'){
                        if(data.rows[i].adepartName == list[j].name){
                            list[j].isRed = true;
                            if(list[j].ip!=null && list[j].ip !='' && typeof (list[j].ip) !='undefined'){
                                list[i].ip = list[i].ip+','+data.rows[i].IP;
                            }else{
                                list[i].ip = data.rows[i].IP;
                            }
                        }
                    }
                }
            }
            console.log('list',list);
            return list;
        }
    })
}




