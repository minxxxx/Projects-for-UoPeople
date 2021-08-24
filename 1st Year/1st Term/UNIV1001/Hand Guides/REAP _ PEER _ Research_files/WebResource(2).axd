if(typeof window.RadControlsNamespace=="undefined"){
window.RadControlsNamespace={};
}
if(typeof (window.RadControlsNamespace.Box)=="undefined"||typeof (window.RadControlsNamespace.Box.Version)==null||window.RadControlsNamespace.Box.Version<2){
window.RadControlsNamespace.Box={Version:2,GetOuterWidth:function(_1){
return _1.offsetWidth;
},GetOuterHeight:function(_2){
return _2.offsetHeight;
},SetOuterHeight:function(_3,_4){
if(_4<=0||_4==""){
_3.style.height="";
}else{
_3.style.height=_4+"px";
var _5=_3.offsetHeight-_4;
var _6=_4-_5;
if(_6>0){
_3.style.height=_6+"px";
}else{
_3.style.height="";
}
}
},SetOuterWidth:function(_7,_8){
if(_8<=0||_8==""){
_7.style.width="";
}else{
_7.style.width=_8+"px";
var _9=_7.offsetWidth-_8;
var _a=_8-_9;
if(_a>0){
_7.style.width=_a+"px";
}else{
_7.style.width="";
}
return _a;
}
},GetPropertyValue:function(_b,_c){
var _d=this.GetStyle(_b);
return this.GetStyleValues(_d,_c);
},GetStyle:function(_e){
if(document.defaultView&&document.defaultView.getComputedStyle){
return document.defaultView.getComputedStyle(_e,null);
}else{
if(_e.currentStyle){
return _e.currentStyle;
}else{
return _e.style;
}
}
}};
};if(typeof window.RadControlsNamespace=="undefined"){
window.RadControlsNamespace={};
}
if(typeof (window.RadControlsNamespace.Browser)=="undefined"||typeof (window.RadControlsNamespace.Browser.Version)==null||window.RadControlsNamespace.Browser.Version<1){
window.RadControlsNamespace.Browser={Version:1};
window.RadControlsNamespace.Browser.ParseBrowserInfo=function(){
this.IsMacIE=(navigator.appName=="Microsoft Internet Explorer")&&((navigator.userAgent.toLowerCase().indexOf("mac")!=-1)||(navigator.appVersion.toLowerCase().indexOf("mac")!=-1));
this.IsSafari=(navigator.userAgent.toLowerCase().indexOf("safari")!=-1);
this.IsSafari3=(this.IsSafari&&navigator.userAgent.toLowerCase().indexOf("ersion/3.")!=-1);
this.IsMozilla=window.netscape&&!window.opera;
this.IsFirefox=window.netscape&&!window.opera;
this.IsNetscape=/Netscape/.test(navigator.userAgent);
this.IsOpera=window.opera;
this.IsOpera9=window.opera&&(parseInt(window.opera.version())>8);
this.IsIE=!this.IsMacIE&&!this.IsMozilla&&!this.IsOpera&&!this.IsSafari;
this.IsIE7=/MSIE 7/.test(navigator.appVersion);
this.StandardsMode=this.IsSafari||this.IsOpera9||this.IsMozilla||document.compatMode=="CSS1Compat";
this.IsMac=/Mac/.test(navigator.userAgent);
};
RadControlsNamespace.Browser.ParseBrowserInfo();
};if(typeof window.RadControlsNamespace=="undefined"){
window.RadControlsNamespace={};
}
if(typeof (window.RadControlsNamespace.DomEventMixin)=="undefined"||typeof (window.RadControlsNamespace.DomEventMixin.Version)==null||window.RadControlsNamespace.DomEventMixin.Version<3){
RadControlsNamespace.DomEventMixin={Version:3,Initialize:function(_1){
_1.CreateEventHandler=this.CreateEventHandler;
_1.AttachDomEvent=this.AttachDomEvent;
_1.DetachDomEvent=this.DetachDomEvent;
_1.DisposeDomEventHandlers=this.DisposeDomEventHandlers;
_1._domEventHandlingEnabled=true;
_1.EnableDomEventHandling=this.EnableDomEventHandling;
_1.DisableDomEventHandling=this.DisableDomEventHandling;
_1.RemoveHandlerRegister=this.RemoveHandlerRegister;
_1.GetHandlerRegister=this.GetHandlerRegister;
_1.AddHandlerRegister=this.AddHandlerRegister;
_1.handlerRegisters=[];
},EnableDomEventHandling:function(){
this._domEventHandlingEnabled=true;
},DisableDomEventHandling:function(){
this._domEventHandlingEnabled=false;
},CreateEventHandler:function(_2,_3){
var _4=this;
return function(e){
if(!_4._domEventHandlingEnabled&&!_3){
return;
}
return _4[_2](e||window.event);
};
},AttachDomEvent:function(_6,_7,_8,_9){
var _a=this.CreateEventHandler(_8,_9);
var _b=this.GetHandlerRegister(_6,_7,_8);
if(_b!=null){
this.DetachDomEvent(_b.Element,_b.EventName,_8);
}
var _c={"Element":_6,"EventName":_7,"HandlerName":_8,"Handler":_a};
this.AddHandlerRegister(_c);
if(_6.addEventListener){
_6.addEventListener(_7,_a,false);
}else{
if(_6.attachEvent){
_6.attachEvent("on"+_7,_a);
}
}
},DetachDomEvent:function(_d,_e,_f){
var _10=null;
var _11="";
if(typeof _f=="string"){
_11=_f;
_10=this.GetHandlerRegister(_d,_e,_11);
if(_10==null){
return;
}
_f=_10.Handler;
}
if(!_d){
return;
}
if(_d.removeEventListener){
_d.removeEventListener(_e,_f,false);
}else{
if(_d.detachEvent){
_d.detachEvent("on"+_e,_f);
}
}
if(_10!=null&&_11!=""){
this.RemoveHandlerRegister(_10);
_10=null;
}
},DisposeDomEventHandlers:function(){
for(var i=0;i<this.handlerRegisters.length;i++){
var _13=this.handlerRegisters[i];
if(_13!=null){
this.DetachDomEvent(_13.Element,_13.EventName,_13.Handler);
}
}
this.handlerRegisters=[];
},RemoveHandlerRegister:function(_14){
try{
var _15=_14.index;
for(var i in _14){
_14[i]=null;
}
this.handlerRegisters[_15]=null;
}
catch(e){
}
},GetHandlerRegister:function(_17,_18,_19){
for(var i=0;i<this.handlerRegisters.length;i++){
var _1b=this.handlerRegisters[i];
if(_1b!=null&&_1b.Element==_17&&_1b.EventName==_18&&_1b.HandlerName==_19){
return this.handlerRegisters[i];
}
}
return null;
},AddHandlerRegister:function(_1c){
_1c.index=this.handlerRegisters.length;
this.handlerRegisters[this.handlerRegisters.length]=_1c;
}};
RadControlsNamespace.DomEvent={};
RadControlsNamespace.DomEvent.PreventDefault=function(e){
if(!e){
return true;
}
if(e.preventDefault){
e.preventDefault();
}
e.returnValue=false;
return false;
};
RadControlsNamespace.DomEvent.StopPropagation=function(e){
if(!e){
return;
}
if(e.stopPropagation){
e.stopPropagation();
}else{
e.cancelBubble=true;
}
};
RadControlsNamespace.DomEvent.GetTarget=function(e){
if(!e){
return null;
}
return e.target||e.srcElement;
};
RadControlsNamespace.DomEvent.GetRelatedTarget=function(e){
if(!e){
return null;
}
return e.relatedTarget||(e.type=="mouseout"?e.toElement:e.fromElement);
};
RadControlsNamespace.DomEvent.GetKeyCode=function(e){
if(!e){
return 0;
}
return e.which||e.keyCode;
};
};if(typeof window.RadControlsNamespace=="undefined"){
window.RadControlsNamespace={};
}
if(typeof (window.RadControlsNamespace.Ease)=="undefined"||typeof (window.RadControlsNamespace.Ease.Version)==null||window.RadControlsNamespace.Ease.Version<1.3){
RadControlsNamespace.Ease=function(_1,_2,_3,_4,_5,_6){
this.Element=_1;
if(_6){
this.Overlay=new RadControlsNamespace.Overlay(_1);
}
this.OffsetX=_3;
this.OffsetY=_4;
this.Invert=false;
var _7=this.Element.parentNode;
this.ExpandConfig=this.MergeConfig(_2.ExpandAnimation);
this.CollapseConfig=this.MergeConfig(_2.CollapseAnimation);
this.Ticker=new RadControlsNamespace.Ticker(this);
this.Listener=_5;
this.SlideParent=false;
};
RadControlsNamespace.Ease.Version=1.3;
RadControlsNamespace.Ease.Coef=0;
RadControlsNamespace.Ease.prototype={SetSide:function(_8){
this.InitialSide=_8.charAt(0).toUpperCase()+_8.substr(1,_8.length-1);
this.Invert=false;
if(_8=="right"){
_8="left";
this.Invert=true;
}
if(_8=="bottom"){
_8="top";
this.Invert=true;
}
this.Side=_8;
this.Horizontal=_8=="left";
},MergeConfig:function(_9){
if(!_9.Type){
_9.Type="OutQuint";
}
if(!_9.Duration){
_9.Duration=200;
}
return _9;
},GetSide:function(){
return this.InitialSide;
},ShowElements:function(){
if(!this.Element.parentNode){
return;
}
if(!this.Element.parentNode.style){
return;
}
this.Element.parentNode.style.display="block";
this.Element.style.display="block";
this.Element.parentNode.style.overflow="hidden";
},Dispose:function(){
this.Ticker.Stop();
this.Element=null;
if(this.Overlay){
this.Overlay.Dispose();
}
},ResetState:function(_a){
this.ShowElements();
if(_a){
var _b=(this.Horizontal?this.Element.offsetWidth:this.Element.offsetHeight);
if(!this.Invert){
_b=-_b;
}
this.SetPosition(_b);
}
this.InitialPosition=this.GetPosition();
},UpdateContainerSize:function(){
if(!this.Element.parentNode){
return;
}
if(!this.Element.offsetWidth||!this.Element.offsetHeight){
return;
}
if(this.Invert){
if(this.Side=="left"){
this.Element.parentNode.style.height=this.Element.offsetHeight+"px";
}else{
if(this.Side=="top"){
this.Element.parentNode.style.width=this.Element.offsetWidth+"px";
}
}
return;
}
var _c=0;
var _d=0;
if(this.Element.style.top!=""){
_c=Math.max(parseInt(this.Element.style.top),0);
}
if(this.Element.style.left!=""){
_d=Math.max(parseInt(this.Element.style.left),0);
}
if(this.SlideParent){
_c=parseInt(this.Element.style.top);
if(isNaN(_c)){
_c=0;
}
}
if(typeof (RadMenuItem)!="undefined"&&this.Listener instanceof RadMenuItem){
if(this.Element.parentNode.style.height!=this.Element.offsetHeight+_c+"px"){
this.Element.parentNode.style.height=Math.max(this.Element.offsetHeight+_c,0)+"px";
}
if(this.Element.parentNode.style.width!=(this.Element.offsetWidth+_d)+"px"){
this.Element.parentNode.style.width=Math.max(this.Element.offsetWidth+_d,0)+"px";
}
}else{
if(this.Element.parentNode.offsetHeight!=this.Element.offsetHeight+_c){
this.Element.parentNode.style.height=Math.max(this.Element.offsetHeight+_c,0)+"px";
}
if(this.Element.parentNode.offsetWidth!=(this.Element.offsetWidth+_d)){
this.Element.parentNode.style.width=Math.max(this.Element.offsetWidth+_d,0)+"px";
}
}
},GetSize:function(){
return this.Horizontal?this.Element.offsetWidth:this.Element.offsetHeight;
},GetPosition:function(){
if(!this.Element.style[this.Side]){
return 0;
}
return parseInt(this.Element.style[this.Side]);
},SetPosition:function(_e){
this.Element.style[this.Side]=_e+"px";
},Out:function(){
this.ResetState();
this.Direction=-1;
if(this.Invert){
this.Delta=this.GetSize()-this.GetPosition();
}else{
this.Delta=this.GetPosition()-this.GetSize();
}
this.Start(this.CollapseConfig);
},In:function(){
this.ResetState(true);
this.Direction=1;
this.Delta=-this.GetPosition();
this.Start(this.ExpandConfig);
},Start:function(_f){
if(_f.Type=="None"){
this.UpdateContainerSize();
this.Ticker.Stop();
this.ChangePosition(this.InitialPosition+this.Delta);
if(this.Overlay){
this.Overlay.Update();
}
this.UpdateContainerSize();
this.OnTickEnd();
return;
}
this.Tween=_f.Type;
this.Ticker.Configure(_f);
this.Ticker.Start();
this.UpdateContainerSize();
},ChangePosition:function(_10){
if(isNaN(_10)){
return;
}
var _11,_12,_13;
if(this.Invert){
if(this.Horizontal){
_11=this.Element.offsetWidth;
_12="width";
_13=this.OffsetX;
}else{
_11=this.Element.offsetHeight;
_12="height";
_13=this.OffsetY;
}
this.SetPosition(0);
var _14=Math.max(1,_11-_10)+"px";
this.Element.parentNode.style[_12]=_14;
this.Element.parentNode.style[this.Side]=((_11-_10+_13)*-1)+"px";
}else{
this.Element.style[this.Side]=_10+"px";
}
if(this.Listener&&this.Listener.OnEase){
this.Listener.OnEase(_10);
}
},OnTick:function(_15){
var _16=Math.round(Penner[this.Tween](_15,this.InitialPosition,this.Delta,this.Ticker.Duration));
if(_16==this.InitialPosition+this.Delta){
this.Ticker.Stop();
return;
}
this.ChangePosition(_16);
this.UpdateContainerSize();
if(this.Overlay){
this.Overlay.Update();
}
},OnTickEnd:function(){
try{
if(this.Direction==0){
return;
}
this.ChangePosition(this.InitialPosition+this.Delta);
if(this.Overlay){
this.Overlay.Update();
}
if(this.Direction>0){
this.Element.parentNode.style.overflow="visible";
if(this.Listener&&this.Listener.OnExpandComplete){
this.Listener.OnExpandComplete();
}
}else{
this.Element.parentNode.style.display="none";
if(this.Listener){
this.Listener.OnCollapseComplete();
}
}
this.Direction=0;
}
catch(e){
}
}};
};var Penner={};
Penner.Linear=function(t,b,c,d){
return c*t/d+b;
};
Penner.InQuad=function(t,b,c,d){
return c*(t/=d)*t+b;
};
Penner.OutQuad=function(t,b,c,d){
return -c*(t/=d)*(t-2)+b;
};
Penner.InOutQuad=function(t,b,c,d){
if((t/=d/2)<1){
return c/2*t*t+b;
}
return -c/2*((--t)*(t-2)-1)+b;
};
Penner.InCubic=function(t,b,c,d){
return c*(t/=d)*t*t+b;
};
Penner.OutCubic=function(t,b,c,d){
return c*((t=t/d-1)*t*t+1)+b;
};
Penner.InOutCubic=function(t,b,c,d){
if((t/=d/2)<1){
return c/2*t*t*t+b;
}
return c/2*((t-=2)*t*t+2)+b;
};
Penner.InQuart=function(t,b,c,d){
return c*(t/=d)*t*t*t+b;
};
Penner.OutQuart=function(t,b,c,d){
return -c*((t=t/d-1)*t*t*t-1)+b;
};
Penner.InOutQuart=function(t,b,c,d){
if((t/=d/2)<1){
return c/2*t*t*t*t+b;
}
return -c/2*((t-=2)*t*t*t-2)+b;
};
Penner.InQuint=function(t,b,c,d){
return c*(t/=d)*t*t*t*t+b;
};
Penner.OutQuint=function(t,b,c,d){
return c*((t=t/d-1)*t*t*t*t+1)+b;
};
Penner.InOutQuint=function(t,b,c,d){
if((t/=d/2)<1){
return c/2*t*t*t*t*t+b;
}
return c/2*((t-=2)*t*t*t*t+2)+b;
};
Penner.InSine=function(t,b,c,d){
return -c*Math.cos(t/d*(Math.PI/2))+c+b;
};
Penner.OutSine=function(t,b,c,d){
return c*Math.sin(t/d*(Math.PI/2))+b;
};
Penner.InOutSine=function(t,b,c,d){
return -c/2*(Math.cos(Math.PI*t/d)-1)+b;
};
Penner.InExpo=function(t,b,c,d){
return (t==0)?b:c*Math.pow(2,10*(t/d-1))+b;
};
Penner.OutExpo=function(t,b,c,d){
return (t==d)?b+c:c*(-Math.pow(2,-10*t/d)+1)+b;
};
Penner.InOutExpo=function(t,b,c,d){
if(t==0){
return b;
}
if(t==d){
return b+c;
}
if((t/=d/2)<1){
return c/2*Math.pow(2,10*(t-1))+b;
}
return c/2*(-Math.pow(2,-10*--t)+2)+b;
};
Penner.InCirc=function(t,b,c,d){
return -c*(Math.sqrt(1-(t/=d)*t)-1)+b;
};
Penner.OutCirc=function(t,b,c,d){
return c*Math.sqrt(1-(t=t/d-1)*t)+b;
};
Penner.InOutCirc=function(t,b,c,d){
if((t/=d/2)<1){
return -c/2*(Math.sqrt(1-t*t)-1)+b;
}
return c/2*(Math.sqrt(1-(t-=2)*t)+1)+b;
};
Penner.InElastic=function(t,b,c,d,a,p){
if(t==0){
return b;
}
if((t/=d)==1){
return b+c;
}
if(!p){
p=d*0.3;
}
if((!a)||a<Math.abs(c)){
a=c;
var s=p/4;
}else{
var s=p/(2*Math.PI)*Math.asin(c/a);
}
return -(a*Math.pow(2,10*(t-=1))*Math.sin((t*d-s)*(2*Math.PI)/p))+b;
};
Penner.OutElastic=function(t,b,c,d,a,p){
if(t==0){
return b;
}
if((t/=d)==1){
return b+c;
}
if(!p){
p=d*0.3;
}
if((!a)||a<Math.abs(c)){
a=c;
var s=p/4;
}else{
var s=p/(2*Math.PI)*Math.asin(c/a);
}
return a*Math.pow(2,-10*t)*Math.sin((t*d-s)*(2*Math.PI)/p)+c+b;
};
Penner.InOutElastic=function(t,b,c,d,a,p){
if(t==0){
return b;
}
if((t/=d/2)==2){
return b+c;
}
if(!p){
p=d*(0.3*1.5);
}
if((!a)||a<Math.abs(c)){
a=c;
var s=p/4;
}else{
var s=p/(2*Math.PI)*Math.asin(c/a);
}
if(t<1){
return -0.5*(a*Math.pow(2,10*(t-=1))*Math.sin((t*d-s)*(2*Math.PI)/p))+b;
}
return a*Math.pow(2,-10*(t-=1))*Math.sin((t*d-s)*(2*Math.PI)/p)*0.5+c+b;
};
Penner.InBack=function(t,b,c,d,s){
if(s==undefined){
s=1.70158;
}
return c*(t/=d)*t*((s+1)*t-s)+b;
};
Penner.OutBack=function(t,b,c,d,s){
if(s==undefined){
s=1.70158;
}
return c*((t=t/d-1)*t*((s+1)*t+s)+1)+b;
};
Penner.InOutBack=function(t,b,c,d,s){
if(s==undefined){
s=1.70158;
}
if((t/=d/2)<1){
return c/2*(t*t*(((s*=(1.525))+1)*t-s))+b;
}
return c/2*((t-=2)*t*(((s*=(1.525))+1)*t+s)+2)+b;
};
Penner.InBounce=function(t,b,c,d){
return c-Penner.OutBounce(d-t,0,c,d)+b;
};
Penner.OutBounce=function(t,b,c,d){
if((t/=d)<(1/2.75)){
return c*(7.5625*t*t)+b;
}else{
if(t<(2/2.75)){
return c*(7.5625*(t-=(1.5/2.75))*t+0.75)+b;
}else{
if(t<(2.5/2.75)){
return c*(7.5625*(t-=(2.25/2.75))*t+0.9375)+b;
}else{
return c*(7.5625*(t-=(2.625/2.75))*t+0.984375)+b;
}
}
}
};
Penner.InOutBounce=function(t,b,c,d){
if(t<d/2){
return Penner.InBounce(t*2,0,c,d)*0.5+b;
}
return Penner.OutBounce(t*2-d,0,c,d)*0.5+c*0.5+b;
};;if(typeof window.RadControlsNamespace=="undefined"){
window.RadControlsNamespace={};
}
if(typeof (window.RadControlsNamespace.EventMixin)=="undefined"||typeof (window.RadControlsNamespace.EventMixin.Version)==null||window.RadControlsNamespace.EventMixin.Version<2){
RadControlsNamespace.EventMixin={Version:2,Initialize:function(_1){
_1._listeners={};
_1._eventsEnabled=true;
_1.AttachEvent=this.AttachEvent;
_1.DetachEvent=this.DetachEvent;
_1.RaiseEvent=this.RaiseEvent;
_1.EnableEvents=this.EnableEvents;
_1.DisableEvents=this.DisableEvents;
_1.DisposeEventHandlers=this.DisposeEventHandlers;
},DisableEvents:function(){
this._eventsEnabled=false;
},EnableEvents:function(){
this._eventsEnabled=true;
},AttachEvent:function(_2,_3){
if(!this._listeners[_2]){
this._listeners[_2]=[];
}
this._listeners[_2][this._listeners[_2].length]=(RadControlsNamespace.EventMixin.ResolveFunction(_3));
},DetachEvent:function(_4,_5){
var _6=this._listeners[_4];
if(!_6){
return false;
}
var _7=RadControlsNamespace.EventMixin.ResolveFunction(_5);
for(var i=0;i<_6.length;i++){
if(_7==_6[i]){
_6.splice(i,1);
return true;
}
}
return false;
},DisposeEventHandlers:function(){
for(var _9 in this._listeners){
var _a=null;
if(this._listeners.hasOwnProperty(_9)){
_a=this._listeners[_9];
for(var i=0;i<_a.length;i++){
_a[i]=null;
}
_a=null;
}
}
},ResolveFunction:function(_c){
if(typeof (_c)=="function"){
return _c;
}else{
if(typeof (window[_c])=="function"){
return window[_c];
}else{
return new Function("var Sender = arguments[0]; var Arguments = arguments[1];"+_c);
}
}
},RaiseEvent:function(_d,_e){
if(!this._eventsEnabled){
return true;
}
var _f=true;
if(this[_d]){
var _10=RadControlsNamespace.EventMixin.ResolveFunction(this[_d])(this,_e);
if(typeof (_10)=="undefined"){
_10=true;
}
_f=_f&&_10;
}
if(!this._listeners[_d]){
return _f;
}
for(var i=0;i<this._listeners[_d].length;i++){
var _12=this._listeners[_d][i];
var _10=_12(this,_e);
if(typeof (_10)=="undefined"){
_10=true;
}
_f=_f&&_10;
}
return _f;
}};
};if(typeof window.RadControlsNamespace=="undefined"){
window.RadControlsNamespace={};
}
if(typeof (window.RadControlsNamespace.JSON)=="undefined"||typeof (window.RadControlsNamespace.JSON.Version)==null||window.RadControlsNamespace.JSON.Version<1){
window.RadControlsNamespace.JSON={Version:1,copyright:"(c)2005 JSON.org",license:"http://www.crockford.com/JSON/license.html",stringify:function(v,_2){
var a=[];
var _4=arguments[2]||{};
function e(s){
a[a.length]=s;
}
function g(x){
var c,i,l,v;
switch(typeof x){
case "object":
if(x){
if(x instanceof Array){
e("[");
l=a.length;
for(i=0;i<x.length;i+=1){
v=x[i];
if(typeof v!="undefined"&&typeof v!="function"){
if(l<a.length){
e(",");
}
g(v);
}
}
e("]");
return "";
}else{
if(typeof x.valueOf=="function"){
e("{");
l=a.length;
for(i in x){
v=x[i];
if(_2&&v==_2[i]){
continue;
}
var _a=typeof v;
if(_a=="undefined"||_a=="function"){
continue;
}
if(_a=="object"&&!_4[i]){
continue;
}
if(l<a.length){
e(",");
}
g(i);
e(":");
g(v);
}
return e("}");
}
}
}
e("null");
return "";
case "number":
e(isFinite(x)?+x:"null");
return "";
case "string":
l=x.length;
e("\"");
for(i=0;i<l;i+=1){
c=x.charAt(i);
if(c>=" "){
if(c=="\\"||c=="\""){
e("\\");
}
e(c);
}else{
switch(c){
case "\b":
e("\\b");
break;
case "\f":
e("\\f");
break;
case "\n":
e("\\n");
break;
case "\r":
e("\\r");
break;
case "\t":
e("\\t");
break;
default:
c=c.charCodeAt();
e("\\u00"+Math.floor(c/16).toString(16)+(c%16).toString(16));
}
}
}
e("\"");
return "";
case "boolean":
e(String(x));
return "";
default:
e("null");
return "";
}
}
g(v,0);
return a.join("");
},stringifyHashTable:function(_b,_c,_d){
var a=[];
if(!_d){
_d=[];
}
for(var i=0;i<_b.length;i++){
var ser=this.stringify(_b[i],_d[i]);
if(ser=="{}"){
continue;
}
a[a.length]="\""+_b[i][_c]+"\":"+ser;
}
return "{"+a.join(",")+"}";
},parse:function(_11){
return (/^([ \t\r\n,:{}\[\]]|"(\\["\\\/bfnrtu]|[^\x00-\x1f"\\]+)*"|-?\d+(\.\d*)?([eE][+-]?\d+)?|true|false|null)+$/.test(_11))&&eval("("+_11+")");
}};
};if(typeof window.RadControlsNamespace=="undefined"){
window.RadControlsNamespace={};
}
if(typeof (window.RadControlsNamespace.MsAjaxMixin)=="undefined"||typeof (window.RadControlsNamespace.MsAjaxMixin.Version)==null||window.RadControlsNamespace.MsAjaxMixin.Version<1){
RadControlsNamespace.MsAjaxMixin={Version:1,Initialize:function(_1,_2){
if(typeof (_1.registerClass)!="function"){
return;
}
_1.inheritsFrom(Sys.UI.Control);
_1.registerClass(_2,Sys.UI.Control,Sys.IDisposable);
_1.prototype.initialize=function(){
Sys.UI.Control.callBaseMethod(this,"initialize");
};
_1.prototype.dispose=function(){
Sys.UI.Control.callBaseMethod(this,"dispose");
this.Dispose();
};
}};
};if(typeof window.RadControlsNamespace=="undefined"){
window.RadControlsNamespace={};
}
if(typeof (window.RadControlsNamespace.Overlay)=="undefined"||typeof (window.RadControlsNamespace.Overlay.Version)==null||window.RadControlsNamespace.Overlay.Version<1.2){
window.RadControlsNamespace.Overlay=function(_1){
if(!this.SupportsOverlay()){
return;
}
this.Element=_1;
var _2=document.createElement("div");
_2.innerHTML="<iframe>Your browser does not support inline frames or is currently configured not to display inline frames.</iframe>";
this.Shim=_2.firstChild;
this.Shim.src="javascript:'';";
this.Element.parentNode.insertBefore(this.Shim,this.Element);
if(_1.style.zIndex>0){
this.Shim.style.zIndex=_1.style.zIndex-1;
}
this.Shim.style.position="absolute";
this.Shim.style.border="0px";
this.Shim.frameBorder=0;
this.Shim.tabIndex=-1;
this.Shim.style.filter="progid:DXImageTransform.Microsoft.Alpha(style=0,opacity=0)";
};
window.RadControlsNamespace.Overlay.Version=1.2;
RadControlsNamespace.Overlay.prototype.SupportsOverlay=function(){
return (RadControlsNamespace.Browser.IsIE);
};
RadControlsNamespace.Overlay.prototype.Update=function(){
if(!this.SupportsOverlay()){
return;
}
this.Shim.style.top=this.ToUnit(this.Element.style.top);
this.Shim.style.left=this.ToUnit(this.Element.style.left);
this.Shim.style.width=this.Element.offsetWidth+"px";
this.Shim.style.height=this.Element.offsetHeight+"px";
};
RadControlsNamespace.Overlay.prototype.ToUnit=function(_3){
if(!_3){
return "0px";
}
return parseInt(_3)+"px";
};
RadControlsNamespace.Overlay.prototype.Dispose=function(){
if(!this.SupportsOverlay()){
return;
}
if(this.Shim.parentNode){
this.Shim.parentNode.removeChild(this.Shim);
}
this.Element=null;
this.Shim=null;
};
};if(typeof window.RadMenuNamespace=="undefined"){
window.RadMenuNamespace={};
}
if(typeof window.RadControlsNamespace=="undefined"){
window.RadControlsNamespace={};
}
RadControlsNamespace.AppendStyleSheet=function(_1,_2,_3){
if(!_3){
return;
}
var _4=window.netscape&&!window.opera;
if(!_1&&_4){
document.write("<"+"link"+" rel='stylesheet' type='text/css' href='"+_3+"' />");
}else{
var _5=document.createElement("link");
_5.rel="stylesheet";
_5.type="text/css";
_5.href=_3;
document.getElementsByTagName("head")[0].appendChild(_5);
}
};
RadMenuNamespace.ItemFlow={Vertical:0,Horizontal:1};
RadMenuNamespace.ExpandDirection={Auto:0,Up:1,Down:2,Left:3,Right:4};
RadMenuNamespace.ExpandDirectionPropertyName={"1":"bottom","2":"top","3":"right","4":"left"};
function RadMenu(_6){
this.DomElement=_6;
this.ChildItemList=this.DomElement.getElementsByTagName("ul")[0];
this.StateField=document.getElementById(_6.id+"_Hidden");
this.Items=[];
this.AllItems=[];
this.OpenedItem=null;
this.LastExpandedItem=null;
this.ExpandAnimation={};
this.CollapseAnimation={};
this.CollapseDelay=500;
this.ExpandDelay=100;
this.ID=_6.id;
this.Skin="Default";
this.RightToLeft=false;
this.EnableScreenBoundaryDetection=true;
this.InUpdate=false;
this.Initialized=false;
this.State={};
this.ItemState={};
this.CausesValidation=true;
this.Flow=RadMenuNamespace.ItemFlow.Horizontal;
this.ClickToOpen=false;
this.Enabled=true;
this.EnableAutoScroll=false;
this.Clicked=false;
this.OriginalZIndex=this.DomElement.style.zIndex;
this.StateFieldDetached=false;
this.Attributes={};
RadControlsNamespace.EventMixin.Initialize(this);
RadControlsNamespace.DomEventMixin.Initialize(this);
}
RadMenu.Create=function(){
var _7=arguments[0];
var _8=window[_7];
if(_8!=null&&_8.Dispose){
_8.Dispose();
}
var _9=document.getElementById(_7);
return new this(_9);
};
RadMenu.JSONIncludeDeep={"Attributes":true};
RadMenu.CreateState=function(_a){
_a.InitialState={};
for(var i in _a){
var _c=typeof _a[i];
if(_c=="number"||_c=="string"||_c=="boolean"){
_a.InitialState[i]=_a[i];
}
}
};
RadMenu.GetFirstChildByTagName=function(_d,_e){
var _f=_d.getElementsByTagName(_e)[0];
if(_f&&_f.parentNode==_d){
return _f;
}
return null;
};
RadMenu.prototype.RenderInProgress=function(){
return this.DomElement.offsetWidth==0&&RadControlsNamespace.Browser.IsIE;
};
RadMenu.prototype.Detach=function(e){
if(!(RadControlsNamespace.Browser.IsIE)||document.readyState=="complete"){
if(!this.StateFieldDetached){
var _11=this.DomElement.parentNode;
this.StateField.parentNode.removeChild(this.StateField);
_11.insertBefore(this.StateField,this.DomElement);
this.StateFieldDetached=true;
}
this.DomElement.parentNode.removeChild(this.DomElement);
document.forms[0].insertBefore(this.DomElement,document.forms[0].firstChild);
this.DomElement.style.position="absolute";
this.Detached=true;
}
};
RadMenu.prototype.ReAttach=function(e){
if(!(RadControlsNamespace.Browser.IsIE)||document.readyState=="complete"){
this.DomElement.parentNode.removeChild(this.DomElement);
this.StateField.parentNode.insertBefore(this.DomElement,this.StateField);
this.Detached=false;
}
};
RadMenu.prototype.Show=function(e){
if(!this.IsContext){
return;
}
if(!this.RaiseEvent("OnClientContextShowing")){
return RadControlsNamespace.DomEvent.PreventDefault(e);
}
for(var i in RadMenuNamespace.ContextMenus){
if(typeof (RadMenuNamespace.ContextMenus[i].Hide)!="undefined"){
RadMenuNamespace.ContextMenus[i].Hide();
}
}
var x=this.MouseEventX(e);
var y=this.MouseEventY(e);
if(this.RightToLeft){
this.ShowAt(x,y);
return this.ShowAt(x-this.ChildItemList.offsetWidth,y);
}
return this.ShowAt(x,y);
};
RadMenu.prototype.CreateRuntimeScroll=function(_17){
if(this.Scroll){
this.Scroll.SetHeight(_17);
return;
}
this.BuildScrollObject(true);
this.Scroll.Initialize();
this.ScrollWrap=this.ChildItemList.parentNode;
this.Ease.Element=this.ScrollWrap;
this.Ease.Overlay.Element=this.ScrollWrap;
this.ScrollWrap.className="scrollWrap "+this.ChildItemList.className;
this.ChildItemList.className="active vertical";
this.Scroll.SetHeight(_17);
};
RadMenu.prototype.ShowAt=function(x,y){
if(!this.IsContext){
return;
}
if(!this.Detached){
this.Detach();
}
this.ShownAsContext=true;
this.Ease.ShowElements();
var _1a=RadControlsNamespace.Screen.GetViewPortSize();
if(this.EnableAutoScroll&&y+this.ChildItemList.offsetHeight>_1a.height){
this.Ease.ShowElements();
this.Ease.UpdateContainerSize();
this.CreateRuntimeScroll(_1a.height-y+"px");
}
if(this.ScrollWrap){
this.ScrollWrap.style.width=this.ChildItemList.offsetWidth+"px";
this.Scroll.Initialize();
}
this.Ease.UpdateContainerSize();
if(!this.WidthFixed){
this.WidthFixed=true;
this.FixItemWidth(this);
}
this.Position(x,y);
this.Ease.In();
this.RaiseEvent("OnClientContextShown",null);
return false;
};
RadMenu.prototype.Position=function(x,y){
var _1d=RadControlsNamespace.Screen.GetViewPortSize();
x=Math.min(x,_1d.width-this.DomElement.offsetWidth);
y=Math.min(y,_1d.height-this.DomElement.offsetHeight);
if(isNaN(x)){
x=0;
}
if(isNaN(y)){
y=0;
}
this.DomElement.style.left=x+"px";
this.DomElement.style.top=y+"px";
};
RadMenu.prototype.MouseEventX=function(e){
if(e.pageX){
return e.pageX;
}else{
if(e.clientX){
if(RadControlsNamespace.Browser.StandardsMode){
return (e.clientX+document.documentElement.scrollLeft);
}
return (e.clientX+document.body.scrollLeft);
}
}
};
RadMenu.prototype.MouseEventY=function(e){
if(e.pageY){
return e.pageY;
}else{
if(e.clientY){
if(RadControlsNamespace.Browser.StandardsMode){
return (e.clientY+document.documentElement.scrollTop);
}
return (e.clientY+document.body.scrollTop);
}
}
};
RadMenu.prototype.EventSource=function(e){
return RadControlsNamespace.DomEvent.GetTarget(e);
};
RadMenu.prototype.Hide=function(_21){
if(this.ShownAsContext){
if(this.Detached&&_21){
this.ReAttach();
}
this.Ease.Out();
this.ShownAsContext=false;
this.RaiseEvent("OnClientContextHidden",null);
}
};
RadMenu.prototype.Initialize=function(_22,_23){
this.LoadConfiguration(_22);
this.ItemData=_23;
this.DetermineDirection();
this.ApplyRTL();
if(this.IsContext){
this.InitContextMenu();
}
this.CreateControlHierarchy(this,0);
if(!this.Enabled){
this.Disable();
}
if(this.Flow==RadMenuNamespace.ItemFlow.Vertical){
this.FixRootItemWidth();
}
this.AttachEventHandlers();
this.Initialized=true;
RadMenu.CreateState(this);
this.RaiseEvent("OnClientLoad",null);
};
RadMenu.prototype.AttachEventHandlers=function(){
var _24=this;
this.DomElement.RadShow=function(){
if(_24.Flow==RadMenuNamespace.ItemFlow.Vertical){
_24.FixRootItemWidth();
}
};
this.AttachDomEvent(window,"unload","Dispose");
if(!this.ClickToOpen&&RadControlsNamespace.Browser.IsIE){
this.AttachDomEvent(document,"mouseout","MouseOutHandler");
}
if(this.ClickToOpen){
this.AttachDomEvent(document,"click","CloseOpenedItems");
}
this.AttachDomEvent(window,"resize","RefreshPosition");
};
RadMenu.prototype.RefreshPosition=function(e){
if(!this.IsContext){
this.DomElement.style.cssText=this.DomElement.style.cssText;
}
};
RadMenu.prototype.MouseOutHandler=function(e){
var _27=RadControlsNamespace.DomEvent.GetTarget(e);
var _28=RadControlsNamespace.DomEvent.GetRelatedTarget(e);
if(!_28&&!this.IsChildOf(this.DomElement,_27)){
var _29=this;
setTimeout(function(){
_29.Close();
},this.CollapseDelay);
}
};
RadMenu.prototype.CloseOpenedItems=function(e){
var _2b=this.EventSource(e);
if(!this.IsChildOf(this.DomElement,_2b)){
this.Close();
this.Clicked=false;
}
};
RadMenu.prototype.DetermineDirection=function(){
var el=this.DomElement;
while(el.tagName.toLowerCase()!="html"){
if(el.dir){
this.RightToLeft=(el.dir.toLowerCase()=="rtl");
return;
}
el=el.parentNode;
}
this.RightToLeft=false;
};
RadMenu.prototype.ApplyRTL=function(){
if(!this.RightToLeft){
return;
}
if(this.RenderInProgress()){
this.AttachDomEvent(window,"load","ApplyRTL");
return;
}
this.FixItemWidthInRTL();
if(RadControlsNamespace.Browser.IsIE){
this.DomElement.dir="ltr";
}
if(!this.IsContext){
this.DomElement.className+=" rtl RadMenu_"+this.Skin+"_rtl";
}else{
this.DomElement.className+=" rtlcontext RadMenu_"+this.Skin+"_rtl";
}
};
RadMenu.prototype.BuildScrollObject=function(_2d){
var _2e=RadMenuNamespace.ItemFlow.Vertical==this.Flow;
var _2f={PerTabScrolling:false,ScrollButtonsPosition:1,ScrollPosition:0};
this.Scroll=new RadControlsNamespace.Scroll(this.ChildItemList,_2e,_2f);
this.Scroll.ScrollOnHover=true;
this.Scroll.LeaveGapsForArrows=false;
this.Scroll.WrapNeeded=_2d;
if(_2e){
this.Scroll.LeftArrowClass="topArrow";
this.Scroll.LeftArrowClassDisabled="topArrowDisabled";
this.Scroll.RightArrowClass="bottomArrow";
this.Scroll.RightArrowClassDisabled="bottomArrowDisabled";
}
};
RadMenu.prototype.InitContextMenu=function(){
if(this.ChildItemList.parentNode!=this.DomElement){
this.ScrollWrap=this.ChildItemList.parentNode;
this.BuildScrollObject(false);
}
this.Ease=new RadControlsNamespace.Ease(this.ScrollWrap||this.ChildItemList,this,0,0,null,true);
if(this.Ease.Overlay.Shim){
this.Ease.Overlay.Shim.id=this.DomElement.id+"IframeOverlay";
}
this.Flow=RadMenuNamespace.ItemFlow.Vertical;
this.Ease.SetSide("top");
if(RadControlsNamespace.Browser.IsOpera){
this.AttachDomEvent(document,"mousedown","OnContextMenu");
}else{
this.AttachDomEvent(document,"contextmenu","OnContextMenu");
}
this.AttachDomEvent(document,"click","OnDocumentClick");
if(!RadMenuNamespace.ContextMenus){
RadMenuNamespace.ContextMenus={};
}
if(!RadMenuNamespace.ContextElements){
RadMenuNamespace.ContextElements={};
}
if(this.ContextMenuElementID){
RadMenuNamespace.ContextElements[this.ContextMenuElementID]=true;
}
RadMenuNamespace.ContextMenus[this.ID]=this;
};
RadMenu.prototype.OnContextMenu=function(e){
if(RadControlsNamespace.Browser.IsOpera){
if(e.button!=2){
return;
}
}
this.ContextElement=document.getElementById(this.ContextMenuElementID);
if(this.ContextMenuElementID&&!this.ContextElement){
return;
}
var _31=this.EventSource(e);
if(this.ContextElement){
if(_31==this.ContextElement||this.IsChildOf(this.ContextElement,_31)){
this.Show(e);
RadControlsNamespace.DomEvent.PreventDefault(e);
RadControlsNamespace.DomEvent.StopPropagation(e);
}
}else{
if(!RadMenuNamespace.ContextElements[_31.id]){
this.Show(e);
RadControlsNamespace.DomEvent.PreventDefault(e);
RadControlsNamespace.DomEvent.StopPropagation(e);
}
}
};
RadMenu.prototype.IsChildOf=function(_32,_33){
if(_33==_32){
return false;
}
while(_33&&(_33!=document.body)){
if(_33==_32){
return true;
}
try{
_33=_33.parentNode;
}
catch(e){
return false;
}
}
return false;
};
RadMenu.prototype.OnDocumentClick=function(e){
var _35=this.EventSource(e);
if(this.IsChildOf(this.DomElement,_35)){
if(this.ClickToOpen){
return;
}
if(!this.IsChildOfMenuItem(_35)){
return;
}
}
this.Hide();
};
RadMenu.prototype.IsChildOfMenuItem=function(_36){
var _37=_36.tagName.toLowerCase();
var _38=_36.className;
if(_37=="span"&&_38.indexOf("text")>-1){
return true;
}
if(_37=="a"&&_38.indexOf("link")>-1){
return true;
}
if(_37=="img"&&_38=="leftImage"){
return true;
}
return false;
};
RadMenu.prototype.Enable=function(){
this.Enabled=true;
this.DomElement.disabled="";
for(var i=0;i<this.AllItems.length;i++){
this.AllItems[i].Enable();
}
};
RadMenu.prototype.Disable=function(){
this.Enabled=false;
this.DomElement.disabled="disabled";
for(var i=0;i<this.AllItems.length;i++){
this.AllItems[i].Disable();
}
};
RadMenu.prototype.Focus=function(){
this.DomElement.focus();
};
RadMenu.prototype.Dispose=function(){
if(this.Disposed){
return;
}
this.Disposed=true;
for(var i=0;i<this.AllItems.length;i++){
this.AllItems[i].Dispose();
}
if(this.Detached&&this.DomElement){
if(this.DomElement.parentNode){
this.DomElement.parentNode.removeChild(this.DomElement);
}
}
if(this.DomElement){
this.DomElement.RadShow=null;
}
this.DomElement=null;
this.ChildItemList=null;
this.StateField=null;
this.DisposeDomEventHandlers();
if(this.IsContext&&RadMenuNamespace.ContextMenus){
RadMenuNamespace.ContextMenus[this.ID]=null;
}
};
RadMenu.prototype.CreateMenuItem=function(_3c,_3d){
var _3e=new RadMenuItem(_3d);
this.AddItemToParent(_3c,_3e);
return _3e;
};
RadMenu.prototype.AddItemToParent=function(_3f,_40){
_40.Index=_3f.Items.length;
_3f.Items[_3f.Items.length]=_40;
_40.GlobalIndex=this.AllItems.length;
this.AllItems[this.AllItems.length]=_40;
_40.Parent=_3f;
_40.Menu=this;
};
RadMenu.prototype.CreateControlHierarchy=function(_41,_42){
_41.Level=_42;
var _43=_41.ChildItemList;
if(!_43){
return;
}
for(var i=0;i<_43.childNodes.length;i++){
var _45=_43.childNodes[i];
if(_45.nodeType==3){
continue;
}
var _46=this.CreateMenuItem(_41,_45);
_46.Initialize();
if(_42==0){
_46.PostInitialize();
}
this.CreateControlHierarchy(_46,_42+1);
}
};
RadMenu.prototype.FixItemWidthInRTL=function(){
var _47=0;
var _48=0;
var ul=this.ChildItemList;
for(var i=0;i<ul.childNodes.length;i++){
var li=ul.childNodes[i];
if(li.nodeType==3){
continue;
}
var _4c=RadMenu.GetFirstChildByTagName(li,"a");
if(!_4c){
continue;
}
if(this.RightToLeft){
var _4d=_4c.getElementsByTagName("img")[0];
if(_4d){
_4d.style.styleFloat="left";
}
}
_47=Math.max(RadControlsNamespace.Box.GetOuterWidth(_4c),_47);
if(this.RightToLeft){
var _4d=_4c.getElementsByTagName("img")[0];
if(_4d){
_4d.style.styleFloat="right";
}
}
}
for(var i=0;i<ul.childNodes.length;i++){
var li=ul.childNodes[i];
if(li.nodeType==3){
continue;
}
if(RadControlsNamespace.Browser.IsOpera){
li.style.cssFloat="none";
}
var a=RadMenu.GetFirstChildByTagName(li,"a");
if(!a){
continue;
}
var _4f=!RadMenu.GetFirstChildByTagName(a,"span").firstChild;
if(!RadControlsNamespace.Browser.IsIE||!_4f){
RadControlsNamespace.Box.SetOuterWidth(a,RadControlsNamespace.Box.GetOuterWidth(a));
}
}
if(RadControlsNamespace.Browser.IsSafari){
ul.style.width=RadMenu.GetFirstChildByTagName(ul,"li").offsetWidth+"px";
}
};
RadMenu.prototype.FixItemWidth=function(_50){
var _51=0;
var ul=_50.ChildItemList;
var _53=null;
for(var i=0;i<ul.childNodes.length;i++){
var li=ul.childNodes[i];
if(li.nodeType==3){
continue;
}
var _56=RadMenu.GetFirstChildByTagName(li,"a");
if(!_56){
_56=RadMenu.GetFirstChildByTagName(li,"div");
if(!_56){
continue;
}
}
if(this.RightToLeft){
var _57=_56.getElementsByTagName("img")[0];
if(_57){
_57.style.styleFloat="left";
_57.style.cssFloat="left";
}
}
var _58=RadControlsNamespace.Box.GetOuterWidth(_56);
if(isNaN(_58)){
continue;
}
if(_58>_51){
_51=_58;
_53=li;
}
if(this.RightToLeft){
var _57=_56.getElementsByTagName("img")[0];
if(_57){
_57.style.styleFloat="right";
_57.style.cssFloat="right";
}
}
}
var _59=0;
for(var i=0;i<ul.childNodes.length;i++){
var li=ul.childNodes[i];
if(li.nodeType==3){
continue;
}
if(RadControlsNamespace.Browser.IsOpera){
li.style.cssFloat="none";
}
var a=RadMenu.GetFirstChildByTagName(li,"a");
if(a){
var _5b=!RadMenu.GetFirstChildByTagName(a,"span").firstChild;
if(!RadControlsNamespace.Browser.IsIE||!_5b){
if(a.style.display!="none"){
if(_59>0){
a.style.width=_59+"px";
}else{
_59=RadControlsNamespace.Box.SetOuterWidth(a,_51);
}
}
}
}else{
li.style.width=_51+"px";
}
}
if(RadControlsNamespace.Browser.IsSafari){
if(_53){
ul.style.width=_53.offsetWidth+"px";
}
}
};
RadMenu.prototype.FixRootItemWidth=function(){
var _5c=this;
var _5d=function(){
_5c.FixItemWidth(_5c);
};
if(this.RenderInProgress()||RadControlsNamespace.Browser.IsOpera||RadControlsNamespace.Browser.IsSafari){
if(window.addEventListener){
window.addEventListener("load",_5d,false);
}else{
window.attachEvent("onload",_5d);
}
}else{
_5d();
}
};
RadMenu.prototype.FixListWidth=function(_5e){
if(this.RightToLeft){
this.FixItemWidth(_5e);
}
var _5f=0;
var ul=_5e.ChildItemList;
for(var i=0;i<ul.childNodes.length;i++){
var _62=ul.childNodes[i];
if(_62.nodeType==3){
continue;
}
_5f+=_62.offsetWidth;
_62.style.clear="none";
}
ul.style.width=_5f+"px";
};
RadMenu.prototype.LoadConfiguration=function(_63){
for(var _64 in _63){
this[_64]=_63[_64];
}
if(!this.DefaultGroupSettings){
this.DefaultGroupSettings={};
}
if(typeof this.DefaultGroupSettings.Flow=="undefined"){
this.DefaultGroupSettings.Flow=RadMenuNamespace.ItemFlow.Vertical;
}
if(typeof this.DefaultGroupSettings.ExpandDirection=="undefined"){
this.DefaultGroupSettings.ExpandDirection=RadMenuNamespace.ExpandDirection.Auto;
}
if(typeof this.DefaultGroupSettings.OffsetX=="undefined"){
this.DefaultGroupSettings.OffsetX=0;
}
if(typeof this.DefaultGroupSettings.OffsetY=="undefined"){
this.DefaultGroupSettings.OffsetY=0;
}
};
RadMenu.prototype.Close=function(_65){
if(this.OpenedItem){
this.OpenedItem.Close();
}
};
RadMenu.prototype.FindItemByText=function(_66){
for(var i=0;i<this.AllItems.length;i++){
if(this.AllItems[i].Text==_66){
return this.AllItems[i];
}
}
return null;
};
RadMenu.prototype.FindItemById=function(id){
for(var i=0;i<this.AllItems.length;i++){
if(this.AllItems[i].ID==id){
return this.AllItems[i];
}
}
return null;
};
RadMenu.prototype.FindItemByValue=function(_6a){
for(var i=0;i<this.AllItems.length;i++){
if(this.AllItems[i].Value==_6a){
return this.AllItems[i];
}
}
return null;
};
RadMenu.prototype.FindItemByUrl=function(url){
for(var i=0;i<this.AllItems.length;i++){
if(this.AllItems[i].NavigateUrl==url){
return this.AllItems[i];
}
}
return null;
};
RadMenu.prototype.SetContextElementID=function(id){
if(!RadMenuNamespace.ContextElements){
RadMenuNamespace.ContextElements={};
}
if(this.ContextMenuElementID){
RadMenuNamespace.ContextElements[this.ContextMenuElementID]=false;
}
this.ContextMenuElementID=id;
RadMenuNamespace.ContextElements[this.ContextMenuElementID]=false;
};
RadMenu.prototype.RecordState=function(){
if(this.InUpdate||!this.Initialized){
return;
}
var _6f=RadControlsNamespace.JSON.stringify(this,this.InitialState,RadMenu.JSONIncludeDeep);
var _70=[];
for(var i in this.ItemState){
if(this.ItemState[i]==""){
continue;
}
if(typeof this.ItemState[i]=="function"){
continue;
}
_70[_70.length]=this.ItemState[i];
}
this.StateField.value="{\"State\":"+_6f+",\"ItemState\":{"+_70.join(",")+"}}";
};
RadMenu.prototype.PersistClientSideItems=function(){
for(var i=0;i<this.AllItems.length;i++){
var _73=this.AllItems[i];
if(_73.ClientSide){
_73.RecordState(true);
}
}
};
RadMenu.prototype.SetAttribute=function(_74,_75){
this.Attributes[_74]=_75;
this.RecordState();
};
RadMenu.prototype.GetAttribute=function(_76){
return this.Attributes[_76];
};
RadMenu.CreateChildItemContainer=function(_77){
var _78=document.createElement("div");
_78.className="slide";
_77.DomElement.appendChild(_78);
var _79=document.createElement("ul");
if(_77.Flow==RadMenuNamespace.ItemFlow.Horizontal){
_79.className="horizontal group level"+_77.Level;
}else{
_79.className="vertical group level"+_77.Level;
}
_78.appendChild(_79);
};
RadMenu.prototype.AddItem=function(_7a){
var _7b=document.createElement("li");
_7b.className="item last";
var _7c=document.createElement("a");
_7c.className="link";
var _7d=document.createElement("span");
_7d.className="text";
_7c.appendChild(_7d);
_7b.appendChild(_7c);
_7a.SetDomElement(_7b);
var _7e=this.Menu||this;
if(_7e!=this&&this.Items.length==0){
RadMenu.CreateChildItemContainer(this);
this.InitializeDomElements();
this.InitializeAnimation();
}
this.ChildItemList.appendChild(_7b);
_7e.AddItemToParent(this,_7a);
_7a.Level=this.Level+1;
var _7f=_7a.Text;
_7a.Text="";
_7a.ID=this.ID+"_m"+(this.Items.length-1);
_7a.Initialize();
_7a.SetText(_7f);
if(this.Menu){
_7a.ParentClientID=this.ID;
}
_7c.href="#";
if(this.Items.length>1){
var _80=this.Items[this.Items.length-2].DomElement;
_80.className=_80.className.replace(" last","");
}
};;function RadMenuItem(_1){
if(_1){
this.SetDomElement(_1);
}else{
this.ClientSide=true;
}
this.IsSeparator=false;
this.AnimationContainer=null;
this.OpenedItem=null;
this.FocusedItem=null;
this.Items=[];
this.Attributes={};
this.Index=-1;
this.Level=-1;
this.Parent=null;
this.Menu=null;
this.GroupSettings={};
this.TimeoutPointer=null;
this.Templated=false;
this.NavigateAfterClick=true;
this.FocusedCssClass="focused";
this.ClickedCssClass="clicked";
this.ExpandedCssClass="expanded";
this.DisabledCssClass="disabled";
this.CssClass="";
this.State=RadMenuItemState.Closed;
this.Focused=false;
this.Clicked=false;
this.Enabled=true;
this.Initialized=false;
}
RadMenuItem.prototype.SetDomElement=function(_2){
this.DomElement=_2;
this.LinkElement=RadMenu.GetFirstChildByTagName(this.DomElement,"a");
if(this.LinkElement==null){
this.ID=this.DomElement.id;
this.TextElement=RadMenu.GetFirstChildByTagName(this.DomElement,"span");
this.NavigateUrl="";
}else{
this.ID=this.LinkElement.id;
this.TextElement=RadMenu.GetFirstChildByTagName(this.LinkElement,"span");
this.NavigateUrl=this.LinkElement.href;
}
};
RadMenuItem.prototype.PostInitializeItems=function(){
for(var i=0;i<this.Items.length;i++){
this.Items[i].PostInitialize();
}
};
RadMenuItem.prototype.SetText=function(_4){
this.PostInitialize();
this.TextElement.innerHTML=_4;
this.Text=_4;
this.RecordState();
};
RadMenuItem.prototype.SetNavigateUrl=function(_5){
this.PostInitialize();
this.LinkElement.setAttribute("href",_5);
this.NavigateUrl=_5;
this.RecordState();
};
RadMenuItem.prototype.SetValue=function(_6){
this.PostInitialize();
this.Value=_6;
this.RecordState();
};
RadMenuItem.prototype.InitializeDomElements=function(){
if(!this.Templated){
this.AnimationContainer=RadMenu.GetFirstChildByTagName(this.DomElement,"div");
this.ImageElement=RadMenu.GetFirstChildByTagName(this.LinkElement||this.DomElement,"img");
if(this.ImageElement){
this.ImageUrl=this.ImageElement.src;
}
}else{
this.TextElement=RadMenu.GetFirstChildByTagName(this.DomElement,"div");
this.AnimationContainer=this.TextElement.nextSibling;
}
if(this.AnimationContainer){
var ul=this.AnimationContainer.getElementsByTagName("ul")[0];
this.ChildItemList=ul;
if(this.ChildItemList.parentNode!=this.AnimationContainer){
this.ScrollWrap=this.ChildItemList.parentNode;
}
}
};
RadMenuItem.prototype.InitializeAnimation=function(){
this.DetermineExpandDirection();
if(!this.AnimationContainer){
return;
}
this.Ease=new RadControlsNamespace.Ease(this.ScrollWrap||this.ChildItemList,this.Menu,this.GroupSettings.OffsetX,this.GroupSettings.OffsetY,this,true);
if(this.Ease.Overlay.Shim&&this.LinkElement){
this.Ease.Overlay.Shim.id=this.LinkElement.id+"IframeOverlay";
}
var _8=this.GroupSettings.ExpandDirection;
var _9=RadMenuNamespace.ExpandDirectionPropertyName[_8];
this.Ease.SetSide(_9);
this.TextElement.className="text expand"+this.Ease.GetSide();
this.AnimationContainer.style.zIndex=this.GlobalIndex+10;
this.ChildItemList.style.zIndex=this.GlobalIndex+10;
if(this.ScrollWrap){
this.CreateScroll();
}
};
RadMenuItem.prototype.Initialize=function(){
RadControlsNamespace.DomEventMixin.Initialize(this);
this.LoadConfiguration();
this.InitializeDomElements();
if(this.TextElement&&this.TextElement.firstChild){
this.Text=this.TextElement.firstChild.nodeValue;
}
this.OriginalZIndex=Math.max(this.DomElement.style.zIndex,this.Menu.OriginalZIndex);
};
RadMenuItem.prototype.PostInitialize=function(){
if(this.Initialized){
return;
}
this.InitializeAnimation();
this.AttachEventHandlers();
this.RenderAccessKey();
RadMenu.CreateState(this);
this.UpdateCssClass();
this.Initialized=true;
};
RadMenuItem.prototype.RenderAccessKey=function(){
if(this.IsSeparator||this.Templated){
return;
}
var _a=this.LinkElement.accessKey.toLowerCase();
if(!_a){
return;
}
var _b=this.TextElement.firstChild.nodeValue;
var _c=_b.toLowerCase().indexOf(_a);
if(_c==-1){
return;
}
this.TextElement.innerHTML=_b.substr(0,_c)+"<u>"+_b.substr(_c,1)+"</u>"+_b.substr(_c+1,_b.length);
};
RadMenuItem.prototype.CreateScroll=function(){
this.ScrollWrap.style.zIndex=this.GlobalIndex+10;
this.BuildScrollObject(false);
};
RadMenuItem.prototype.BuildScrollObject=function(_d){
var _e=RadMenuNamespace.ItemFlow.Vertical==this.GroupSettings.Flow;
var _f={PerTabScrolling:false,ScrollButtonsPosition:1,ScrollPosition:0};
this.Scroll=new RadControlsNamespace.Scroll(this.ChildItemList,_e,_f);
this.Scroll.ScrollOnHover=true;
this.Scroll.LeaveGapsForArrows=false;
this.Scroll.WrapNeeded=_d;
if(this.GroupSettings.Flow==RadMenuNamespace.ItemFlow.Vertical){
this.Scroll.LeftArrowClass="topArrow";
this.Scroll.LeftArrowClassDisabled="topArrowDisabled";
this.Scroll.RightArrowClass="bottomArrow";
this.Scroll.RightArrowClassDisabled="bottomArrowDisabled";
}
};
RadMenuItem.prototype.CreateRuntimeScroll=function(_10){
if(this.Scroll){
this.Scroll.SetHeight(_10);
return;
}
this.BuildScrollObject(true);
this.Scroll.Initialize();
this.ScrollWrap=this.ChildItemList.parentNode;
this.Ease.Element=this.ScrollWrap;
this.Ease.Overlay.Element=this.ScrollWrap;
this.ScrollWrap.className="scrollWrap "+this.ChildItemList.className;
this.ChildItemList.className=this.ChildItemList.className.replace("group","");
this.Scroll.SetHeight(_10);
};
RadMenuItem.prototype.Dispose=function(){
if(!this.Initialized){
return;
}
this.DisposeDomEventHandlers();
if(this.Ease){
this.Ease.Dispose();
}
this.DomElement=null;
this.LinkElement=null;
this.AnimationContainer=null;
};
RadMenuItem.prototype.Focus=function(){
if(!this.CanFocus()){
return;
}
this.PostInitializeItems();
if(this.Parent.OpenedItem&&this.Parent.OpenedItem!=this){
this.Parent.OpenedItem.Close();
}
if(this.Parent.State!=RadMenuItemState.Open&&this.Parent.Open){
this.Parent.Open();
}
this.Parent.FocusedItem=this;
if(!this.Focused&&this.LinkElement){
this.LinkElement.focus();
}
this.UpdateCssClass();
this.RaiseEvent("OnClientItemFocus");
};
RadMenuItem.prototype.Hide=function(){
if(this.LinkElement){
this.LinkElement.style.display="none";
}else{
this.TextElement.style.display="none";
}
if(this.Parent.Flow==RadMenuNamespace.ItemFlow.Vertical){
var _11=this.Parent.Items;
for(var i=0;i<_11.length;i++){
if(_11[i]!=this){
if(_11[i].LinkElement){
_11[i].LinkElement.style.width="auto";
}
}
}
if(RadControlsNamespace.Browser.IsSafari){
this.Parent.ChildItemList.style.width="auto";
}
this.Menu.WidthFixed=false;
if(this.Parent.DomElement.offsetWidth>0){
this.Menu.FixItemWidth(this.Parent);
}
}
};
RadMenuItem.prototype.IsVisible=function(){
if(!this.LinkElement){
return this.TextElement.style.display!="none";
}
return this.LinkElement.style.display!="none";
};
RadMenuItem.prototype.Show=function(){
if(this.LinkElement){
this.LinkElement.style.display="";
}else{
this.TextElement.style.display="";
}
if(this.Parent.Flow==RadMenuNamespace.ItemFlow.Vertical){
this.Menu.WidthFixed=false;
if(this.Parent.DomElement.offsetWidth>0){
this.Menu.FixItemWidth(this.Parent);
}
}
};
RadMenuItem.prototype.Blur=function(){
if(this.IsSeparator){
return;
}
if(this.Focused){
this.LinkElement.blur();
}
this.Parent.FocusedItem=null;
this.UpdateCssClass();
this.RaiseEvent("OnClientItemBlur");
};
RadMenuItem.prototype.GetEaseSide=function(){
var _13=this.GroupSettings.ExpandDirection;
return RadMenuNamespace.ExpandDirectionPropertyName[_13];
};
RadMenuItem.prototype.RaiseEvent=function(_14){
return this.Menu.RaiseEvent(_14,{Item:this});
};
RadMenuItem.prototype.UpdateCssClass=function(){
if(this.IsSeparator||this.Templated){
return;
}
var _15="link "+this.CssClass;
if(this.Focused){
_15=_15+" "+this.FocusedCssClass;
}
if(this.State==RadMenuItemState.Open){
_15=_15+" "+this.ExpandedCssClass;
}
if(this.Clicked){
_15=_15+" "+this.ClickedCssClass;
}
if(!this.Enabled){
_15=_15+" "+this.DisabledCssClass;
}
this.LinkElement.className=_15;
this.UpdateImageUrl();
};
RadMenuItem.prototype.UpdateImageUrl=function(){
if(!this.ImageElement){
return;
}
var _16=this.ImageUrl;
if(this.Hovered&&this.ImageOverUrl){
_16=this.ImageOverUrl;
}
if(this.State==RadMenuItemState.Open&&this.ExpandedImageUrl){
_16=this.ExpandedImageUrl;
}
if(!this.Enabled&&this.DisabledImageUrl){
_16=this.DisabledImageUrl;
}
if(this.Clicked&&this.ImageClickedUrl){
_16=this.ImageClickedUrl;
}
_16=_16.replace(/&amp;/ig,"&");
if(_16!=this.ImageElement.src){
this.ImageElement.src=_16;
}
};
RadMenuItem.prototype.Enable=function(){
if(this.IsSeparator||this.Templated){
return;
}
this.LinkElement.disabled="";
if(this.ImageElement){
this.ImageElement.disabled="";
}
this.Enabled=true;
this.EnableDomEventHandling();
this.UpdateCssClass();
};
RadMenuItem.prototype.Disable=function(){
if(this.IsSeparator||this.Templated){
return;
}
this.LinkElement.disabled="disabled";
if(this.ImageElement){
this.ImageElement.disabled="disabled";
}
this.Enabled=false;
this.DisableDomEventHandling();
this.UpdateCssClass();
};
RadMenuItem.prototype.OnCollapseComplete=function(){
this.RaiseEvent("OnClientItemClose");
};
RadMenuItem.prototype.HideChildren=function(){
for(var i=0;i<this.Items.length;i++){
if(this.Items[i].AnimationContainer){
this.Items[i].AnimationContainer.style.display="none";
}
}
};
RadMenuItem.prototype.CalculateScrollWrapSize=function(){
if(!this.ScrollWrap){
return;
}
if(!this.ScrollWrap.style.height){
this.ScrollWrap.style.height=this.ChildItemList.offsetHeight+"px";
}
var _18=RadMenuNamespace.ItemFlow.Vertical==this.Flow;
if(_18){
this.ScrollWrap.style.width=this.ChildItemList.offsetWidth+"px";
}
};
RadMenuItem.prototype.OnEase=function(_19){
var _1a=RadMenuNamespace.ItemFlow.Vertical==this.Flow;
if(!_1a){
return;
}
if(this.ChildrenDetached&&this.Scroll){
this.Scroll.RightArrow.style.cssText=this.Scroll.RightArrow.style.cssText;
this.Scroll.LeftArrow.style.cssText=this.Scroll.LeftArrow.style.cssText;
}
};
RadMenuItem.prototype.AttachEventHandlers=function(){
this.AttachDomEvent(this.DomElement,"mouseover","MouseOverHandler");
this.AttachDomEvent(this.DomElement,"mouseout","MouseOutHandler");
if(this.IsSeparator||this.Templated){
return;
}
this.AttachDomEvent(this.LinkElement,"click","ClickHandler",true);
this.AttachDomEvent(this.LinkElement,"mouseout","HRefMouseOutHandler");
this.AttachDomEvent(this.LinkElement,"mouseover","HRefMouseOverHandler");
this.AttachDomEvent(this.LinkElement,"mousedown","MouseDownHandler");
this.AttachDomEvent(this.LinkElement,"mouseup","MouseUpHandler");
this.AttachDomEvent(this.LinkElement,"blur","BlurHandler");
this.AttachDomEvent(this.LinkElement,"focus","FocusHandler");
this.AttachDomEvent(this.LinkElement,"keydown","KeyDownHandler");
};
RadMenuItem.prototype.MouseDownHandler=function(e){
this.Clicked=true;
this.UpdateCssClass();
};
RadMenuItem.prototype.MouseUpHandler=function(e){
this.Clicked=false;
this.UpdateCssClass();
};
RadMenuItem.prototype.HRefMouseOutHandler=function(e){
var to=RadControlsNamespace.DomEvent.GetRelatedTarget(e);
if(this.Menu.IsChildOf(this.LinkElement,to)||to==this.LinkElement){
return;
}
this.Hovered=false;
this.UpdateImageUrl();
this.RaiseEvent("OnClientMouseOut");
};
RadMenuItem.prototype.HRefMouseOverHandler=function(e){
var _20=RadControlsNamespace.DomEvent.GetRelatedTarget(e);
if(this.Menu.IsChildOf(this.LinkElement,_20)||this.LinkElement==_20){
return;
}
this.Hovered=true;
this.UpdateImageUrl();
this.RaiseEvent("OnClientMouseOver");
};
RadMenuItem.prototype.KeyDownHandler=function(e){
var _22={left:37,up:38,right:39,down:40,esc:27};
var _23=RadControlsNamespace.DomEvent.GetKeyCode(e);
if(_23==_22.right){
if(this.Menu.RightToLeft){
this.HandleLeftArrow();
}else{
this.HandleRightArrow();
}
}else{
if(_23==_22.left){
if(this.Menu.RightToLeft){
this.HandleRightArrow();
}else{
this.HandleLeftArrow();
}
}else{
if(_23==_22.up){
this.HandleUpArrow();
}else{
if(_23==_22.down){
this.HandleDownArrow();
}else{
if(_23==_22.esc){
if(this.Parent==this.Menu){
this.Blur();
}else{
this.Parent.Close();
this.Parent.Focus();
}
}else{
return;
}
}
}
}
}
RadControlsNamespace.DomEvent.PreventDefault(e);
};
RadMenuItem.prototype.FocusHandler=function(e){
this.Focused=true;
this.Focus();
};
RadMenuItem.prototype.BlurHandler=function(e){
this.Focused=false;
this.Blur();
};
RadMenuItem.prototype.NavigatesToURL=function(){
if(location.href+"#"==this.NavigateUrl||location.href==this.NavigateUrl){
return false;
}
return (new RegExp("//")).test(this.LinkElement.href);
};
RadMenuItem.prototype.Validate=function(){
if(!this.Menu.CausesValidation||this.NavigatesToURL()){
return true;
}
if(typeof (Page_ClientValidate)!="function"){
return true;
}
return Page_ClientValidate(this.Menu.ValidationGroup);
};
RadMenuItem.prototype.ClickHandler=function(e){
if(!this.Enabled){
return RadControlsNamespace.DomEvent.PreventDefault(e);
}
if(!this.RaiseEvent("OnClientItemClicking")){
return RadControlsNamespace.DomEvent.PreventDefault(e);
}
if(!this.Validate()){
return RadControlsNamespace.DomEvent.PreventDefault(e);
}
var _27=true;
if(!this.Menu.ClickToOpen){
_27=true;
}else{
if(this.Level>1){
_27=true;
}else{
if(!this.Menu.Clicked){
this.Open();
}else{
this.Close();
}
this.Menu.Clicked=!this.Menu.Clicked;
}
}
this.RaiseEvent("OnClientItemClicked");
if(!this.NavigateAfterClick||this.IsHash()||!_27){
RadControlsNamespace.DomEvent.PreventDefault(e);
}else{
if(this.Menu.IsContext){
this.Menu.Hide(true);
}
}
};
RadMenuItem.prototype.IsHash=function(){
var _28=this.NavigateUrl;
if(location.href.replace(location.hash,"")+"#"===_28){
return true;
}
if(_28==="#"){
return true;
}
return false;
};
RadMenuItem.prototype.PreventClose=function(){
if(this.State==RadMenuItemState.AboutToClose){
this.ClearTimeout();
this.State=RadMenuItemState.Open;
this.Parent.OpenedItem=this;
}
if(this.Parent.PreventClose){
this.Parent.PreventClose();
}
};
RadMenuItem.prototype.Open=function(){
this.PostInitializeItems();
this.Menu.AboutToCollapse=false;
if(this.Parent!=this.Menu&&this.Parent.State!=RadMenuItemState.Open){
this.Parent.Open();
}
if(!this.AnimationContainer){
return;
}
this.Parent.OpenedItem=this;
this.State=RadMenuItemState.Open;
var _29=RadControlsNamespace.Screen.GetViewPortSize();
this.ChildItemList.style.display="block";
this.Ease.ShowElements();
if(this.GroupSettings.Flow==RadMenuNamespace.ItemFlow.Vertical){
this.Menu.FixItemWidth(this);
}else{
this.Menu.FixListWidth(this);
}
if(this.Menu.EnableAutoScroll&&this.ChildItemList.offsetHeight>_29.height){
if(!this.ScrollWrap||this.ScrollWrap.offsetHeight>_29.height){
this.CreateRuntimeScroll(_29.height+"px");
this.Ease.ShowElements();
this.Ease.UpdateContainerSize();
}
}
this.Ease.SetSide(this.GetEaseSide());
this.Ease.UpdateContainerSize();
if(this.Scroll){
this.CalculateScrollWrapSize();
this.Scroll.Initialize();
}
this.PositionChildContainer(_29);
this.Ease.In();
this.UpdateCssClass();
this.DomElement.style.zIndex=this.OriginalZIndex+1000;
if(!RadControlsNamespace.Browser.IsNetscape){
this.Menu.DomElement.style.zIndex=this.Menu.OriginalZIndex+1000;
}
this.RaiseEvent("OnClientItemOpen");
};
RadMenuItem.prototype.MouseOverHandler=function(e){
this.PreventClose();
if(this.Menu.ClickToOpen&&!this.Menu.Clicked){
return;
}
if(this.State==RadMenuItemState.Open||this.State==RadMenuItemState.AboutToOpen){
return;
}
if(this.Parent.OpenedItem!=this&&this.Parent.OpenedItem){
var _2b=this.Parent.OpenedItem;
if(_2b.TimeoutPointer){
_2b.ClearTimeout();
}
_2b.State=RadMenuItemState.AboutToClose;
_2b.SetTimeout(function(){
_2b.Close();
_2b.TimeoutPointer=null;
},this.Menu.ExpandDelay);
}
if(this.Items.length<1){
return;
}
this.Menu.LastOpenedItem=this;
this.State=RadMenuItemState.AboutToOpen;
var _2c=this;
this.SetTimeout(function(){
_2c.Open();
_2c.TimeoutPointer=null;
},this.Menu.ExpandDelay);
};
RadMenuItem.prototype.Close=function(){
if(this.IsSeparator){
return;
}
if(this.State==RadMenuItemState.Closed){
return;
}
if(this.OpenedItem){
this.OpenedItem.Close();
}
this.Parent.OpenedItem=null;
if(!this.AnimationContainer){
return;
}
this.State=RadMenuItemState.Closed;
if(this.Level==1){
this.Menu.AboutToCollapse=true;
}
this.Ease.Out();
this.UpdateCssClass();
this.DomElement.style.zIndex=this.OriginalZIndex;
if(!RadControlsNamespace.Browser.IsNetscape){
if(this.Level==1){
this.Menu.DomElement.style.zIndex=this.Menu.OriginalZIndex;
}
}
this.HideChildren();
};
RadMenuItem.prototype.MouseOutHandler=function(e){
var to=RadControlsNamespace.DomEvent.GetRelatedTarget(e);
if((!to)||this.Menu.IsChildOf(this.DomElement,to)||to==this.DomElement){
return;
}
if(this.ChildrenDetached){
if(this.Menu.IsChildOf(this.Parent.AnimationContainer,to)){
return;
}
}
try{
var _2f=to.parentNode;
}
catch(e){
return;
}
if(this.State==RadMenuItemState.Closed||this.State==RadMenuItemState.AboutToClose){
return;
}
if(this.State==RadMenuItemState.AboutToOpen){
this.ClearTimeout();
this.State=RadMenuItemState.Closed;
this.Parent.OpenedItem=null;
return;
}
if(this.Menu.ClickToOpen){
return;
}
this.State=RadMenuItemState.AboutToClose;
var _30=this;
this.SetTimeout(function(){
_30.Close();
_30.TimeoutPointer=null;
},this.Menu.CollapseDelay);
};
RadMenuItem.prototype.SetTimeout=function(_31,_32){
if(_32==0){
_31();
}else{
this.TimeoutPointer=setTimeout(_31,_32);
}
};
RadMenuItem.prototype.ClearTimeout=function(){
if(this.TimeoutPointer){
clearTimeout(this.TimeoutPointer);
this.TimeoutPointer=null;
}
};
RadMenuItem.prototype.PositionChildContainer=function(_33){
var top=0;
var _35=0;
var _36=this.GroupSettings.ExpandDirection;
var _37=RadMenuNamespace.ExpandDirectionPropertyName[_36];
var _38=this.DomElement;
var _39=RadControlsNamespace.Box.GetOuterHeight(_38);
var _3a=RadControlsNamespace.Box.GetOuterWidth(_38);
var _3b=this.AnimationContainer;
var _3c=RadControlsNamespace.Box.GetOuterHeight(_3b);
var _3d=RadControlsNamespace.Box.GetOuterWidth(_3b);
if(_36==RadMenuNamespace.ExpandDirection.Down){
top=_39;
}else{
if(_36==RadMenuNamespace.ExpandDirection.Right){
_35=_3a;
}
}
this.SetContainerPosition(_35,top);
var _3e=RadControlsNamespace.Screen.GetElementPosition(_3b);
if(this.Menu.RightToLeft){
_35=_3a-_3d;
}
if(!this.Menu.EnableScreenBoundaryDetection){
this.Ease.SetSide(_37);
this.TextElement.className="text expand"+this.Ease.GetSide();
return;
}
if(RadControlsNamespace.Screen.ElementOverflowsRight(_33,_3b)&&_36==RadMenuNamespace.ExpandDirection.Right){
_36=RadMenuNamespace.ExpandDirection.Left;
_37="right";
_35=0;
}else{
if(_3e.x-_3d<0&&_36==RadMenuNamespace.ExpandDirection.Left){
_36=RadMenuNamespace.ExpandDirection.Right;
_37="left";
_35=_3a;
}else{
if(_3e.y-_3c<0&&_36==RadMenuNamespace.ExpandDirection.Up){
_36=RadMenuNamespace.ExpandDirection.Down;
_37="top";
top=_39;
}else{
if(RadControlsNamespace.Screen.ElementOverflowsBottom(_33,_3b)&&_36==RadMenuNamespace.ExpandDirection.Down){
var _3b=RadControlsNamespace.Screen.GetElementPosition(this.DomElement);
if(_3b.y>this.AnimationContainer.offsetHeight){
_36=RadMenuNamespace.ExpandDirection.Up;
_37="bottom";
top=_39;
}
}
}
}
}
if(RadControlsNamespace.Screen.ElementOverflowsRight(_33,_3b)&&(_36==RadMenuNamespace.ExpandDirection.Down||_36==RadMenuNamespace.ExpandDirection.Up)){
if(!this.Menu.RightToLeft){
_35=_33.width-(_3e.x+_3d);
}
}else{
if(RadControlsNamespace.Screen.ElementOverflowsBottom(_33,_3b)){
if(_36==RadMenuNamespace.ExpandDirection.Left||_36==RadMenuNamespace.ExpandDirection.Right){
top=_33.height-(_3e.y+_3c);
}
}
}
this.SetContainerPosition(_35,top);
this.Ease.SetSide(_37);
this.TextElement.className="text expand"+this.Ease.GetSide();
};
RadMenuItem.prototype.SetContainerPosition=function(_3f,top){
var y=top+this.GroupSettings.OffsetY;
if(this.Parent.ScrollWrap){
if(this.Parent==this.Menu&&this.Menu.IsContext){
this.Parent.AnimationContainer=this.Menu.DomElement;
}
if(this.Parent.AnimationContainer){
this.ChildrenDetached=true;
this.Parent.AnimationContainer.appendChild(this.AnimationContainer);
}
y+=this.DomElement.offsetTop;
var _42=parseInt(this.Parent.ChildItemList.style.top);
if(isNaN(_42)){
_42=0;
}
if(this.GroupSettings.OffsetY==0){
y+=_42;
}
}
this.AnimationContainer.style.top=y+"px";
this.AnimationContainer.style.left=(_3f+this.GroupSettings.OffsetX)+"px";
};
RadMenuItem.prototype.SetAttribute=function(_43,_44){
this.PostInitialize();
this.Attributes[_43]=_44;
this.RecordState();
};
RadMenuItem.prototype.SetImageUrl=function(src){
this.PostInitialize();
this.ImageUrl=src;
this.ImageElement.src=src;
this.RecordState();
};
RadMenuItem.prototype.SetImageOverUrl=function(src){
this.PostInitialize();
this.ImageOverUrl=src;
this.RecordState();
};
RadMenuItem.prototype.GetAttribute=function(_47){
return this.Attributes[_47];
};
RadMenuItem.prototype.DetermineExpandDirection=function(){
if(this.GroupSettings.ExpandDirection!=RadMenuNamespace.ExpandDirection.Auto){
return;
}
if(this.Parent.Flow==RadMenuNamespace.ItemFlow.Vertical){
if(this.Menu.RightToLeft){
this.GroupSettings.ExpandDirection=RadMenuNamespace.ExpandDirection.Left;
}else{
this.GroupSettings.ExpandDirection=RadMenuNamespace.ExpandDirection.Right;
}
}else{
this.GroupSettings.ExpandDirection=RadMenuNamespace.ExpandDirection.Down;
}
};
RadMenuItem.prototype.LoadConfiguration=function(){
if(this.Menu.ItemData[this.ID]){
for(var _48 in this.Menu.ItemData[this.ID]){
this[_48]=this.Menu.ItemData[this.ID][_48];
}
}
var _49=this.Menu.DefaultGroupSettings;
if(typeof this.GroupSettings.Flow=="undefined"){
this.GroupSettings.Flow=_49.Flow;
}
this.Flow=this.GroupSettings.Flow;
if(typeof this.GroupSettings.ExpandDirection=="undefined"){
this.GroupSettings.ExpandDirection=_49.ExpandDirection;
}
if(typeof this.GroupSettings.OffsetX=="undefined"){
this.GroupSettings.OffsetX=_49.OffsetX;
}
if(typeof this.GroupSettings.OffsetY=="undefined"){
this.GroupSettings.OffsetY=_49.OffsetY;
}
if(!this.Enabled){
this.Disable();
}
};
RadMenuItem.prototype.HandleRightArrow=function(){
if(this.Parent.Flow==RadMenuNamespace.ItemFlow.Horizontal){
this.FocusNextItem();
}else{
if(this.Items.length&&this.GroupSettings.ExpandDirection==RadMenuNamespace.ExpandDirection.Right){
this.FocusFirstChild();
}else{
if(this.Parent.GroupSettings&&this.Parent.GroupSettings.ExpandDirection==RadMenuNamespace.ExpandDirection.Left){
this.Parent.Focus();
}else{
if(this.Menu.OpenedItem){
this.Menu.OpenedItem.GetNextItem().Focus();
}
}
}
}
};
RadMenuItem.prototype.HandleLeftArrow=function(){
if(this.Parent.Flow==RadMenuNamespace.ItemFlow.Horizontal){
this.FocusPreviousItem();
}else{
if(this.Items.length&&this.GroupSettings.ExpandDirection==RadMenuNamespace.ExpandDirection.Left){
this.FocusFirstChild();
}else{
if(this.Parent.GroupSettings&&this.Parent.GroupSettings.ExpandDirection==RadMenuNamespace.ExpandDirection.Right){
this.Parent.Focus();
}else{
if(this.Menu.OpenedItem){
this.Menu.OpenedItem.GetPreviousItem().Focus();
}
}
}
}
};
RadMenuItem.prototype.HandleUpArrow=function(){
if(this.Parent.Flow==RadMenuNamespace.ItemFlow.Vertical){
this.FocusPreviousItem();
}else{
this.FocusLastChild();
}
};
RadMenuItem.prototype.HandleDownArrow=function(){
if(this.Parent.Flow==RadMenuNamespace.ItemFlow.Vertical){
this.FocusNextItem();
}else{
this.FocusFirstChild();
}
};
RadMenuItem.prototype.GetNextItem=function(){
if(this.Index==this.Parent.Items.length-1){
return this.Parent.Items[0];
}
return this.Parent.Items[this.Index+1];
};
RadMenuItem.prototype.GetPreviousItem=function(){
if(this.Index==0){
return this.Parent.Items[this.Parent.Items.length-1];
}
return this.Parent.Items[this.Index-1];
};
RadMenuItem.prototype.CanFocus=function(){
return (!this.IsSeparator)&&this.Enabled;
};
RadMenuItem.prototype.FocusFirstChild=function(){
if(!this.Items.length){
return;
}
var _4a=this.Items[0];
while(!_4a.CanFocus()){
_4a=_4a.GetNextItem();
if(_4a==this.Items[0]){
return;
}
}
_4a.Focus();
};
RadMenuItem.prototype.FocusLastChild=function(){
if(!this.Items.length){
return;
}
var _4b=this.Items[this.Items.length-1];
while(!_4b.CanFocus()){
_4b=_4b.GetPreviousItem();
if(this.Items.length-1){
return;
}
}
_4b.Focus();
};
RadMenuItem.prototype.FocusNextItem=function(){
var _4c=this.GetNextItem();
while(!_4c.CanFocus()){
_4c=_4c.GetNextItem();
}
_4c.Focus();
};
RadMenuItem.prototype.FocusPreviousItem=function(){
var _4d=this.GetPreviousItem();
while(!_4d.CanFocus()){
_4d=_4d.GetPreviousItem();
}
_4d.Focus();
};
RadMenuItem.prototype.RecordState=function(_4e){
if(this.ClientSide&&!_4e){
return;
}
var _4f=RadControlsNamespace.JSON.stringify(this,this.InitialState,RadMenu.JSONIncludeDeep);
if(_4f=="{}"){
this.Menu.ItemState[this.ID]="";
}else{
this.Menu.ItemState[this.ID]="\""+this.ID+"\":"+_4f;
}
this.Menu.RecordState();
};
RadMenuItem.prototype.AddItem=function(){
this.Menu.AddItem.apply(this,arguments);
this.Menu.FixItemWidth(this);
};;function RadMenuItemState(){
}
RadMenuItemState={Closed:0,Open:1,AboutToClose:2,AboutToOpen:3};;if(typeof window.RadControlsNamespace=="undefined"){
window.RadControlsNamespace={};
}
if(typeof (window.RadControlsNamespace.Screen)=="undefined"||typeof (window.RadControlsNamespace.Screen.Version)==null||window.RadControlsNamespace.Screen.Version<1.1){
window.RadControlsNamespace.Screen={Version:1.1,GetViewPortSize:function(){
var _1=0;
var _2=0;
var _3=document.body;
if(RadControlsNamespace.Browser.StandardsMode&&!RadControlsNamespace.Browser.IsSafari){
_3=document.documentElement;
}
if(RadControlsNamespace.Browser.IsMozilla&&document.compatMode!="CSS1Compat"){
_3=document.body;
}
if(window.innerWidth){
_1=window.innerWidth;
_2=window.innerHeight;
}else{
_1=_3.clientWidth;
_2=_3.clientHeight;
}
_1+=_3.scrollLeft;
_2+=_3.scrollTop;
return {width:_1-6,height:_2-6};
},GetElementPosition:function(el){
var _5=null;
var _6={x:0,y:0};
var _7;
if(el.getBoundingClientRect){
_7=el.getBoundingClientRect();
var _8=document.documentElement.scrollTop||document.body.scrollTop;
var _9=document.documentElement.scrollLeft||document.body.scrollLeft;
_6.x=_7.left+_9-2;
_6.y=_7.top+_8-2;
return _6;
}else{
if(document.getBoxObjectFor){
try{
_7=document.getBoxObjectFor(el);
_6.x=_7.x-2;
_6.y=_7.y-2;
}
catch(e){
}
}else{
_6.x=el.offsetLeft;
_6.y=el.offsetTop;
_5=el.offsetParent;
if(_5!=el){
while(_5){
_6.x+=_5.offsetLeft;
_6.y+=_5.offsetTop;
_5=_5.offsetParent;
}
}
}
}
if(window.opera){
_5=el.offsetParent;
while(_5&&_5.tagName.toLowerCase()!="body"&&_5.tagName.toLowerCase()!="html"){
_6.x-=_5.scrollLeft;
_6.y-=_5.scrollTop;
_5=_5.offsetParent;
}
}else{
_5=el.parentNode;
while(_5&&_5.tagName.toLowerCase()!="body"&&_5.tagName.toLowerCase()!="html"){
_6.x-=_5.scrollLeft;
_6.y-=_5.scrollTop;
_5=_5.parentNode;
}
}
return _6;
},ElementOverflowsTop:function(_a){
return this.GetElementPosition(_a).y<0;
},ElementOverflowsLeft:function(_b){
return this.GetElementPosition(_b).x<0;
},ElementOverflowsBottom:function(_c,_d){
var _e=this.GetElementPosition(_d).y+RadControlsNamespace.Box.GetOuterHeight(_d);
return _e>_c.height;
},ElementOverflowsRight:function(_f,_10){
var _11=this.GetElementPosition(_10).x+RadControlsNamespace.Box.GetOuterWidth(_10);
return _11>_f.width;
}};
};if(typeof window.RadControlsNamespace=="undefined"){
window.RadControlsNamespace={};
}
RadControlsNamespace.ScrollButtonsPosition={Left:0,Middle:1,Right:2};
RadControlsNamespace.Scroll=function(_1,_2,_3){
this.Owner=_3;
this.Element=_1;
this.IsVertical=_2;
this.ScrollButtonsPosition=_3.ScrollButtonsPosition;
this.ScrollPosition=_3.ScrollPosition;
this.PerTabScrolling=_3.PerTabScrolling;
this.ScrollOnHover=false;
this.WrapNeeded=false;
this.LeaveGapsForArrows=true;
this.LeftArrowClass="leftArrow";
this.LeftArrowClassDisabled="leftArrowDisabled";
this.RightArrowClass="rightArrow";
this.RightArrowClassDisabled="rightArrowDisabled";
this.Initialized=false;
};
RadControlsNamespace.Scroll.Create=function(_4,_5,_6){
return new RadControlsNamespace.Scroll(_4,_5,_6);
};
RadControlsNamespace.Scroll.prototype.Initialize=function(){
if(this.Initialized){
this.ApplyOverflow();
this.CalculateMinMaxPosition();
this.EvaluateArrowStatus();
return false;
}
if((this.Element.offsetWidth==0&&!this.IsVertical)||(this.Element.offsetHeight==0&&this.IsVertical)){
return false;
}
this.Initialized=true;
this.ScrollAmount=2;
this.Direction=0;
if(this.WrapNeeded){
var _7=this.CreateScrollWrap();
}
this.ApplyOverflow();
this.Element.style.position="relative";
this.AttachArrows();
this.CalculateMinMaxPosition();
if(this.PerTabScrolling){
this.CalculateInitialTab();
}
this.AttachScrollMethods();
this.EvaluateArrowStatus();
this.AttachEventHandlers();
this.ScrollTo(this.ScrollPosition);
this.ApplyOverflow();
return _7;
};
RadControlsNamespace.Scroll.prototype.ApplyOverflow=function(){
if(RadControlsNamespace.Browser.IsIE){
this.Element.parentNode.style.overflow="visible";
if(this.IsVertical){
this.Element.parentNode.style.overflowX="";
this.Element.parentNode.style.overflowY="hidden";
}else{
this.Element.parentNode.style.overflowX="hidden";
this.Element.parentNode.style.overflowY="hidden";
}
}else{
this.Element.parentNode.style.overflow="hidden";
}
if(!this.ScrollNeeded()){
this.Element.parentNode.style.overflow="visible";
this.Element.parentNode.style.overflowX="visible";
this.Element.parentNode.style.overflowY="visible";
}
};
RadControlsNamespace.Scroll.prototype.ResizeHandler=function(){
if(this.Disposed){
return;
}
if(!this.Initialized){
this.Initialize();
}
if(!this.Initialized){
return;
}
if(!this.Element.offsetHeight||!this.Element.offsetWidth){
return;
}
this.CalculateMinMaxPosition();
if(this.Element.offsetWidth<this.Element.parentNode.offsetWidth){
this.ScrollTo(0);
}
var _8=parseInt(this.IsVertical?this.Element.style.top:this.Element.style.left);
if(isNaN(_8)){
_8=0;
}
var _9=this;
};
RadControlsNamespace.Scroll.prototype.AttachEventHandlers=function(){
var _a=this.Element;
var _b=this;
this.resizeClosure=function(){
_b.ResizeHandler();
};
if(window.addEventListener){
window.addEventListener("resize",this.resizeClosure,false);
}else{
window.attachEvent("onresize",this.resizeClosure);
}
};
RadControlsNamespace.Scroll.prototype.Dispose=function(){
this.Disposed=true;
this.Element=null;
clearTimeout(this.intervalPointer);
if(window.removeEventListener){
window.removeEventListener("resize",this.resizeClosure,false);
}else{
window.detachEvent("onresize",this.resizeClosure);
}
};
RadControlsNamespace.Scroll.prototype.AttachArrows=function(){
var _c=this.CreateArrow("&laquo;",1,this.LeftArrowClass);
var _d=this.CreateArrow("&raquo;",-1,this.RightArrowClass);
this.LeftArrow=_c;
this.RightArrow=_d;
if(this.IsVertical){
_c.style.left="0px";
_d.style.left="0px";
if(this.ScrollButtonsPosition==RadControlsNamespace.ScrollButtonsPosition.Middle){
_c.style.top="0px";
_d.style.bottom="0px";
}else{
if(this.ScrollButtonsPosition==RadControlsNamespace.ScrollButtonsPosition.Left){
_c.style.top="0px";
_d.style.top=_c.offsetHeight+"px";
}else{
_d.style.bottom="0px";
_c.style.bottom=_c.offsetHeight+"px";
}
}
}else{
_c.style.top="0px";
_d.style.top="0px";
if(this.ScrollButtonsPosition==RadControlsNamespace.ScrollButtonsPosition.Middle){
_c.style.left="-1px";
_d.style.right="-1px";
}else{
if(this.ScrollButtonsPosition==RadControlsNamespace.ScrollButtonsPosition.Left){
_c.style.left="-1px";
_d.style.left=(_c.offsetWidth-1)+"px";
}else{
_d.style.right="-1px";
_c.style.right=(_d.offsetWidth-1)+"px";
}
}
}
};
RadControlsNamespace.Scroll.prototype.CreateArrow=function(_e,_f,_10){
var _11=document.createElement("a");
_11.href="#";
_11.className=_10;
_11.style.zIndex="2000";
_11.appendChild(document.createTextNode("&nbsp;"));
this.Element.parentNode.appendChild(_11);
var _12=this;
_11.ScrollDirection=_f;
if(this.ScrollOnHover){
_11.onmousedown=function(){
if(this.disabled){
return false;
}
_12.ScrollAmount=3;
return true;
};
_11.onmouseup=function(){
_12.ScrollAmount=1;
};
_11.onmouseover=function(){
if(this.disabled){
return false;
}
_12.ScrollAmount=1;
_12.Scroll(this.ScrollDirection);
return true;
};
_11.onmouseout=function(){
_12.scrollAmount=0;
_12.Stop();
return false;
};
}else{
_11.onmousedown=function(){
_12.Scroll(this.ScrollDirection);
};
_11.onmouseup=function(){
_12.Stop();
};
}
_11.onclick=function(){
return false;
};
return _11;
};
RadControlsNamespace.Scroll.prototype.SetHeight=function(_13){
if(parseInt(_13)==0){
return;
}
this.Element.parentNode.style.height=_13;
this.Initialize();
};
RadControlsNamespace.Scroll.prototype.SetWidth=function(_14){
if(parseInt(_14)==0){
return;
}
this.Element.parentNode.style.width=_14;
this.Initialize();
};
RadControlsNamespace.Scroll.prototype.CreateScrollWrap=function(){
var _15=document.createElement("div");
var _16=this.Element.parentNode;
_15.appendChild(this.Element);
_15.style.position="relative";
_15.align="left";
_16.appendChild(_15);
if(this.IsVertical){
_15.style.styleFloat="left";
_15.style.cssFloat="left";
this.Element.style.display="none";
_15.style.height=_15.parentNode.parentNode.offsetHeight+"px";
this.Element.style.display="block";
}else{
var _17=0;
for(var i=0;i<this.Element.childNodes.length;i++){
var _19=this.Element.childNodes[i];
if(!_19.tagName){
continue;
}
_17+=_19.offsetWidth;
}
this.Element.style.width=(_17+3)+"px";
}
return _15;
};
RadControlsNamespace.Scroll.prototype.CalculateMinMaxPosition=function(){
if(!this.Initialized){
return;
}
if(this.IsVertical){
var _1a=this.Element.parentNode.offsetHeight-this.Element.offsetHeight;
var _1b=this.LeftArrow.offsetHeight;
var _1c=this.RightArrow.offsetHeight;
}else{
var _1a=this.Element.parentNode.offsetWidth-this.Element.offsetWidth;
var _1b=this.LeftArrow.offsetWidth;
var _1c=this.RightArrow.offsetWidth;
}
if(!this.LeaveGapsForArrows){
_1b=0;
_1c=0;
}
this.MaxScrollPosition=0;
this.MinScrollPosition=_1a-_1c-_1b;
if(this.ScrollButtonsPosition==RadControlsNamespace.ScrollButtonsPosition.Middle){
this.Offset=_1b;
}else{
if(this.ScrollButtonsPosition==RadControlsNamespace.ScrollButtonsPosition.Left){
this.Offset=_1b+_1c;
}else{
this.Offset=0;
}
}
};
RadControlsNamespace.Scroll.prototype.CalculateInitialTab=function(){
var lis=this.Element.getElementsByTagName("li");
if(lis.length>0){
var i=0;
while(this.ScrollPosition<-(this.IsVertical?lis[i].offsetTop:lis[i].offsetLeft)){
i++;
}
this.CurrentTab=i;
}
};
RadControlsNamespace.Scroll.prototype.AttachScrollMethods=function(){
if(this.PerTabScrolling){
this.Scroll=RadControlsNamespace.Scroll.StartPerTabScroll;
this.Stop=RadControlsNamespace.Scroll.StopPerTabScroll;
}else{
this.Scroll=RadControlsNamespace.Scroll.StartSmoothScroll;
this.Stop=RadControlsNamespace.Scroll.StopSmoothScroll;
}
};
RadControlsNamespace.Scroll.prototype.EvaluateArrowStatus=function(){
var _1f=!(this.ScrollPosition>this.MinScrollPosition);
var _20=!(this.ScrollPosition<this.MaxScrollPosition);
this.RightArrow.disabled=_1f;
this.LeftArrow.disabled=_20;
if(_20){
if(this.LeftArrow.className!=this.LeftArrowClassDisabled){
this.LeftArrow.className=this.LeftArrowClassDisabled;
}
}else{
if(this.LeftArrow.className!=this.LeftArrowClass){
this.LeftArrow.className=this.LeftArrowClass;
}
}
if(_1f){
if(this.RightArrow.className!=this.RightArrowClassDisabled){
this.RightArrow.className=this.RightArrowClassDisabled;
}
}else{
if(this.RightArrow.className!=this.RightArrowClass){
this.RightArrow.className=this.RightArrowClass;
}
}
};
RadControlsNamespace.Scroll.StartSmoothScroll=function(_21){
this.Stop();
this.Direction=_21;
var _22=this;
var _23=function(){
_22.ScrollBy(_22.Direction*_22.ScrollAmount);
};
_23();
this.scrollInterval=setInterval(_23,10);
};
RadControlsNamespace.Scroll.prototype.ScrollTo=function(_24){
_24=Math.max(_24,this.MinScrollPosition);
_24=Math.min(_24,this.MaxScrollPosition);
_24+=this.Offset;
if(this.IsVertical){
this.Element.style.top=_24+"px";
}else{
this.Element.style.left=_24+"px";
}
this.Owner.ScrollPosition=this.ScrollPosition=_24-this.Offset;
this.EvaluateArrowStatus();
};
RadControlsNamespace.Scroll.prototype.ScrollBy=function(_25){
var _26=this.ScrollPosition;
this.ScrollTo(_26+_25);
};
RadControlsNamespace.Scroll.StartPerTabScroll=function(_27){
this.Stop();
var lis=this.Element.getElementsByTagName("li");
var _29=this.CurrentTab-_27;
if(_29<0||_29>lis.length){
return;
}
var _2a=_27==-1?this.CurrentTab:_29;
this.CurrentTab=_29;
if(this.IsVertical){
var _2b=lis[_2a].offsetHeight;
}else{
var _2b=lis[_2a].offsetWidth;
}
this.ScrollBy(_2b*_27);
this.EvaluateArrowStatus();
};
RadControlsNamespace.Scroll.prototype.ScrollNeeded=function(){
return true;
if(this.IsVertical){
return this.Element.offsetHeight>this.Element.parentNode.offsetHeight;
}
return this.Element.offsetWidth>this.Element.parentNode.offsetWidth;
};
RadControlsNamespace.Scroll.StopSmoothScroll=function(_2c){
if(this.OnScrollStop){
this.OnScrollStop();
}
clearInterval(this.scrollInterval);
};
RadControlsNamespace.Scroll.StopPerTabScroll=function(_2d){
if(this.OnScrollStop){
this.OnScrollStop();
}
};;if(typeof window.RadControlsNamespace=="undefined"){
window.RadControlsNamespace={};
}
RadControlsNamespace.Ticker=function(_1){
this.Listener=_1;
this.IntervalPointer=null;
};
RadControlsNamespace.Ticker.prototype={Configure:function(_2){
this.Duration=_2.Duration;
this.Interval=16;
},Start:function(){
clearInterval(this.IntervalPointer);
this.TimeElapsed=0;
var _3=this;
var _4=function(){
_3.Tick();
};
this.Tick();
this.IntervalPointer=setInterval(_4,this.Interval);
},Tick:function(){
this.TimeElapsed+=this.Interval;
this.Listener.OnTick(this.TimeElapsed);
if(this.TimeElapsed>=this.Duration){
this.Stop();
}
},Stop:function(){
if(this.IntervalPointer){
this.Listener.OnTickEnd();
clearInterval(this.IntervalPointer);
this.IntervalPointer=null;
}
}};;
