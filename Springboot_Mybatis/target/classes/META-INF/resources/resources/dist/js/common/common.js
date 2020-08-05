
//适配
(function(){
    let htmWidth = document.documentElement.clientWidth || document.body.clientWidth;
    let htmlDom = document.getElementsByTagName('html')[0];
    htmlDom.style.fontSize = htmWidth*384/7680 + "px";
    //监听页面的缩放事件 动态改变rem  不用重iphone5切换为iphone6时还得刷新页面
    window.addEventListener('resize', (e) => {
        let htmWidth = document.documentElement.clientWidth || document.body.clientWidth;
        htmlDom.style.fontSize = htmWidth*384/7680 + "px";
    })
})();