// JScript 文件

ldh={
 $:function(o){return typeof o=="string"?document.getElementById(o):o},
 $$:function (o,p){return (p==undefined?document:this.$(p)).getElementsByTagName(o)},
 on:function(o,type,fn){o.attachEvent?o.attachEvent('on'+type,function(){fn.call(o)}):o.addEventListener(type,fn,false);},
 opacity:function(who,x){
  who=this.$(who);
  if(x==undefined){
   if( !!window.ActiveXObject){
    return who.filters.alpha?(who.filters.alpha.opacity/100):1;
   }else{
    var op=who.style.opacity;
    return isNaN(op)?1:op*1;
   }
  }
  who.style.filter="alpha(opacity="+parseInt(x*100)+")";
  who.style.opacity=x;
  return this;
 },
 fadeTo:function(who,x,fn){
  who=this.$(who);
  var fm=this.opacity(who),m=1,r=Math.floor,s=2,v;
  if(fm>x){m=-1;r=Math.ceil;s=1};
  var iFx=function(){return fm=r((fm+m*0.02*s)*100)/100};
  clearInterval(who.opacityTimer);
  who.opacityTimer=setInterval(function (){
   var v=Math.max(0,Math.min(x,iFx()));
   ldh.opacity(who,v);
   if(v==x){
    fn&&fn.call(who);
    clearInterval(who.opacityTimer);
   };
  },13);return this;
 },
 fadeOut:function(who,fn){return this.fadeTo(who,0,fn)},
 fadeIn:function(who,fn){return this.fadeTo(who,1,fn)},
 move:function(who,attr,val,s,fn){
  who=this.$(who);
  var fm=parseInt(who.style[attr])||0;
  var iFx=this.fx(fm,val,s);
  clearInterval(who.moveTimer);
  who.moveTimer=setInterval(function (){
   var v=iFx();
   who.style[attr]=v+'px';
   if(v==val){
    fn&&fn.call(who);
    clearInterval(who.moveTimer);
   };
  },13);return this;
 },
 fx:function(form,to,s){
  var m=Math[form<to?'ceil':'floor'];
  return function (){return form+=m((to-form)*(s||0.13))};
 }
};
try{document.execCommand("BackgroundImageCache", false, true);}catch(e){};//for IE6
shower={
 init:function(setting){
  var ini={box:ldh.$(setting.box),tip:ldh.$(setting.tip),index:0,z:99,list:[]};
  for(var Id in ini)this[Id]=ini[Id];
  var imgs=ldh.$$('img',this.box);
  for (var i=0;i<imgs.length;++i ) {
   this.list.push(imgs[i]);
   imgs[i].style.zIndex=i;
  };
  this.tip.innerHTML=imgs[0].getAttribute('alt');
  this.hideTip();
 },
 show:function(){
  var p2=this.list[this.index++];
  if(this.index==this.list.length)this.index=0;
  ldh.opacity(p2,0);
  p2.style.zIndex=++this.z;
  ldh.fadeIn(p2,function (){
   shower.tip.innerHTML=p2.getAttribute('alt');
   ldh.move(shower.tip,'bottom',0,0.1,function (){
     setTimeout(function(){shower.hideTip()},4000);
   }).opacity(shower.tip,0.8);     
  })
 },
 hideTip:function(){
  shower.show();
  ldh.move(this.tip,'bottom',-100,0.05);
 }
}
ldh.on(window,'load',function (){
 shower.init({
  box:'fx_box',
  tip:'tip'
 });
})

