_jsload&&_jsload('copyrightctrl', 't.extend(ub.prototype,{Id:function(){this.A&&this.Md(this.A)},initialize:function(a){R.prototype.initialize.call(this,a);this.Za();this.vj();this.N(a);return this.B},N:function(a){var b=this;a.addEventListener("load",function(){b.vj()});a.addEventListener("moveend",function(){b.vj()});a.addEventListener("zoomend",function(){b.vj()});a.addEventListener("maptypechange",function(){b.B&&(b.B.style.color=b.A.ha().$l())})},Za:function(){R.prototype.Za.call(this);t.z.Ya(this.B,"BMap_cpyCtrl");var a=this.B.style; a.cursor="default";a.whiteSpace="nowrap";a.MozUserSelect="none";a.color=this.A.ha().$l();a.background="none";a.font="11px/15px "+C.fontFamily;R.prototype.Qn.call(this)},vj:function(){if(this.A&&this.B&&0!=this.eb.length)for(var a=0,b=this.eb.length;a<b;a++){this.A.U();var c=this.A.Sa({x:0,y:0}),d=this.A.Sa({x:this.A.width,y:this.A.height}),c=new Ia(c,d);if(this.eb[a].bounds&&c.az(this.eb[a].bounds)==n){if(this.B)for(d=0;d<this.B.children.length;d++)if(this.B.children[d].getAttribute("_cid")==this.eb[a].id&& "none"!=this.B.children[d].style.display){this.B.children[d].style.display="none";return}}else if(this.B){for(var c=o,d=0,e=this.B.children.length;d<e;d++)if(this.B.children[d].getAttribute("_cid")==this.eb[a].id){c=i;this.B.children[d].style.display="inline";this.B.children[d].innerHTML!=this.eb[a].content&&(this.B.children[d].innerHTML=this.eb[a].content);break}c||this.Sk(this.eb[a])}}},io:function(a){if(a&&Ba(a.id)&&!isNaN(a.id)){var b={bounds:n,content:""},c;for(c in a)b[c]=a[c];if(a=this.ui(a.id))for(var d in b)a[d]= b[d];else this.eb.push(b);this.vj()}},ui:function(a){for(var b=0,c=this.eb.length;b<c;b++)if(this.eb[b].id==a)return this.eb[b]},Ws:s("eb"),ku:function(a){for(var b,c=0,d=this.eb.length;c<d;c++)this.eb[c].id==a&&(b=this.eb.splice(c,1),c--,d=this.eb.length);(a=this.hd(a))&&a.parentNode&&a.parentNode.removeChild(a);this.vj();return b},Sk:function(a){this.B&&(this.B.innerHTML+="<span _cid=\'"+a.id+"\'>"+a.content+"</span>")},hd:function(a){var b=R.prototype.hd.call(this);if(hb(a)){if(b)for(var c=0,d=b.children.length;c< d;c++)if(b.children[c].getAttribute("_cid")==a)return b.children[c]}else return b}});W(jd,{addCopyright:jd.io,removeCopyright:jd.ku,getCopyright:jd.ui,getCopyrightCollection:jd.Ws}); ');
