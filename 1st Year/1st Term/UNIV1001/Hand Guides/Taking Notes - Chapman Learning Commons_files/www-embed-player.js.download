(function(){/*

 Copyright The Closure Library Authors.
 SPDX-License-Identifier: Apache-2.0
*/
'use strict';var m;function aa(a){var b=0;return function(){return b<a.length?{done:!1,value:a[b++]}:{done:!0}}}
var ba="function"==typeof Object.defineProperties?Object.defineProperty:function(a,b,c){if(a==Array.prototype||a==Object.prototype)return a;a[b]=c.value;return a};
function ca(a){a=["object"==typeof globalThis&&globalThis,a,"object"==typeof window&&window,"object"==typeof self&&self,"object"==typeof global&&global];for(var b=0;b<a.length;++b){var c=a[b];if(c&&c.Math==Math)return c}throw Error("Cannot find global object");}
var da=ca(this);function t(a,b){if(b)a:{var c=da;a=a.split(".");for(var d=0;d<a.length-1;d++){var e=a[d];if(!(e in c))break a;c=c[e]}a=a[a.length-1];d=c[a];b=b(d);b!=d&&null!=b&&ba(c,a,{configurable:!0,writable:!0,value:b})}}
t("Symbol",function(a){function b(f){if(this instanceof b)throw new TypeError("Symbol is not a constructor");return new c(d+(f||"")+"_"+e++,f)}
function c(f,g){this.h=f;ba(this,"description",{configurable:!0,writable:!0,value:g})}
if(a)return a;c.prototype.toString=function(){return this.h};
var d="jscomp_symbol_"+(1E9*Math.random()>>>0)+"_",e=0;return b});
t("Symbol.iterator",function(a){if(a)return a;a=Symbol("Symbol.iterator");for(var b="Array Int8Array Uint8Array Uint8ClampedArray Int16Array Uint16Array Int32Array Uint32Array Float32Array Float64Array".split(" "),c=0;c<b.length;c++){var d=da[b[c]];"function"===typeof d&&"function"!=typeof d.prototype[a]&&ba(d.prototype,a,{configurable:!0,writable:!0,value:function(){return ea(aa(this))}})}return a});
function ea(a){a={next:a};a[Symbol.iterator]=function(){return this};
return a}
function u(a){var b="undefined"!=typeof Symbol&&Symbol.iterator&&a[Symbol.iterator];return b?b.call(a):{next:aa(a)}}
function fa(a){if(!(a instanceof Array)){a=u(a);for(var b,c=[];!(b=a.next()).done;)c.push(b.value);a=c}return a}
var ha="function"==typeof Object.create?Object.create:function(a){function b(){}
b.prototype=a;return new b},ia=function(){function a(){function c(){}
new c;Reflect.construct(c,[],function(){});
return new c instanceof c}
if("undefined"!=typeof Reflect&&Reflect.construct){if(a())return Reflect.construct;var b=Reflect.construct;return function(c,d,e){c=b(c,d);e&&Reflect.setPrototypeOf(c,e.prototype);return c}}return function(c,d,e){void 0===e&&(e=c);
e=ha(e.prototype||Object.prototype);return Function.prototype.apply.call(c,e,d)||e}}(),ja;
if("function"==typeof Object.setPrototypeOf)ja=Object.setPrototypeOf;else{var ka;a:{var la={a:!0},ma={};try{ma.__proto__=la;ka=ma.a;break a}catch(a){}ka=!1}ja=ka?function(a,b){a.__proto__=b;if(a.__proto__!==b)throw new TypeError(a+" is not extensible");return a}:null}var na=ja;
function v(a,b){a.prototype=ha(b.prototype);a.prototype.constructor=a;if(na)na(a,b);else for(var c in b)if("prototype"!=c)if(Object.defineProperties){var d=Object.getOwnPropertyDescriptor(b,c);d&&Object.defineProperty(a,c,d)}else a[c]=b[c];a.M=b.prototype}
function oa(){this.o=!1;this.l=null;this.i=void 0;this.h=1;this.u=this.m=0;this.C=this.j=null}
function pa(a){if(a.o)throw new TypeError("Generator is already running");a.o=!0}
oa.prototype.A=function(a){this.i=a};
function qa(a,b){a.j={Ia:b,Ja:!0};a.h=a.m||a.u}
oa.prototype.return=function(a){this.j={return:a};this.h=this.u};
function w(a,b,c){a.h=c;return{value:b}}
oa.prototype.B=function(a){this.h=a};
function ra(a,b,c){a.m=b;void 0!=c&&(a.u=c)}
function sa(a){a.m=0;var b=a.j.Ia;a.j=null;return b}
function ta(a){a.C=[a.j];a.m=0;a.u=0}
function ua(a){var b=a.C.splice(0)[0];(b=a.j=a.j||b)?b.Ja?a.h=a.m||a.u:void 0!=b.B&&a.u<b.B?(a.h=b.B,a.j=null):a.h=a.u:a.h=0}
function va(a){this.h=new oa;this.i=a}
function wa(a,b){pa(a.h);var c=a.h.l;if(c)return xa(a,"return"in c?c["return"]:function(d){return{value:d,done:!0}},b,a.h.return);
a.h.return(b);return ya(a)}
function xa(a,b,c,d){try{var e=b.call(a.h.l,c);if(!(e instanceof Object))throw new TypeError("Iterator result "+e+" is not an object");if(!e.done)return a.h.o=!1,e;var f=e.value}catch(g){return a.h.l=null,qa(a.h,g),ya(a)}a.h.l=null;d.call(a.h,f);return ya(a)}
function ya(a){for(;a.h.h;)try{var b=a.i(a.h);if(b)return a.h.o=!1,{value:b.value,done:!1}}catch(c){a.h.i=void 0,qa(a.h,c)}a.h.o=!1;if(a.h.j){b=a.h.j;a.h.j=null;if(b.Ja)throw b.Ia;return{value:b.return,done:!0}}return{value:void 0,done:!0}}
function za(a){this.next=function(b){pa(a.h);a.h.l?b=xa(a,a.h.l.next,b,a.h.A):(a.h.A(b),b=ya(a));return b};
this.throw=function(b){pa(a.h);a.h.l?b=xa(a,a.h.l["throw"],b,a.h.A):(qa(a.h,b),b=ya(a));return b};
this.return=function(b){return wa(a,b)};
this[Symbol.iterator]=function(){return this}}
function x(a,b){b=new za(new va(b));na&&a.prototype&&na(b,a.prototype);return b}
t("Reflect",function(a){return a?a:{}});
t("Reflect.construct",function(){return ia});
t("Reflect.setPrototypeOf",function(a){return a?a:na?function(b,c){try{return na(b,c),!0}catch(d){return!1}}:null});
function Aa(a,b){return Object.prototype.hasOwnProperty.call(a,b)}
t("WeakMap",function(a){function b(k){this.h=(h+=Math.random()+1).toString();if(k){k=u(k);for(var l;!(l=k.next()).done;)l=l.value,this.set(l[0],l[1])}}
function c(){}
function d(k){var l=typeof k;return"object"===l&&null!==k||"function"===l}
function e(k){if(!Aa(k,g)){var l=new c;ba(k,g,{value:l})}}
function f(k){var l=Object[k];l&&(Object[k]=function(n){if(n instanceof c)return n;Object.isExtensible(n)&&e(n);return l(n)})}
if(function(){if(!a||!Object.seal)return!1;try{var k=Object.seal({}),l=Object.seal({}),n=new a([[k,2],[l,3]]);if(2!=n.get(k)||3!=n.get(l))return!1;n.delete(k);n.set(l,4);return!n.has(k)&&4==n.get(l)}catch(q){return!1}}())return a;
var g="$jscomp_hidden_"+Math.random();f("freeze");f("preventExtensions");f("seal");var h=0;b.prototype.set=function(k,l){if(!d(k))throw Error("Invalid WeakMap key");e(k);if(!Aa(k,g))throw Error("WeakMap key fail: "+k);k[g][this.h]=l;return this};
b.prototype.get=function(k){return d(k)&&Aa(k,g)?k[g][this.h]:void 0};
b.prototype.has=function(k){return d(k)&&Aa(k,g)&&Aa(k[g],this.h)};
b.prototype.delete=function(k){return d(k)&&Aa(k,g)&&Aa(k[g],this.h)?delete k[g][this.h]:!1};
return b});
t("Map",function(a){function b(){var h={};return h.previous=h.next=h.head=h}
function c(h,k){var l=h.h;return ea(function(){if(l){for(;l.head!=h.h;)l=l.previous;for(;l.next!=l.head;)return l=l.next,{done:!1,value:k(l)};l=null}return{done:!0,value:void 0}})}
function d(h,k){var l=k&&typeof k;"object"==l||"function"==l?f.has(k)?l=f.get(k):(l=""+ ++g,f.set(k,l)):l="p_"+k;var n=h.data_[l];if(n&&Aa(h.data_,l))for(h=0;h<n.length;h++){var q=n[h];if(k!==k&&q.key!==q.key||k===q.key)return{id:l,list:n,index:h,H:q}}return{id:l,list:n,index:-1,H:void 0}}
function e(h){this.data_={};this.h=b();this.size=0;if(h){h=u(h);for(var k;!(k=h.next()).done;)k=k.value,this.set(k[0],k[1])}}
if(function(){if(!a||"function"!=typeof a||!a.prototype.entries||"function"!=typeof Object.seal)return!1;try{var h=Object.seal({x:4}),k=new a(u([[h,"s"]]));if("s"!=k.get(h)||1!=k.size||k.get({x:4})||k.set({x:4},"t")!=k||2!=k.size)return!1;var l=k.entries(),n=l.next();if(n.done||n.value[0]!=h||"s"!=n.value[1])return!1;n=l.next();return n.done||4!=n.value[0].x||"t"!=n.value[1]||!l.next().done?!1:!0}catch(q){return!1}}())return a;
var f=new WeakMap;e.prototype.set=function(h,k){h=0===h?0:h;var l=d(this,h);l.list||(l.list=this.data_[l.id]=[]);l.H?l.H.value=k:(l.H={next:this.h,previous:this.h.previous,head:this.h,key:h,value:k},l.list.push(l.H),this.h.previous.next=l.H,this.h.previous=l.H,this.size++);return this};
e.prototype.delete=function(h){h=d(this,h);return h.H&&h.list?(h.list.splice(h.index,1),h.list.length||delete this.data_[h.id],h.H.previous.next=h.H.next,h.H.next.previous=h.H.previous,h.H.head=null,this.size--,!0):!1};
e.prototype.clear=function(){this.data_={};this.h=this.h.previous=b();this.size=0};
e.prototype.has=function(h){return!!d(this,h).H};
e.prototype.get=function(h){return(h=d(this,h).H)&&h.value};
e.prototype.entries=function(){return c(this,function(h){return[h.key,h.value]})};
e.prototype.keys=function(){return c(this,function(h){return h.key})};
e.prototype.values=function(){return c(this,function(h){return h.value})};
e.prototype.forEach=function(h,k){for(var l=this.entries(),n;!(n=l.next()).done;)n=n.value,h.call(k,n[1],n[0],this)};
e.prototype[Symbol.iterator]=e.prototype.entries;var g=0;return e});
function Ba(a,b,c){if(null==a)throw new TypeError("The 'this' value for String.prototype."+c+" must not be null or undefined");if(b instanceof RegExp)throw new TypeError("First argument to String.prototype."+c+" must not be a regular expression");return a+""}
t("String.prototype.endsWith",function(a){return a?a:function(b,c){var d=Ba(this,b,"endsWith");b+="";void 0===c&&(c=d.length);c=Math.max(0,Math.min(c|0,d.length));for(var e=b.length;0<e&&0<c;)if(d[--c]!=b[--e])return!1;return 0>=e}});
t("Array.prototype.find",function(a){return a?a:function(b,c){a:{var d=this;d instanceof String&&(d=String(d));for(var e=d.length,f=0;f<e;f++){var g=d[f];if(b.call(c,g,f,d)){b=g;break a}}b=void 0}return b}});
t("String.prototype.startsWith",function(a){return a?a:function(b,c){var d=Ba(this,b,"startsWith");b+="";var e=d.length,f=b.length;c=Math.max(0,Math.min(c|0,d.length));for(var g=0;g<f&&c<e;)if(d[c++]!=b[g++])return!1;return g>=f}});
t("Object.setPrototypeOf",function(a){return a||na});
var Ca="function"==typeof Object.assign?Object.assign:function(a,b){for(var c=1;c<arguments.length;c++){var d=arguments[c];if(d)for(var e in d)Aa(d,e)&&(a[e]=d[e])}return a};
t("Object.assign",function(a){return a||Ca});
t("Promise",function(a){function b(g){this.h=0;this.j=void 0;this.i=[];this.o=!1;var h=this.l();try{g(h.resolve,h.reject)}catch(k){h.reject(k)}}
function c(){this.h=null}
function d(g){return g instanceof b?g:new b(function(h){h(g)})}
if(a)return a;c.prototype.i=function(g){if(null==this.h){this.h=[];var h=this;this.j(function(){h.u()})}this.h.push(g)};
var e=da.setTimeout;c.prototype.j=function(g){e(g,0)};
c.prototype.u=function(){for(;this.h&&this.h.length;){var g=this.h;this.h=[];for(var h=0;h<g.length;++h){var k=g[h];g[h]=null;try{k()}catch(l){this.l(l)}}}this.h=null};
c.prototype.l=function(g){this.j(function(){throw g;})};
b.prototype.l=function(){function g(l){return function(n){k||(k=!0,l.call(h,n))}}
var h=this,k=!1;return{resolve:g(this.N),reject:g(this.u)}};
b.prototype.N=function(g){if(g===this)this.u(new TypeError("A Promise cannot resolve to itself"));else if(g instanceof b)this.aa(g);else{a:switch(typeof g){case "object":var h=null!=g;break a;case "function":h=!0;break a;default:h=!1}h?this.J(g):this.m(g)}};
b.prototype.J=function(g){var h=void 0;try{h=g.then}catch(k){this.u(k);return}"function"==typeof h?this.ba(h,g):this.m(g)};
b.prototype.u=function(g){this.A(2,g)};
b.prototype.m=function(g){this.A(1,g)};
b.prototype.A=function(g,h){if(0!=this.h)throw Error("Cannot settle("+g+", "+h+"): Promise already settled in state"+this.h);this.h=g;this.j=h;2===this.h&&this.O();this.C()};
b.prototype.O=function(){var g=this;e(function(){if(g.G()){var h=da.console;"undefined"!==typeof h&&h.error(g.j)}},1)};
b.prototype.G=function(){if(this.o)return!1;var g=da.CustomEvent,h=da.Event,k=da.dispatchEvent;if("undefined"===typeof k)return!0;"function"===typeof g?g=new g("unhandledrejection",{cancelable:!0}):"function"===typeof h?g=new h("unhandledrejection",{cancelable:!0}):(g=da.document.createEvent("CustomEvent"),g.initCustomEvent("unhandledrejection",!1,!0,g));g.promise=this;g.reason=this.j;return k(g)};
b.prototype.C=function(){if(null!=this.i){for(var g=0;g<this.i.length;++g)f.i(this.i[g]);this.i=null}};
var f=new c;b.prototype.aa=function(g){var h=this.l();g.ia(h.resolve,h.reject)};
b.prototype.ba=function(g,h){var k=this.l();try{g.call(h,k.resolve,k.reject)}catch(l){k.reject(l)}};
b.prototype.then=function(g,h){function k(r,p){return"function"==typeof r?function(A){try{l(r(A))}catch(I){n(I)}}:p}
var l,n,q=new b(function(r,p){l=r;n=p});
this.ia(k(g,l),k(h,n));return q};
b.prototype.catch=function(g){return this.then(void 0,g)};
b.prototype.ia=function(g,h){function k(){switch(l.h){case 1:g(l.j);break;case 2:h(l.j);break;default:throw Error("Unexpected state: "+l.h);}}
var l=this;null==this.i?f.i(k):this.i.push(k);this.o=!0};
b.resolve=d;b.reject=function(g){return new b(function(h,k){k(g)})};
b.race=function(g){return new b(function(h,k){for(var l=u(g),n=l.next();!n.done;n=l.next())d(n.value).ia(h,k)})};
b.all=function(g){var h=u(g),k=h.next();return k.done?d([]):new b(function(l,n){function q(A){return function(I){r[A]=I;p--;0==p&&l(r)}}
var r=[],p=0;do r.push(void 0),p++,d(k.value).ia(q(r.length-1),n),k=h.next();while(!k.done)})};
return b});
function Da(a,b){a instanceof String&&(a+="");var c=0,d=!1,e={next:function(){if(!d&&c<a.length){var f=c++;return{value:b(f,a[f]),done:!1}}d=!0;return{done:!0,value:void 0}}};
e[Symbol.iterator]=function(){return e};
return e}
t("Array.prototype.entries",function(a){return a?a:function(){return Da(this,function(b,c){return[b,c]})}});
t("Object.entries",function(a){return a?a:function(b){var c=[],d;for(d in b)Aa(b,d)&&c.push([d,b[d]]);return c}});
t("Array.prototype.keys",function(a){return a?a:function(){return Da(this,function(b){return b})}});
t("Array.prototype.values",function(a){return a?a:function(){return Da(this,function(b,c){return c})}});
t("Object.is",function(a){return a?a:function(b,c){return b===c?0!==b||1/b===1/c:b!==b&&c!==c}});
t("Array.prototype.includes",function(a){return a?a:function(b,c){var d=this;d instanceof String&&(d=String(d));var e=d.length;c=c||0;for(0>c&&(c=Math.max(c+e,0));c<e;c++){var f=d[c];if(f===b||Object.is(f,b))return!0}return!1}});
t("String.prototype.includes",function(a){return a?a:function(b,c){return-1!==Ba(this,b,"includes").indexOf(b,c||0)}});
t("Set",function(a){function b(c){this.h=new Map;if(c){c=u(c);for(var d;!(d=c.next()).done;)this.add(d.value)}this.size=this.h.size}
if(function(){if(!a||"function"!=typeof a||!a.prototype.entries||"function"!=typeof Object.seal)return!1;try{var c=Object.seal({x:4}),d=new a(u([c]));if(!d.has(c)||1!=d.size||d.add(c)!=d||1!=d.size||d.add({x:4})!=d||2!=d.size)return!1;var e=d.entries(),f=e.next();if(f.done||f.value[0]!=c||f.value[1]!=c)return!1;f=e.next();return f.done||f.value[0]==c||4!=f.value[0].x||f.value[1]!=f.value[0]?!1:e.next().done}catch(g){return!1}}())return a;
b.prototype.add=function(c){c=0===c?0:c;this.h.set(c,c);this.size=this.h.size;return this};
b.prototype.delete=function(c){c=this.h.delete(c);this.size=this.h.size;return c};
b.prototype.clear=function(){this.h.clear();this.size=0};
b.prototype.has=function(c){return this.h.has(c)};
b.prototype.entries=function(){return this.h.entries()};
b.prototype.values=function(){return this.h.values()};
b.prototype.keys=b.prototype.values;b.prototype[Symbol.iterator]=b.prototype.values;b.prototype.forEach=function(c,d){var e=this;this.h.forEach(function(f){return c.call(d,f,f,e)})};
return b});
t("Array.from",function(a){return a?a:function(b,c,d){c=null!=c?c:function(h){return h};
var e=[],f="undefined"!=typeof Symbol&&Symbol.iterator&&b[Symbol.iterator];if("function"==typeof f){b=f.call(b);for(var g=0;!(f=b.next()).done;)e.push(c.call(d,f.value,g++))}else for(f=b.length,g=0;g<f;g++)e.push(c.call(d,b[g],g));return e}});
t("Number.isNaN",function(a){return a?a:function(b){return"number"===typeof b&&isNaN(b)}});
t("Number.MAX_SAFE_INTEGER",function(){return 9007199254740991});
t("Object.values",function(a){return a?a:function(b){var c=[],d;for(d in b)Aa(b,d)&&c.push(b[d]);return c}});
var y=this||self;function z(a,b,c){a=a.split(".");c=c||y;a[0]in c||"undefined"==typeof c.execScript||c.execScript("var "+a[0]);for(var d;a.length&&(d=a.shift());)a.length||void 0===b?c[d]&&c[d]!==Object.prototype[d]?c=c[d]:c=c[d]={}:c[d]=b}
function B(a,b){a=a.split(".");b=b||y;for(var c=0;c<a.length;c++)if(b=b[a[c]],null==b)return null;return b}
function Ea(){}
function Fa(a){a.ya=void 0;a.getInstance=function(){return a.ya?a.ya:a.ya=new a}}
function Ga(a){var b=typeof a;return"object"!=b?b:a?Array.isArray(a)?"array":b:"null"}
function Ha(a){var b=Ga(a);return"array"==b||"object"==b&&"number"==typeof a.length}
function Ja(a){var b=typeof a;return"object"==b&&null!=a||"function"==b}
function Ka(a){return Object.prototype.hasOwnProperty.call(a,La)&&a[La]||(a[La]=++Ma)}
var La="closure_uid_"+(1E9*Math.random()>>>0),Ma=0;function Na(a,b,c){return a.call.apply(a.bind,arguments)}
function Oa(a,b,c){if(!a)throw Error();if(2<arguments.length){var d=Array.prototype.slice.call(arguments,2);return function(){var e=Array.prototype.slice.call(arguments);Array.prototype.unshift.apply(e,d);return a.apply(b,e)}}return function(){return a.apply(b,arguments)}}
function Pa(a,b,c){Function.prototype.bind&&-1!=Function.prototype.bind.toString().indexOf("native code")?Pa=Na:Pa=Oa;return Pa.apply(null,arguments)}
function Qa(a,b){var c=Array.prototype.slice.call(arguments,1);return function(){var d=c.slice();d.push.apply(d,arguments);return a.apply(this,d)}}
function Ra(a,b){z(a,b,void 0)}
function C(a,b){function c(){}
c.prototype=b.prototype;a.M=b.prototype;a.prototype=new c;a.prototype.constructor=a;a.Il=function(d,e,f){for(var g=Array(arguments.length-2),h=2;h<arguments.length;h++)g[h-2]=arguments[h];return b.prototype[e].apply(d,g)}}
function Sa(a){return a}
;function Ta(a,b){if(Error.captureStackTrace)Error.captureStackTrace(this,Ta);else{var c=Error().stack;c&&(this.stack=c)}a&&(this.message=String(a));void 0!==b&&(this.Qa=b)}
C(Ta,Error);Ta.prototype.name="CustomError";function Ua(a){a=a.url;var b=/[?&]dsh=1(&|$)/.test(a);this.j=!b&&/[?&]ae=1(&|$)/.test(a);this.l=!b&&/[?&]ae=2(&|$)/.test(a);if((this.h=/[?&]adurl=([^&]*)/.exec(a))&&this.h[1]){try{var c=decodeURIComponent(this.h[1])}catch(d){c=null}this.i=c}}
;function Va(a){var b=!1,c;return function(){b||(c=a(),b=!0);return c}}
;var Wa=Array.prototype.indexOf?function(a,b){return Array.prototype.indexOf.call(a,b,void 0)}:function(a,b){if("string"===typeof a)return"string"!==typeof b||1!=b.length?-1:a.indexOf(b,0);
for(var c=0;c<a.length;c++)if(c in a&&a[c]===b)return c;return-1},D=Array.prototype.forEach?function(a,b,c){Array.prototype.forEach.call(a,b,c)}:function(a,b,c){for(var d=a.length,e="string"===typeof a?a.split(""):a,f=0;f<d;f++)f in e&&b.call(c,e[f],f,a)},Xa=Array.prototype.filter?function(a,b){return Array.prototype.filter.call(a,b,void 0)}:function(a,b){for(var c=a.length,d=[],e=0,f="string"===typeof a?a.split(""):a,g=0;g<c;g++)if(g in f){var h=f[g];
b.call(void 0,h,g,a)&&(d[e++]=h)}return d},Ya=Array.prototype.map?function(a,b){return Array.prototype.map.call(a,b,void 0)}:function(a,b){for(var c=a.length,d=Array(c),e="string"===typeof a?a.split(""):a,f=0;f<c;f++)f in e&&(d[f]=b.call(void 0,e[f],f,a));
return d},Za=Array.prototype.reduce?function(a,b,c){return Array.prototype.reduce.call(a,b,c)}:function(a,b,c){var d=c;
D(a,function(e,f){d=b.call(void 0,d,e,f,a)});
return d};
function $a(a,b){a:{for(var c=a.length,d="string"===typeof a?a.split(""):a,e=0;e<c;e++)if(e in d&&b.call(void 0,d[e],e,a)){b=e;break a}b=-1}return 0>b?null:"string"===typeof a?a.charAt(b):a[b]}
function ab(a,b){b=Wa(a,b);var c;(c=0<=b)&&Array.prototype.splice.call(a,b,1);return c}
function bb(a){var b=a.length;if(0<b){for(var c=Array(b),d=0;d<b;d++)c[d]=a[d];return c}return[]}
function cb(a,b){for(var c=1;c<arguments.length;c++){var d=arguments[c];if(Ha(d)){var e=a.length||0,f=d.length||0;a.length=e+f;for(var g=0;g<f;g++)a[e+g]=d[g]}else a.push(d)}}
;function db(a,b){for(var c in a)b.call(void 0,a[c],c,a)}
function eb(a){var b=fb,c;for(c in b)if(a.call(void 0,b[c],c,b))return c}
function gb(a){for(var b in a)return!1;return!0}
function hb(a,b){if(null!==a&&b in a)throw Error('The object already contains the key "'+b+'"');a[b]=!0}
function ib(){var a=F("PLAYER_VARS",{});return null!==a&&"privembed"in a?a.privembed:!1}
function jb(a,b){for(var c in a)if(!(c in b)||a[c]!==b[c])return!1;for(var d in b)if(!(d in a))return!1;return!0}
function kb(a){var b={},c;for(c in a)b[c]=a[c];return b}
function lb(a){if(!a||"object"!==typeof a)return a;if("function"===typeof a.clone)return a.clone();if("undefined"!==typeof Map&&a instanceof Map)return new Map(a);if("undefined"!==typeof Set&&a instanceof Set)return new Set(a);var b=Array.isArray(a)?[]:"function"!==typeof ArrayBuffer||"function"!==typeof ArrayBuffer.isView||!ArrayBuffer.isView(a)||a instanceof DataView?{}:new a.constructor(a.length),c;for(c in a)b[c]=lb(a[c]);return b}
var mb="constructor hasOwnProperty isPrototypeOf propertyIsEnumerable toLocaleString toString valueOf".split(" ");function nb(a,b){for(var c,d,e=1;e<arguments.length;e++){d=arguments[e];for(c in d)a[c]=d[c];for(var f=0;f<mb.length;f++)c=mb[f],Object.prototype.hasOwnProperty.call(d,c)&&(a[c]=d[c])}}
;var ob;function pb(){if(void 0===ob){var a=null,b=y.trustedTypes;if(b&&b.createPolicy){try{a=b.createPolicy("goog#html",{createHTML:Sa,createScript:Sa,createScriptURL:Sa})}catch(c){y.console&&y.console.error(c.message)}ob=a}else ob=a}return ob}
;function qb(a,b){this.h=a===rb&&b||""}
qb.prototype.S=!0;qb.prototype.R=function(){return this.h};
function sb(a){return new qb(rb,a)}
var rb={};sb("");var tb={};function ub(a){this.h=tb===tb?a:"";this.S=!0}
ub.prototype.R=function(){return this.h.toString()};
ub.prototype.toString=function(){return this.h.toString()};function vb(a,b){this.h=b===wb?a:""}
m=vb.prototype;m.S=!0;m.R=function(){return this.h.toString()};
m.xa=!0;m.sa=function(){return 1};
m.toString=function(){return this.h+""};
function xb(a){if(a instanceof vb&&a.constructor===vb)return a.h;Ga(a);return"type_error:TrustedResourceUrl"}
var wb={};function yb(a){var b=pb();a=b?b.createScriptURL(a):a;return new vb(a,wb)}
;var zb=String.prototype.trim?function(a){return a.trim()}:function(a){return/^[\s\xa0]*([\s\S]*?)[\s\xa0]*$/.exec(a)[1]},Ab=/&/g,Bb=/</g,Cb=/>/g,Db=/"/g,Eb=/'/g,Fb=/\x00/g,Gb=/[\x00&<>"']/;function Hb(a,b){this.h=b===Ib?a:""}
m=Hb.prototype;m.S=!0;m.R=function(){return this.h.toString()};
m.xa=!0;m.sa=function(){return 1};
m.toString=function(){return this.h.toString()};
function Jb(a){if(a instanceof Hb&&a.constructor===Hb)return a.h;Ga(a);return"type_error:SafeUrl"}
var Kb=RegExp('^(?:audio/(?:3gpp2|3gpp|aac|L16|midi|mp3|mp4|mpeg|oga|ogg|opus|x-m4a|x-matroska|x-wav|wav|webm)|font/\\w+|image/(?:bmp|gif|jpeg|jpg|png|tiff|webp|x-icon)|video/(?:mpeg|mp4|ogg|webm|quicktime|x-matroska))(?:;\\w+=(?:\\w+|"[\\w;,= ]+"))*$',"i"),Lb=/^data:(.*);base64,[a-z0-9+\/]+=*$/i,Mb=/^(?:(?:https?|mailto|ftp):|[^:/?#]*(?:[/?#]|$))/i,Ib={},Nb=new Hb("about:invalid#zClosurez",Ib);var Ob;a:{var Pb=y.navigator;if(Pb){var Qb=Pb.userAgent;if(Qb){Ob=Qb;break a}}Ob=""}function G(a){return-1!=Ob.indexOf(a)}
;var Rb={};function Sb(a,b,c){this.h=c===Rb?a:"";this.i=b;this.S=this.xa=!0}
Sb.prototype.sa=function(){return this.i};
Sb.prototype.R=function(){return this.h.toString()};
Sb.prototype.toString=function(){return this.h.toString()};
function Tb(a,b){var c=pb();a=c?c.createHTML(a):a;return new Sb(a,b,Rb)}
;function Ub(a,b){b instanceof Hb||b instanceof Hb||(b="object"==typeof b&&b.S?b.R():String(b),Mb.test(b)||(b="about:invalid#zClosurez"),b=new Hb(b,Ib));a.href=Jb(b)}
function Vb(a,b){a.rel="stylesheet";a.href=xb(b).toString();(b=Wb('style[nonce],link[rel="stylesheet"][nonce]',a.ownerDocument&&a.ownerDocument.defaultView))&&a.setAttribute("nonce",b)}
function Xb(){return Wb("script[nonce]",void 0)}
var Yb=/^[\w+/_-]+[=]{0,2}$/;function Wb(a,b){b=(b||y).document;return b.querySelector?(a=b.querySelector(a))&&(a=a.nonce||a.getAttribute("nonce"))&&Yb.test(a)?a:"":""}
;function Zb(a){for(var b=0,c=0;c<a.length;++c)b=31*b+a.charCodeAt(c)>>>0;return b}
;var $b=RegExp("^(?:([^:/?#.]+):)?(?://(?:([^\\\\/?#]*)@)?([^\\\\/?#]*?)(?::([0-9]+))?(?=[\\\\/?#]|$))?([^?#]+)?(?:\\?([^#]*))?(?:#([\\s\\S]*))?$");function ac(a){return a?decodeURI(a):a}
function bc(a){return ac(a.match($b)[3]||null)}
function cc(a,b,c){if(Array.isArray(b))for(var d=0;d<b.length;d++)cc(a,String(b[d]),c);else null!=b&&c.push(a+(""===b?"":"="+encodeURIComponent(String(b))))}
function dc(a){var b=[],c;for(c in a)cc(c,a[c],b);return b.join("&")}
function ec(a,b){b=dc(b);if(b){var c=a.indexOf("#");0>c&&(c=a.length);var d=a.indexOf("?");if(0>d||d>c){d=c;var e=""}else e=a.substring(d+1,c);a=[a.substr(0,d),e,a.substr(c)];c=a[1];a[1]=b?c?c+"&"+b:b:c;b=a[0]+(a[1]?"?"+a[1]:"")+a[2]}else b=a;return b}
var fc=/#|$/;function H(a,b){var c=void 0;return new (c||(c=Promise))(function(d,e){function f(k){try{h(b.next(k))}catch(l){e(l)}}
function g(k){try{h(b["throw"](k))}catch(l){e(l)}}
function h(k){k.done?d(k.value):(new c(function(l){l(k.value)})).then(f,g)}
h((b=b.apply(a,void 0)).next())})}
;function gc(){return G("iPhone")&&!G("iPod")&&!G("iPad")}
;function hc(a){hc[" "](a);return a}
hc[" "]=Ea;var ic=G("Opera"),jc=G("Trident")||G("MSIE"),kc=G("Edge"),lc=G("Gecko")&&!(-1!=Ob.toLowerCase().indexOf("webkit")&&!G("Edge"))&&!(G("Trident")||G("MSIE"))&&!G("Edge"),mc=-1!=Ob.toLowerCase().indexOf("webkit")&&!G("Edge"),nc=G("Android");function oc(){var a=y.document;return a?a.documentMode:void 0}
var pc;a:{var qc="",rc=function(){var a=Ob;if(lc)return/rv:([^\);]+)(\)|;)/.exec(a);if(kc)return/Edge\/([\d\.]+)/.exec(a);if(jc)return/\b(?:MSIE|rv)[: ]([^\);]+)(\)|;)/.exec(a);if(mc)return/WebKit\/(\S+)/.exec(a);if(ic)return/(?:Version)[ \/]?(\S+)/.exec(a)}();
rc&&(qc=rc?rc[1]:"");if(jc){var sc=oc();if(null!=sc&&sc>parseFloat(qc)){pc=String(sc);break a}}pc=qc}var tc=pc,uc;if(y.document&&jc){var vc=oc();uc=vc?vc:parseInt(tc,10)||void 0}else uc=void 0;var wc=uc;var xc=gc()||G("iPod"),yc=G("iPad"),zc=G("Safari")&&!((G("Chrome")||G("CriOS"))&&!G("Edge")||G("Coast")||G("Opera")||G("Edge")||G("Edg/")||G("OPR")||G("Firefox")||G("FxiOS")||G("Silk")||G("Android"))&&!(gc()||G("iPad")||G("iPod"));var Ac={},Bc=null;
function Cc(a){var b=3;Ha(a);void 0===b&&(b=0);if(!Bc){Bc={};for(var c="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789".split(""),d=["+/=","+/","-_=","-_.","-_"],e=0;5>e;e++){var f=c.concat(d[e].split(""));Ac[e]=f;for(var g=0;g<f.length;g++){var h=f[g];void 0===Bc[h]&&(Bc[h]=g)}}}b=Ac[b];c=Array(Math.floor(a.length/3));d=b[64]||"";for(e=f=0;f<a.length-2;f+=3){var k=a[f],l=a[f+1];h=a[f+2];g=b[k>>2];k=b[(k&3)<<4|l>>4];l=b[(l&15)<<2|h>>6];h=b[h&63];c[e++]=""+g+k+l+h}g=0;h=d;switch(a.length-
f){case 2:g=a[f+1],h=b[(g&15)<<2]||d;case 1:a=a[f],c[e]=""+b[a>>2]+b[(a&3)<<4|g>>4]+h+d}return c.join("")}
;var Dc={Kl:{value:!0,configurable:!0}};var Ec=Object,Fc=Ec.freeze,Gc=[];Array.isArray(Gc)&&!Object.isFrozen(Gc)&&Object.defineProperties(Gc,Dc);Fc.call(Ec,Gc);var K=window;sb("csi.gstatic.com");sb("googleads.g.doubleclick.net");sb("pagead2.googlesyndication.com");sb("partner.googleadservices.com");sb("pubads.g.doubleclick.net");sb("securepubads.g.doubleclick.net");sb("tpc.googlesyndication.com");var Hc={};function Ic(){}
function Jc(a,b){if(b!==Hc)throw Error("Bad secret");this.h=a}
v(Jc,Ic);Jc.prototype.toString=function(){return this.h};
var Kc=new Jc("about:invalid#zTSz",Hc);function Lc(a){if(a instanceof Ic)if(a instanceof Jc)a=a.h;else throw Error("wrong type");else a=Jb(a);return a}
;function Mc(a,b){a.src=xb(b);var c;b=(a.ownerDocument&&a.ownerDocument.defaultView||window).document;var d=null===(c=b.querySelector)||void 0===c?void 0:c.call(b,"script[nonce]");(c=d?d.nonce||d.getAttribute("nonce")||"":"")&&a.setAttribute("nonce",c)}
;function Nc(a,b){this.x=void 0!==a?a:0;this.y=void 0!==b?b:0}
m=Nc.prototype;m.clone=function(){return new Nc(this.x,this.y)};
m.equals=function(a){return a instanceof Nc&&(this==a?!0:this&&a?this.x==a.x&&this.y==a.y:!1)};
m.ceil=function(){this.x=Math.ceil(this.x);this.y=Math.ceil(this.y);return this};
m.floor=function(){this.x=Math.floor(this.x);this.y=Math.floor(this.y);return this};
m.round=function(){this.x=Math.round(this.x);this.y=Math.round(this.y);return this};function Oc(a,b){this.width=a;this.height=b}
m=Oc.prototype;m.clone=function(){return new Oc(this.width,this.height)};
m.aspectRatio=function(){return this.width/this.height};
m.isEmpty=function(){return!(this.width*this.height)};
m.ceil=function(){this.width=Math.ceil(this.width);this.height=Math.ceil(this.height);return this};
m.floor=function(){this.width=Math.floor(this.width);this.height=Math.floor(this.height);return this};
m.round=function(){this.width=Math.round(this.width);this.height=Math.round(this.height);return this};function Pc(a){var b=document;return"string"===typeof a?b.getElementById(a):a}
function Qc(a,b){db(b,function(c,d){c&&"object"==typeof c&&c.S&&(c=c.R());"style"==d?a.style.cssText=c:"class"==d?a.className=c:"for"==d?a.htmlFor=c:Rc.hasOwnProperty(d)?a.setAttribute(Rc[d],c):0==d.lastIndexOf("aria-",0)||0==d.lastIndexOf("data-",0)?a.setAttribute(d,c):a[d]=c})}
var Rc={cellpadding:"cellPadding",cellspacing:"cellSpacing",colspan:"colSpan",frameborder:"frameBorder",height:"height",maxlength:"maxLength",nonce:"nonce",role:"role",rowspan:"rowSpan",type:"type",usemap:"useMap",valign:"vAlign",width:"width"};function Sc(a,b,c){var d=arguments,e=document,f=d[1],g=Tc(e,String(d[0]));f&&("string"===typeof f?g.className=f:Array.isArray(f)?g.className=f.join(" "):Qc(g,f));2<d.length&&Uc(e,g,d);return g}
function Uc(a,b,c){function d(h){h&&b.appendChild("string"===typeof h?a.createTextNode(h):h)}
for(var e=2;e<c.length;e++){var f=c[e];if(!Ha(f)||Ja(f)&&0<f.nodeType)d(f);else{a:{if(f&&"number"==typeof f.length){if(Ja(f)){var g="function"==typeof f.item||"string"==typeof f.item;break a}if("function"===typeof f){g="function"==typeof f.item;break a}}g=!1}D(g?bb(f):f,d)}}}
function Tc(a,b){b=String(b);"application/xhtml+xml"===a.contentType&&(b=b.toLowerCase());return a.createElement(b)}
function Vc(a,b){for(var c=0;a;){if(b(a))return a;a=a.parentNode;c++}return null}
;function Wc(a){var b=Xc;if(b)for(var c in b)Object.prototype.hasOwnProperty.call(b,c)&&a.call(void 0,b[c],c,b)}
function Yc(){var a=[];Wc(function(b){a.push(b)});
return a}
var Xc={Ib:"allow-forms",Jb:"allow-modals",Kb:"allow-orientation-lock",Lb:"allow-pointer-lock",Mb:"allow-popups",Nb:"allow-popups-to-escape-sandbox",Ob:"allow-presentation",Pb:"allow-same-origin",Qb:"allow-scripts",Rb:"allow-top-navigation",Sb:"allow-top-navigation-by-user-activation"},Zc=Va(function(){return Yc()});
function $c(){var a=Tc(document,"IFRAME"),b={};D(Zc(),function(c){a.sandbox&&a.sandbox.supports&&a.sandbox.supports(c)&&(b[c]=!0)});
return b}
;function ad(a){this.isValid=a}
function bd(a){return new ad(function(b){return b.substr(0,a.length+1).toLowerCase()===a+":"})}
var cd=[bd("data"),bd("http"),bd("https"),bd("mailto"),bd("ftp"),new ad(function(a){return/^[^:]*([/?#]|$)/.test(a)})];function dd(a){"number"==typeof a&&(a=Math.round(a)+"px");return a}
;var ed=(new Date).getTime();function fd(a){if(!a)return"";a=a.split("#")[0].split("?")[0];a=a.toLowerCase();0==a.indexOf("//")&&(a=window.location.protocol+a);/^[\w\-]*:\/\//.test(a)||(a=window.location.href);var b=a.substring(a.indexOf("://")+3),c=b.indexOf("/");-1!=c&&(b=b.substring(0,c));c=a.substring(0,a.indexOf("://"));if(!c)throw Error("URI is missing protocol: "+a);if("http"!==c&&"https"!==c&&"chrome-extension"!==c&&"moz-extension"!==c&&"file"!==c&&"android-app"!==c&&"chrome-search"!==c&&"chrome-untrusted"!==c&&"chrome"!==
c&&"app"!==c&&"devtools"!==c)throw Error("Invalid URI scheme in origin: "+c);a="";var d=b.indexOf(":");if(-1!=d){var e=b.substring(d+1);b=b.substring(0,d);if("http"===c&&"80"!==e||"https"===c&&"443"!==e)a=":"+e}return c+"://"+b+a}
;function gd(){function a(){e[0]=1732584193;e[1]=4023233417;e[2]=2562383102;e[3]=271733878;e[4]=3285377520;n=l=0}
function b(q){for(var r=g,p=0;64>p;p+=4)r[p/4]=q[p]<<24|q[p+1]<<16|q[p+2]<<8|q[p+3];for(p=16;80>p;p++)q=r[p-3]^r[p-8]^r[p-14]^r[p-16],r[p]=(q<<1|q>>>31)&4294967295;q=e[0];var A=e[1],I=e[2],E=e[3],Q=e[4];for(p=0;80>p;p++){if(40>p)if(20>p){var V=E^A&(I^E);var J=1518500249}else V=A^I^E,J=1859775393;else 60>p?(V=A&I|E&(A|I),J=2400959708):(V=A^I^E,J=3395469782);V=((q<<5|q>>>27)&4294967295)+V+Q+J+r[p]&4294967295;Q=E;E=I;I=(A<<30|A>>>2)&4294967295;A=q;q=V}e[0]=e[0]+q&4294967295;e[1]=e[1]+A&4294967295;e[2]=
e[2]+I&4294967295;e[3]=e[3]+E&4294967295;e[4]=e[4]+Q&4294967295}
function c(q,r){if("string"===typeof q){q=unescape(encodeURIComponent(q));for(var p=[],A=0,I=q.length;A<I;++A)p.push(q.charCodeAt(A));q=p}r||(r=q.length);p=0;if(0==l)for(;p+64<r;)b(q.slice(p,p+64)),p+=64,n+=64;for(;p<r;)if(f[l++]=q[p++],n++,64==l)for(l=0,b(f);p+64<r;)b(q.slice(p,p+64)),p+=64,n+=64}
function d(){var q=[],r=8*n;56>l?c(h,56-l):c(h,64-(l-56));for(var p=63;56<=p;p--)f[p]=r&255,r>>>=8;b(f);for(p=r=0;5>p;p++)for(var A=24;0<=A;A-=8)q[r++]=e[p]>>A&255;return q}
for(var e=[],f=[],g=[],h=[128],k=1;64>k;++k)h[k]=0;var l,n;a();return{reset:a,update:c,digest:d,Ra:function(){for(var q=d(),r="",p=0;p<q.length;p++)r+="0123456789ABCDEF".charAt(Math.floor(q[p]/16))+"0123456789ABCDEF".charAt(q[p]%16);return r}}}
;function hd(a,b,c){var d=String(y.location.href);return d&&a&&b?[b,id(fd(d),a,c||null)].join(" "):null}
function id(a,b,c){var d=[],e=[];if(1==(Array.isArray(c)?2:1))return e=[b,a],D(d,function(h){e.push(h)}),jd(e.join(" "));
var f=[],g=[];D(c,function(h){g.push(h.key);f.push(h.value)});
c=Math.floor((new Date).getTime()/1E3);e=0==f.length?[c,b,a]:[f.join(":"),c,b,a];D(d,function(h){e.push(h)});
a=jd(e.join(" "));a=[c,a];0==g.length||a.push(g.join(""));return a.join("_")}
function jd(a){var b=gd();b.update(a);return b.Ra().toLowerCase()}
;var kd={};function ld(a){this.h=a||{cookie:""}}
m=ld.prototype;m.isEnabled=function(){if(!y.navigator.cookieEnabled)return!1;if(!this.isEmpty())return!0;this.set("TESTCOOKIESENABLED","1",{za:60});if("1"!==this.get("TESTCOOKIESENABLED"))return!1;this.remove("TESTCOOKIESENABLED");return!0};
m.set=function(a,b,c){var d=!1;if("object"===typeof c){var e=c.Pl;d=c.secure||!1;var f=c.domain||void 0;var g=c.path||void 0;var h=c.za}if(/[;=\s]/.test(a))throw Error('Invalid cookie name "'+a+'"');if(/[;\r\n]/.test(b))throw Error('Invalid cookie value "'+b+'"');void 0===h&&(h=-1);this.h.cookie=a+"="+b+(f?";domain="+f:"")+(g?";path="+g:"")+(0>h?"":0==h?";expires="+(new Date(1970,1,1)).toUTCString():";expires="+(new Date(Date.now()+1E3*h)).toUTCString())+(d?";secure":"")+(null!=e?";samesite="+e:"")};
m.get=function(a,b){for(var c=a+"=",d=(this.h.cookie||"").split(";"),e=0,f;e<d.length;e++){f=zb(d[e]);if(0==f.lastIndexOf(c,0))return f.substr(c.length);if(f==a)return""}return b};
m.remove=function(a,b,c){var d=void 0!==this.get(a);this.set(a,"",{za:0,path:b,domain:c});return d};
m.isEmpty=function(){return!this.h.cookie};
m.clear=function(){for(var a=(this.h.cookie||"").split(";"),b=[],c=[],d,e,f=0;f<a.length;f++)e=zb(a[f]),d=e.indexOf("="),-1==d?(b.push(""),c.push(e)):(b.push(e.substring(0,d)),c.push(e.substring(d+1)));for(a=b.length-1;0<=a;a--)this.remove(b[a])};
var md=new ld("undefined"==typeof document?null:document);function nd(a){return!!kd.FPA_SAMESITE_PHASE2_MOD||!(void 0===a||!a)}
function od(a){a=void 0===a?!1:a;var b=y.__SAPISID||y.__APISID||y.__3PSAPISID||y.__OVERRIDE_SID;nd(a)&&(b=b||y.__1PSAPISID);if(b)return!0;var c=new ld(document);b=c.get("SAPISID")||c.get("APISID")||c.get("__Secure-3PAPISID")||c.get("SID");nd(a)&&(b=b||c.get("__Secure-1PAPISID"));return!!b}
function pd(a,b,c,d){(a=y[a])||(a=(new ld(document)).get(b));return a?hd(a,c,d):null}
function qd(a){var b=void 0===b?!1:b;var c=fd(String(y.location.href)),d=[];if(od(b)){c=0==c.indexOf("https:")||0==c.indexOf("chrome-extension:")||0==c.indexOf("moz-extension:");var e=c?y.__SAPISID:y.__APISID;e||(e=new ld(document),e=e.get(c?"SAPISID":"APISID")||e.get("__Secure-3PAPISID"));(e=e?hd(e,c?"SAPISIDHASH":"APISIDHASH",a):null)&&d.push(e);c&&nd(b)&&((b=pd("__1PSAPISID","__Secure-1PAPISID","SAPISID1PHASH",a))&&d.push(b),(a=pd("__3PSAPISID","__Secure-3PAPISID","SAPISID3PHASH",a))&&d.push(a))}return 0==
d.length?null:d.join(" ")}
;function rd(){this.data_=[];this.h=-1}
rd.prototype.set=function(a,b){b=void 0===b?!0:b;0<=a&&52>a&&0===a%1&&this.data_[a]!=b&&(this.data_[a]=b,this.h=-1)};
rd.prototype.get=function(a){return!!this.data_[a]};
function sd(a){-1==a.h&&(a.h=Za(a.data_,function(b,c,d){return c?b+Math.pow(2,d):b},0));
return a.h}
;function td(a,b){this.j=a;this.l=b;this.i=0;this.h=null}
td.prototype.get=function(){if(0<this.i){this.i--;var a=this.h;this.h=a.next;a.next=null}else a=this.j();return a};
function ud(a,b){a.l(b);100>a.i&&(a.i++,b.next=a.h,a.h=b)}
;var vd;
function wd(){var a=y.MessageChannel;"undefined"===typeof a&&"undefined"!==typeof window&&window.postMessage&&window.addEventListener&&!G("Presto")&&(a=function(){var e=Tc(document,"IFRAME");e.style.display="none";document.documentElement.appendChild(e);var f=e.contentWindow;e=f.document;e.open();e.close();var g="callImmediate"+Math.random(),h="file:"==f.location.protocol?"*":f.location.protocol+"//"+f.location.host;e=Pa(function(k){if(("*"==h||k.origin==h)&&k.data==g)this.port1.onmessage()},this);
f.addEventListener("message",e,!1);this.port1={};this.port2={postMessage:function(){f.postMessage(g,h)}}});
if("undefined"!==typeof a&&!G("Trident")&&!G("MSIE")){var b=new a,c={},d=c;b.port1.onmessage=function(){if(void 0!==c.next){c=c.next;var e=c.Fa;c.Fa=null;e()}};
return function(e){d.next={Fa:e};d=d.next;b.port2.postMessage(0)}}return function(e){y.setTimeout(e,0)}}
;function xd(a){y.setTimeout(function(){throw a;},0)}
;function yd(){this.i=this.h=null}
yd.prototype.add=function(a,b){var c=zd.get();c.set(a,b);this.i?this.i.next=c:this.h=c;this.i=c};
yd.prototype.remove=function(){var a=null;this.h&&(a=this.h,this.h=this.h.next,this.h||(this.i=null),a.next=null);return a};
var zd=new td(function(){return new Ad},function(a){return a.reset()});
function Ad(){this.next=this.scope=this.h=null}
Ad.prototype.set=function(a,b){this.h=a;this.scope=b;this.next=null};
Ad.prototype.reset=function(){this.next=this.scope=this.h=null};function Bd(a,b){Cd||Dd();Ed||(Cd(),Ed=!0);Fd.add(a,b)}
var Cd;function Dd(){if(y.Promise&&y.Promise.resolve){var a=y.Promise.resolve(void 0);Cd=function(){a.then(Gd)}}else Cd=function(){var b=Gd;
"function"!==typeof y.setImmediate||y.Window&&y.Window.prototype&&!G("Edge")&&y.Window.prototype.setImmediate==y.setImmediate?(vd||(vd=wd()),vd(b)):y.setImmediate(b)}}
var Ed=!1,Fd=new yd;function Gd(){for(var a;a=Fd.remove();){try{a.h.call(a.scope)}catch(b){xd(b)}ud(zd,a)}Ed=!1}
;function Hd(a,b){this.i=a[y.Symbol.iterator]();this.j=b;this.l=0}
Hd.prototype[Symbol.iterator]=function(){return this};
Hd.prototype.next=function(){var a=this.i.next();return{value:a.done?void 0:this.j.call(void 0,a.value,this.l++),done:a.done}};
function Id(a,b){return new Hd(a,b)}
;function Jd(){this.blockSize=-1}
;function Kd(){this.blockSize=-1;this.blockSize=64;this.h=[];this.u=[];this.m=[];this.j=[];this.j[0]=128;for(var a=1;a<this.blockSize;++a)this.j[a]=0;this.l=this.i=0;this.reset()}
C(Kd,Jd);Kd.prototype.reset=function(){this.h[0]=1732584193;this.h[1]=4023233417;this.h[2]=2562383102;this.h[3]=271733878;this.h[4]=3285377520;this.l=this.i=0};
function Ld(a,b,c){c||(c=0);var d=a.m;if("string"===typeof b)for(var e=0;16>e;e++)d[e]=b.charCodeAt(c)<<24|b.charCodeAt(c+1)<<16|b.charCodeAt(c+2)<<8|b.charCodeAt(c+3),c+=4;else for(e=0;16>e;e++)d[e]=b[c]<<24|b[c+1]<<16|b[c+2]<<8|b[c+3],c+=4;for(e=16;80>e;e++){var f=d[e-3]^d[e-8]^d[e-14]^d[e-16];d[e]=(f<<1|f>>>31)&4294967295}b=a.h[0];c=a.h[1];var g=a.h[2],h=a.h[3],k=a.h[4];for(e=0;80>e;e++){if(40>e)if(20>e){f=h^c&(g^h);var l=1518500249}else f=c^g^h,l=1859775393;else 60>e?(f=c&g|h&(c|g),l=2400959708):
(f=c^g^h,l=3395469782);f=(b<<5|b>>>27)+f+k+l+d[e]&4294967295;k=h;h=g;g=(c<<30|c>>>2)&4294967295;c=b;b=f}a.h[0]=a.h[0]+b&4294967295;a.h[1]=a.h[1]+c&4294967295;a.h[2]=a.h[2]+g&4294967295;a.h[3]=a.h[3]+h&4294967295;a.h[4]=a.h[4]+k&4294967295}
Kd.prototype.update=function(a,b){if(null!=a){void 0===b&&(b=a.length);for(var c=b-this.blockSize,d=0,e=this.u,f=this.i;d<b;){if(0==f)for(;d<=c;)Ld(this,a,d),d+=this.blockSize;if("string"===typeof a)for(;d<b;){if(e[f]=a.charCodeAt(d),++f,++d,f==this.blockSize){Ld(this,e);f=0;break}}else for(;d<b;)if(e[f]=a[d],++f,++d,f==this.blockSize){Ld(this,e);f=0;break}}this.i=f;this.l+=b}};
Kd.prototype.digest=function(){var a=[],b=8*this.l;56>this.i?this.update(this.j,56-this.i):this.update(this.j,this.blockSize-(this.i-56));for(var c=this.blockSize-1;56<=c;c--)this.u[c]=b&255,b/=256;Ld(this,this.u);for(c=b=0;5>c;c++)for(var d=24;0<=d;d-=8)a[b]=this.h[c]>>d&255,++b;return a};function Md(a){var b=B("window.location.href");null==a&&(a='Unknown Error of type "null/undefined"');if("string"===typeof a)return{message:a,name:"Unknown error",lineNumber:"Not available",fileName:b,stack:"Not available"};var c=!1;try{var d=a.lineNumber||a.line||"Not available"}catch(g){d="Not available",c=!0}try{var e=a.fileName||a.filename||a.sourceURL||y.$googDebugFname||b}catch(g){e="Not available",c=!0}b=Nd(a);if(!(!c&&a.lineNumber&&a.fileName&&a.stack&&a.message&&a.name)){c=a.message;if(null==
c){if(a.constructor&&a.constructor instanceof Function){if(a.constructor.name)c=a.constructor.name;else if(c=a.constructor,Od[c])c=Od[c];else{c=String(c);if(!Od[c]){var f=/function\s+([^\(]+)/m.exec(c);Od[c]=f?f[1]:"[Anonymous]"}c=Od[c]}c='Unknown Error of type "'+c+'"'}else c="Unknown Error of unknown type";"function"===typeof a.toString&&Object.prototype.toString!==a.toString&&(c+=": "+a.toString())}return{message:c,name:a.name||"UnknownError",lineNumber:d,fileName:e,stack:b||"Not available"}}a.stack=
b;return{message:a.message,name:a.name,lineNumber:a.lineNumber,fileName:a.fileName,stack:a.stack}}
function Nd(a,b){b||(b={});b[Pd(a)]=!0;var c=a.stack||"";(a=a.Qa)&&!b[Pd(a)]&&(c+="\nCaused by: ",a.stack&&0==a.stack.indexOf(a.toString())||(c+="string"===typeof a?a:a.message+"\n"),c+=Nd(a,b));return c}
function Pd(a){var b="";"function"===typeof a.toString&&(b=""+a);return b+a.stack}
var Od={};function Qd(a){a&&"function"==typeof a.dispose&&a.dispose()}
;function Rd(a){for(var b=0,c=arguments.length;b<c;++b){var d=arguments[b];Ha(d)?Rd.apply(null,d):Qd(d)}}
;function L(){this.h=this.h;this.u=this.u}
L.prototype.h=!1;L.prototype.dispose=function(){this.h||(this.h=!0,this.D())};
function Sd(a,b){a.h?b():(a.u||(a.u=[]),a.u.push(b))}
L.prototype.D=function(){if(this.u)for(;this.u.length;)this.u.shift()()};function Td(a){return"string"==typeof a.className?a.className:a.getAttribute&&a.getAttribute("class")||""}
function Ud(a,b){"string"==typeof a.className?a.className=b:a.setAttribute&&a.setAttribute("class",b)}
function Vd(a,b){a.classList?b=a.classList.contains(b):(a=a.classList?a.classList:Td(a).match(/\S+/g)||[],b=0<=Wa(a,b));return b}
function Wd(){var a=document.body;a.classList?a.classList.remove("inverted-hdpi"):Vd(a,"inverted-hdpi")&&Ud(a,Array.prototype.filter.call(a.classList?a.classList:Td(a).match(/\S+/g)||[],function(b){return"inverted-hdpi"!=b}).join(" "))}
;var Xd="StopIteration"in y?y.StopIteration:{message:"StopIteration",stack:""};function Yd(){}
Yd.prototype.next=function(){return Yd.prototype.h.call(this)};
Yd.prototype.h=function(){throw Xd;};
Yd.prototype.K=function(){return this};function Zd(a){if(a instanceof $d||a instanceof ae||a instanceof be)return a;if("function"==typeof a.next)return new $d(function(){return ce(a)});
if("function"==typeof a[Symbol.iterator])return new $d(function(){return a[Symbol.iterator]()});
if("function"==typeof a.K)return new $d(function(){return ce(a.K())});
throw Error("Not an iterator or iterable.");}
function ce(a){if(!(a instanceof Yd))return a;var b=!1;return{next:function(){for(var c;!b;)try{c=a.h();break}catch(d){if(d!==Xd)throw d;b=!0}return{value:c,done:b}}}}
function $d(a){this.j=a}
$d.prototype.K=function(){return new ae(this.j())};
$d.prototype[Symbol.iterator]=function(){return new be(this.j())};
$d.prototype.i=function(){return new be(this.j())};
function ae(a){this.j=a}
v(ae,Yd);ae.prototype.h=function(){var a=this.j.next();if(a.done)throw Xd;return a.value};
ae.prototype.next=function(){return ae.prototype.h.call(this)};
ae.prototype[Symbol.iterator]=function(){return new be(this.j)};
ae.prototype.i=function(){return new be(this.j)};
function be(a){$d.call(this,function(){return a});
this.l=a}
v(be,$d);be.prototype.next=function(){return this.l.next()};function de(a,b){this.i={};this.h=[];this.V=this.size=0;var c=arguments.length;if(1<c){if(c%2)throw Error("Uneven number of arguments");for(var d=0;d<c;d+=2)this.set(arguments[d],arguments[d+1])}else if(a)if(a instanceof de)for(c=ee(a),d=0;d<c.length;d++)this.set(c[d],a.get(c[d]));else for(d in a)this.set(d,a[d])}
function ee(a){fe(a);return a.h.concat()}
m=de.prototype;m.has=function(a){return ge(this.i,a)};
m.equals=function(a,b){if(this===a)return!0;if(this.size!=a.size)return!1;b=b||he;fe(this);for(var c,d=0;c=this.h[d];d++)if(!b(this.get(c),a.get(c)))return!1;return!0};
function he(a,b){return a===b}
m.isEmpty=function(){return 0==this.size};
m.clear=function(){this.i={};this.V=this.size=this.h.length=0};
m.remove=function(a){return this.delete(a)};
m.delete=function(a){return ge(this.i,a)?(delete this.i[a],--this.size,this.V++,this.h.length>2*this.size&&fe(this),!0):!1};
function fe(a){if(a.size!=a.h.length){for(var b=0,c=0;b<a.h.length;){var d=a.h[b];ge(a.i,d)&&(a.h[c++]=d);b++}a.h.length=c}if(a.size!=a.h.length){var e={};for(c=b=0;b<a.h.length;)d=a.h[b],ge(e,d)||(a.h[c++]=d,e[d]=1),b++;a.h.length=c}}
m.get=function(a,b){return ge(this.i,a)?this.i[a]:b};
m.set=function(a,b){ge(this.i,a)||(this.size+=1,this.h.push(a),this.V++);this.i[a]=b};
m.forEach=function(a,b){for(var c=ee(this),d=0;d<c.length;d++){var e=c[d],f=this.get(e);a.call(b,f,e,this)}};
m.clone=function(){return new de(this)};
m.keys=function(){return Zd(this.K(!0)).i()};
m.values=function(){return Zd(this.K(!1)).i()};
m.entries=function(){var a=this;return Id(this.keys(),function(b){return[b,a.get(b)]})};
m.K=function(a){fe(this);var b=0,c=this.V,d=this,e=new Yd;e.h=function(){if(c!=d.V)throw Error("The map has changed since the iterator was created");if(b>=d.h.length)throw Xd;var f=d.h[b++];return a?f:d.i[f]};
e.next=e.h.bind(e);return e};
function ge(a,b){return Object.prototype.hasOwnProperty.call(a,b)}
;function ie(a,b){this.type=a;this.h=this.target=b;this.defaultPrevented=this.j=!1}
ie.prototype.stopPropagation=function(){this.j=!0};
ie.prototype.preventDefault=function(){this.defaultPrevented=!0};var je=function(){if(!y.addEventListener||!Object.defineProperty)return!1;var a=!1,b=Object.defineProperty({},"passive",{get:function(){a=!0}});
try{y.addEventListener("test",Ea,b),y.removeEventListener("test",Ea,b)}catch(c){}return a}();function ke(a,b){ie.call(this,a?a.type:"");this.relatedTarget=this.h=this.target=null;this.button=this.screenY=this.screenX=this.clientY=this.clientX=0;this.key="";this.charCode=this.keyCode=0;this.metaKey=this.shiftKey=this.altKey=this.ctrlKey=!1;this.state=null;this.pointerId=0;this.pointerType="";this.i=null;a&&this.init(a,b)}
C(ke,ie);var le={2:"touch",3:"pen",4:"mouse"};
ke.prototype.init=function(a,b){var c=this.type=a.type,d=a.changedTouches&&a.changedTouches.length?a.changedTouches[0]:null;this.target=a.target||a.srcElement;this.h=b;if(b=a.relatedTarget){if(lc){a:{try{hc(b.nodeName);var e=!0;break a}catch(f){}e=!1}e||(b=null)}}else"mouseover"==c?b=a.fromElement:"mouseout"==c&&(b=a.toElement);this.relatedTarget=b;d?(this.clientX=void 0!==d.clientX?d.clientX:d.pageX,this.clientY=void 0!==d.clientY?d.clientY:d.pageY,this.screenX=d.screenX||0,this.screenY=d.screenY||
0):(this.clientX=void 0!==a.clientX?a.clientX:a.pageX,this.clientY=void 0!==a.clientY?a.clientY:a.pageY,this.screenX=a.screenX||0,this.screenY=a.screenY||0);this.button=a.button;this.keyCode=a.keyCode||0;this.key=a.key||"";this.charCode=a.charCode||("keypress"==c?a.keyCode:0);this.ctrlKey=a.ctrlKey;this.altKey=a.altKey;this.shiftKey=a.shiftKey;this.metaKey=a.metaKey;this.pointerId=a.pointerId||0;this.pointerType="string"===typeof a.pointerType?a.pointerType:le[a.pointerType]||"";this.state=a.state;
this.i=a;a.defaultPrevented&&ke.M.preventDefault.call(this)};
ke.prototype.stopPropagation=function(){ke.M.stopPropagation.call(this);this.i.stopPropagation?this.i.stopPropagation():this.i.cancelBubble=!0};
ke.prototype.preventDefault=function(){ke.M.preventDefault.call(this);var a=this.i;a.preventDefault?a.preventDefault():a.returnValue=!1};var me="closure_listenable_"+(1E6*Math.random()|0);var ne=0;function oe(a,b,c,d,e){this.listener=a;this.h=null;this.src=b;this.type=c;this.capture=!!d;this.ka=e;this.key=++ne;this.ea=this.ha=!1}
function pe(a){a.ea=!0;a.listener=null;a.h=null;a.src=null;a.ka=null}
;function qe(a){this.src=a;this.listeners={};this.h=0}
qe.prototype.add=function(a,b,c,d,e){var f=a.toString();a=this.listeners[f];a||(a=this.listeners[f]=[],this.h++);var g=re(a,b,d,e);-1<g?(b=a[g],c||(b.ha=!1)):(b=new oe(b,this.src,f,!!d,e),b.ha=c,a.push(b));return b};
qe.prototype.remove=function(a,b,c,d){a=a.toString();if(!(a in this.listeners))return!1;var e=this.listeners[a];b=re(e,b,c,d);return-1<b?(pe(e[b]),Array.prototype.splice.call(e,b,1),0==e.length&&(delete this.listeners[a],this.h--),!0):!1};
function se(a,b){var c=b.type;c in a.listeners&&ab(a.listeners[c],b)&&(pe(b),0==a.listeners[c].length&&(delete a.listeners[c],a.h--))}
function re(a,b,c,d){for(var e=0;e<a.length;++e){var f=a[e];if(!f.ea&&f.listener==b&&f.capture==!!c&&f.ka==d)return e}return-1}
;var te="closure_lm_"+(1E6*Math.random()|0),ue={},ve=0;function we(a,b,c,d,e){if(d&&d.once)xe(a,b,c,d,e);else if(Array.isArray(b))for(var f=0;f<b.length;f++)we(a,b[f],c,d,e);else c=ye(c),a&&a[me]?a.ca(b,c,Ja(d)?!!d.capture:!!d,e):ze(a,b,c,!1,d,e)}
function ze(a,b,c,d,e,f){if(!b)throw Error("Invalid event type");var g=Ja(e)?!!e.capture:!!e,h=Ae(a);h||(a[te]=h=new qe(a));c=h.add(b,c,d,g,f);if(!c.h){d=Be();c.h=d;d.src=a;d.listener=c;if(a.addEventListener)je||(e=g),void 0===e&&(e=!1),a.addEventListener(b.toString(),d,e);else if(a.attachEvent)a.attachEvent(Ce(b.toString()),d);else if(a.addListener&&a.removeListener)a.addListener(d);else throw Error("addEventListener and attachEvent are unavailable.");ve++}}
function Be(){function a(c){return b.call(a.src,a.listener,c)}
var b=De;return a}
function xe(a,b,c,d,e){if(Array.isArray(b))for(var f=0;f<b.length;f++)xe(a,b[f],c,d,e);else c=ye(c),a&&a[me]?a.i.add(String(b),c,!0,Ja(d)?!!d.capture:!!d,e):ze(a,b,c,!0,d,e)}
function Ee(a,b,c,d,e){if(Array.isArray(b))for(var f=0;f<b.length;f++)Ee(a,b[f],c,d,e);else(d=Ja(d)?!!d.capture:!!d,c=ye(c),a&&a[me])?a.i.remove(String(b),c,d,e):a&&(a=Ae(a))&&(b=a.listeners[b.toString()],a=-1,b&&(a=re(b,c,d,e)),(c=-1<a?b[a]:null)&&Fe(c))}
function Fe(a){if("number"!==typeof a&&a&&!a.ea){var b=a.src;if(b&&b[me])se(b.i,a);else{var c=a.type,d=a.h;b.removeEventListener?b.removeEventListener(c,d,a.capture):b.detachEvent?b.detachEvent(Ce(c),d):b.addListener&&b.removeListener&&b.removeListener(d);ve--;(c=Ae(b))?(se(c,a),0==c.h&&(c.src=null,b[te]=null)):pe(a)}}}
function Ce(a){return a in ue?ue[a]:ue[a]="on"+a}
function De(a,b){if(a.ea)a=!0;else{b=new ke(b,this);var c=a.listener,d=a.ka||a.src;a.ha&&Fe(a);a=c.call(d,b)}return a}
function Ae(a){a=a[te];return a instanceof qe?a:null}
var Ge="__closure_events_fn_"+(1E9*Math.random()>>>0);function ye(a){if("function"===typeof a)return a;a[Ge]||(a[Ge]=function(b){return a.handleEvent(b)});
return a[Ge]}
;function He(){L.call(this);this.i=new qe(this);this.J=this;this.o=null}
C(He,L);He.prototype[me]=!0;He.prototype.addEventListener=function(a,b,c,d){we(this,a,b,c,d)};
He.prototype.removeEventListener=function(a,b,c,d){Ee(this,a,b,c,d)};
function Ie(a,b){var c=a.o;if(c){var d=[];for(var e=1;c;c=c.o)d.push(c),++e}a=a.J;c=b.type||b;"string"===typeof b?b=new ie(b,a):b instanceof ie?b.target=b.target||a:(e=b,b=new ie(c,a),nb(b,e));e=!0;if(d)for(var f=d.length-1;!b.j&&0<=f;f--){var g=b.h=d[f];e=Je(g,c,!0,b)&&e}b.j||(g=b.h=a,e=Je(g,c,!0,b)&&e,b.j||(e=Je(g,c,!1,b)&&e));if(d)for(f=0;!b.j&&f<d.length;f++)g=b.h=d[f],e=Je(g,c,!1,b)&&e}
He.prototype.D=function(){He.M.D.call(this);if(this.i){var a=this.i,b=0,c;for(c in a.listeners){for(var d=a.listeners[c],e=0;e<d.length;e++)++b,pe(d[e]);delete a.listeners[c];a.h--}}this.o=null};
He.prototype.ca=function(a,b,c,d){return this.i.add(String(a),b,!1,c,d)};
function Je(a,b,c,d){b=a.i.listeners[String(b)];if(!b)return!0;b=b.concat();for(var e=!0,f=0;f<b.length;++f){var g=b[f];if(g&&!g.ea&&g.capture==c){var h=g.listener,k=g.ka||g.src;g.ha&&se(a.i,g);e=!1!==h.call(k,d)&&e}}return e&&!d.defaultPrevented}
;function Ke(a){Le();return yb(a)}
var Le=Ea;function Me(a){var b=[];Ne(new Oe,a,b);return b.join("")}
function Oe(){}
function Ne(a,b,c){if(null==b)c.push("null");else{if("object"==typeof b){if(Array.isArray(b)){var d=b;b=d.length;c.push("[");for(var e="",f=0;f<b;f++)c.push(e),Ne(a,d[f],c),e=",";c.push("]");return}if(b instanceof String||b instanceof Number||b instanceof Boolean)b=b.valueOf();else{c.push("{");e="";for(d in b)Object.prototype.hasOwnProperty.call(b,d)&&(f=b[d],"function"!=typeof f&&(c.push(e),Pe(d,c),c.push(":"),Ne(a,f,c),e=","));c.push("}");return}}switch(typeof b){case "string":Pe(b,c);break;case "number":c.push(isFinite(b)&&
!isNaN(b)?String(b):"null");break;case "boolean":c.push(String(b));break;case "function":c.push("null");break;default:throw Error("Unknown type: "+typeof b);}}}
var Qe={'"':'\\"',"\\":"\\\\","/":"\\/","\b":"\\b","\f":"\\f","\n":"\\n","\r":"\\r","\t":"\\t","\x0B":"\\u000b"},Re=/\uffff/.test("\uffff")?/[\\"\x00-\x1f\x7f-\uffff]/g:/[\\"\x00-\x1f\x7f-\xff]/g;function Pe(a,b){b.push('"',a.replace(Re,function(c){var d=Qe[c];d||(d="\\u"+(c.charCodeAt(0)|65536).toString(16).substr(1),Qe[c]=d);return d}),'"')}
;function Se(a){if(!a)return!1;try{return!!a.$goog_Thenable}catch(b){return!1}}
;function Te(a){this.h=0;this.o=void 0;this.l=this.i=this.j=null;this.u=this.m=!1;if(a!=Ea)try{var b=this;a.call(void 0,function(c){Ue(b,2,c)},function(c){Ue(b,3,c)})}catch(c){Ue(this,3,c)}}
function Ve(){this.next=this.context=this.onRejected=this.i=this.h=null;this.j=!1}
Ve.prototype.reset=function(){this.context=this.onRejected=this.i=this.h=null;this.j=!1};
var We=new td(function(){return new Ve},function(a){a.reset()});
function Xe(a,b,c){var d=We.get();d.i=a;d.onRejected=b;d.context=c;return d}
function Ye(a){return new Te(function(b,c){c(a)})}
Te.prototype.then=function(a,b,c){return Ze(this,"function"===typeof a?a:null,"function"===typeof b?b:null,c)};
Te.prototype.$goog_Thenable=!0;function $e(a,b){return Ze(a,null,b,void 0)}
Te.prototype.cancel=function(a){if(0==this.h){var b=new af(a);Bd(function(){bf(this,b)},this)}};
function bf(a,b){if(0==a.h)if(a.j){var c=a.j;if(c.i){for(var d=0,e=null,f=null,g=c.i;g&&(g.j||(d++,g.h==a&&(e=g),!(e&&1<d)));g=g.next)e||(f=g);e&&(0==c.h&&1==d?bf(c,b):(f?(d=f,d.next==c.l&&(c.l=d),d.next=d.next.next):cf(c),df(c,e,3,b)))}a.j=null}else Ue(a,3,b)}
function ef(a,b){a.i||2!=a.h&&3!=a.h||ff(a);a.l?a.l.next=b:a.i=b;a.l=b}
function Ze(a,b,c,d){var e=Xe(null,null,null);e.h=new Te(function(f,g){e.i=b?function(h){try{var k=b.call(d,h);f(k)}catch(l){g(l)}}:f;
e.onRejected=c?function(h){try{var k=c.call(d,h);void 0===k&&h instanceof af?g(h):f(k)}catch(l){g(l)}}:g});
e.h.j=a;ef(a,e);return e.h}
Te.prototype.C=function(a){this.h=0;Ue(this,2,a)};
Te.prototype.G=function(a){this.h=0;Ue(this,3,a)};
function Ue(a,b,c){if(0==a.h){a===c&&(b=3,c=new TypeError("Promise cannot resolve to itself"));a.h=1;a:{var d=c,e=a.C,f=a.G;if(d instanceof Te){ef(d,Xe(e||Ea,f||null,a));var g=!0}else if(Se(d))d.then(e,f,a),g=!0;else{if(Ja(d))try{var h=d.then;if("function"===typeof h){gf(d,h,e,f,a);g=!0;break a}}catch(k){f.call(a,k);g=!0;break a}g=!1}}g||(a.o=c,a.h=b,a.j=null,ff(a),3!=b||c instanceof af||hf(a,c))}}
function gf(a,b,c,d,e){function f(k){h||(h=!0,d.call(e,k))}
function g(k){h||(h=!0,c.call(e,k))}
var h=!1;try{b.call(a,g,f)}catch(k){f(k)}}
function ff(a){a.m||(a.m=!0,Bd(a.A,a))}
function cf(a){var b=null;a.i&&(b=a.i,a.i=b.next,b.next=null);a.i||(a.l=null);return b}
Te.prototype.A=function(){for(var a;a=cf(this);)df(this,a,this.h,this.o);this.m=!1};
function df(a,b,c,d){if(3==c&&b.onRejected&&!b.j)for(;a&&a.u;a=a.j)a.u=!1;if(b.h)b.h.j=null,jf(b,c,d);else try{b.j?b.i.call(b.context):jf(b,c,d)}catch(e){kf.call(null,e)}ud(We,b)}
function jf(a,b,c){2==b?a.i.call(a.context,c):a.onRejected&&a.onRejected.call(a.context,c)}
function hf(a,b){a.u=!0;Bd(function(){a.u&&kf.call(null,b)})}
var kf=xd;function af(a){Ta.call(this,a)}
C(af,Ta);af.prototype.name="cancel";function M(a){L.call(this);this.o=1;this.l=[];this.m=0;this.i=[];this.j={};this.A=!!a}
C(M,L);m=M.prototype;m.subscribe=function(a,b,c){var d=this.j[a];d||(d=this.j[a]=[]);var e=this.o;this.i[e]=a;this.i[e+1]=b;this.i[e+2]=c;this.o=e+3;d.push(e);return e};
function lf(a,b,c,d){if(b=a.j[b]){var e=a.i;(b=b.find(function(f){return e[f+1]==c&&e[f+2]==d}))&&a.da(b)}}
m.da=function(a){var b=this.i[a];if(b){var c=this.j[b];0!=this.m?(this.l.push(a),this.i[a+1]=Ea):(c&&ab(c,a),delete this.i[a],delete this.i[a+1],delete this.i[a+2])}return!!b};
m.W=function(a,b){var c=this.j[a];if(c){for(var d=Array(arguments.length-1),e=1,f=arguments.length;e<f;e++)d[e-1]=arguments[e];if(this.A)for(e=0;e<c.length;e++){var g=c[e];mf(this.i[g+1],this.i[g+2],d)}else{this.m++;try{for(e=0,f=c.length;e<f&&!this.h;e++)g=c[e],this.i[g+1].apply(this.i[g+2],d)}finally{if(this.m--,0<this.l.length&&0==this.m)for(;c=this.l.pop();)this.da(c)}}return 0!=e}return!1};
function mf(a,b,c){Bd(function(){a.apply(b,c)})}
m.clear=function(a){if(a){var b=this.j[a];b&&(b.forEach(this.da,this),delete this.j[a])}else this.i.length=0,this.j={}};
m.D=function(){M.M.D.call(this);this.clear();this.l.length=0};function nf(a){this.h=a}
nf.prototype.set=function(a,b){void 0===b?this.h.remove(a):this.h.set(a,Me(b))};
nf.prototype.get=function(a){try{var b=this.h.get(a)}catch(c){return}if(null!==b)try{return JSON.parse(b)}catch(c){throw"Storage: Invalid value was encountered";}};
nf.prototype.remove=function(a){this.h.remove(a)};function of(a){this.h=a}
C(of,nf);function pf(a){this.data=a}
function qf(a){return void 0===a||a instanceof pf?a:new pf(a)}
of.prototype.set=function(a,b){of.M.set.call(this,a,qf(b))};
of.prototype.i=function(a){a=of.M.get.call(this,a);if(void 0===a||a instanceof Object)return a;throw"Storage: Invalid value was encountered";};
of.prototype.get=function(a){if(a=this.i(a)){if(a=a.data,void 0===a)throw"Storage: Invalid value was encountered";}else a=void 0;return a};function rf(a){this.h=a}
C(rf,of);rf.prototype.set=function(a,b,c){if(b=qf(b)){if(c){if(c<Date.now()){rf.prototype.remove.call(this,a);return}b.expiration=c}b.creation=Date.now()}rf.M.set.call(this,a,b)};
rf.prototype.i=function(a){var b=rf.M.i.call(this,a);if(b){var c=b.creation,d=b.expiration;if(d&&d<Date.now()||c&&c>Date.now())rf.prototype.remove.call(this,a);else return b}};function sf(){}
;function tf(){}
C(tf,sf);tf.prototype[Symbol.iterator]=function(){return Zd(this.K(!0)).i()};
tf.prototype.clear=function(){var a=Array.from(this);a=u(a);for(var b=a.next();!b.done;b=a.next())this.remove(b.value)};function uf(a){this.h=a}
C(uf,tf);m=uf.prototype;m.isAvailable=function(){if(!this.h)return!1;try{return this.h.setItem("__sak","1"),this.h.removeItem("__sak"),!0}catch(a){return!1}};
m.set=function(a,b){try{this.h.setItem(a,b)}catch(c){if(0==this.h.length)throw"Storage mechanism: Storage disabled";throw"Storage mechanism: Quota exceeded";}};
m.get=function(a){a=this.h.getItem(a);if("string"!==typeof a&&null!==a)throw"Storage mechanism: Invalid value was encountered";return a};
m.remove=function(a){this.h.removeItem(a)};
m.K=function(a){var b=0,c=this.h,d=new Yd;d.h=function(){if(b>=c.length)throw Xd;var e=c.key(b++);if(a)return e;e=c.getItem(e);if("string"!==typeof e)throw"Storage mechanism: Invalid value was encountered";return e};
d.next=d.h.bind(d);return d};
m.clear=function(){this.h.clear()};
m.key=function(a){return this.h.key(a)};function vf(){var a=null;try{a=window.localStorage||null}catch(b){}this.h=a}
C(vf,uf);function wf(a,b){this.i=a;this.h=null;var c;if(c=jc)c=!(9<=Number(wc));if(c){xf||(xf=new de);this.h=xf.get(a);this.h||(b?this.h=document.getElementById(b):(this.h=document.createElement("userdata"),this.h.addBehavior("#default#userData"),document.body.appendChild(this.h)),xf.set(a,this.h));try{this.h.load(this.i)}catch(d){this.h=null}}}
C(wf,tf);var yf={".":".2E","!":".21","~":".7E","*":".2A","'":".27","(":".28",")":".29","%":"."},xf=null;function zf(a){return"_"+encodeURIComponent(a).replace(/[.!~*'()%]/g,function(b){return yf[b]})}
m=wf.prototype;m.isAvailable=function(){return!!this.h};
m.set=function(a,b){this.h.setAttribute(zf(a),b);Af(this)};
m.get=function(a){a=this.h.getAttribute(zf(a));if("string"!==typeof a&&null!==a)throw"Storage mechanism: Invalid value was encountered";return a};
m.remove=function(a){this.h.removeAttribute(zf(a));Af(this)};
m.K=function(a){var b=0,c=this.h.XMLDocument.documentElement.attributes,d=new Yd;d.h=function(){if(b>=c.length)throw Xd;var e=c[b++];if(a)return decodeURIComponent(e.nodeName.replace(/\./g,"%")).substr(1);e=e.nodeValue;if("string"!==typeof e)throw"Storage mechanism: Invalid value was encountered";return e};
d.next=d.h.bind(d);return d};
m.clear=function(){for(var a=this.h.XMLDocument.documentElement,b=a.attributes.length;0<b;b--)a.removeAttribute(a.attributes[b-1].nodeName);Af(this)};
function Af(a){try{a.h.save(a.i)}catch(b){throw"Storage mechanism: Quota exceeded";}}
;function Bf(a,b){this.i=a;this.h=b+"::"}
C(Bf,tf);Bf.prototype.set=function(a,b){this.i.set(this.h+a,b)};
Bf.prototype.get=function(a){return this.i.get(this.h+a)};
Bf.prototype.remove=function(a){this.i.remove(this.h+a)};
Bf.prototype.K=function(a){var b=this.i.K(!0),c=this,d=new Yd;d.h=function(){for(var e=b.h();e.substr(0,c.h.length)!=c.h;)e=b.h();return a?e.substr(c.h.length):c.i.get(e)};
d.next=d.h.bind(d);return d};function Cf(a,b){1<b.length?a[b[0]]=b[1]:1===b.length&&Object.assign(a,b[0])}
;var Df,Ef,Ff=y.window,Gf=(null===(Df=null===Ff||void 0===Ff?void 0:Ff.yt)||void 0===Df?void 0:Df.config_)||(null===(Ef=null===Ff||void 0===Ff?void 0:Ff.ytcfg)||void 0===Ef?void 0:Ef.data_)||{};z("yt.config_",Gf,void 0);function N(a){for(var b=0;b<arguments.length;++b);Cf(Gf,arguments)}
function F(a,b){return a in Gf?Gf[a]:b}
;var Hf=[];function If(a){Hf.forEach(function(b){return b(a)})}
function Jf(a){return a&&window.yterr?function(){try{return a.apply(this,arguments)}catch(b){Kf(b)}}:a}
function Kf(a){var b=B("yt.logging.errors.log");b?b(a,"ERROR",void 0,void 0,void 0):(b=F("ERRORS",[]),b.push([a,"ERROR",void 0,void 0,void 0]),N("ERRORS",b));If(a)}
function Lf(a){var b=B("yt.logging.errors.log");b?b(a,"WARNING",void 0,void 0,void 0):(b=F("ERRORS",[]),b.push([a,"WARNING",void 0,void 0,void 0]),N("ERRORS",b))}
;var Mf=window.yt&&window.yt.msgs_||window.ytcfg&&window.ytcfg.msgs||{};z("yt.msgs_",Mf,void 0);function Nf(a){Cf(Mf,arguments)}
;function O(a){a=Of(a);return"string"===typeof a&&"false"===a?!1:!!a}
function Pf(a,b){a=Of(a);return void 0===a&&void 0!==b?b:Number(a||0)}
function Of(a){var b=F("EXPERIMENTS_FORCED_FLAGS",{});return void 0!==b[a]?b[a]:F("EXPERIMENT_FLAGS",{})[a]}
;var Qf=0,Rf=mc?"webkit":lc?"moz":jc?"ms":ic?"o":"";z("ytDomDomGetNextId",B("ytDomDomGetNextId")||function(){return++Qf},void 0);var Sf={stopImmediatePropagation:1,stopPropagation:1,preventMouseEvent:1,preventManipulation:1,preventDefault:1,layerX:1,layerY:1,screenX:1,screenY:1,scale:1,rotation:1,webkitMovementX:1,webkitMovementY:1};
function Tf(a){this.type="";this.state=this.source=this.data=this.currentTarget=this.relatedTarget=this.target=null;this.charCode=this.keyCode=0;this.metaKey=this.shiftKey=this.ctrlKey=this.altKey=!1;this.rotation=this.clientY=this.clientX=0;this.changedTouches=this.touches=null;try{if(a=a||window.event){this.event=a;for(var b in a)b in Sf||(this[b]=a[b]);this.rotation=a.rotation;var c=a.target||a.srcElement;c&&3==c.nodeType&&(c=c.parentNode);this.target=c;var d=a.relatedTarget;if(d)try{d=d.nodeName?
d:null}catch(e){d=null}else"mouseover"==this.type?d=a.fromElement:"mouseout"==this.type&&(d=a.toElement);this.relatedTarget=d;this.clientX=void 0!=a.clientX?a.clientX:a.pageX;this.clientY=void 0!=a.clientY?a.clientY:a.pageY;this.keyCode=a.keyCode?a.keyCode:a.which;this.charCode=a.charCode||("keypress"==this.type?this.keyCode:0);this.altKey=a.altKey;this.ctrlKey=a.ctrlKey;this.shiftKey=a.shiftKey;this.metaKey=a.metaKey;this.h=a.pageX;this.i=a.pageY}}catch(e){}}
function Uf(a){if(document.body&&document.documentElement){var b=document.body.scrollTop+document.documentElement.scrollTop;a.h=a.clientX+(document.body.scrollLeft+document.documentElement.scrollLeft);a.i=a.clientY+b}}
Tf.prototype.preventDefault=function(){this.event&&(this.event.returnValue=!1,this.event.preventDefault&&this.event.preventDefault())};
Tf.prototype.stopPropagation=function(){this.event&&(this.event.cancelBubble=!0,this.event.stopPropagation&&this.event.stopPropagation())};
Tf.prototype.stopImmediatePropagation=function(){this.event&&(this.event.cancelBubble=!0,this.event.stopImmediatePropagation&&this.event.stopImmediatePropagation())};var fb=y.ytEventsEventsListeners||{};z("ytEventsEventsListeners",fb,void 0);var Vf=y.ytEventsEventsCounter||{count:0};z("ytEventsEventsCounter",Vf,void 0);
function Wf(a,b,c,d){d=void 0===d?{}:d;a.addEventListener&&("mouseenter"!=b||"onmouseenter"in document?"mouseleave"!=b||"onmouseenter"in document?"mousewheel"==b&&"MozBoxSizing"in document.documentElement.style&&(b="MozMousePixelScroll"):b="mouseout":b="mouseover");return eb(function(e){var f="boolean"===typeof e[4]&&e[4]==!!d,g=Ja(e[4])&&Ja(d)&&jb(e[4],d);return!!e.length&&e[0]==a&&e[1]==b&&e[2]==c&&(f||g)})}
var Xf=Va(function(){var a=!1;try{var b=Object.defineProperty({},"capture",{get:function(){a=!0}});
window.addEventListener("test",null,b)}catch(c){}return a});
function Yf(a,b,c,d){d=void 0===d?{}:d;if(!a||!a.addEventListener&&!a.attachEvent)return"";var e=Wf(a,b,c,d);if(e)return e;e=++Vf.count+"";var f=!("mouseenter"!=b&&"mouseleave"!=b||!a.addEventListener||"onmouseenter"in document);var g=f?function(h){h=new Tf(h);if(!Vc(h.relatedTarget,function(k){return k==a}))return h.currentTarget=a,h.type=b,c.call(a,h)}:function(h){h=new Tf(h);
h.currentTarget=a;return c.call(a,h)};
g=Jf(g);a.addEventListener?("mouseenter"==b&&f?b="mouseover":"mouseleave"==b&&f?b="mouseout":"mousewheel"==b&&"MozBoxSizing"in document.documentElement.style&&(b="MozMousePixelScroll"),Xf()||"boolean"===typeof d?a.addEventListener(b,g,d):a.addEventListener(b,g,!!d.capture)):a.attachEvent("on"+b,g);fb[e]=[a,b,c,g,d];return e}
function Zf(a){a&&("string"==typeof a&&(a=[a]),D(a,function(b){if(b in fb){var c=fb[b],d=c[0],e=c[1],f=c[3];c=c[4];d.removeEventListener?Xf()||"boolean"===typeof c?d.removeEventListener(e,f,c):d.removeEventListener(e,f,!!c.capture):d.detachEvent&&d.detachEvent("on"+e,f);delete fb[b]}}))}
;var $f=window.ytcsi&&window.ytcsi.now?window.ytcsi.now:window.performance&&window.performance.timing&&window.performance.now&&window.performance.timing.navigationStart?function(){return window.performance.timing.navigationStart+window.performance.now()}:function(){return(new Date).getTime()};function ag(a,b){"function"===typeof a&&(a=Jf(a));return window.setTimeout(a,b)}
function bg(a){window.clearTimeout(a)}
;function cg(a){this.C=a;this.i=null;this.m=0;this.A=null;this.o=0;this.j=[];for(a=0;4>a;a++)this.j.push(0);this.l=0;this.J=Yf(window,"mousemove",Pa(this.N,this));a=Pa(this.G,this);"function"===typeof a&&(a=Jf(a));this.O=window.setInterval(a,25)}
C(cg,L);cg.prototype.N=function(a){void 0===a.h&&Uf(a);var b=a.h;void 0===a.i&&Uf(a);this.i=new Nc(b,a.i)};
cg.prototype.G=function(){if(this.i){var a=$f();if(0!=this.m){var b=this.A,c=this.i,d=b.x-c.x;b=b.y-c.y;d=Math.sqrt(d*d+b*b)/(a-this.m);this.j[this.l]=.5<Math.abs((d-this.o)/this.o)?1:0;for(c=b=0;4>c;c++)b+=this.j[c]||0;3<=b&&this.C();this.o=d}this.m=a;this.A=this.i;this.l=(this.l+1)%4}};
cg.prototype.D=function(){window.clearInterval(this.O);Zf(this.J)};function dg(){}
function eg(a,b){return fg(a,0,b)}
function gg(a,b){return fg(a,1,b)}
;function hg(){dg.apply(this,arguments)}
v(hg,dg);function fg(a,b,c){void 0!==c&&Number.isNaN(Number(c))&&(c=void 0);var d=B("yt.scheduler.instance.addJob");return d?d(a,b,c):void 0===c?(a(),NaN):ag(a,c||0)}
function ig(a){if(void 0===a||!Number.isNaN(Number(a))){var b=B("yt.scheduler.instance.cancelJob");b?b(a):bg(a)}}
hg.prototype.start=function(){var a=B("yt.scheduler.instance.start");a&&a()};
hg.prototype.pause=function(){var a=B("yt.scheduler.instance.pause");a&&a()};hg.h||(hg.h=new hg);var jg={};
function kg(a){var b=void 0===a?{}:a;a=void 0===b.kb?!1:b.kb;b=void 0===b.Ua?!0:b.Ua;if(null==B("_lact",window)){var c=parseInt(F("LACT"),10);c=isFinite(c)?Date.now()-Math.max(c,0):-1;z("_lact",c,window);z("_fact",c,window);-1==c&&lg();Yf(document,"keydown",lg);Yf(document,"keyup",lg);Yf(document,"mousedown",lg);Yf(document,"mouseup",lg);a?Yf(window,"touchmove",function(){mg("touchmove",200)},{passive:!0}):(Yf(window,"resize",function(){mg("resize",200)}),b&&Yf(window,"scroll",function(){mg("scroll",200)}));
new cg(function(){mg("mouse",100)});
Yf(document,"touchstart",lg,{passive:!0});Yf(document,"touchend",lg,{passive:!0})}}
function mg(a,b){jg[a]||(jg[a]=!0,gg(function(){lg();jg[a]=!1},b))}
function lg(){null==B("_lact",window)&&kg();var a=Date.now();z("_lact",a,window);-1==B("_fact",window)&&z("_fact",a,window);(a=B("ytglobal.ytUtilActivityCallback_"))&&a()}
function ng(){var a=B("_lact",window);return null==a?-1:Math.max(Date.now()-a,0)}
;function og(){var a=pg;B("yt.ads.biscotti.getId_")||z("yt.ads.biscotti.getId_",a,void 0)}
function qg(a){z("yt.ads.biscotti.lastId_",a,void 0)}
;var rg=/^[\w.]*$/,sg={q:!0,search_query:!0};function tg(a,b){b=a.split(b);for(var c={},d=0,e=b.length;d<e;d++){var f=b[d].split("=");if(1==f.length&&f[0]||2==f.length)try{var g=ug(f[0]||""),h=ug(f[1]||"");g in c?Array.isArray(c[g])?cb(c[g],h):c[g]=[c[g],h]:c[g]=h}catch(q){var k=q,l=f[0],n=String(tg);k.args=[{key:l,value:f[1],query:a,method:vg==n?"unchanged":n}];sg.hasOwnProperty(l)||Lf(k)}}return c}
var vg=String(tg);function wg(a){var b=[];db(a,function(c,d){var e=encodeURIComponent(String(d)),f;Array.isArray(c)?f=c:f=[c];D(f,function(g){""==g?b.push(e):b.push(e+"="+encodeURIComponent(String(g)))})});
return b.join("&")}
function xg(a){"?"==a.charAt(0)&&(a=a.substr(1));return tg(a,"&")}
function yg(){var a=window.location.href;return-1!=a.indexOf("?")?(a=(a||"").split("#")[0],a=a.split("?",2),xg(1<a.length?a[1]:a[0])):{}}
function zg(a,b,c){var d=a.split("#",2);a=d[0];d=1<d.length?"#"+d[1]:"";var e=a.split("?",2);a=e[0];e=xg(e[1]||"");for(var f in b)!c&&null!==e&&f in e||(e[f]=b[f]);return ec(a,e)+d}
function Ag(a){if(!b)var b=window.location.href;var c=a.match($b)[1]||null,d=bc(a);c&&d?(a=a.match($b),b=b.match($b),a=a[3]==b[3]&&a[1]==b[1]&&a[4]==b[4]):a=d?bc(b)==d&&(Number(b.match($b)[4]||null)||null)==(Number(a.match($b)[4]||null)||null):!0;return a}
function ug(a){return a&&a.match(rg)?a:decodeURIComponent(a.replace(/\+/g," "))}
;function Bg(a){var b=Cg;a=void 0===a?B("yt.ads.biscotti.lastId_")||"":a;var c=Object,d=c.assign,e={};e.dt=ed;e.flash="0";a:{try{var f=b.h.top.location.href}catch(Ia){f=2;break a}f=f?f===b.i.location.href?0:1:2}e=(e.frm=f,e);try{e.u_tz=-(new Date).getTimezoneOffset();var g=void 0===g?K:g;try{var h=g.history.length}catch(Ia){h=0}e.u_his=h;e.u_java=!!K.navigator&&"unknown"!==typeof K.navigator.javaEnabled&&!!K.navigator.javaEnabled&&K.navigator.javaEnabled();K.screen&&(e.u_h=K.screen.height,e.u_w=K.screen.width,
e.u_ah=K.screen.availHeight,e.u_aw=K.screen.availWidth,e.u_cd=K.screen.colorDepth);K.navigator&&K.navigator.plugins&&(e.u_nplug=K.navigator.plugins.length);K.navigator&&K.navigator.mimeTypes&&(e.u_nmime=K.navigator.mimeTypes.length)}catch(Ia){}h=b.h;try{var k=h.screenX;var l=h.screenY}catch(Ia){}try{var n=h.outerWidth;var q=h.outerHeight}catch(Ia){}try{var r=h.innerWidth;var p=h.innerHeight}catch(Ia){}try{var A=h.screenLeft;var I=h.screenTop}catch(Ia){}try{r=h.innerWidth,p=h.innerHeight}catch(Ia){}try{var E=
h.screen.availWidth;var Q=h.screen.availTop}catch(Ia){}k=[A,I,k,l,E,Q,n,q,r,p];l=b.h.top;try{var V=(l||window).document,J="CSS1Compat"==V.compatMode?V.documentElement:V.body;var U=(new Oc(J.clientWidth,J.clientHeight)).round()}catch(Ia){U=new Oc(-12245933,-12245933)}V=U;U={};J=new rd;y.SVGElement&&y.document.createElementNS&&J.set(0);l=$c();l["allow-top-navigation-by-user-activation"]&&J.set(1);l["allow-popups-to-escape-sandbox"]&&J.set(2);y.crypto&&y.crypto.subtle&&J.set(3);y.TextDecoder&&y.TextEncoder&&
J.set(4);J=sd(J);U.bc=J;U.bih=V.height;U.biw=V.width;U.brdim=k.join();b=b.i;b=(U.vis={visible:1,hidden:2,prerender:3,preview:4,unloaded:5}[b.visibilityState||b.webkitVisibilityState||b.mozVisibilityState||""]||0,U.wgl=!!K.WebGLRenderingContext,U);c=d.call(c,e,b);c.ca_type="image";a&&(c.bid=a);return c}
var Cg=new function(){var a=window.document;this.h=window;this.i=a};
z("yt.ads_.signals_.getAdSignalsString",function(a){return wg(Bg(a))},void 0);var Dg="XMLHttpRequest"in y?function(){return new XMLHttpRequest}:null;
function Eg(){if(!Dg)return null;var a=Dg();return"open"in a?a:null}
function Fg(a){switch(a&&"status"in a?a.status:-1){case 200:case 201:case 202:case 203:case 204:case 205:case 206:case 304:return!0;default:return!1}}
;var Gg={Authorization:"AUTHORIZATION","X-Goog-Visitor-Id":"SANDBOXED_VISITOR_ID","X-Youtube-Domain-Admin-State":"DOMAIN_ADMIN_STATE","X-Youtube-Chrome-Connected":"CHROME_CONNECTED_HEADER","X-YouTube-Client-Name":"INNERTUBE_CONTEXT_CLIENT_NAME","X-YouTube-Client-Version":"INNERTUBE_CONTEXT_CLIENT_VERSION","X-YouTube-Delegation-Context":"INNERTUBE_CONTEXT_SERIALIZED_DELEGATION_CONTEXT","X-YouTube-Device":"DEVICE","X-Youtube-Identity-Token":"ID_TOKEN","X-YouTube-Page-CL":"PAGE_CL","X-YouTube-Page-Label":"PAGE_BUILD_LABEL",
"X-YouTube-Variants-Checksum":"VARIANTS_CHECKSUM"},Hg="app debugcss debugjs expflag force_ad_params force_ad_encrypted force_viral_ad_response_params forced_experiments innertube_snapshots innertube_goldens internalcountrycode internalipoverride absolute_experiments conditional_experiments sbb sr_bns_address".split(" ").concat(fa("client_dev_mss_url client_dev_regex_map client_dev_root_url expflag jsfeat jsmode client_rollout_override".split(" "))),Ig=!1;
function Jg(a,b){b=void 0===b?{}:b;var c=Ag(a),d=O("web_ajax_ignore_global_headers_if_set"),e;for(e in Gg){var f=F(Gg[e]);!f||!c&&bc(a)||d&&void 0!==b[e]||(b[e]=f)}if(c||!bc(a))b["X-YouTube-Utc-Offset"]=String(-(new Date).getTimezoneOffset());if(c||!bc(a)){try{var g=(new Intl.DateTimeFormat).resolvedOptions().timeZone}catch(h){}g&&(b["X-YouTube-Time-Zone"]=g)}if(c||!bc(a))b["X-YouTube-Ad-Signals"]=wg(Bg(void 0));return b}
function Kg(a){var b=window.location.search,c=bc(a);O("debug_handle_relative_url_for_query_forward_killswitch")||c||!Ag(a)||(c=document.location.hostname);var d=ac(a.match($b)[5]||null);d=(c=c&&(c.endsWith("youtube.com")||c.endsWith("youtube-nocookie.com")))&&d&&d.startsWith("/api/");if(!c||d)return a;var e=xg(b),f={};D(Hg,function(g){e[g]&&(f[g]=e[g])});
return zg(a,f||{},!1)}
function Lg(a,b){var c=b.format||"JSON";a=Mg(a,b);var d=Ng(a,b),e=!1,f=Og(a,function(k){if(!e){e=!0;h&&bg(h);var l=Fg(k),n=null,q=400<=k.status&&500>k.status,r=500<=k.status&&600>k.status;if(l||q||r)n=Pg(a,c,k,b.convertToSafeHtml);if(l)a:if(k&&204==k.status)l=!0;else{switch(c){case "XML":l=0==parseInt(n&&n.return_code,10);break a;case "RAW":l=!0;break a}l=!!n}n=n||{};q=b.context||y;l?b.onSuccess&&b.onSuccess.call(q,k,n):b.onError&&b.onError.call(q,k,n);b.onFinish&&b.onFinish.call(q,k,n)}},b.method,
d,b.headers,b.responseType,b.withCredentials);
if(b.onTimeout&&0<b.timeout){var g=b.onTimeout;var h=ag(function(){e||(e=!0,f.abort(),bg(h),g.call(b.context||y,f))},b.timeout)}return f}
function Mg(a,b){b.includeDomain&&(a=document.location.protocol+"//"+document.location.hostname+(document.location.port?":"+document.location.port:"")+a);var c=F("XSRF_FIELD_NAME",void 0);if(b=b.urlParams)b[c]&&delete b[c],a=zg(a,b||{},!0);return a}
function Ng(a,b){var c=F("XSRF_FIELD_NAME",void 0),d=F("XSRF_TOKEN",void 0),e=b.postBody||"",f=b.postParams,g=F("XSRF_FIELD_NAME",void 0),h;b.headers&&(h=b.headers["Content-Type"]);b.excludeXsrf||bc(a)&&!b.withCredentials&&bc(a)!=document.location.hostname||"POST"!=b.method||h&&"application/x-www-form-urlencoded"!=h||b.postParams&&b.postParams[g]||(f||(f={}),f[c]=d);f&&"string"===typeof e&&(e=xg(e),nb(e,f),e=b.postBodyFormat&&"JSON"==b.postBodyFormat?JSON.stringify(e):dc(e));f=e||f&&!gb(f);!Ig&&f&&
"POST"!=b.method&&(Ig=!0,Kf(Error("AJAX request with postData should use POST")));return e}
function Pg(a,b,c,d){var e=null;switch(b){case "JSON":try{var f=c.responseText}catch(g){throw d=Error("Error reading responseText"),d.params=a,Lf(d),g;}a=c.getResponseHeader("Content-Type")||"";f&&0<=a.indexOf("json")&&(")]}'\n"===f.substring(0,5)&&(f=f.substring(5)),e=JSON.parse(f));break;case "XML":if(a=(a=c.responseXML)?Qg(a):null)e={},D(a.getElementsByTagName("*"),function(g){e[g.tagName]=Rg(g)})}d&&Sg(e);
return e}
function Sg(a){if(Ja(a))for(var b in a){var c;(c="html_content"==b)||(c=b.length-5,c=0<=c&&b.indexOf("_html",c)==c);if(c){c=b;sb("HTML that is escaped and sanitized server-side and passed through yt.net.ajax");var d=Tb(a[b],null);a[c]=d}else Sg(a[b])}}
function Qg(a){return a?(a=("responseXML"in a?a.responseXML:a).getElementsByTagName("root"))&&0<a.length?a[0]:null:null}
function Rg(a){var b="";D(a.childNodes,function(c){b+=c.nodeValue});
return b}
function Og(a,b,c,d,e,f,g){function h(){4==(k&&"readyState"in k?k.readyState:0)&&b&&Jf(b)(k)}
c=void 0===c?"GET":c;d=void 0===d?"":d;var k=Eg();if(!k)return null;"onloadend"in k?k.addEventListener("loadend",h,!1):k.onreadystatechange=h;O("debug_forward_web_query_parameters")&&(a=Kg(a));k.open(c,a,!0);f&&(k.responseType=f);g&&(k.withCredentials=!0);c="POST"==c&&(void 0===window.FormData||!(d instanceof FormData));if(e=Jg(a,e))for(var l in e)k.setRequestHeader(l,e[l]),"content-type"==l.toLowerCase()&&(c=!1);c&&k.setRequestHeader("Content-Type","application/x-www-form-urlencoded");k.send(d);
return k}
;var Tg=xc||yc;function Ug(a){var b=Ob;return b?0<=b.toLowerCase().indexOf(a):!1}
;var Vg={},Wg=0;
function Xg(a,b,c,d,e){e=void 0===e?"":e;if(a)if(c&&!Ug("cobalt")){if(a){a instanceof Hb||(a="object"==typeof a&&a.S?a.R():String(a),Mb.test(a)?a=new Hb(a,Ib):(a=String(a),a=a.replace(/(%0A|%0D)/g,""),a=(b=a.match(Lb))&&Kb.test(b[1])?new Hb(a,Ib):null));b=Jb(a||Nb);if("about:invalid#zClosurez"===b||b.startsWith("data"))a="";else{if(b instanceof Sb)a=b;else{var f="object"==typeof b;a=null;f&&b.xa&&(a=b.sa());b=f&&b.S?b.R():String(b);Gb.test(b)&&(-1!=b.indexOf("&")&&(b=b.replace(Ab,"&amp;")),-1!=b.indexOf("<")&&
(b=b.replace(Bb,"&lt;")),-1!=b.indexOf(">")&&(b=b.replace(Cb,"&gt;")),-1!=b.indexOf('"')&&(b=b.replace(Db,"&quot;")),-1!=b.indexOf("'")&&(b=b.replace(Eb,"&#39;")),-1!=b.indexOf("\x00")&&(b=b.replace(Fb,"&#0;")));a=Tb(b,a)}a instanceof Sb&&a.constructor===Sb?a=a.h:(Ga(a),a="type_error:SafeHtml");a=encodeURIComponent(String(Me(a.toString())))}/^[\s\xa0]*$/.test(a)||(a=Sc("IFRAME",{src:'javascript:"<body><img src=\\""+'+a+'+"\\"></body>"',style:"display:none"}),(9==a.nodeType?a:a.ownerDocument||a.document).body.appendChild(a))}}else if(e)Og(a,
b,"POST",e,d);else if(F("USE_NET_AJAX_FOR_PING_TRANSPORT",!1)||d)Og(a,b,"GET","",d);else{b:{try{var g=new Ua({url:a});if(g.j&&g.i||g.l){var h=ac(a.match($b)[5]||null),k;if(!(k=!h||!h.endsWith("/aclk"))){var l=a.search(fc);d:{for(c=0;0<=(c=a.indexOf("ri",c))&&c<l;){var n=a.charCodeAt(c-1);if(38==n||63==n){var q=a.charCodeAt(c+2);if(!q||61==q||38==q||35==q){var r=c;break d}}c+=3}r=-1}if(0>r)var p=null;else{var A=a.indexOf("&",r);if(0>A||A>l)A=l;r+=3;p=decodeURIComponent(a.substr(r,A-r).replace(/\+/g,
" "))}k="1"!==p}f=!k;break b}}catch(I){}f=!1}f?Yg(a)?(b&&b(),f=!0):f=!1:f=!1;f||Zg(a,b)}}
function $g(a,b,c){c=void 0===c?"":c;Yg(a,c)?b&&b():Xg(a,b,void 0,void 0,c)}
function Yg(a,b){try{if(window.navigator&&window.navigator.sendBeacon&&window.navigator.sendBeacon(a,void 0===b?"":b))return!0}catch(c){}return!1}
function Zg(a,b){var c=new Image,d=""+Wg++;Vg[d]=c;c.onload=c.onerror=function(){b&&Vg[d]&&b();delete Vg[d]};
c.src=a}
;var ah=y.ytPubsubPubsubInstance||new M,bh=y.ytPubsubPubsubSubscribedKeys||{},ch=y.ytPubsubPubsubTopicToKeys||{},dh=y.ytPubsubPubsubIsSynchronous||{};function eh(a,b){var c=fh();if(c&&b){var d=c.subscribe(a,function(){var e=arguments;var f=function(){bh[d]&&b.apply&&"function"==typeof b.apply&&b.apply(window,e)};
try{dh[a]?f():ag(f,0)}catch(g){Kf(g)}},void 0);
bh[d]=!0;ch[a]||(ch[a]=[]);ch[a].push(d);return d}return 0}
function gh(a){var b=fh();b&&("number"===typeof a?a=[a]:"string"===typeof a&&(a=[parseInt(a,10)]),D(a,function(c){b.unsubscribeByKey(c);delete bh[c]}))}
function hh(a,b){var c=fh();c&&c.publish.apply(c,arguments)}
function ih(a){var b=fh();if(b)if(b.clear(a),a)jh(a);else for(var c in ch)jh(c)}
function fh(){return y.ytPubsubPubsubInstance}
function jh(a){ch[a]&&(a=ch[a],D(a,function(b){bh[b]&&delete bh[b]}),a.length=0)}
M.prototype.subscribe=M.prototype.subscribe;M.prototype.unsubscribeByKey=M.prototype.da;M.prototype.publish=M.prototype.W;M.prototype.clear=M.prototype.clear;z("ytPubsubPubsubInstance",ah,void 0);z("ytPubsubPubsubTopicToKeys",ch,void 0);z("ytPubsubPubsubIsSynchronous",dh,void 0);z("ytPubsubPubsubSubscribedKeys",bh,void 0);var kh=window,P=kh.ytcsi&&kh.ytcsi.now?kh.ytcsi.now:kh.performance&&kh.performance.timing&&kh.performance.now&&kh.performance.timing.navigationStart?function(){return kh.performance.timing.navigationStart+kh.performance.now()}:function(){return(new Date).getTime()};var lh=Pf("initial_gel_batch_timeout",2E3),mh=Math.pow(2,16)-1,nh=null,oh=0,ph=void 0,qh=0,rh=0,sh=0,th=!0,uh=y.ytLoggingTransportGELQueue_||new Map;z("ytLoggingTransportGELQueue_",uh,void 0);var vh=y.ytLoggingTransportTokensToCttTargetIds_||{};z("ytLoggingTransportTokensToCttTargetIds_",vh,void 0);
function wh(a,b){if("log_event"===a.endpoint){var c="";a.ja?c="visitorOnlyApprovedKey":a.F&&(vh[a.F.token]=xh(a.F),c=a.F.token);var d=uh.get(c)||[];uh.set(c,d);d.push(a.payload);b&&(ph=new b);a=Pf("tvhtml5_logging_max_batch")||Pf("web_logging_max_batch")||100;b=P();d.length>=a?yh({writeThenSend:!0}):10<=b-sh&&(zh(),sh=b)}}
function Ah(a,b){if("log_event"===a.endpoint){var c="";a.ja?c="visitorOnlyApprovedKey":a.F&&(vh[a.F.token]=xh(a.F),c=a.F.token);var d=new Map;d.set(c,[a.payload]);b&&(ph=new b);return new Te(function(e){ph&&ph.isReady()?Bh(d,e,{bypassNetworkless:!0}):e()})}}
function yh(a){a=void 0===a?{}:a;new Te(function(b){bg(qh);bg(rh);rh=0;ph&&ph.isReady()?(Bh(uh,b,a),uh.clear()):(zh(),b())})}
function zh(){O("web_gel_timeout_cap")&&!rh&&(rh=ag(function(){yh({writeThenSend:!0})},6E4));
bg(qh);var a=F("LOGGING_BATCH_TIMEOUT",Pf("web_gel_debounce_ms",1E4));O("shorten_initial_gel_batch_timeout")&&th&&(a=lh);qh=ag(function(){yh({writeThenSend:!0})},a)}
function Bh(a,b,c){var d=ph;c=void 0===c?{}:c;var e=Math.round(P()),f=a.size;a=u(a);for(var g=a.next();!g.done;g=a.next()){var h=u(g.value);g=h.next().value;var k=h=h.next().value;h=lb({context:Ch(d.config_||Dh())});h.events=k;(k=vh[g])&&Eh(h,g,k);delete vh[g];g="visitorOnlyApprovedKey"===g;Fh(h,e,g);O("send_beacon_before_gel")&&window.navigator&&window.navigator.sendBeacon&&!c.writeThenSend&&$g("/generate_204");Gh(d,"log_event",h,{retry:!0,onSuccess:function(){f--;f||b();oh=Math.round(P()-e)},
onError:function(){f--;f||b()},
La:c,ja:g});th=!1}}
function Fh(a,b,c){a.requestTimeMs=String(b);O("unsplit_gel_payloads_in_logs")&&(a.unsplitGelPayloadsInLogs=!0);!c&&(b=F("EVENT_ID",void 0))&&((c=F("BATCH_CLIENT_COUNTER",void 0)||0)||(c=Math.floor(Math.random()*mh/2)),c++,c>mh&&(c=1),N("BATCH_CLIENT_COUNTER",c),b={serializedEventId:b,clientCounter:String(c)},a.serializedClientEventId=b,nh&&oh&&O("log_gel_rtt_web")&&(a.previousBatchInfo={serializedClientEventId:nh,roundtripMs:String(oh)}),nh=b,oh=0)}
function Eh(a,b,c){if(c.videoId)var d="VIDEO";else if(c.playlistId)d="PLAYLIST";else return;a.credentialTransferTokenTargetId=c;a.context=a.context||{};a.context.user=a.context.user||{};a.context.user.credentialTransferTokens=[{token:b,scope:d}]}
function xh(a){var b={};a.videoId?b.videoId=a.videoId:a.playlistId&&(b.playlistId=a.playlistId);return b}
;var Hh=y.ytLoggingGelSequenceIdObj_||{};z("ytLoggingGelSequenceIdObj_",Hh,void 0);function Ih(a,b,c,d){d=void 0===d?{}:d;var e={},f=Math.round(d.timestamp||P());e.eventTimeMs=f<Number.MAX_SAFE_INTEGER?f:0;e[a]=b;a=ng();e.context={lastActivityMs:String(d.timestamp||!isFinite(a)?-1:a)};O("log_sequence_info_on_gel_web")&&d.U&&(a=e.context,b=d.U,Hh[b]=b in Hh?Hh[b]+1:0,a.sequence={index:Hh[b],groupKey:b},d.Va&&delete Hh[d.U]);(d.Ql?Ah:wh)({endpoint:"log_event",payload:e,F:d.F,ja:d.ja},c)}
;function Jh(){if(!y.matchMedia)return"WEB_DISPLAY_MODE_UNKNOWN";try{return y.matchMedia("(display-mode: standalone)").matches?"WEB_DISPLAY_MODE_STANDALONE":y.matchMedia("(display-mode: minimal-ui)").matches?"WEB_DISPLAY_MODE_MINIMAL_UI":y.matchMedia("(display-mode: fullscreen)").matches?"WEB_DISPLAY_MODE_FULLSCREEN":y.matchMedia("(display-mode: browser)").matches?"WEB_DISPLAY_MODE_BROWSER":"WEB_DISPLAY_MODE_UNKNOWN"}catch(a){return"WEB_DISPLAY_MODE_UNKNOWN"}}
;function Kh(a,b,c,d,e){md.set(""+a,b,{za:c,path:"/",domain:void 0===d?"youtube.com":d,secure:void 0===e?!1:e})}
;var Lh=B("ytglobal.prefsUserPrefsPrefs_")||{};z("ytglobal.prefsUserPrefsPrefs_",Lh,void 0);function Mh(){this.h=F("ALT_PREF_COOKIE_NAME","PREF");this.i=F("ALT_PREF_COOKIE_DOMAIN","youtube.com");var a=md.get(""+this.h,void 0);if(a){a=decodeURIComponent(a).split("&");for(var b=0;b<a.length;b++){var c=a[b].split("="),d=c[0];(c=c[1])&&(Lh[d]=c.toString())}}}
Mh.prototype.get=function(a,b){Nh(a);Oh(a);a=void 0!==Lh[a]?Lh[a].toString():null;return null!=a?a:b?b:""};
Mh.prototype.set=function(a,b){Nh(a);Oh(a);if(null==b)throw Error("ExpectedNotNull");Lh[a]=b.toString()};
Mh.prototype.remove=function(a){Nh(a);Oh(a);delete Lh[a]};
Mh.prototype.clear=function(){for(var a in Lh)delete Lh[a]};
function Oh(a){if(/^f([1-9][0-9]*)$/.test(a))throw Error("ExpectedRegexMatch: "+a);}
function Nh(a){if(!/^\w+$/.test(a))throw Error("ExpectedRegexMismatch: "+a);}
function Ph(a){a=void 0!==Lh[a]?Lh[a].toString():null;return null!=a&&/^[A-Fa-f0-9]+$/.test(a)?parseInt(a,16):null}
Fa(Mh);var Qh={bluetooth:"CONN_DISCO",cellular:"CONN_CELLULAR_UNKNOWN",ethernet:"CONN_WIFI",none:"CONN_NONE",wifi:"CONN_WIFI",wimax:"CONN_CELLULAR_4G",other:"CONN_UNKNOWN",unknown:"CONN_UNKNOWN","slow-2g":"CONN_CELLULAR_2G","2g":"CONN_CELLULAR_2G","3g":"CONN_CELLULAR_3G","4g":"CONN_CELLULAR_4G"},Rh={"slow-2g":"EFFECTIVE_CONNECTION_TYPE_SLOW_2G","2g":"EFFECTIVE_CONNECTION_TYPE_2G","3g":"EFFECTIVE_CONNECTION_TYPE_3G","4g":"EFFECTIVE_CONNECTION_TYPE_4G"};
function Sh(){var a=y.navigator;return a?a.connection:void 0}
;function Th(){return"INNERTUBE_API_KEY"in Gf&&"INNERTUBE_API_VERSION"in Gf}
function Dh(){return{innertubeApiKey:F("INNERTUBE_API_KEY",void 0),innertubeApiVersion:F("INNERTUBE_API_VERSION",void 0),Xa:F("INNERTUBE_CONTEXT_CLIENT_CONFIG_INFO"),Ya:F("INNERTUBE_CONTEXT_CLIENT_NAME","WEB"),innertubeContextClientVersion:F("INNERTUBE_CONTEXT_CLIENT_VERSION",void 0),ab:F("INNERTUBE_CONTEXT_HL",void 0),Za:F("INNERTUBE_CONTEXT_GL",void 0),bb:F("INNERTUBE_HOST_OVERRIDE",void 0)||"",eb:!!F("INNERTUBE_USE_THIRD_PARTY_AUTH",!1),cb:!!F("INNERTUBE_OMIT_API_KEY_WHEN_AUTH_HEADER_IS_PRESENT",
!1),appInstallData:F("SERIALIZED_CLIENT_CONFIG_DATA",void 0)}}
function Ch(a){var b={client:{hl:a.ab,gl:a.Za,clientName:a.Ya,clientVersion:a.innertubeContextClientVersion,configInfo:a.Xa}};navigator.userAgent&&(b.client.userAgent=String(navigator.userAgent));var c=y.devicePixelRatio;c&&1!=c&&(b.client.screenDensityFloat=String(c));c=F("EXPERIMENTS_TOKEN","");""!==c&&(b.client.experimentsToken=c);c=[];var d=F("EXPERIMENTS_FORCED_FLAGS",{});for(e in d)c.push({key:e,value:String(d[e])});var e=F("EXPERIMENT_FLAGS",{});for(var f in e)f.startsWith("force_")&&void 0===
d[f]&&c.push({key:f,value:String(e[f])});0<c.length&&(b.request={internalExperimentFlags:c});f=b.client.clientName;if("WEB"===f||"MWEB"===f||1===f||2===f){if(!O("web_include_display_mode_killswitch")){var g;b.client.mainAppWebInfo=null!=(g=b.client.mainAppWebInfo)?g:{};b.client.mainAppWebInfo.webDisplayMode=Jh()}}else if(g=b.client.clientName,("WEB_REMIX"===g||76===g)&&!O("music_web_display_mode_killswitch")){var h;b.client.Ka=null!=(h=b.client.Ka)?h:{};b.client.Ka.webDisplayMode=Jh()}a.appInstallData&&
(b.client.configInfo=b.client.configInfo||{},b.client.configInfo.appInstallData=a.appInstallData);F("DELEGATED_SESSION_ID")&&!O("pageid_as_header_web")&&(b.user={onBehalfOfUser:F("DELEGATED_SESSION_ID")});a:{if(h=Sh()){a=Qh[h.type||"unknown"]||"CONN_UNKNOWN";h=Qh[h.effectiveType||"unknown"]||"CONN_UNKNOWN";"CONN_CELLULAR_UNKNOWN"===a&&"CONN_UNKNOWN"!==h&&(a=h);if("CONN_UNKNOWN"!==a)break a;if("CONN_UNKNOWN"!==h){a=h;break a}}a=void 0}a&&(b.client.connectionType=a);O("web_log_effective_connection_type")&&
(a=Sh(),a=null!==a&&void 0!==a&&a.effectiveType?Rh.hasOwnProperty(a.effectiveType)?Rh[a.effectiveType]:"EFFECTIVE_CONNECTION_TYPE_UNKNOWN":void 0,a&&(b.client.effectiveConnectionType=a));a=Object;h=a.assign;g=b.client;f={};e=u(Object.entries(xg(F("DEVICE",""))));for(c=e.next();!c.done;c=e.next())d=u(c.value),c=d.next().value,d=d.next().value,"cbrand"===c?f.deviceMake=d:"cmodel"===c?f.deviceModel=d:"cbr"===c?f.browserName=d:"cbrver"===c?f.browserVersion=d:"cos"===c?f.osName=d:"cosver"===c?f.osVersion=
d:"cplatform"===c&&(f.platform=d);b.client=h.call(a,g,f);return b}
function Uh(a,b,c){c=void 0===c?{}:c;var d={"X-Goog-Visitor-Id":c.visitorData||F("VISITOR_DATA","")};if(b&&b.includes("www.youtube-nocookie.com"))return d;(b=c.Hl||F("AUTHORIZATION"))||(a?b="Bearer "+B("gapi.auth.getToken")().Gl:b=qd([]));b&&(d.Authorization=b,d["X-Goog-AuthUser"]=F("SESSION_INDEX",0),O("pageid_as_header_web")&&(d["X-Goog-PageId"]=F("DELEGATED_SESSION_ID")));return d}
;function Vh(a){a=Object.assign({},a);delete a.Authorization;var b=qd();if(b){var c=new Kd;c.update(F("INNERTUBE_API_KEY",void 0));c.update(b);a.hash=Cc(c.digest())}return a}
;function Wh(a){var b=new vf;(b=b.isAvailable()?a?new Bf(b,a):b:null)||(a=new wf(a||"UserDataSharedStore"),b=a.isAvailable()?a:null);this.h=(a=b)?new rf(a):null;this.i=document.domain||window.location.hostname}
Wh.prototype.set=function(a,b,c,d){c=c||31104E3;this.remove(a);if(this.h)try{this.h.set(a,b,Date.now()+1E3*c);return}catch(f){}var e="";if(d)try{e=escape(Me(b))}catch(f){return}else e=escape(b);Kh(a,e,c,this.i)};
Wh.prototype.get=function(a,b){var c=void 0,d=!this.h;if(!d)try{c=this.h.get(a)}catch(e){d=!0}if(d&&(c=md.get(""+a,void 0))&&(c=unescape(c),b))try{c=JSON.parse(c)}catch(e){this.remove(a),c=void 0}return c};
Wh.prototype.remove=function(a){this.h&&this.h.remove(a);var b=this.i;md.remove(""+a,"/",void 0===b?"youtube.com":b)};var Xh;function Yh(){Xh||(Xh=new Wh("yt.innertube"));return Xh}
function Zh(a,b,c,d){if(d)return null;d=Yh().get("nextId",!0)||1;var e=Yh().get("requests",!0)||{};e[d]={method:a,request:b,authState:Vh(c),requestTime:Math.round(P())};Yh().set("nextId",d+1,86400,!0);Yh().set("requests",e,86400,!0);return d}
function $h(a){var b=Yh().get("requests",!0)||{};delete b[a];Yh().set("requests",b,86400,!0)}
function ai(a){var b=Yh().get("requests",!0);if(b){for(var c in b){var d=b[c];if(!(6E4>Math.round(P())-d.requestTime)){var e=d.authState,f=Vh(Uh(!1));jb(e,f)&&(e=d.request,"requestTimeMs"in e&&(e.requestTimeMs=Math.round(P())),Gh(a,d.method,e,{}));delete b[c]}}Yh().set("requests",b,86400,!0)}}
;function bi(a,b){this.version=a;this.args=b}
;function ci(a,b){this.topic=a;this.h=b}
ci.prototype.toString=function(){return this.topic};var di=B("ytPubsub2Pubsub2Instance")||new M;M.prototype.subscribe=M.prototype.subscribe;M.prototype.unsubscribeByKey=M.prototype.da;M.prototype.publish=M.prototype.W;M.prototype.clear=M.prototype.clear;z("ytPubsub2Pubsub2Instance",di,void 0);var ei=B("ytPubsub2Pubsub2SubscribedKeys")||{};z("ytPubsub2Pubsub2SubscribedKeys",ei,void 0);var fi=B("ytPubsub2Pubsub2TopicToKeys")||{};z("ytPubsub2Pubsub2TopicToKeys",fi,void 0);var gi=B("ytPubsub2Pubsub2IsAsync")||{};z("ytPubsub2Pubsub2IsAsync",gi,void 0);
z("ytPubsub2Pubsub2SkipSubKey",null,void 0);function hi(a,b){var c=ii();c&&c.publish.call(c,a.toString(),a,b)}
function ji(a){var b=ki,c=ii();if(!c)return 0;var d=c.subscribe(b.toString(),function(e,f){var g=B("ytPubsub2Pubsub2SkipSubKey");g&&g==d||(g=function(){if(ei[d])try{if(f&&b instanceof ci&&b!=e)try{var h=b.h,k=f;if(!k.args||!k.version)throw Error("yt.pubsub2.Data.deserialize(): serializedData is incomplete.");try{if(!h.V){var l=new h;h.V=l.version}var n=h.V}catch(q){}if(!n||k.version!=n)throw Error("yt.pubsub2.Data.deserialize(): serializedData version is incompatible.");try{f=Reflect.construct(h,
bb(k.args))}catch(q){throw q.message="yt.pubsub2.Data.deserialize(): "+q.message,q;}}catch(q){throw q.message="yt.pubsub2.pubsub2 cross-binary conversion error for "+b.toString()+": "+q.message,q;}a.call(window,f)}catch(q){Kf(q)}},gi[b.toString()]?B("yt.scheduler.instance")?gg(g):ag(g,0):g())});
ei[d]=!0;fi[b.toString()]||(fi[b.toString()]=[]);fi[b.toString()].push(d);return d}
function li(){var a=mi,b=ji(function(c){a.apply(void 0,arguments);ni(b)});
return b}
function ni(a){var b=ii();b&&("number"===typeof a&&(a=[a]),D(a,function(c){b.unsubscribeByKey(c);delete ei[c]}))}
function ii(){return B("ytPubsub2Pubsub2Instance")}
;var oi=function(){var a;return function(){a||(a=new Wh("ytidb"));return a}}();
function pi(){var a;return null===(a=oi())||void 0===a?void 0:a.get("LAST_RESULT_ENTRY_KEY",!0)}
function qi(a){this.h=void 0===a?!1:a;(a=pi())||(a={hasSucceededOnce:this.h});this.i=a;var b,c;null!==(b=oi())&&void 0!==b&&b.h&&(b={hasSucceededOnce:this.i.hasSucceededOnce||this.h},null===(c=oi())||void 0===c?void 0:c.set("LAST_RESULT_ENTRY_KEY",b,2592E3,!0))}
qi.prototype.isSupported=function(){return this.h};var ri=[],si=!1;function ti(a){si||(ri.push({type:"ERROR",payload:a}),10<ri.length&&ri.shift())}
function ui(a,b){si||(ri.push({type:"EVENT",eventType:a,payload:b}),10<ri.length&&ri.shift())}
;function vi(a,b){for(var c=[],d=1;d<arguments.length;++d)c[d-1]=arguments[d];d=Error.call(this,a);this.message=d.message;"stack"in d&&(this.stack=d.stack);this.args=[].concat(fa(c))}
v(vi,Error);function wi(){try{return xi(),!0}catch(a){return!1}}
function xi(){if(void 0!==F("DATASYNC_ID",void 0))return F("DATASYNC_ID",void 0);throw new vi("Datasync ID not set","unknown");}
;function yi(a){if(0<=a.indexOf(":"))throw Error("Database name cannot contain ':'");}
function zi(a){return a.substr(0,a.indexOf(":"))||a}
;var Ai={},Bi=(Ai.AUTH_INVALID="No user identifier specified.",Ai.EXPLICIT_ABORT="Transaction was explicitly aborted.",Ai.IDB_NOT_SUPPORTED="IndexedDB is not supported.",Ai.MISSING_INDEX="Index not created.",Ai.MISSING_OBJECT_STORE="Object store not created.",Ai.DB_DELETED_BY_MISSING_OBJECT_STORE="Database is deleted because an expected object store was not created.",Ai.UNKNOWN_ABORT="Transaction was aborted for unknown reasons.",Ai.QUOTA_EXCEEDED="The current transaction exceeded its quota limitations.",
Ai.QUOTA_MAYBE_EXCEEDED="The current transaction may have failed because of exceeding quota limitations.",Ai.EXECUTE_TRANSACTION_ON_CLOSED_DB="Can't start a transaction on a closed database",Ai.INCOMPATIBLE_DB_VERSION="The binary is incompatible with the database version",Ai),Ci={},Di=(Ci.AUTH_INVALID="ERROR",Ci.EXECUTE_TRANSACTION_ON_CLOSED_DB="WARNING",Ci.EXPLICIT_ABORT="IGNORED",Ci.IDB_NOT_SUPPORTED="ERROR",Ci.MISSING_INDEX="WARNING",Ci.MISSING_OBJECT_STORE="ERROR",Ci.DB_DELETED_BY_MISSING_OBJECT_STORE=
"WARNING",Ci.QUOTA_EXCEEDED="WARNING",Ci.QUOTA_MAYBE_EXCEEDED="WARNING",Ci.UNKNOWN_ABORT="WARNING",Ci.INCOMPATIBLE_DB_VERSION="WARNING",Ci),Ei={},Fi=(Ei.AUTH_INVALID=!1,Ei.EXECUTE_TRANSACTION_ON_CLOSED_DB=!1,Ei.EXPLICIT_ABORT=!1,Ei.IDB_NOT_SUPPORTED=!1,Ei.MISSING_INDEX=!1,Ei.MISSING_OBJECT_STORE=!1,Ei.DB_DELETED_BY_MISSING_OBJECT_STORE=!1,Ei.QUOTA_EXCEEDED=!1,Ei.QUOTA_MAYBE_EXCEEDED=!0,Ei.UNKNOWN_ABORT=!0,Ei.INCOMPATIBLE_DB_VERSION=!1,Ei);
function R(a,b,c,d,e){b=void 0===b?{}:b;c=void 0===c?Bi[a]:c;d=void 0===d?Di[a]:d;e=void 0===e?Fi[a]:e;vi.call(this,c,Object.assign({name:"YtIdbKnownError",isSw:void 0===self.document,isIframe:self!==self.top,type:a},b));this.type=a;this.message=c;this.level=d;this.h=e;Object.setPrototypeOf(this,R.prototype)}
v(R,vi);function Gi(a){R.call(this,"MISSING_OBJECT_STORE",{gb:a},Bi.MISSING_OBJECT_STORE);Object.setPrototypeOf(this,Gi.prototype)}
v(Gi,R);function Hi(a,b){var c=Error.call(this);this.message=c.message;"stack"in c&&(this.stack=c.stack);this.index=a;this.objectStore=b;Object.setPrototypeOf(this,Hi.prototype)}
v(Hi,Error);var Ii=["The database connection is closing","Can't start a transaction on a closed database","A mutation operation was attempted on a database that did not allow mutations"];
function Ji(a,b,c,d){b=zi(b);var e=a instanceof Error?a:Error("Unexpected error: "+a);if(e instanceof R)return e;if("QuotaExceededError"===e.name)return new R("QUOTA_EXCEEDED",{objectStoreNames:c,dbName:b});if(zc&&"UnknownError"===e.name)return new R("QUOTA_MAYBE_EXCEEDED",{objectStoreNames:c,dbName:b});if(e instanceof Hi)return new R("MISSING_INDEX",{dbName:b,dbVersion:d,objectStore:e.objectStore,index:e.index});if("InvalidStateError"===e.name&&Ii.some(function(f){return e.message.includes(f)}))return new R("EXECUTE_TRANSACTION_ON_CLOSED_DB",
{objectStoreNames:c,
dbName:b});if("AbortError"===e.name)return new R("UNKNOWN_ABORT",{objectStoreNames:c,dbName:b},e.message);e.args=[{name:"IdbError",Ml:e.name,dbName:b,objectStoreNames:c}];e.level="WARNING";return e}
function Ki(a,b,c){return new R("IDB_NOT_SUPPORTED",{context:{caller:a,publicName:b,version:c}})}
;function Li(a){if(!a)throw Error();throw a;}
function Mi(a){return a}
function Ni(a){this.h=a}
function S(a){function b(e){if("PENDING"===d.state.status){d.state={status:"REJECTED",reason:e};e=u(d.onRejected);for(var f=e.next();!f.done;f=e.next())f=f.value,f()}}
function c(e){if("PENDING"===d.state.status){d.state={status:"FULFILLED",value:e};e=u(d.h);for(var f=e.next();!f.done;f=e.next())f=f.value,f()}}
var d=this;this.state={status:"PENDING"};this.h=[];this.onRejected=[];a=a.h;try{a(c,b)}catch(e){b(e)}}
S.all=function(a){return new S(new Ni(function(b,c){var d=[],e=a.length;0===e&&b(d);for(var f={Z:0};f.Z<a.length;f={Z:f.Z},++f.Z)Oi(S.resolve(a[f.Z]).then(function(g){return function(h){d[g.Z]=h;e--;0===e&&b(d)}}(f)),function(g){c(g)})}))};
S.resolve=function(a){return new S(new Ni(function(b,c){a instanceof S?a.then(b,c):b(a)}))};
S.reject=function(a){return new S(new Ni(function(b,c){c(a)}))};
S.prototype.then=function(a,b){var c=this,d=null!==a&&void 0!==a?a:Mi,e=null!==b&&void 0!==b?b:Li;return new S(new Ni(function(f,g){"PENDING"===c.state.status?(c.h.push(function(){Pi(c,c,d,f,g)}),c.onRejected.push(function(){Qi(c,c,e,f,g)})):"FULFILLED"===c.state.status?Pi(c,c,d,f,g):"REJECTED"===c.state.status&&Qi(c,c,e,f,g)}))};
function Oi(a,b){a.then(void 0,b)}
function Pi(a,b,c,d,e){try{if("FULFILLED"!==a.state.status)throw Error("calling handleResolve before the promise is fulfilled.");var f=c(a.state.value);f instanceof S?Ri(a,b,f,d,e):d(f)}catch(g){e(g)}}
function Qi(a,b,c,d,e){try{if("REJECTED"!==a.state.status)throw Error("calling handleReject before the promise is rejected.");var f=c(a.state.reason);f instanceof S?Ri(a,b,f,d,e):d(f)}catch(g){e(g)}}
function Ri(a,b,c,d,e){b===c?e(new TypeError("Circular promise chain detected.")):c.then(function(f){f instanceof S?Ri(a,b,f,d,e):d(f)},function(f){e(f)})}
;function Si(a,b,c){function d(){c(a.error);f()}
function e(){b(a.result);f()}
function f(){try{a.removeEventListener("success",e),a.removeEventListener("error",d)}catch(g){}}
a.addEventListener("success",e);a.addEventListener("error",d)}
function Ti(a){return new Promise(function(b,c){Si(a,b,c)})}
function Ui(a){return new S(new Ni(function(b,c){Si(a,b,c)}))}
;function Vi(a,b){return new S(new Ni(function(c,d){function e(){var f=a?b(a):null;f?f.then(function(g){a=g;e()},d):c()}
e()}))}
;function Wi(a,b){this.h=a;this.options=b;this.transactionCount=0;this.j=Math.round(P());this.i=!1}
m=Wi.prototype;m.add=function(a,b,c){return Xi(this,[a],{mode:"readwrite",I:!0},function(d){return d.objectStore(a).add(b,c)})};
m.clear=function(a){return Xi(this,[a],{mode:"readwrite",I:!0},function(b){return b.objectStore(a).clear()})};
m.close=function(){var a;this.h.close();(null===(a=this.options)||void 0===a?0:a.closed)&&this.options.closed()};
m.count=function(a,b){return Xi(this,[a],{mode:"readonly",I:!0},function(c){return c.objectStore(a).count(b)})};
function Yi(a,b,c){a=a.h.createObjectStore(b,c);return new Zi(a)}
m.delete=function(a,b){return Xi(this,[a],{mode:"readwrite",I:!0},function(c){return c.objectStore(a).delete(b)})};
m.get=function(a,b){return Xi(this,[a],{mode:"readonly",I:!0},function(c){return c.objectStore(a).get(b)})};
function $i(a,b){return Xi(a,["LogsRequestsStore"],{mode:"readwrite",I:!0},function(c){c=c.objectStore("LogsRequestsStore");return Ui(c.h.put(b,void 0))})}
m.objectStoreNames=function(){return Array.from(this.h.objectStoreNames)};
function Xi(a,b,c,d){return H(a,function f(){var g=this,h,k,l,n,q,r,p,A,I,E,Q,V;return x(f,function(J){switch(J.h){case 1:var U={mode:"readonly",I:!1,tag:"IDB_TRANSACTION_TAG_UNKNOWN"};"string"===typeof c?U.mode=c:Object.assign(U,c);h=U;g.transactionCount++;k=h.I?3:1;l=0;case 2:if(n){J.B(3);break}l++;q=Math.round(P());ra(J,4);r=g.h.transaction(b,h.mode);U=new aj(r);U=bj(U,d);return w(J,U,6);case 6:return p=J.i,A=Math.round(P()),cj(g,q,A,l,void 0,b.join(),h),J.return(p);case 4:I=sa(J);E=Math.round(P());
Q=Ji(I,g.h.name,b.join(),g.h.version);if((V=Q instanceof R&&!Q.h)||l>=k)cj(g,q,E,l,Q,b.join(),h),n=Q;J.B(2);break;case 3:return J.return(Promise.reject(n))}})})}
function cj(a,b,c,d,e,f,g){b=c-b;e?(e instanceof R&&("QUOTA_EXCEEDED"===e.type||"QUOTA_MAYBE_EXCEEDED"===e.type)&&ui("QUOTA_EXCEEDED",{dbName:zi(a.h.name),objectStoreNames:f,transactionCount:a.transactionCount,transactionMode:g.mode}),e instanceof R&&"UNKNOWN_ABORT"===e.type&&(c-=a.j,0>c&&c>=Math.pow(2,31)&&(c=0),ui("TRANSACTION_UNEXPECTEDLY_ABORTED",{objectStoreNames:f,transactionDuration:b,transactionCount:a.transactionCount,dbDuration:c}),a.i=!0),dj(a,!1,d,f,b,g.tag),ti(e)):dj(a,!0,d,f,b,g.tag)}
function dj(a,b,c,d,e,f){ui("TRANSACTION_ENDED",{objectStoreNames:d,connectionHasUnknownAbortedTransaction:a.i,duration:e,isSuccessful:b,tryCount:c,tag:void 0===f?"IDB_TRANSACTION_TAG_UNKNOWN":f})}
m.getName=function(){return this.h.name};
function Zi(a){this.h=a}
m=Zi.prototype;m.add=function(a,b){return Ui(this.h.add(a,b))};
m.autoIncrement=function(){return this.h.autoIncrement};
m.clear=function(){return Ui(this.h.clear()).then(function(){})};
m.count=function(a){return Ui(this.h.count(a))};
function ej(a,b){return fj(a,{query:b},function(c){return c.delete().then(function(){return c.continue()})}).then(function(){})}
m.delete=function(a){return a instanceof IDBKeyRange?ej(this,a):Ui(this.h.delete(a))};
m.get=function(a){return Ui(this.h.get(a))};
m.index=function(a){try{return new gj(this.h.index(a))}catch(b){if(b instanceof Error&&"NotFoundError"===b.name)throw new Hi(a,this.h.name);throw b;}};
m.getName=function(){return this.h.name};
m.keyPath=function(){return this.h.keyPath};
function fj(a,b,c){a=a.h.openCursor(b.query,b.direction);return hj(a).then(function(d){return Vi(d,c)})}
function aj(a){var b=this;this.h=a;this.j=new Map;this.i=!1;this.done=new Promise(function(c,d){b.h.addEventListener("complete",function(){c()});
b.h.addEventListener("error",function(e){e.currentTarget===e.target&&d(b.h.error)});
b.h.addEventListener("abort",function(){var e=b.h.error;if(e)d(e);else if(!b.i){e=R;for(var f=b.h.objectStoreNames,g=[],h=0;h<f.length;h++){var k=f.item(h);if(null===k)throw Error("Invariant: item in DOMStringList is null");g.push(k)}e=new e("UNKNOWN_ABORT",{objectStoreNames:g.join(),dbName:b.h.db.name,mode:b.h.mode});d(e)}})})}
function bj(a,b){var c=new Promise(function(d,e){try{Oi(b(a).then(function(f){d(f)}),e)}catch(f){e(f),a.abort()}});
return Promise.all([c,a.done]).then(function(d){return u(d).next().value})}
aj.prototype.abort=function(){this.h.abort();this.i=!0;throw new R("EXPLICIT_ABORT");};
aj.prototype.objectStore=function(a){a=this.h.objectStore(a);var b=this.j.get(a);b||(b=new Zi(a),this.j.set(a,b));return b};
function gj(a){this.h=a}
m=gj.prototype;m.count=function(a){return Ui(this.h.count(a))};
m.delete=function(a){return ij(this,{query:a},function(b){return b.delete().then(function(){return b.continue()})})};
m.get=function(a){return Ui(this.h.get(a))};
m.getKey=function(a){return Ui(this.h.getKey(a))};
m.keyPath=function(){return this.h.keyPath};
m.unique=function(){return this.h.unique};
function ij(a,b,c){a=a.h.openCursor(void 0===b.query?null:b.query,void 0===b.direction?"next":b.direction);return hj(a).then(function(d){return Vi(d,c)})}
function jj(a,b){this.request=a;this.cursor=b}
function hj(a){return Ui(a).then(function(b){return b?new jj(a,b):null})}
m=jj.prototype;m.advance=function(a){this.cursor.advance(a);return hj(this.request)};
m.continue=function(a){this.cursor.continue(a);return hj(this.request)};
m.delete=function(){return Ui(this.cursor.delete()).then(function(){})};
m.getKey=function(){return this.cursor.key};
m.getValue=function(){return this.cursor.value};
m.update=function(a){return Ui(this.cursor.update(a))};function kj(a,b,c){return new Promise(function(d,e){function f(){r||(r=new Wi(g.result,{closed:q}));return r}
var g=void 0!==b?self.indexedDB.open(a,b):self.indexedDB.open(a);var h=c.blocked,k=c.blocking,l=c.vb,n=c.upgrade,q=c.closed,r;g.addEventListener("upgradeneeded",function(p){try{if(null===p.newVersion)throw Error("Invariant: newVersion on IDbVersionChangeEvent is null");if(null===g.transaction)throw Error("Invariant: transaction on IDbOpenDbRequest is null");p.dataLoss&&"none"!==p.dataLoss&&ui("IDB_DATA_CORRUPTED",{reason:p.dataLossMessage||"unknown reason",dbName:zi(a)});var A=f(),I=new aj(g.transaction);
n&&n(A,function(E){return p.oldVersion<E&&p.newVersion>=E},I);
I.done.catch(function(E){e(E)})}catch(E){e(E)}});
g.addEventListener("success",function(){var p=g.result;k&&p.addEventListener("versionchange",function(){k(f())});
p.addEventListener("close",function(){ui("IDB_UNEXPECTEDLY_CLOSED",{dbName:zi(a),dbVersion:p.version});l&&l()});
d(f())});
g.addEventListener("error",function(){e(g.error)});
h&&g.addEventListener("blocked",function(){h()})})}
function lj(a,b,c){c=void 0===c?{}:c;return kj(a,b,c)}
function mj(a,b){b=void 0===b?{}:b;return H(this,function d(){var e,f,g;return x(d,function(h){e=self.indexedDB.deleteDatabase(a);f=b;(g=f.blocked)&&e.addEventListener("blocked",function(){g()});
return w(h,Ti(e),0)})})}
;function nj(a,b){this.name=a;this.options=b;this.l=!0;this.j=!1}
nj.prototype.i=function(a,b,c){c=void 0===c?{}:c;return lj(a,b,c)};
nj.prototype.delete=function(a){a=void 0===a?{}:a;return mj(this.name,a)};
function oj(a,b){return new R("INCOMPATIBLE_DB_VERSION",{dbName:a.name,oldVersion:a.options.version,newVersion:b})}
nj.prototype.open=function(){function a(){return H(c,function g(){var h=this,k,l,n,q,r;return x(g,function(p){switch(p.h){case 1:return ra(p,2),w(p,h.i(h.name,h.options.version,e),4);case 4:k=p.i;a:{var A=h.options;for(var I=u(Object.keys(A.la)),E=I.next();!E.done;E=I.next()){E=E.value;var Q=A.la[E],V=void 0===Q.mb?Number.MAX_VALUE:Q.mb;if(k.h.version>=Q.ra&&!(k.h.version>=V)&&!k.h.objectStoreNames.contains(E)){A=E;break a}}A=void 0}l=A;if(void 0===l){p.B(5);break}if(h.j){p.B(6);break}h.j=!0;return w(p,
h.delete(),7);case 7:return ti(new R("DB_DELETED_BY_MISSING_OBJECT_STORE",{dbName:h.name,gb:l})),p.return(a());case 6:throw new Gi(l);case 5:return p.return(k);case 2:n=sa(p);if(n instanceof DOMException?"VersionError"!==n.name:"DOMError"in self&&n instanceof DOMError?"VersionError"!==n.name:!(n instanceof Object&&"message"in n)||"An attempt was made to open a database using a lower version than the existing version."!==n.message){p.B(8);break}return w(p,h.i(h.name,void 0,Object.assign(Object.assign({},
e),{upgrade:void 0})),9);case 9:q=p.i;r=q.h.version;if(void 0!==h.options.version&&r>h.options.version+1)throw q.close(),h.l=!1,oj(h,r);return p.return(q);case 8:throw b(),n;}})})}
function b(){c.h===d&&(c.h=void 0)}
var c=this;if(!this.l)throw oj(this);if(this.h)return this.h;var d,e={blocking:function(f){f.close()},
closed:b,vb:b,upgrade:this.options.upgrade};return this.h=d=a()};var pj=new nj("YtIdbMeta",{la:{databases:{ra:1}},upgrade:function(a,b){b(1)&&Yi(a,"databases",{keyPath:"actualName"})}});
function qj(a){return H(this,function c(){var d;return x(c,function(e){if(1==e.h)return w(e,pj.open(),2);d=e.i;return e.return(Xi(d,["databases"],{I:!0,mode:"readwrite"},function(f){var g=f.objectStore("databases");return g.get(a.actualName).then(function(h){if(h?a.actualName!==h.actualName||a.publicName!==h.publicName||a.userIdentifier!==h.userIdentifier:1)return Ui(g.h.put(a,void 0)).then(function(){})})}))})})}
function rj(a){return H(this,function c(){var d;return x(c,function(e){if(1==e.h)return a?w(e,pj.open(),2):e.return();d=e.i;return e.return(d.delete("databases",a))})})}
function sj(a){return H(this,function c(){var d,e;return x(c,function(f){return 1==f.h?(d=[],w(f,pj.open(),2)):3!=f.h?(e=f.i,w(f,Xi(e,["databases"],{I:!0,mode:"readonly"},function(g){d.length=0;return fj(g.objectStore("databases"),{},function(h){a(h.getValue())&&d.push(h.getValue());return h.continue()})}),3)):f.return(d)})})}
function tj(){return sj(function(a){return"LogsDatabaseV2"===a.publicName&&void 0!==a.userIdentifier})}
;var uj,vj=new function(){}(new function(){});
function wj(){return H(this,function b(){var c,d,e;return x(b,function(f){switch(f.h){case 1:c=pi();if(null===c||void 0===c?0:c.hasSucceededOnce)return f.return(new qi(!0));var g;if(g=Tg)g=/WebKit\/([0-9]+)/.exec(Ob),g=!!(g&&600<=parseInt(g[1],10));g&&(g=/WebKit\/([0-9]+)/.exec(Ob),g=!(g&&602<=parseInt(g[1],10)));if(g||kc)return f.return(new qi(!1));try{if(d=self,!(d.indexedDB&&d.IDBIndex&&d.IDBKeyRange&&d.IDBObjectStore))return f.return(new qi(!1))}catch(h){return f.return(new qi(!1))}if(!("IDBTransaction"in
self&&"objectStoreNames"in IDBTransaction.prototype))return f.return(new qi(!1));ra(f,2);e={actualName:"yt-idb-test-do-not-use",publicName:"yt-idb-test-do-not-use",userIdentifier:void 0};return w(f,qj(e),4);case 4:return w(f,rj("yt-idb-test-do-not-use"),5);case 5:return f.return(new qi(!0));case 2:return sa(f),f.return(new qi(!1))}})})}
function xj(){if(void 0!==uj)return uj;si=!0;return uj=wj().then(function(a){si=!1;return a.isSupported()})}
function yj(){return xj().then(function(a){return a?vj:void 0})}
;new function(){var a=this;this.promise=new Promise(function(b,c){a.resolve=b;a.reject=c})};function zj(a){if(!wi())throw a=new R("AUTH_INVALID",{dbName:a}),ti(a),a;var b=xi();return{actualName:a+":"+b,publicName:a,userIdentifier:b}}
function Aj(a,b,c,d){return H(this,function f(){var g,h,k,l;return x(f,function(n){switch(n.h){case 1:return w(n,yj(),2);case 2:g=n.i;if(!g)throw h=Ki("openDbImpl",a,b),ti(h),h;yi(a);k=c?{actualName:a,publicName:a,userIdentifier:void 0}:zj(a);ra(n,3);return w(n,qj(k),5);case 5:return w(n,lj(k.actualName,b,d),6);case 6:return n.return(n.i);case 3:return l=sa(n),ra(n,7),w(n,rj(k.actualName),9);case 9:n.h=8;n.m=0;break;case 7:sa(n);case 8:throw l;}})})}
function Bj(a,b,c){c=void 0===c?{}:c;return Aj(a,b,!1,c)}
function Cj(a,b,c){c=void 0===c?{}:c;return Aj(a,b,!0,c)}
function Dj(a,b){b=void 0===b?{}:b;return H(this,function d(){var e,f;return x(d,function(g){if(1==g.h)return w(g,yj(),2);if(3!=g.h){e=g.i;if(!e)return g.return();yi(a);f=zj(a);return w(g,mj(f.actualName,b),3)}return w(g,rj(f.actualName),0)})})}
function Ej(a,b){var c=this;a=a.map(function(d){return H(c,function f(){return x(f,function(g){return 1==g.h?w(g,mj(d.actualName,b),2):w(g,rj(d.actualName),0)})})});
return Promise.all(a).then(function(){})}
function Fj(){var a=void 0===a?{}:a;return H(this,function c(){var d,e;return x(c,function(f){if(1==f.h)return w(f,yj(),2);if(3!=f.h){d=f.i;if(!d)return f.return();yi("LogsDatabaseV2");return w(f,tj(),3)}e=f.i;return w(f,Ej(e,a),0)})})}
function Gj(a,b){b=void 0===b?{}:b;return H(this,function d(){var e;return x(d,function(f){if(1==f.h)return w(f,yj(),2);if(3!=f.h){e=f.i;if(!e)return f.return();yi(a);return w(f,mj(a,b),3)}return w(f,rj(a),0)})})}
;function Hj(a,b){nj.call(this,a,b);this.options=b;yi(a)}
v(Hj,nj);function Ij(a,b){var c;return function(){c||(c=new Hj(a,b));return c}}
Hj.prototype.i=function(a,b,c){c=void 0===c?{}:c;return(this.options.Ba?Cj:Bj)(a,b,Object.assign({},c))};
Hj.prototype.delete=function(a){a=void 0===a?{}:a;return(this.options.Ba?Gj:Dj)(this.name,a)};
function Jj(a,b){return Ij(a,b)}
;var Kj;
function Lj(){if(Kj)return Kj();var a={};Kj=Jj("LogsDatabaseV2",{la:(a.LogsRequestsStore={ra:2},a),Ba:!1,upgrade:function(b,c,d){c(2)&&Yi(b,"LogsRequestsStore",{keyPath:"id",autoIncrement:!0});c(3);c(5)&&(d=d.objectStore("LogsRequestsStore"),d.h.indexNames.contains("newRequest")&&d.h.deleteIndex("newRequest"),d.h.createIndex("newRequestV2",["status","interface","timestamp"],{unique:!1}));c(7)&&b.h.objectStoreNames.contains("sapisid")&&b.h.deleteObjectStore("sapisid");c(9)&&b.h.objectStoreNames.contains("SWHealthLog")&&b.h.deleteObjectStore("SWHealthLog")},
version:9});return Kj()}
;function Mj(a){return H(this,function c(){var d,e,f,g;return x(c,function(h){if(1==h.h)return d={startTime:P(),transactionType:"YT_IDB_TRANSACTION_TYPE_WRITE"},w(h,Lj().open(),2);if(3!=h.h)return e=h.i,f=Object.assign(Object.assign({},a),{options:JSON.parse(JSON.stringify(a.options)),interface:F("INNERTUBE_CONTEXT_CLIENT_NAME",0)}),w(h,$i(e,f),3);g=h.i;d.wb=P();Nj(d);return h.return(g)})})}
function Oj(a){return H(this,function c(){var d,e,f,g,h,k,l;return x(c,function(n){if(1==n.h)return d={startTime:P(),transactionType:"YT_IDB_TRANSACTION_TYPE_READ"},w(n,Lj().open(),2);if(3!=n.h)return e=n.i,f=F("INNERTUBE_CONTEXT_CLIENT_NAME",0),g=[a,f,0],h=[a,f,P()],k=IDBKeyRange.bound(g,h),l=void 0,w(n,Xi(e,["LogsRequestsStore"],{mode:"readwrite",I:!0},function(q){return ij(q.objectStore("LogsRequestsStore").index("newRequestV2"),{query:k,direction:"prev"},function(r){r.getValue()&&(l=r.getValue(),
"NEW"===a&&(l.status="QUEUED",r.update(l)))})}),3);
d.wb=P();Nj(d);return n.return(l)})})}
function Pj(a){return H(this,function c(){var d;return x(c,function(e){if(1==e.h)return w(e,Lj().open(),2);d=e.i;return e.return(Xi(d,["LogsRequestsStore"],{mode:"readwrite",I:!0},function(f){var g=f.objectStore("LogsRequestsStore");return g.get(a).then(function(h){if(h)return h.status="QUEUED",Ui(g.h.put(h,void 0)).then(function(){return h})})}))})})}
function Qj(a){return H(this,function c(){var d;return x(c,function(e){if(1==e.h)return w(e,Lj().open(),2);d=e.i;return e.return(Xi(d,["LogsRequestsStore"],{mode:"readwrite",I:!0},function(f){var g=f.objectStore("LogsRequestsStore");return g.get(a).then(function(h){return h?(h.status="NEW",h.sendCount+=1,Ui(g.h.put(h,void 0)).then(function(){return h})):S.resolve(void 0)})}))})})}
function Rj(a){return H(this,function c(){var d;return x(c,function(e){if(1==e.h)return w(e,Lj().open(),2);d=e.i;return e.return(d.delete("LogsRequestsStore",a))})})}
function Sj(){return H(this,function b(){var c,d;return x(b,function(e){if(1==e.h)return w(e,Lj().open(),2);c=e.i;d=P()-2592E6;return w(e,Xi(c,["LogsRequestsStore"],{mode:"readwrite",I:!0},function(f){return fj(f.objectStore("LogsRequestsStore"),{},function(g){if(g.getValue().timestamp<=d)return g.delete().then(function(){return g.continue()})})}),0)})})}
function Tj(){return H(this,function b(){return x(b,function(c){return w(c,Fj(),0)})})}
function Nj(a){O("nwl_csi_killswitch")||.01>=Math.random()&&hi("nwl_transaction_latency_payload",a)}
;var Uj={},Vj=Jj("ServiceWorkerLogsDatabase",{la:(Uj.SWHealthLog={ra:1},Uj),Ba:!0,upgrade:function(a,b){b(1)&&Yi(a,"SWHealthLog",{keyPath:"id",autoIncrement:!0}).h.createIndex("swHealthNewRequest",["interface","timestamp"],{unique:!1})},
version:1});function Wj(){return H(this,function b(){var c,d;return x(b,function(e){if(1==e.h)return O("web_clean_sw_logs_store")?w(e,Vj().open(),3):e.B(0);c=e.i;d=P()-2592E6;return w(e,Xi(c,["SWHealthLog"],{mode:"readwrite",I:!0},function(f){return fj(f.objectStore("SWHealthLog"),{},function(g){if(g.getValue().timestamp<=d)return g.delete().then(function(){return g.continue()})})}),0)})})}
function Xj(){return H(this,function b(){var c;return x(b,function(d){if(1==d.h)return w(d,Vj().open(),2);c=d.i;return w(d,c.clear("SWHealthLog"),0)})})}
;var Yj;function Zj(){Yj||(Yj=new Wh("yt.offline"));return Yj}
function ak(a){if(O("offline_error_handling")){var b=Zj().get("errors",!0)||{};b[a.message]={name:a.name,stack:a.stack};a.level&&(b[a.message].level=a.level);Zj().set("errors",b,2592E3,!0)}}
;var bk=Pf("network_polling_interval",3E4);function T(){He.call(this);this.C=0;this.G=this.l=!1;this.j=this.wa();ck(this);dk(this)}
v(T,He);function ek(){if(!T.h){var a=B("yt.networkStatusManager.instance")||new T;z("yt.networkStatusManager.instance",a,void 0);T.h=a}return T.h}
m=T.prototype;m.L=function(){return this.j};
m.hb=function(a){this.l=!0;if(void 0===a?0:a)this.C||fk(this)};
m.wa=function(){var a=window.navigator.onLine;return void 0===a?!0:a};
m.Sa=function(){this.G=!0};
m.ca=function(a,b){return He.prototype.ca.call(this,a,b)};
function dk(a){window.addEventListener("online",function(){return H(a,function c(){var d=this;return x(c,function(e){if(1==e.h)return w(e,d.Y(),2);if(d.G&&O("offline_error_handling")){var f=Zj().get("errors",!0);if(f){for(var g in f)if(f[g]){var h=new vi(g,"sent via offline_errors");h.name=f[g].name;h.stack=f[g].stack;h.level=f[g].level;Kf(h)}Zj().set("errors",{},2592E3,!0)}}e.h=0})})})}
function ck(a){window.addEventListener("offline",function(){return H(a,function c(){var d=this;return x(c,function(e){return w(e,d.Y(),0)})})})}
function fk(a){a.C=eg(function(){return H(a,function c(){var d=this;return x(c,function(e){if(1==e.h)return d.j?d.wa()||!d.l?e.B(3):w(e,d.Y(),3):w(e,d.Y(),3);fk(d);e.h=0})})},bk)}
m.Y=function(a){var b=this;return this.m?this.m:this.m=new Promise(function(c){return H(b,function e(){var f,g,h,k=this;return x(e,function(l){switch(l.h){case 1:return f=window.AbortController?new window.AbortController:void 0,g=null===f||void 0===f?void 0:f.signal,h=!1,ra(l,2,3),f&&(k.A=gg(function(){f.abort()},a||2E4)),w(l,fetch("/generate_204",{method:"HEAD",
signal:g}),5);case 5:h=!0;case 3:ta(l);k.m=void 0;k.A&&ig(k.A);h!==k.j&&(k.j=h,k.j&&k.l?Ie(k,"ytnetworkstatus-online"):k.l&&Ie(k,"ytnetworkstatus-offline"));c(h);ua(l);break;case 2:sa(l),h=!1,l.B(3)}})})})};
T.prototype.sendNetworkCheckRequest=T.prototype.Y;T.prototype.listen=T.prototype.ca;T.prototype.enableErrorFlushing=T.prototype.Sa;T.prototype.getWindowStatus=T.prototype.wa;T.prototype.monitorNetworkStatusChange=T.prototype.hb;T.prototype.isNetworkAvailable=T.prototype.L;T.getInstance=ek;function gk(a){a=void 0===a?{}:a;He.call(this);var b=this;this.l=this.A=0;this.j=ek();var c=B("yt.networkStatusManager.instance.monitorNetworkStatusChange").bind(this.j);c&&c(a.Ta);a.fb&&(c=B("yt.networkStatusManager.instance.enableErrorFlushing").bind(this.j))&&c();if(c=B("yt.networkStatusManager.instance.listen").bind(this.j))a.na?(this.na=a.na,c("ytnetworkstatus-online",function(){hk(b,"publicytnetworkstatus-online")}),c("ytnetworkstatus-offline",function(){hk(b,"publicytnetworkstatus-offline")})):
(c("ytnetworkstatus-online",function(){Ie(b,"publicytnetworkstatus-online")}),c("ytnetworkstatus-offline",function(){Ie(b,"publicytnetworkstatus-offline")}))}
v(gk,He);gk.prototype.L=function(){var a=B("yt.networkStatusManager.instance.isNetworkAvailable").bind(this.j);return a?a():!0};
gk.prototype.Y=function(a){return H(this,function c(){var d=this,e;return x(c,function(f){return(e=B("yt.networkStatusManager.instance.sendNetworkCheckRequest").bind(d.j))?f.return(e(a)):f.return(!0)})})};
function hk(a,b){a.na?a.l?(ig(a.A),a.A=gg(function(){a.m!==b&&(Ie(a,b),a.m=b,a.l=P())},a.na-(P()-a.l))):(Ie(a,b),a.m=b,a.l=P()):Ie(a,b)}
;var ik=!1,jk,kk=0,lk=0,mk,nk=y.ytNetworklessLoggingInitializationOptions||{isNwlInitialized:ik,databaseToken:jk,potentialEsfErrorCounter:lk,isIdbSupported:!!jk};z("ytNetworklessLoggingInitializationOptions",nk,void 0);
function ok(){H(this,function b(){return x(b,function(c){switch(c.h){case 1:return w(c,yj(),2);case 2:jk=c.i;if(!jk||!wi()&&!O("nwl_init_require_datasync_id_killswitch")){c.B(0);break}ik=!0;nk.isNwlInitialized=ik;nk.databaseToken=jk;nk.isIdbSupported=!!jk;return w(c,Gj("LogsDatabaseV2"),4);case 4:if(!(.1>=Math.random())){c.B(5);break}return w(c,Sj(),6);case 6:return w(c,Wj(),5);case 5:pk();qk().L()&&rk();qk().ca("publicytnetworkstatus-online",rk);qk().ca("publicytnetworkstatus-offline",sk);if(!O("networkless_immediately_drop_sw_health_store")){c.B(8);
break}return w(c,tk(),8);case 8:if(O("networkless_immediately_drop_all_requests"))return w(c,Tj(),0);c.B(0)}})})}
function uk(a,b){function c(d){var e=qk().L();if(!vk()||!d||e&&O("vss_networkless_bypass_write"))wk(a,b);else{var f={url:a,options:b,timestamp:P(),status:"NEW",sendCount:0};Mj(f).then(function(g){f.id=g;qk().L()&&xk(f)}).catch(function(g){xk(f);
qk().L()?Kf(g):ak(g)})}}
b=void 0===b?{}:b;O("skip_is_supported_killswitch")?yj().then(function(d){c(d)}):c(yk())}
function zk(a,b){function c(d){if(vk()&&d){var e={url:a,options:b,timestamp:P(),status:"NEW",sendCount:0},f=!1,g=b.onSuccess?b.onSuccess:function(){};
e.options.onSuccess=function(h,k){void 0!==e.id?Rj(e.id):f=!0;g(h,k)};
wk(e.url,e.options);Mj(e).then(function(h){e.id=h;f&&Rj(e.id)}).catch(function(h){qk().L()?Kf(h):ak(h)})}else wk(a,b)}
b=void 0===b?{}:b;O("skip_is_supported_killswitch")?yj().then(function(d){c(d)}):c(yk())}
function rk(){var a=this;if(!yk())throw Ki("throttleSend");kk||(kk=gg(function(){return H(a,function c(){var d;return x(c,function(e){if(1==e.h)return w(e,Oj("NEW"),2);if(3!=e.h)return d=e.i,d?w(e,xk(d),3):(sk(),e.return());kk&&(kk=0,rk());e.h=0})})},100))}
function sk(){ig(kk);kk=0}
function xk(a){return H(this,function c(){var d,e,f;return x(c,function(g){switch(g.h){case 1:d=yk();if(!d)throw e=Ki("immediateSend"),e;if(void 0===a.id){g.B(2);break}return w(g,Pj(a.id),3);case 3:(f=g.i)?a=f:Lf(Error("The request cannot be found in the database."));case 2:if(Ak(a,2592E6)){g.B(4);break}Lf(Error("Networkless Logging: Stored logs request expired age limit"));if(void 0===a.id){g.B(5);break}return w(g,Rj(a.id),5);case 5:return g.return();case 4:a.skipRetry||(a=Bk(a));var h=a,k,l;if(null===
(l=null===(k=null===h||void 0===h?void 0:h.options)||void 0===k?void 0:k.postParams)||void 0===l?0:l.requestTimeMs)h.options.postParams.requestTimeMs=Math.round(P());a=h;if(!a){g.B(0);break}if(!a.skipRetry||void 0===a.id){g.B(8);break}return w(g,Rj(a.id),8);case 8:wk(a.url,a.options,!!a.skipRetry),g.h=0}})})}
function Bk(a){var b=this;if(!yk())throw Ki("updateRequestHandlers");var c=a.options.onError?a.options.onError:function(){};
a.options.onError=function(e,f){return H(b,function h(){return x(h,function(k){switch(k.h){case 1:if(!((B("ytNetworklessLoggingInitializationOptions")?nk.potentialEsfErrorCounter:lk)<=Pf("potential_esf_error_limit",10))){k.B(2);break}return w(k,qk().Y(),3);case 3:if(qk().L())B("ytNetworklessLoggingInitializationOptions")&&nk.potentialEsfErrorCounter++,lk++;else return c(e,f),k.return();case 2:if(void 0===(null===a||void 0===a?void 0:a.id)){k.B(4);break}return 1>a.sendCount?w(k,Qj(a.id),8):w(k,Rj(a.id),
4);case 8:gg(function(){qk().L()&&rk()},5E3);
case 4:c(e,f),k.h=0}})})};
var d=a.options.onSuccess?a.options.onSuccess:function(){};
a.options.onSuccess=function(e,f){return H(b,function h(){return x(h,function(k){if(1==k.h)return void 0===(null===a||void 0===a?void 0:a.id)?k.B(2):w(k,Rj(a.id),2);d(e,f);k.h=0})})};
return a}
function Ak(a,b){a=a.timestamp;return P()-a>=b?!1:!0}
function pk(){var a=this;if(!yk())throw Ki("retryQueuedRequests");Oj("QUEUED").then(function(b){b&&!Ak(b,12E4)?gg(function(){return H(a,function d(){return x(d,function(e){if(1==e.h)return void 0===b.id?e.B(2):w(e,Qj(b.id),2);pk();e.h=0})})}):qk().L()&&rk()})}
function tk(){return H(this,function b(){var c,d;return x(b,function(e){c=yk();if(!c)throw d=Ki("clearSWHealthLogsDb"),d;return e.return(Xj().catch(function(f){Kf(f)}))})})}
function qk(){mk||(mk=new gk({fb:!0,Ta:!0}));return mk}
function wk(a,b,c){if(O("networkless_with_beacon")){var d=["method","postBody"];if(Object.keys(b).length>d.length)c=!0;else{c=0;d=u(d);for(var e=d.next();!e.done;e=d.next())b.hasOwnProperty(e.value)&&c++;c=Object.keys(b).length!==c}c?Lg(a,b):$g(a,void 0,b.postBody)}else c&&0===Object.keys(b).length?Xg(a):Lg(a,b)}
function vk(){return B("ytNetworklessLoggingInitializationOptions")?nk.isNwlInitialized:ik}
function yk(){return B("ytNetworklessLoggingInitializationOptions")?nk.databaseToken:jk}
;function Ck(a){var b=this;this.config_=null;a?this.config_=a:Th()&&(this.config_=Dh());eg(function(){ai(b)},5E3)}
Ck.prototype.isReady=function(){!this.config_&&Th()&&(this.config_=Dh());return!!this.config_};
function Gh(a,b,c,d){function e(r){r=void 0===r?!1:r;var p;if(d.retry&&"www.youtube-nocookie.com"!=h&&(r||(p=Zh(b,c,l,k)),p)){var A=g.onSuccess,I=g.onFetchSuccess;g.onSuccess=function(E,Q){$h(p);A(E,Q)};
c.onFetchSuccess=function(E,Q){$h(p);I(E,Q)}}try{r&&d.retry&&!d.La.bypassNetworkless?(g.method="POST",d.La.writeThenSend?uk(q,g):zk(q,g)):(g.method="POST",g.postParams||(g.postParams={}),Lg(q,g))}catch(E){if("InvalidAccessError"==E.name)p&&($h(p),p=0),Lf(Error("An extension is blocking network request."));
else throw E;}p&&eg(function(){ai(a)},5E3)}
!F("VISITOR_DATA")&&"visitor_id"!==b&&.01>Math.random()&&Lf(new vi("Missing VISITOR_DATA when sending innertube request.",b,c,d));if(!a.isReady()){var f=new vi("innertube xhrclient not ready",b,c,d);Kf(f);throw f;}var g={headers:{"Content-Type":"application/json"},method:"POST",postParams:c,postBodyFormat:"JSON",onTimeout:function(){d.onTimeout()},
onFetchTimeout:d.onTimeout,onSuccess:function(r,p){if(d.onSuccess)d.onSuccess(p)},
onFetchSuccess:function(r){if(d.onSuccess)d.onSuccess(r)},
onError:function(r,p){if(d.onError)d.onError(p)},
onFetchError:function(r){if(d.onError)d.onError(r)},
timeout:d.timeout,withCredentials:!0},h="";(f=a.config_.bb)&&(h=f);var k=a.config_.eb||!1,l=Uh(k,h,d);Object.assign(g.headers,l);g.headers.Authorization&&!h&&(g.headers["x-origin"]=window.location.origin);f="/youtubei/"+a.config_.innertubeApiVersion+"/"+b;var n={alt:"json"};a.config_.cb&&g.headers.Authorization||(n.key=a.config_.innertubeApiKey);var q=zg(""+h+f,n||{},!0);vk()?xj().then(function(r){e(r)}):e(!1)}
;function Dk(a,b,c){c=void 0===c?{}:c;var d=Ck;F("ytLoggingEventsDefaultDisabled",!1)&&Ck==Ck&&(d=null);Ih(a,b,d,c)}
;var Ek=[{Aa:function(a){return"Cannot read property '"+a.key+"'"},
ma:{Error:[{regexp:/(Permission denied) to access property "([^']+)"/,groups:["reason","key"]}],TypeError:[{regexp:/Cannot read property '([^']+)' of (null|undefined)/,groups:["key","value"]},{regexp:/\u65e0\u6cd5\u83b7\u53d6\u672a\u5b9a\u4e49\u6216 (null|undefined) \u5f15\u7528\u7684\u5c5e\u6027\u201c([^\u201d]+)\u201d/,groups:["value","key"]},{regexp:/\uc815\uc758\ub418\uc9c0 \uc54a\uc74c \ub610\ub294 (null|undefined) \ucc38\uc870\uc778 '([^']+)' \uc18d\uc131\uc744 \uac00\uc838\uc62c \uc218 \uc5c6\uc2b5\ub2c8\ub2e4./,
groups:["value","key"]},{regexp:/No se puede obtener la propiedad '([^']+)' de referencia nula o sin definir/,groups:["key"]},{regexp:/Unable to get property '([^']+)' of (undefined or null) reference/,groups:["key","value"]},{regexp:/(null) is not an object \(evaluating '(?:([^.]+)\.)?([^']+)'\)/,groups:["value","base","key"]}]}},{Aa:function(a){return"Cannot call '"+a.key+"'"},
ma:{TypeError:[{regexp:/(?:([^ ]+)?\.)?([^ ]+) is not a function/,groups:["base","key"]},{regexp:/([^ ]+) called on (null or undefined)/,groups:["key","value"]},{regexp:/Object (.*) has no method '([^ ]+)'/,groups:["base","key"]},{regexp:/Object doesn't support property or method '([^ ]+)'/,groups:["key"]},{regexp:/\u30aa\u30d6\u30b8\u30a7\u30af\u30c8\u306f '([^']+)' \u30d7\u30ed\u30d1\u30c6\u30a3\u307e\u305f\u306f\u30e1\u30bd\u30c3\u30c9\u3092\u30b5\u30dd\u30fc\u30c8\u3057\u3066\u3044\u307e\u305b\u3093/,
groups:["key"]},{regexp:/\uac1c\uccb4\uac00 '([^']+)' \uc18d\uc131\uc774\ub098 \uba54\uc11c\ub4dc\ub97c \uc9c0\uc6d0\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4./,groups:["key"]}]}},{Aa:function(a){return a.key+" is not defined"},
ma:{ReferenceError:[{regexp:/(.*) is not defined/,groups:["key"]},{regexp:/Can't find variable: (.*)/,groups:["key"]}]}}];var Gk={T:[],P:[{Ea:Fk,weight:500}]};function Fk(a){a=a.stack;return a.includes("chrome://")||a.includes("chrome-extension://")||a.includes("moz-extension://")}
;function Hk(){this.P=[];this.T=[]}
var Ik;function Jk(){if(!Ik){var a=Ik=new Hk;a.T.length=0;a.P.length=0;Gk.T&&a.T.push.apply(a.T,Gk.T);Gk.P&&a.P.push.apply(a.P,Gk.P)}return Ik}
;var Kk=new M;function Lk(a){function b(){return a.charCodeAt(d++)}
var c=a.length,d=0;do{var e=Mk(b);if(Infinity===e)break;var f=e>>3;switch(e&7){case 0:e=Mk(b);if(2===f)return e;break;case 1:if(2===f)return;d+=8;break;case 2:e=Mk(b);if(2===f)return a.substr(d,e);d+=e;break;case 5:if(2===f)return;d+=4;break;default:return}}while(d<c)}
function Mk(a){var b=a(),c=b&127;if(128>b)return c;b=a();c|=(b&127)<<7;if(128>b)return c;b=a();c|=(b&127)<<14;if(128>b)return c;b=a();return 128>b?c|(b&127)<<21:Infinity}
;function Nk(a,b,c,d){if(a)if(Array.isArray(a)){var e=d;for(d=0;d<a.length&&!(a[d]&&(e+=Ok(d,a[d],b,c),500<e));d++);d=e}else if("object"===typeof a)for(e in a){if(a[e]){var f=a[e];var g=b;var h=c;g="string"!==typeof f||"clickTrackingParams"!==e&&"trackingParams"!==e?0:(f=Lk(atob(f.replace(/-/g,"+").replace(/_/g,"/"))))?Ok(e+".ve",f,g,h):0;d+=g;d+=Ok(e,a[e],b,c);if(500<d)break}}else c[b]=Pk(a),d+=c[b].length;else c[b]=Pk(a),d+=c[b].length;return d}
function Ok(a,b,c,d){c+="."+a;a=Pk(b);d[c]=a;return c.length+a.length}
function Pk(a){return("string"===typeof a?a:String(JSON.stringify(a))).substr(0,500)}
;var Qk=new Set,Rk=0,Sk=0,Tk=0,Uk=[],Vk=["PhantomJS","Googlebot","TO STOP THIS SECURITY SCAN go/scan"];function Wk(a){Xk(a,"WARNING")}
function Xk(a,b,c,d,e,f){f=void 0===f?{}:f;f.name=c||F("INNERTUBE_CONTEXT_CLIENT_NAME",1);f.version=d||F("INNERTUBE_CONTEXT_CLIENT_VERSION",void 0);c=f||{};b=void 0===b?"ERROR":b;b=void 0===b?"ERROR":b;if(a&&(a.hasOwnProperty("level")&&a.level&&(b=a.level),O("console_log_js_exceptions")&&(d=[],d.push("Name: "+a.name),d.push("Message: "+a.message),a.hasOwnProperty("params")&&d.push("Error Params: "+JSON.stringify(a.params)),a.hasOwnProperty("args")&&d.push("Error args: "+JSON.stringify(a.args)),d.push("File name: "+
a.fileName),d.push("Stacktrace: "+a.stack),window.console.log(d.join("\n"),a)),!(5<=Rk))){var g=Md(a);d=g.message||"Unknown Error";e=g.name||"UnknownError";var h=g.stack||a.i||"Not available";h.startsWith(e+": "+d)&&(f=h.split("\n"),f.shift(),h=f.join("\n"));f=g.lineNumber||"Not available";g=g.fileName||"Not available";var k=0;if(a.hasOwnProperty("args")&&a.args&&a.args.length)for(var l=0;l<a.args.length&&!(k=Nk(a.args[l],"params."+l,c,k),500<=k);l++);else if(a.hasOwnProperty("params")&&a.params){var n=
a.params;if("object"===typeof a.params)for(l in n){if(n[l]){var q="params."+l,r=Pk(n[l]);c[q]=r;k+=q.length+r.length;if(500<k)break}}else c.params=Pk(n)}if(Uk.length)for(l=0;l<Uk.length&&!(k=Nk(Uk[l],"params.context."+l,c,k),500<=k);l++);navigator.vendor&&!c.hasOwnProperty("vendor")&&(c["device.vendor"]=navigator.vendor);l={message:d,name:e,lineNumber:f,fileName:g,stack:h,params:c,sampleWeight:1};c=Number(a.columnNumber);isNaN(c)||(l.lineNumber=l.lineNumber+":"+c);if("IGNORED"===a.level)a=0;else a:{a=
Jk();c=u(a.T);for(d=c.next();!d.done;d=c.next())if(d=d.value,l.message&&l.message.match(d.Ll)){a=d.weight;break a}a=u(a.P);for(c=a.next();!c.done;c=a.next())if(c=c.value,c.Ea(l)){a=c.weight;break a}a=1}l.sampleWeight=a;a=u(Ek);for(c=a.next();!c.done;c=a.next())if(c=c.value,c.ma[l.name])for(e=u(c.ma[l.name]),d=e.next();!d.done;d=e.next())if(f=d.value,d=l.message.match(f.regexp)){l.params["params.error.original"]=d[0];e=f.groups;f={};for(g=0;g<e.length;g++)f[e[g]]=d[g+1],l.params["params.error."+e[g]]=
d[g+1];l.message=c.Aa(f);break}l.params||(l.params={});a=Jk();l.params["params.errorServiceSignature"]="msg="+a.T.length+"&cb="+a.P.length;l.params["params.serviceWorker"]="false";y.document&&y.document.querySelectorAll&&(l.params["params.fscripts"]=String(document.querySelectorAll("script:not([nonce])").length));sb("sample").constructor!==qb&&(l.params["params.fconst"]="true");window.yterr&&"function"===typeof window.yterr&&window.yterr(l);if(0!==l.sampleWeight&&!Qk.has(l.message)){"ERROR"===b?(Kk.W("handleError",
l),O("record_app_crashed_web")&&0===Tk&&1===l.sampleWeight&&(Tk++,Dk("appCrashed",{appCrashType:"APP_CRASH_TYPE_BREAKPAD"})),Sk++):"WARNING"===b&&Kk.W("handleWarning",l);if(O("kevlar_gel_error_routing")){a=b;b:{c=u(Vk);for(d=c.next();!d.done;d=c.next())if(Ug(d.value.toLowerCase())){c=!0;break b}c=!1}if(c)c=void 0;else{d={stackTrace:l.stack};l.fileName&&(d.filename=l.fileName);c=l.lineNumber&&l.lineNumber.split?l.lineNumber.split(":"):[];0!==c.length&&(1!==c.length||isNaN(Number(c[0]))?2!==c.length||
isNaN(Number(c[0]))||isNaN(Number(c[1]))||(d.lineNumber=Number(c[0]),d.columnNumber=Number(c[1])):d.lineNumber=Number(c[0]));c={level:"ERROR_LEVEL_UNKNOWN",message:l.message,errorClassName:l.name,sampleWeight:l.sampleWeight};"ERROR"===a?c.level="ERROR_LEVEL_ERROR":"WARNING"===a&&(c.level="ERROR_LEVEL_WARNNING");d={isObfuscated:!0,browserStackInfo:d};e={pageUrl:window.location.href,kvPairs:[]};F("FEXP_EXPERIMENTS")&&(e.experimentIds=F("FEXP_EXPERIMENTS"));if(f=l.params)for(g=u(Object.keys(f)),h=g.next();!h.done;h=
g.next())h=h.value,e.kvPairs.push({key:"client."+h,value:String(f[h])});f=F("SERVER_NAME",void 0);g=F("SERVER_VERSION",void 0);f&&g&&(e.kvPairs.push({key:"server.name",value:f}),e.kvPairs.push({key:"server.version",value:g}));c={errorMetadata:e,stackTrace:d,logMessage:c}}c&&(Dk("clientError",c),("ERROR"===a||O("errors_flush_gel_always_killswitch"))&&yh())}if(!O("suppress_error_204_logging")){a=l.params||{};b={urlParams:{a:"logerror",t:"jserror",type:l.name,msg:l.message.substr(0,250),line:l.lineNumber,
level:b,"client.name":a.name},postParams:{url:F("PAGE_NAME",window.location.href),file:l.fileName},method:"POST"};a.version&&(b["client.version"]=a.version);if(b.postParams){l.stack&&(b.postParams.stack=l.stack);c=u(Object.keys(a));for(d=c.next();!d.done;d=c.next())d=d.value,b.postParams["client."+d]=a[d];if(a=F("LATEST_ECATCHER_SERVICE_TRACKING_PARAMS",void 0))for(c=u(Object.keys(a)),d=c.next();!d.done;d=c.next())d=d.value,b.postParams[d]=a[d];a=F("SERVER_NAME",void 0);c=F("SERVER_VERSION",void 0);
a&&c&&(b.postParams["server.name"]=a,b.postParams["server.version"]=c)}Lg(F("ECATCHER_REPORT_HOST","")+"/error_204",b)}Qk.add(l.message);Rk++}}}
function Yk(a,b){for(var c=[],d=1;d<arguments.length;++d)c[d-1]=arguments[d];a.args||(a.args=[]);a.args.push.apply(a.args,fa(c))}
;var Zk={ic:3611,xb:27686,yb:85013,zb:23462,Bb:42016,Cb:62407,Db:26926,Ab:43781,Eb:51236,Fb:79148,Gb:50160,Hb:77504,Tb:87907,Ub:18630,Vb:54445,Wb:80935,Xb:105675,Yb:37521,Zb:47786,ac:98349,cc:123695,dc:6827,ec:29434,fc:7282,hc:124448,lc:32276,kc:76278,mc:93911,nc:106531,oc:27259,pc:27262,qc:27263,tc:21759,uc:27107,wc:62936,xc:49568,yc:38408,zc:80637,Ac:68727,Bc:68728,Cc:80353,Dc:80356,Ec:74610,Fc:45707,Gc:83962,Hc:83970,Ic:46713,Jc:89711,Kc:74612,Lc:93265,Mc:74611,Nc:131380,Pc:128979,Qc:128978,Oc:131391,
Rc:105350,Sc:131392,Uc:113533,Vc:93252,Wc:99357,Yc:94521,Zc:114252,bd:113532,cd:94522,Xc:94583,dd:88E3,ed:93253,fd:93254,gd:94387,hd:94388,jd:93255,kd:97424,Tc:72502,ld:110111,md:76019,od:117092,pd:117093,nd:89431,qd:110466,rd:77240,sd:60508,td:73393,ud:113534,vd:92098,wd:131381,xd:84517,yd:83759,zd:80357,Ad:86113,Bd:72598,Cd:72733,Dd:107349,Ed:124275,Fd:118203,Gd:133275,Hd:133274,Id:133272,Jd:133273,Kd:133276,Md:117431,Ld:133797,Nd:133405,Od:117429,Pd:117430,Qd:117432,Rd:120080,Sd:117259,Td:121692,
Ud:132972,Vd:133051,Wd:133658,Xd:132971,Yd:97615,Zd:31402,be:133624,ce:133623,de:133622,ae:133621,ee:84774,ge:95117,he:98930,ie:98931,je:98932,ke:43347,le:129889,me:45474,ne:100352,oe:84758,pe:98443,qe:117985,re:74613,se:74614,te:64502,ue:74615,we:74616,xe:122224,ye:74617,ze:77820,Ae:74618,Be:93278,Ce:93274,De:93275,Ee:93276,Fe:22110,Ge:29433,He:133798,Ie:132295,Ke:120541,Me:82047,Ne:113550,Oe:75836,Pe:75837,Qe:42352,Re:84512,Se:76065,Te:75989,Ue:16623,Ve:32594,We:27240,Xe:32633,Ye:74858,af:3945,
Ze:16989,bf:45520,cf:25488,df:25492,ef:25494,ff:55760,gf:14057,hf:18451,jf:57204,kf:57203,lf:17897,mf:57205,nf:18198,pf:17898,qf:17909,rf:43980,sf:46220,tf:11721,uf:49954,vf:96369,wf:3854,xf:56251,yf:25624,zf:16906,Af:99999,Bf:68172,Cf:27068,Df:47973,Ef:72773,Ff:26970,Gf:26971,Hf:96805,If:17752,Jf:73233,Kf:109512,Lf:22256,Mf:14115,Nf:22696,Of:89278,Pf:89277,Qf:109513,Rf:43278,Sf:43459,Tf:43464,Uf:89279,Vf:43717,Wf:55764,Xf:22255,Yf:89281,Zf:40963,ag:43277,cg:43442,dg:91824,eg:120137,fg:96367,gg:36850,
hg:72694,ig:37414,jg:36851,lg:124863,kg:121343,mg:73491,ng:54473,og:43375,pg:46674,qg:32473,rg:72901,sg:72906,tg:50947,ug:50612,vg:50613,wg:50942,xg:84938,yg:84943,zg:84939,Ag:84941,Bg:84944,Cg:84940,Dg:84942,Eg:35585,Fg:51926,Gg:79983,Hg:63238,Ig:18921,Jg:63241,Kg:57893,Lg:41182,Mg:33424,Ng:22207,Og:42993,Pg:36229,Qg:22206,Rg:22205,Sg:18993,Tg:19001,Ug:18990,Vg:18991,Wg:18997,Xg:18725,Yg:19003,Zg:36874,ah:44763,bh:33427,dh:67793,eh:22182,fh:37091,gh:34650,hh:50617,ih:47261,jh:22287,kh:25144,lh:97917,
mh:62397,nh:125598,oh:36961,ph:108035,qh:27426,rh:27857,sh:27846,th:27854,uh:69692,vh:61411,wh:39299,xh:38696,yh:62520,zh:36382,Ah:108701,Bh:50663,Ch:36387,Dh:14908,Eh:37533,Fh:105443,Gh:61635,Hh:62274,Ih:133818,Jh:65702,Kh:65703,Lh:65701,Mh:76256,Nh:37671,Oh:49953,Qh:36216,Rh:28237,Sh:39553,Th:29222,Uh:26107,Vh:38050,Wh:26108,Yh:120745,Xh:26109,Zh:26110,ai:66881,bi:28236,ci:14586,di:57929,fi:74723,gi:44098,hi:44099,ki:23528,li:61699,ii:134104,ji:134103,mi:59149,ni:101951,oi:97346,ri:118051,si:95102,
ti:64882,vi:119505,wi:63595,xi:63349,yi:95101,zi:75240,Ai:27039,Bi:68823,Ci:21537,Di:83464,Ei:75707,Fi:83113,Gi:101952,Hi:101953,Ji:79610,Ki:125755,Li:24402,Mi:24400,Ni:32925,Oi:57173,Pi:122502,Qi:64423,Ri:64424,Si:33986,Ti:100828,Ui:129089,Vi:21409,Wi:11070,Xi:11074,Yi:17880,Zi:14001,bj:30709,cj:30707,dj:30711,ej:30710,fj:30708,aj:26984,gj:63648,hj:63649,ij:51879,jj:111059,kj:5754,lj:20445,nj:130975,mj:130976,oj:110386,pj:113746,qj:66557,rj:17310,sj:28631,tj:21589,uj:68012,vj:60480,wj:31571,xj:76980,
yj:41577,zj:45469,Aj:38669,Bj:13768,Cj:13777,Dj:62985,Ej:4724,Fj:59369,Gj:43927,Hj:43928,Ij:12924,Jj:100355,Mj:56219,Nj:27669,Oj:10337,Lj:47896,Pj:122629,Qj:121258,Rj:107598,Sj:127991,Tj:96639,Uj:107536,Vj:130169,Wj:96661,Xj:96658,Yj:116646,Zj:121122,ak:96660,bk:127738,ck:127083,dk:104443,ek:96659,fk:106442,gk:63667,hk:63668,ik:63669,jk:130686,kk:78314,lk:55761,mk:127098,nk:96368,pk:67374,qk:48992,rk:49956,sk:31961,tk:26388,uk:23811,vk:5E4,wk:126250,xk:96370,yk:47355,zk:47356,Ak:37935,Bk:45521,Ck:21760,
Dk:83769,Ek:49977,Fk:49974,Gk:93497,Hk:93498,Ik:34325,Jk:115803,Kk:123707,Lk:100081,Mk:35309,Nk:68314,Ok:25602,Pk:100339,Qk:59018,Rk:18248,Sk:50625,Tk:9729,Uk:37168,Vk:37169,Wk:21667,Xk:16749,Yk:18635,Zk:39305,al:18046,bl:53969,dl:8213,fl:93926,il:102852,jl:110099,kl:22678,ll:69076,nl:100856,ol:17736,pl:3832,ql:55759,rl:64031,sl:93044,ul:93045,vl:34388,wl:17657,xl:17655,yl:39579,zl:39578,Al:77448,Bl:8196,Cl:11357,Dl:69877,El:8197,Fl:82039};function $k(){var a=kb(al),b;return $e(new Te(function(c,d){a.onSuccess=function(e){Fg(e)?c(new bl(e)):d(new cl("Request failed, status="+(e&&"status"in e?e.status:-1),"net.badstatus",e))};
a.onError=function(e){d(new cl("Unknown request error","net.unknown",e))};
a.onTimeout=function(e){d(new cl("Request timed out","net.timeout",e))};
b=Lg("//googleads.g.doubleclick.net/pagead/id",a)}),function(c){c instanceof af&&b.abort();
return Ye(c)})}
function cl(a,b,c){Ta.call(this,a+", errorCode="+b);this.errorCode=b;this.xhr=c;this.name="PromiseAjaxError"}
v(cl,Ta);function bl(a){this.xhr=a}
;function dl(){this.i=0;this.h=null}
dl.prototype.then=function(a,b,c){return 1===this.i&&a?(a=a.call(c,this.h),Se(a)?a:el(a)):2===this.i&&b?(a=b.call(c,this.h),Se(a)?a:fl(a)):this};
dl.prototype.getValue=function(){return this.h};
dl.prototype.$goog_Thenable=!0;function fl(a){var b=new dl;a=void 0===a?null:a;b.i=2;b.h=void 0===a?null:a;return b}
function el(a){var b=new dl;a=void 0===a?null:a;b.i=1;b.h=void 0===a?null:a;return b}
;function gl(){if(od())return!0;var a=F("INNERTUBE_CLIENT_NAME");return!a||"WEB"!==a&&"MWEB"!==a||Tg&&Ug("applewebkit")&&!Ug("version")&&(!Ug("safari")||Ug("gsa/"))||nc&&Ug("version/")?!0:(a=md.get("CONSENT",void 0))?a.startsWith("YES+"):!0}
;function hl(a){Ta.call(this,a.message||a.description||a.name);this.isMissing=a instanceof il;this.isTimeout=a instanceof cl&&"net.timeout"==a.errorCode;this.isCanceled=a instanceof af}
v(hl,Ta);hl.prototype.name="BiscottiError";function il(){Ta.call(this,"Biscotti ID is missing from server")}
v(il,Ta);il.prototype.name="BiscottiMissingError";var al={format:"RAW",method:"GET",timeout:5E3,withCredentials:!0},jl=null;
function pg(){if(O("disable_biscotti_fetch_entirely_for_all_web_clients"))return Ye(Error("Biscotti id fetching has been disabled entirely."));if(O("condition_biscotti_fetch_on_consent_cookie_html5_clients")&&!gl())return Ye(Error("User has not consented - not fetching biscotti id."));if("1"==ib())return Ye(Error("Biscotti ID is not available in private embed mode"));jl||(jl=$e($k().then(kl),function(a){return ll(2,a)}));
return jl}
function kl(a){a=a.xhr.responseText;if(0!=a.lastIndexOf(")]}'",0))throw new il;a=JSON.parse(a.substr(4));if(1<(a.type||1))throw new il;a=a.id;qg(a);jl=el(a);ml(18E5,2);return a}
function ll(a,b){b=new hl(b);qg("");jl=fl(b);0<a&&ml(12E4,a-1);throw b;}
function ml(a,b){ag(function(){$e($k().then(kl,function(c){return ll(b,c)}),Ea)},a)}
function nl(){try{var a=B("yt.ads.biscotti.getId_");return a?a():pg()}catch(b){return Ye(b)}}
;function ol(a){if("1"!=ib()){a&&og();try{nl().then(function(){},function(){}),ag(ol,18E5)}catch(b){Kf(b)}}}
;var pl=Date.now().toString();
function ql(){a:{if(window.crypto&&window.crypto.getRandomValues)try{var a=Array(16),b=new Uint8Array(16);window.crypto.getRandomValues(b);for(var c=0;c<a.length;c++)a[c]=b[c];var d=a;break a}catch(e){}d=Array(16);for(a=0;16>a;a++){b=Date.now();for(c=0;c<b%23;c++)d[a]=Math.random();d[a]=Math.floor(256*Math.random())}if(pl)for(a=1,b=0;b<pl.length;b++)d[a%16]=d[a%16]^d[(a-1)%16]/4^pl.charCodeAt(b),a++}a=[];for(b=0;b<d.length;b++)a.push("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(d[b]&63));
return a.join("")}
;var rl,sl=y.ytLoggingDocDocumentNonce_;sl||(sl=ql(),Ra("ytLoggingDocDocumentNonce_",sl));rl=sl;var tl={Je:0,jc:1,sc:2,Ph:3,Le:4,ml:5,Ii:6,Kj:7,0:"DEFAULT",1:"CHAT",2:"CONVERSATIONS",3:"MINIPLAYER",4:"DIALOG",5:"VOZ",6:"MUSIC_WATCH_TABS",7:"SHARE"};function ul(a){this.h=a}
function vl(a){return new ul({trackingParams:a})}
ul.prototype.getAsJson=function(){var a={};void 0!==this.h.trackingParams?a.trackingParams=this.h.trackingParams:(a.veType=this.h.veType,void 0!==this.h.veCounter&&(a.veCounter=this.h.veCounter),void 0!==this.h.elementIndex&&(a.elementIndex=this.h.elementIndex));void 0!==this.h.dataElement&&(a.dataElement=this.h.dataElement.getAsJson());void 0!==this.h.youtubeData&&(a.youtubeData=this.h.youtubeData);return a};
ul.prototype.toString=function(){return JSON.stringify(this.getAsJson())};
ul.prototype.isClientVe=function(){return!this.h.trackingParams&&!!this.h.veType};function wl(a){a=void 0===a?0:a;return 0==a?"client-screen-nonce":"client-screen-nonce."+a}
function xl(a){a=void 0===a?0:a;return 0==a?"ROOT_VE_TYPE":"ROOT_VE_TYPE."+a}
function yl(a){return F(xl(void 0===a?0:a),void 0)}
z("yt_logging_screen.getRootVeType",yl,void 0);function zl(a){return(a=yl(void 0===a?0:a))?new ul({veType:a,youtubeData:void 0}):null}
function Al(){var a=F("csn-to-ctt-auth-info");a||(a={},N("csn-to-ctt-auth-info",a));return a}
function Bl(a){a=void 0===a?0:a;var b=F(wl(a));if(!b&&!F("USE_CSN_FALLBACK",!0))return null;b||!O("use_undefined_csn_any_layer")&&0!=a||(b="UNDEFINED_CSN");return b?b:null}
z("yt_logging_screen.getCurrentCsn",Bl,void 0);function Cl(a,b,c){var d=Al();(c=Bl(c))&&delete d[c];b&&(d[a]=b)}
function Dl(a){return Al()[a]}
z("yt_logging_screen.getCttAuthInfo",Dl,void 0);function El(a,b,c,d){c=void 0===c?0:c;if(a!==F(wl(c))||b!==F(xl(c)))Cl(a,d,c),N(wl(c),a),N(xl(c),b),b=function(){setTimeout(function(){a&&Ih("foregroundHeartbeatScreenAssociated",{clientDocumentNonce:rl,clientScreenNonce:a},Ck)},0)},"requestAnimationFrame"in window?window.requestAnimationFrame(b):b()}
z("yt_logging_screen.setCurrentScreen",El,void 0);function Fl(a){bi.call(this,1,arguments);this.csn=a}
v(Fl,bi);var ki=new ci("screen-created",Fl),Gl=[],Il=Hl,Jl=0;function Kl(a,b,c,d){var e=d.filter(function(f){f.csn!==b?(f.csn=b,f=!0):f=!1;return f});
c={csn:b,parentVe:c.getAsJson(),childVes:Ya(e,function(f){return f.getAsJson()})};
d=u(d);for(e=d.next();!e.done;e=d.next())e=e.value.getAsJson(),(gb(e)||!e.trackingParams&&!e.veType)&&Wk(Error("Child VE logged with no data"));d={F:Dl(b),U:b};"UNDEFINED_CSN"==b?Ll("visualElementAttached",c,d):a?Ih("visualElementAttached",c,a,d):Dk("visualElementAttached",c,d)}
function Hl(){for(var a=Math.random()+"",b=[],c=0,d=0;d<a.length;d++){var e=a.charCodeAt(d);255<e&&(b[c++]=e&255,e>>=8);b[c++]=e}return Cc(b)}
function Ll(a,b,c){Gl.push({payloadName:a,payload:b,options:c});Jl||(Jl=li())}
function mi(a){if(Gl){for(var b=u(Gl),c=b.next();!c.done;c=b.next())c=c.value,c.payload&&(c.payload.csn=a.csn,Ih(c.payloadName,c.payload,null,c.options));Gl.length=0}Jl=0}
;function Ml(){this.i=new Set;this.h=new Set;this.j=new Map}
Ml.prototype.clear=function(){this.i.clear();this.h.clear();this.j.clear()};
Fa(Ml);function Nl(a,b){for(var c=[],d=1;d<arguments.length;++d)c[d-1]=arguments[d];if(!Ol(a)||c.some(function(e){return!Ol(e)}))throw Error("Only objects may be merged.");
c=u(c);for(d=c.next();!d.done;d=c.next())Pl(a,d.value);return a}
function Pl(a,b){for(var c in b)if(Ol(b[c])){if(c in a&&!Ol(a[c]))throw Error("Cannot merge an object into a non-object.");c in a||(a[c]={});Pl(a[c],b[c])}else if(Ql(b[c])){if(c in a&&!Ql(a[c]))throw Error("Cannot merge an array into a non-array.");c in a||(a[c]=[]);Rl(a[c],b[c])}else a[c]=b[c];return a}
function Rl(a,b){b=u(b);for(var c=b.next();!c.done;c=b.next())c=c.value,Ol(c)?a.push(Pl({},c)):Ql(c)?a.push(Rl([],c)):a.push(c);return a}
function Ol(a){return"object"===typeof a&&!Array.isArray(a)}
function Ql(a){return"object"===typeof a&&Array.isArray(a)}
;function Sl(a,b){bi.call(this,1,arguments)}
v(Sl,bi);function Tl(a,b){bi.call(this,1,arguments)}
v(Tl,bi);var Ul=new ci("aft-recorded",Sl),Vl=new ci("timing-sent",Tl);var Wl=window;function Xl(){this.timing={};this.clearResourceTimings=function(){};
this.webkitClearResourceTimings=function(){};
this.mozClearResourceTimings=function(){};
this.msClearResourceTimings=function(){};
this.oClearResourceTimings=function(){}}
var W=Wl.performance||Wl.mozPerformance||Wl.msPerformance||Wl.webkitPerformance||new Xl;var Yl=!1,Zl={'script[name="scheduler/scheduler"]':"sj",'script[name="player/base"]':"pj",'link[rel="stylesheet"][name="www-player"]':"pc",'link[rel="stylesheet"][name="player/www-player"]':"pc",'script[name="desktop_polymer/desktop_polymer"]':"dpj",'link[rel="import"][name="desktop_polymer"]':"dph",'script[name="mobile-c3"]':"mcj",'link[rel="stylesheet"][name="mobile-c3"]':"mcc",'script[name="player-plasma-ias-phone/base"]':"mcppj",'script[name="player-plasma-ias-tablet/base"]':"mcptj",'link[rel="stylesheet"][name="mobile-polymer-player-ias"]':"mcpc",
'link[rel="stylesheet"][name="mobile-polymer-player-svg-ias"]':"mcpsc",'script[name="mobile_blazer_core_mod"]':"mbcj",'link[rel="stylesheet"][name="mobile_blazer_css"]':"mbc",'script[name="mobile_blazer_logged_in_users_mod"]':"mbliuj",'script[name="mobile_blazer_logged_out_users_mod"]':"mblouj",'script[name="mobile_blazer_noncore_mod"]':"mbnj","#player_css":"mbpc",'script[name="mobile_blazer_desktopplayer_mod"]':"mbpj",'link[rel="stylesheet"][name="mobile_blazer_tablet_css"]':"mbtc",'script[name="mobile_blazer_watch_mod"]':"mbwj"};
Pa(W.clearResourceTimings||W.webkitClearResourceTimings||W.mozClearResourceTimings||W.msClearResourceTimings||W.oClearResourceTimings||Ea,W);function $l(a){var b=am(a);if(b.aft)return b.aft;a=F((a||"")+"TIMING_AFT_KEYS",["ol"]);for(var c=a.length,d=0;d<c;d++){var e=b[a[d]];if(e)return e}return NaN}
function bm(){var a;if(O("csi_use_performance_navigation_timing")){var b,c,d,e=null===(d=null===(c=null===(b=null===(a=null===W||void 0===W?void 0:W.getEntriesByType)||void 0===a?void 0:a.call(W,"navigation"))||void 0===b?void 0:b[0])||void 0===c?void 0:c.toJSON)||void 0===d?void 0:d.call(c);e?(e.requestStart=cm(e.requestStart),e.responseEnd=cm(e.responseEnd),e.redirectStart=cm(e.redirectStart),e.redirectEnd=cm(e.redirectEnd),e.domainLookupEnd=cm(e.domainLookupEnd),e.connectStart=cm(e.connectStart),
e.connectEnd=cm(e.connectEnd),e.responseStart=cm(e.responseStart),e.secureConnectionStart=cm(e.secureConnectionStart),e.domainLookupStart=cm(e.domainLookupStart),e.isPerformanceNavigationTiming=!0,a=e):a=W.timing}else a=W.timing;return a}
function dm(){return O("csi_use_time_origin")&&W.timeOrigin?Math.floor(W.timeOrigin):W.timing.navigationStart}
function cm(a){return Math.round(dm()+a)}
function em(a){var b;(b=B("ytcsi."+(a||"")+"data_"))||(b={tick:{},info:{}},Ra("ytcsi."+(a||"")+"data_",b));return b}
function fm(a){a=em(a);a.info||(a.info={});return a.info}
function am(a){a=em(a);a.tick||(a.tick={});return a.tick}
function gm(a){var b=em(a).nonce;b||(b=ql(),em(a).nonce=b);return b}
function hm(a){var b=am(a||""),c=$l(a);c&&!Yl&&(hi(Ul,new Sl(Math.round(c-b._start),a)),Yl=!0)}
;function im(){if(W.getEntriesByType){var a=W.getEntriesByType("paint");if(a=$a(a,function(b){return"first-paint"===b.name}))return cm(a.startTime)}a=W.timing;
return a.ib?Math.max(0,a.ib):0}
;function jm(){var a=B("ytcsi.debug");a||(a=[],z("ytcsi.debug",a,void 0),z("ytcsi.reference",{},void 0));return a}
function km(a){a=a||"";var b=B("ytcsi.reference");b||(jm(),b=B("ytcsi.reference"));if(b[a])return b[a];var c=jm(),d={timerName:a,info:{},tick:{},span:{}};c.push(d);return b[a]=d}
;var lm=y.ytLoggingLatencyUsageStats_||{};z("ytLoggingLatencyUsageStats_",lm,void 0);function mm(){this.h=0}
function nm(){mm.h||(mm.h=new mm);return mm.h}
mm.prototype.tick=function(a,b,c){om(this,"tick_"+a+"_"+b)||Dk("latencyActionTicked",{tickName:a,clientActionNonce:b},{timestamp:c})};
mm.prototype.info=function(a,b){var c=Object.keys(a).join("");om(this,"info_"+c+"_"+b)||(a=Object.assign({},a),a.clientActionNonce=b,Dk("latencyActionInfo",a))};
mm.prototype.span=function(a,b){var c=Object.keys(a).join("");om(this,"span_"+c+"_"+b)||(a.clientActionNonce=b,Dk("latencyActionSpan",a))};
function om(a,b){lm[b]=lm[b]||{count:0};var c=lm[b];c.count++;c.time=P();a.h||(a.h=eg(function(){var d=P(),e;for(e in lm)lm[e]&&6E4<d-lm[e].time&&delete lm[e];a&&(a.h=0)},5E3));
return 5<c.count?(6===c.count&&1>1E5*Math.random()&&(c=new vi("CSI data exceeded logging limit with key",b.split("_")),0<=b.indexOf("plev")||Wk(c)),!0):!1}
;var X={},pm=(X.auto_search="LATENCY_ACTION_AUTO_SEARCH",X.ad_to_ad="LATENCY_ACTION_AD_TO_AD",X.ad_to_video="LATENCY_ACTION_AD_TO_VIDEO",X["analytics.explore"]="LATENCY_ACTION_CREATOR_ANALYTICS_EXPLORE",X.app_startup="LATENCY_ACTION_APP_STARTUP",X["artist.analytics"]="LATENCY_ACTION_CREATOR_ARTIST_ANALYTICS",X["artist.events"]="LATENCY_ACTION_CREATOR_ARTIST_CONCERTS",X["artist.presskit"]="LATENCY_ACTION_CREATOR_ARTIST_PROFILE",X.browse="LATENCY_ACTION_BROWSE",X.channels="LATENCY_ACTION_CHANNELS",X.creator_channel_dashboard=
"LATENCY_ACTION_CREATOR_CHANNEL_DASHBOARD",X["channel.analytics"]="LATENCY_ACTION_CREATOR_CHANNEL_ANALYTICS",X["channel.comments"]="LATENCY_ACTION_CREATOR_CHANNEL_COMMENTS",X["channel.content"]="LATENCY_ACTION_CREATOR_POST_LIST",X["channel.copyright"]="LATENCY_ACTION_CREATOR_CHANNEL_COPYRIGHT",X["channel.editing"]="LATENCY_ACTION_CREATOR_CHANNEL_EDITING",X["channel.monetization"]="LATENCY_ACTION_CREATOR_CHANNEL_MONETIZATION",X["channel.music"]="LATENCY_ACTION_CREATOR_CHANNEL_MUSIC",X["channel.playlists"]=
"LATENCY_ACTION_CREATOR_CHANNEL_PLAYLISTS",X["channel.translations"]="LATENCY_ACTION_CREATOR_CHANNEL_TRANSLATIONS",X["channel.videos"]="LATENCY_ACTION_CREATOR_CHANNEL_VIDEOS",X["channel.live_streaming"]="LATENCY_ACTION_CREATOR_LIVE_STREAMING",X.chips="LATENCY_ACTION_CHIPS",X["dialog.copyright_strikes"]="LATENCY_ACTION_CREATOR_DIALOG_COPYRIGHT_STRIKES",X["dialog.uploads"]="LATENCY_ACTION_CREATOR_DIALOG_UPLOADS",X.direct_playback="LATENCY_ACTION_DIRECT_PLAYBACK",X.embed="LATENCY_ACTION_EMBED",X.entity_key_serialization_perf=
"LATENCY_ACTION_ENTITY_KEY_SERIALIZATION_PERF",X.entity_key_deserialization_perf="LATENCY_ACTION_ENTITY_KEY_DESERIALIZATION_PERF",X.explore="LATENCY_ACTION_EXPLORE",X.home="LATENCY_ACTION_HOME",X.library="LATENCY_ACTION_LIBRARY",X.live="LATENCY_ACTION_LIVE",X.live_pagination="LATENCY_ACTION_LIVE_PAGINATION",X.onboarding="LATENCY_ACTION_ONBOARDING",X.parent_profile_settings="LATENCY_ACTION_KIDS_PARENT_PROFILE_SETTINGS",X.parent_tools_collection="LATENCY_ACTION_PARENT_TOOLS_COLLECTION",X.parent_tools_dashboard=
"LATENCY_ACTION_PARENT_TOOLS_DASHBOARD",X.player_att="LATENCY_ACTION_PLAYER_ATTESTATION",X["post.comments"]="LATENCY_ACTION_CREATOR_POST_COMMENTS",X["post.edit"]="LATENCY_ACTION_CREATOR_POST_EDIT",X.prebuffer="LATENCY_ACTION_PREBUFFER",X.prefetch="LATENCY_ACTION_PREFETCH",X.profile_settings="LATENCY_ACTION_KIDS_PROFILE_SETTINGS",X.profile_switcher="LATENCY_ACTION_LOGIN",X.reel_watch="LATENCY_ACTION_REEL_WATCH",X.results="LATENCY_ACTION_RESULTS",X.search_ui="LATENCY_ACTION_SEARCH_UI",X.search_suggest=
"LATENCY_ACTION_SUGGEST",X.search_zero_state="LATENCY_ACTION_SEARCH_ZERO_STATE",X.secret_code="LATENCY_ACTION_KIDS_SECRET_CODE",X.seek="LATENCY_ACTION_PLAYER_SEEK",X.settings="LATENCY_ACTION_SETTINGS",X.tenx="LATENCY_ACTION_TENX",X.video_to_ad="LATENCY_ACTION_VIDEO_TO_AD",X.watch="LATENCY_ACTION_WATCH",X.watch_it_again="LATENCY_ACTION_KIDS_WATCH_IT_AGAIN",X["watch,watch7"]="LATENCY_ACTION_WATCH",X["watch,watch7_html5"]="LATENCY_ACTION_WATCH",X["watch,watch7ad"]="LATENCY_ACTION_WATCH",X["watch,watch7ad_html5"]=
"LATENCY_ACTION_WATCH",X.wn_comments="LATENCY_ACTION_LOAD_COMMENTS",X.ww_rqs="LATENCY_ACTION_WHO_IS_WATCHING",X["video.analytics"]="LATENCY_ACTION_CREATOR_VIDEO_ANALYTICS",X["video.comments"]="LATENCY_ACTION_CREATOR_VIDEO_COMMENTS",X["video.edit"]="LATENCY_ACTION_CREATOR_VIDEO_EDIT",X["video.editor"]="LATENCY_ACTION_CREATOR_VIDEO_VIDEO_EDITOR",X["video.editor_async"]="LATENCY_ACTION_CREATOR_VIDEO_VIDEO_EDITOR_ASYNC",X["video.live_settings"]="LATENCY_ACTION_CREATOR_VIDEO_LIVE_SETTINGS",X["video.live_streaming"]=
"LATENCY_ACTION_CREATOR_VIDEO_LIVE_STREAMING",X["video.monetization"]="LATENCY_ACTION_CREATOR_VIDEO_MONETIZATION",X["video.translations"]="LATENCY_ACTION_CREATOR_VIDEO_TRANSLATIONS",X.voice_assistant="LATENCY_ACTION_VOICE_ASSISTANT",X.cast_load_by_entity_to_watch="LATENCY_ACTION_CAST_LOAD_BY_ENTITY_TO_WATCH",X.networkless_performance="LATENCY_ACTION_NETWORKLESS_PERFORMANCE",X),Y={},qm=(Y.ad_allowed="adTypesAllowed",Y.yt_abt="adBreakType",Y.ad_cpn="adClientPlaybackNonce",Y.ad_docid="adVideoId",Y.yt_ad_an=
"adNetworks",Y.ad_at="adType",Y.aida="appInstallDataAgeMs",Y.browse_id="browseId",Y.p="httpProtocol",Y.t="transportProtocol",Y.cs="commandSource",Y.cpn="clientPlaybackNonce",Y.ccs="creatorInfo.creatorCanaryState",Y.csn="clientScreenNonce",Y.docid="videoId",Y.GetHome_rid="requestIds",Y.GetSearch_rid="requestIds",Y.GetPlayer_rid="requestIds",Y.GetWatchNext_rid="requestIds",Y.GetBrowse_rid="requestIds",Y.GetLibrary_rid="requestIds",Y.is_continuation="isContinuation",Y.is_nav="isNavigation",Y.b_p="kabukiInfo.browseParams",
Y.is_prefetch="kabukiInfo.isPrefetch",Y.is_secondary_nav="kabukiInfo.isSecondaryNav",Y.nav_type="kabukiInfo.navigationType",Y.prev_browse_id="kabukiInfo.prevBrowseId",Y.query_source="kabukiInfo.querySource",Y.voz_type="kabukiInfo.vozType",Y.yt_lt="loadType",Y.mver="creatorInfo.measurementVersion",Y.yt_ad="isMonetized",Y.nr="webInfo.navigationReason",Y.nrsu="navigationRequestedSameUrl",Y.ncnp="webInfo.nonPreloadedNodeCount",Y.pnt="performanceNavigationTiming",Y.prt="playbackRequiresTap",Y.plt="playerInfo.playbackType",
Y.pis="playerInfo.playerInitializedState",Y.paused="playerInfo.isPausedOnLoad",Y.yt_pt="playerType",Y.fmt="playerInfo.itag",Y.yt_pl="watchInfo.isPlaylist",Y.yt_pre="playerInfo.preloadType",Y.yt_ad_pr="prerollAllowed",Y.pa="previousAction",Y.yt_red="isRedSubscriber",Y.rce="mwebInfo.responseContentEncoding",Y.rc="resourceInfo.resourceCache",Y.scrh="screenHeight",Y.scrw="screenWidth",Y.st="serverTimeMs",Y.ssdm="shellStartupDurationMs",Y.br_trs="tvInfo.bedrockTriggerState",Y.kebqat="kabukiInfo.earlyBrowseRequestInfo.abandonmentType",
Y.kebqa="kabukiInfo.earlyBrowseRequestInfo.adopted",Y.label="tvInfo.label",Y.is_mdx="tvInfo.isMdx",Y.preloaded="tvInfo.isPreloaded",Y.upg_player_vis="playerInfo.visibilityState",Y.query="unpluggedInfo.query",Y.upg_chip_ids_string="unpluggedInfo.upgChipIdsString",Y.yt_vst="videoStreamType",Y.vph="viewportHeight",Y.vpw="viewportWidth",Y.yt_vis="isVisible",Y.rcl="mwebInfo.responseContentLength",Y.GetSettings_rid="requestIds",Y.GetTrending_rid="requestIds",Y.GetMusicSearchSuggestions_rid="requestIds",
Y.REQUEST_ID="requestIds",Y),rm="isContinuation isNavigation kabukiInfo.earlyBrowseRequestInfo.adopted kabukiInfo.isPrefetch kabukiInfo.isSecondaryNav isMonetized navigationRequestedSameUrl performanceNavigationTiming playerInfo.isPausedOnLoad prerollAllowed isRedSubscriber tvInfo.isMdx tvInfo.isPreloaded isVisible watchInfo.isPlaylist playbackRequiresTap".split(" "),sm={},tm=(sm.ccs="CANARY_STATE_",sm.mver="MEASUREMENT_VERSION_",sm.pis="PLAYER_INITIALIZED_STATE_",sm.yt_pt="LATENCY_PLAYER_",sm.pa=
"LATENCY_ACTION_",sm.yt_vst="VIDEO_STREAM_TYPE_",sm),um="all_vc ap aq c cbr cbrand cbrver cmodel cos cplatform ctheme cver ei l_an l_mm plid srt yt_fss yt_li vpst vpni2 vpil2 icrc icrt pa GetAccountOverview_rid GetHistory_rid cmt d_vpct d_vpnfi d_vpni nsru pc pfa pfeh pftr pnc prerender psc rc start tcrt tcrc ssr vpr vps yt_abt yt_fn yt_fs yt_pft yt_pre yt_pt yt_pvis ytu_pvis yt_ref yt_sts tds".split(" ");
function vm(a){return!!F("FORCE_CSI_ON_GEL",!1)||O("csi_on_gel")||O("enable_csi_on_gel")||O("unplugged_tvhtml5_csi_on_gel")||!!em(a).useGel}
function wm(a,b,c){var d=xm(c);d.gelTicks&&(d.gelTicks["tick_"+a]=!0);c||b||P();return vm(c)?(km(c||"").tick[a]=b||P(),d=gm(c),"_start"===a?(a=nm(),om(a,"baseline_"+d)||Dk("latencyActionBaselined",{clientActionNonce:d},{timestamp:b})):nm().tick(a,d,b),hm(c),!0):!1}
function ym(a,b,c){c=xm(c);if(c.gelInfos)c.gelInfos["info_"+a]=!0;else{var d={};c.gelInfos=(d["info_"+a]=!0,d)}if(a.match("_rid")){var e=a.split("_rid")[0];a="REQUEST_ID"}if(a in qm){c=qm[a];0<=Wa(rm,c)&&(b=!!b);a in tm&&"string"===typeof b&&(b=tm[a]+b.toUpperCase());a=b;b=c.split(".");for(var f=d={},g=0;g<b.length-1;g++){var h=b[g];f[h]={};f=f[h]}f[b[b.length-1]]="requestIds"===c?[{id:a,endpoint:e}]:a;return Nl({},d)}0<=Wa(um,a)||Wk(new vi("Unknown label logged with GEL CSI",a))}
function xm(a){a=em(a);if(a.gel){var b=a.gel;b.gelInfos||(b.gelInfos={});b.gelTicks||(b.gelTicks={})}else a.gel={gelTicks:{},gelInfos:{}};return a.gel}
function zm(a){a=xm(a);a.gelInfos||(a.gelInfos={});return a.gelInfos}
;function Am(a,b,c){null!==b&&(fm(c)[a]=b,vm(c)?(a=ym(a,b,c))&&vm(c)&&(b=km(c||""),Nl(b.info,a),Nl(zm(c),a),c=gm(c),nm().info(a,c)):km(c||"").info[a]=b)}
function Z(a,b,c){var d=am(c);if(!b&&"_"!==a[0]){var e=a;W.mark&&(0==e.lastIndexOf("mark_",0)||(e="mark_"+e),c&&(e+=" ("+c+")"),W.mark(e))}e=b||P();d[a]=e;wm(a,b,c)||c||(Bm(),km("").tick[a]=b||P());return d[a]}
function Cm(){var a=gm(void 0);requestAnimationFrame(function(){setTimeout(function(){a===gm(void 0)&&Z("ol",void 0,void 0)},0)})}
function Bm(){if(!B("yt.timing.pingSent_")){var a=F("TIMING_ACTION",void 0),b=am();if(a=!!B("ytglobal.timingready_")&&a)a="_start"in am(void 0);if(a&&$l()){hm();a=!0;var c=F("TIMING_WAIT",[]);if(c.length)for(var d=0,e=c.length;d<e;++d)if(!(c[d]in b)){a=!1;break}if(a&&!vm()){c=am();d=fm();e=c._start;var f=F("CSI_SERVICE_NAME","youtube");a={v:2,s:f,action:F("TIMING_ACTION",void 0)};b=d.srt;void 0!==c.srt&&delete d.srt;c.aft=$l();var g=am(void 0),h=g.pbr,k=g.vc;g=g.pbs;h&&k&&g&&h<k&&k<g&&fm(void 0).yt_pvis&&
"youtube"===f&&(Am("yt_lt","hot_bg"),f=c.vc,h=c.pbs,delete c.aft,d.aft=Math.round(h-f));for(var l in d)"_"!==l.charAt(0)&&(a[l]=d[l]);c.ps=P();l={};f=[];for(var n in c)"_"!==n.charAt(0)&&(h=Math.round(c[n]-e),l[n]=h,f.push(n+"."+h));a.rt=f.join(",");n=!!d.ap;c="";for(var q in a)a.hasOwnProperty(q)&&(c+="&"+q+"="+a[q]);q="/csi_204?"+c.substring(1);window.navigator&&n?$g(q):Xg(q);z("yt.timing.pingSent_",!0,void 0);hi(Vl,new Tl(l.aft+(Number(b)||0)))}}}}
function Dm(){var a=document;if("visibilityState"in a)a=a.visibilityState;else{var b=Rf+"VisibilityState";a=b in a?a[b]:void 0}switch(a){case "hidden":return 0;case "visible":return 1;case "prerender":return 2;case "unloaded":return 3;default:return-1}}
function Em(a,b){a=document.querySelector(a);if(!a)return!1;var c="",d=a.nodeName;"SCRIPT"===d?(c=a.src,c||(c=a.getAttribute("data-timing-href"))&&(c=window.location.protocol+c)):"LINK"===d&&(c=a.href);Xb()&&a.setAttribute("nonce",Xb());return c?(a=W.getEntriesByName(c))&&a[0]&&(a=a[0],c=dm(),Z("rsf_"+b,c+Math.round(a.fetchStart)),Z("rse_"+b,c+Math.round(a.responseEnd)),void 0!==a.transferSize&&0===a.transferSize)?!0:!1:!1}
function Fm(){var a=window.location.protocol,b=W.getEntriesByType("resource");b=Xa(b,function(c){return 0===c.name.indexOf(a+"//fonts.gstatic.com/s/")});
(b=Za(b,function(c,d){return d.duration>c.duration?d:c},{duration:0}))&&0<b.startTime&&0<b.responseEnd&&(Z("wffs",cm(b.startTime)),Z("wffe",cm(b.responseEnd)))}
var Gm=window;Gm.ytcsi&&(Gm.ytcsi.info=Am,Gm.ytcsi.tick=Z);function Hm(){this.u=[];this.o=[];this.h=[];this.l=[];this.m=[];this.i=new Set;this.A=new Map}
function Im(a,b,c){c=void 0===c?0:c;b.then(function(d){var e,f;a.i.has(c)&&a.j&&a.j();var g=Bl(c),h=zl(c);g&&h&&((null===(e=d.response)||void 0===e?0:e.trackingParams)&&Kl(a.client,g,h,[vl(d.response.trackingParams)]),(null===(f=d.playerResponse)||void 0===f?0:f.trackingParams)&&Kl(a.client,g,h,[vl(d.playerResponse.trackingParams)]))})}
function Jm(a,b,c,d){d=void 0===d?0:d;if(a.i.has(d))a.u.push([b,c]);else{var e=Bl(d);c=c||zl(d);e&&c&&Kl(a.client,e,c,[b])}}
Hm.prototype.clickCommand=function(a,b,c){a=a.clickTrackingParams;c=void 0===c?0:c;if(a)if(c=Bl(void 0===c?0:c)){var d=this.client;var e="INTERACTION_LOGGING_GESTURE_TYPE_GENERIC_CLICK";a={csn:c,ve:vl(a).getAsJson(),gestureType:e};b&&(a.clientData=b);b={F:Dl(c),U:c};"UNDEFINED_CSN"==c?Ll("visualElementGestured",a,b):d?Ih("visualElementGestured",a,d,b):Dk("visualElementGestured",a,b);b=!0}else b=!1;else b=!1;return b};
function Km(a,b,c){c=void 0===c?{}:c;a.i.add(c.layer||0);a.j=function(){Lm(a,b,c);var f=zl(c.layer);if(f){for(var g=u(a.u),h=g.next();!h.done;h=g.next())h=h.value,Jm(a,h[0],h[1]||f,c.layer);f=u(a.o);for(g=f.next();!g.done;g=f.next()){var k=g.value;g=void 0;g=void 0===g?0:g;h=Bl(g);var l=k[0]||zl(g);h&&l&&(g=a.client,k=k[1],k={csn:h,ve:l.getAsJson(),clientData:k},l={F:Dl(h),U:h},"UNDEFINED_CSN"==h?Ll("visualElementStateChanged",k,l):g?Ih("visualElementStateChanged",k,g,l):Dk("visualElementStateChanged",
k,l))}}};
Bl(c.layer)||a.j();if(c.Ha)for(var d=u(c.Ha),e=d.next();!e.done;e=d.next())Im(a,e.value,c.layer);else Xk(Error("Delayed screen needs a data promise."))}
function Lm(a,b,c){c=void 0===c?{}:c;c.layer||(c.layer=0);var d=void 0!==c.jb?c.jb:c.layer;var e=Bl(d);d=zl(d);var f;d&&(void 0!==c.parentCsn?f={clientScreenNonce:c.parentCsn,visualElement:d}:e&&"UNDEFINED_CSN"!==e&&(f={clientScreenNonce:e,visualElement:d}));var g,h=F("EVENT_ID");"UNDEFINED_CSN"===e&&h&&(g={servletData:{serializedServletEventId:h}});try{var k=a.client;h=f;var l=c.Ga,n=c.F,q=Il(),r={csn:q,pageVe:(new ul({veType:b,youtubeData:g})).getAsJson()};h&&h.visualElement?r.implicitGesture={parentCsn:h.clientScreenNonce,
gesturedVe:h.visualElement.getAsJson()}:h&&Wk(new vi("newScreen() parent element does not have a VE - rootVe",b));l&&(r.cloneCsn=l);l={F:n,U:q};k?Ih("screenCreated",r,k,l):Dk("screenCreated",r,l);hi(ki,new Fl(q));var p=q}catch(A){Yk(A,{Ol:b,rootVe:d,parentVisualElement:void 0,Jl:e,Nl:f,Ga:c.Ga});Xk(A);return}El(p,b,c.layer,c.F);if((b=e&&"UNDEFINED_CSN"!==e&&d)&&!(b=O("screen_manager_skip_hide_killswitch"))){a:{b=u(Object.values(tl));for(f=b.next();!f.done;f=b.next())if(Bl(f.value)==e){b=!0;break a}b=
!1}b=!b}b&&(b=a.client,f=!0,k=(f=void 0===f?!1:f)?16:8,d={csn:e,ve:d.getAsJson(),eventType:k},f={F:Dl(e),U:e,Va:f},"UNDEFINED_CSN"==e?Ll("visualElementHidden",d,f):b?Ih("visualElementHidden",d,b,f):Dk("visualElementHidden",d,f));a.h[a.h.length-1]&&!a.h[a.h.length-1].csn&&(a.h[a.h.length-1].csn=p||"");Am("csn",p);Ml.getInstance().clear();d=zl(c.layer);e&&"UNDEFINED_CSN"!==e&&d&&(O("web_mark_root_visible")||O("music_web_mark_root_visible"))&&(e=p,p={csn:e,ve:d.getAsJson(),eventType:1},b={F:Dl(e),U:e},
"UNDEFINED_CSN"==e?Ll("visualElementShown",p,b):Dk("visualElementShown",p,b));a.i.delete(c.layer||0);a.j=void 0;e=u(a.A);for(p=e.next();!p.done;p=e.next())b=u(p.value),p=b.next().value,b=b.next().value,b.has(c.layer)&&d&&Jm(a,p,d,c.layer);for(c=0;c<a.l.length;c++){e=a.l[c];try{e()}catch(A){Xk(A)}}for(c=a.l.length=0;c<a.m.length;c++){e=a.m[c];try{e()}catch(A){Xk(A)}}}
;function Mm(a){a&&(a.dataset?a.dataset[Nm("loaded")]="true":a.setAttribute("data-loaded","true"))}
function Om(a,b){return a?a.dataset?a.dataset[Nm(b)]:a.getAttribute("data-"+b):null}
var Pm={};function Nm(a){return Pm[a]||(Pm[a]=String(a).replace(/\-([a-z])/g,function(b,c){return c.toUpperCase()}))}
;var Qm=/\.vflset|-vfl[a-zA-Z0-9_+=-]+/,Rm=/-[a-zA-Z]{2,3}_[a-zA-Z]{2,3}(?=(\/|$))/;function Sm(a,b,c){c=void 0===c?null:c;if(window.spf&&spf.script){c="";if(a){var d=a.indexOf("jsbin/"),e=a.lastIndexOf(".js"),f=d+6;-1<d&&-1<e&&e>f&&(c=a.substring(f,e),c=c.replace(Qm,""),c=c.replace(Rm,""),c=c.replace("debug-",""),c=c.replace("tracing-",""))}spf.script.load(a,c,b)}else Tm(a,b,c)}
function Tm(a,b,c){c=void 0===c?null:c;var d=Um(a),e=document.getElementById(d),f=e&&Om(e,"loaded"),g=e&&!f;f?b&&b():(b&&(f=eh(d,b),b=""+Ka(b),Vm[b]=f),g||(e=Wm(a,d,function(){Om(e,"loaded")||(Mm(e),hh(d),ag(Qa(ih,d),0))},c)))}
function Wm(a,b,c,d){d=void 0===d?null:d;var e=Tc(document,"SCRIPT");e.id=b;e.onload=function(){c&&setTimeout(c,0)};
e.onreadystatechange=function(){switch(e.readyState){case "loaded":case "complete":e.onload()}};
d&&e.setAttribute("nonce",d);Mc(e,Ke(a));a=document.getElementsByTagName("head")[0]||document.body;a.insertBefore(e,a.firstChild);return e}
function Xm(a){a=Um(a);var b=document.getElementById(a);b&&(ih(a),b.parentNode.removeChild(b))}
function Ym(a,b){a&&b&&(a=""+Ka(b),(a=Vm[a])&&gh(a))}
function Um(a){var b=document.createElement("a");Ub(b,a);a=b.href.replace(/^[a-zA-Z]+:\/\//,"//");return"js-"+Zb(a)}
var Vm={};var Zm=[],$m=!1;function an(){if(!(O("disable_biscotti_fetch_for_ad_blocker_detection")||O("disable_biscotti_fetch_entirely_for_all_web_clients")||O("condition_ad_status_fetch_on_consent_cookie_html5_clients")&&!gl()||"1"==ib())){var a=function(){$m=!0;"google_ad_status"in window?N("DCLKSTAT",1):N("DCLKSTAT",2)};
try{Sm("//static.doubleclick.net/instream/ad_status.js",a)}catch(b){}Zm.push(gg(function(){if(!($m||"google_ad_status"in window)){try{Ym("//static.doubleclick.net/instream/ad_status.js",a)}catch(b){}$m=!0;N("DCLKSTAT",3)}},5E3))}}
function bn(){var a=Number(F("DCLKSTAT",0));return isNaN(a)?0:a}
;function cn(){this.i=!1;this.h=null}
cn.prototype.initialize=function(a,b,c,d){d=void 0===d?!1:d;var e,f;if(a.program){var g=null!==(e=a.interpreterScript)&&void 0!==e?e:null,h=null!==(f=a.interpreterUrl)&&void 0!==f?f:null;if(a.interpreterSafeScript){g=a.interpreterSafeScript;sb("From proto message. b/166824318");g=g.privateDoNotAccessOrElseSafeScriptWrappedValue||"";var k=pb();g=k?k.createScript(g):g;g=(new ub(g)).toString()}a.interpreterSafeUrl&&(h=a.interpreterSafeUrl,sb("From proto message. b/166824318"),h=yb(h.privateDoNotAccessOrElseTrustedResourceUrlWrappedValue||
"").toString());dn(this,g,h,a.program,b,c,d)}else Wk(Error("Cannot initialize botguard without program"))};
function dn(a,b,c,d,e,f,g){g=void 0===g?!1:g;c?(a.i=!0,Sm(c,function(){a.i=!1;var h=0<=c.indexOf("/th/");(h?window.trayride:window.botguard)?en(a,d,!!g,h,e):(Xm(c),Wk(new vi("Unable to load Botguard","from "+c)))},f)):b&&(f=Tc(document,"SCRIPT"),f.textContent=b,f.nonce=Xb(),document.head.appendChild(f),document.head.removeChild(f),((b=b.includes("trayride"))?window.trayride:window.botguard)?en(a,d,!!g,b,e):Wk(Error("Unable to load Botguard from JS")))}
function en(a,b,c,d,e){var f,g;if(d=d?null===(f=window.trayride)||void 0===f?void 0:f.ad:null===(g=window.botguard)||void 0===g?void 0:g.bg)if(c)try{fn(a,new d(b,e?function(){return e(b)}:Ea))}catch(h){h instanceof Error&&Wk(h)}else{try{fn(a,new d(b))}catch(h){h instanceof Error&&Wk(h)}e&&e(b)}else Wk(Error("Failed to finish initializing VM"))}
cn.prototype.invoke=function(a){a=void 0===a?{}:a;return this.h?this.h.hasOwnProperty("hot")?this.h.hot(void 0,void 0,a):this.h.invoke(void 0,void 0,a):null};
cn.prototype.dispose=function(){this.h=null};
function fn(a,b){a.h=b}
;var gn=new cn;function hn(){return!!gn.h}
function jn(a){a=void 0===a?{}:a;return gn.invoke(a)}
;var kn=window,ln=/[A-Za-z]+\/[0-9.]+/g;function mn(a,b){if(a.replace(ln,"")!==b.replace(ln,""))return!1;a=a.match(ln);b=b.match(ln);if(a.length!==b.length)return!1;for(var c=0;c<a.length;c++){var d=a[c],e=b[c];if(!d.startsWith(e)&&!e.startsWith(d))return!1}return!0}
function nn(){var a=kn.uaChPolyfill.state;if(0===a.type)Dk("clientHintsPolyfillEvent",{clientHintsSupported:!1});else{var b=navigator.userAgent,c=void 0!==a.syntheticUa&&mn(a.syntheticUa,b),d={clientHintsSupported:!0,uaAccessedBeforePolyfill:a.didAccessUaBeforePolyfillAvailable,syntheticUaMatches:c};a.didAccessUaBeforePolyfillAvailable&&(d.uaAccessBeforePolyfillCount=a.uaAccessBeforePolyfillCount,a.firstAccessUaError&&(d.firstUaAccessStack=String(a.firstAccessUaError.stack).replace(/\n/g,""),Xk(a.firstAccessUaError)),
d.polyfillAvailabilityDelayMs=a.polyfillAvailabilityDelay);Dk("clientHintsPolyfillEvent",d);c||(b={syntheticUa:a.syntheticUa,ua:b},b.brand=a.data.brands.map(function(e){return'"'+e.brand+'"; v="'+e.version+'"'}),b.mobileness=a.data.mobile,a=a.data.values,a.architecture&&(b.platformArchitecture=a.architecture),a.model&&(b.model=a.model),a.platform&&(b.platformBrand=a.platform),a.platformVersion&&(b.platformVersion=a.platformVersion),a.uaFullVersion&&(b.fullVersion=a.uaFullVersion),Dk("clientHintsPolyfillDiagnostics",
b))}}
var on=!1;function pn(){var a;1===(null===(a=kn.uaChPolyfill)||void 0===a?void 0:a.state.type)?on||(kn.uaChPolyfill.onReady=pn,on=!0):kn.uaChPolyfill&&nn()}
;function qn(a,b,c){L.call(this);var d=this;c=c||F("POST_MESSAGE_ORIGIN",void 0)||window.document.location.protocol+"//"+window.document.location.hostname;this.j=b||null;this.C="*";this.l=c;this.sessionId=null;this.channel="widget";this.G=!!a;this.A=function(e){a:if(!("*"!=d.l&&e.origin!=d.l||d.j&&e.source!=d.j||"string"!==typeof e.data)){try{var f=JSON.parse(e.data)}catch(g){break a}if(!(null==f||d.G&&(d.sessionId&&d.sessionId!=f.id||d.channel&&d.channel!=f.channel))&&f)switch(f.event){case "listening":"null"!=
e.origin&&(d.l=d.C=e.origin);d.j=e.source;d.sessionId=f.id;d.i&&(d.i(),d.i=null);break;case "command":d.m&&(!d.o||0<=Wa(d.o,f.func))&&d.m(f.func,f.args,e.origin)}}};
this.o=this.i=this.m=null;window.addEventListener("message",this.A)}
v(qn,L);qn.prototype.sendMessage=function(a,b){if(b=b||this.j){this.sessionId&&(a.id=this.sessionId);this.channel&&(a.channel=this.channel);try{var c=JSON.stringify(a);b.postMessage(c,this.C)}catch(d){Lf(d)}}};
qn.prototype.D=function(){window.removeEventListener("message",this.A);L.prototype.D.call(this)};function rn(){this.i=[];this.isReady=!1;this.j={};var a=this.h=new qn(!!F("WIDGET_ID_ENFORCE")),b=this.lb.bind(this);a.m=b;a.o=null;this.h.channel="widget";if(a=F("WIDGET_ID"))this.h.sessionId=a}
m=rn.prototype;m.lb=function(a,b,c){"addEventListener"===a&&b?(a=b[0],this.j[a]||"onReady"===a||(this.addEventListener(a,sn(this,a)),this.j[a]=!0)):this.Ca(a,b,c)};
m.Ca=function(){};
function sn(a,b){return function(c){return a.sendMessage(b,c)}}
m.addEventListener=function(){};
m.Wa=function(){this.isReady=!0;this.sendMessage("initialDelivery",this.va());this.sendMessage("onReady");D(this.i,this.Na,this);this.i=[]};
m.va=function(){return null};
function tn(a,b){a.sendMessage("infoDelivery",b)}
m.Na=function(a){this.isReady?this.h.sendMessage(a):this.i.push(a)};
m.sendMessage=function(a,b){this.Na({event:a,info:void 0===b?null:b})};
m.dispose=function(){this.h=null};function un(a){return(0===a.search("cue")||0===a.search("load"))&&"loadModule"!==a}
function vn(a,b,c){if("string"===typeof a)return{videoId:a,startSeconds:b,suggestedQuality:c};b=["endSeconds","startSeconds","mediaContentUrl","suggestedQuality","videoId"];c={};for(var d=0;d<b.length;d++){var e=b[d];a[e]&&(c[e]=a[e])}return c}
function wn(a,b,c,d){if(Ja(a)&&!Array.isArray(a)){b="playlist list listType index startSeconds suggestedQuality".split(" ");c={};for(d=0;d<b.length;d++){var e=b[d];a[e]&&(c[e]=a[e])}return c}b={index:b,startSeconds:c,suggestedQuality:d};"string"===typeof a&&16===a.length?b.list="PL"+a:b.playlist=a;return b}
;function xn(a){rn.call(this);this.listeners=[];this.api=a;this.addEventListener("onReady",this.onReady.bind(this));this.addEventListener("onVideoProgress",this.sb.bind(this));this.addEventListener("onVolumeChange",this.tb.bind(this));this.addEventListener("onApiChange",this.nb.bind(this));this.addEventListener("onPlaybackQualityChange",this.pb.bind(this));this.addEventListener("onPlaybackRateChange",this.qb.bind(this));this.addEventListener("onStateChange",this.rb.bind(this));this.addEventListener("onWebglSettingsChanged",
this.ub.bind(this))}
v(xn,rn);m=xn.prototype;
m.Ca=function(a,b,c){if(this.api.isExternalMethodAvailable(a,c)){b=b||[];if(0<b.length&&un(a)){var d=b;if(Ja(d[0])&&!Array.isArray(d[0]))var e=d[0];else switch(e={},a){case "loadVideoById":case "cueVideoById":e=vn(d[0],void 0!==d[1]?Number(d[1]):void 0,d[2]);break;case "loadVideoByUrl":case "cueVideoByUrl":e=d[0];"string"===typeof e&&(e={mediaContentUrl:e,startSeconds:void 0!==d[1]?Number(d[1]):void 0,suggestedQuality:d[2]});b:{if((d=e.mediaContentUrl)&&(d=/\/([ve]|embed)\/([^#?]+)/.exec(d))&&d[2]){d=
d[2];break b}d=null}e.videoId=d;e=vn(e);break;case "loadPlaylist":case "cuePlaylist":e=wn(d[0],d[1],d[2],d[3])}b.length=1;b[0]=e}this.api.handleExternalCall(a,b,c);un(a)&&tn(this,this.va())}};
m.onReady=function(){var a=this.Wa.bind(this);this.h.i=a};
m.addEventListener=function(a,b){this.listeners.push({eventType:a,listener:b});this.api.addEventListener(a,b)};
m.va=function(){if(!this.api)return null;var a=this.api.getApiInterface();ab(a,"getVideoData");for(var b={apiInterface:a},c=0,d=a.length;c<d;c++){var e=a[c];if(0===e.search("get")||0===e.search("is")){var f=0;0===e.search("get")?f=3:0===e.search("is")&&(f=2);f=e.charAt(f).toLowerCase()+e.substr(f+1);try{var g=this.api[e]();b[f]=g}catch(h){}}}b.videoData=this.api.getVideoData();b.currentTimeLastUpdated_=Date.now()/1E3;return b};
m.rb=function(a){a={playerState:a,currentTime:this.api.getCurrentTime(),duration:this.api.getDuration(),videoData:this.api.getVideoData(),videoStartBytes:0,videoBytesTotal:this.api.getVideoBytesTotal(),videoLoadedFraction:this.api.getVideoLoadedFraction(),playbackQuality:this.api.getPlaybackQuality(),availableQualityLevels:this.api.getAvailableQualityLevels(),currentTimeLastUpdated_:Date.now()/1E3,playbackRate:this.api.getPlaybackRate(),mediaReferenceTime:this.api.getMediaReferenceTime()};this.api.getVideoUrl&&
(a.videoUrl=this.api.getVideoUrl());this.api.getVideoContentRect&&(a.videoContentRect=this.api.getVideoContentRect());this.api.getProgressState&&(a.progressState=this.api.getProgressState());this.api.getPlaylist&&(a.playlist=this.api.getPlaylist());this.api.getPlaylistIndex&&(a.playlistIndex=this.api.getPlaylistIndex());this.api.getStoryboardFormat&&(a.storyboardFormat=this.api.getStoryboardFormat());tn(this,a)};
m.pb=function(a){tn(this,{playbackQuality:a})};
m.qb=function(a){tn(this,{playbackRate:a})};
m.nb=function(){for(var a=this.api.getOptions(),b={namespaces:a},c=0,d=a.length;c<d;c++){var e=a[c],f=this.api.getOptions(e);b[e]={options:f};for(var g=0,h=f.length;g<h;g++){var k=f[g],l=this.api.getOption(e,k);b[e][k]=l}}this.sendMessage("apiInfoDelivery",b)};
m.tb=function(){tn(this,{muted:this.api.isMuted(),volume:this.api.getVolume()})};
m.sb=function(a){a={currentTime:a,videoBytesLoaded:this.api.getVideoBytesLoaded(),videoLoadedFraction:this.api.getVideoLoadedFraction(),currentTimeLastUpdated_:Date.now()/1E3,playbackRate:this.api.getPlaybackRate(),mediaReferenceTime:this.api.getMediaReferenceTime()};this.api.getProgressState&&(a.progressState=this.api.getProgressState());tn(this,a)};
m.ub=function(){var a={sphericalProperties:this.api.getSphericalProperties()};tn(this,a)};
m.dispose=function(){rn.prototype.dispose.call(this);for(var a=0;a<this.listeners.length;a++){var b=this.listeners[a];this.api.removeEventListener(b.eventType,b.listener)}this.listeners=[]};function yn(a){L.call(this);this.i={};this.started=!1;this.connection=a;this.connection.subscribe("command",this.Ma,this)}
v(yn,L);m=yn.prototype;m.start=function(){this.started||this.h||(this.started=!0,this.connection.X("RECEIVING"))};
m.X=function(a,b){this.started&&!this.h&&this.connection.X(a,b)};
m.Ma=function(a,b,c){if(this.started&&!this.h){var d=b||{};switch(a){case "addEventListener":"string"===typeof d.event&&this.addListener(d.event);break;case "removeEventListener":"string"===typeof d.event&&this.removeListener(d.event);break;default:this.api.isReady()&&this.api.isExternalMethodAvailable(a,c||null)&&(b=zn(a,b||{}),c=this.api.handleExternalCall(a,b,c||null),(c=An(a,c))&&this.X(a,c))}}};
m.addListener=function(a){if(!(a in this.i)){var b=this.ob.bind(this,a);this.i[a]=b;this.addEventListener(a,b)}};
m.ob=function(a,b){this.started&&!this.h&&this.connection.X(a,this.ta(a,b))};
m.ta=function(a,b){if(null!=b)return{value:b}};
m.removeListener=function(a){a in this.i&&(this.removeEventListener(a,this.i[a]),delete this.i[a])};
m.D=function(){var a=this.connection;a.h||lf(a.i,"command",this.Ma,this);this.connection=null;for(var b in this.i)this.i.hasOwnProperty(b)&&this.removeListener(b);L.prototype.D.call(this)};function Bn(a,b){yn.call(this,b);this.api=a;this.start()}
v(Bn,yn);Bn.prototype.addEventListener=function(a,b){this.api.addEventListener(a,b)};
Bn.prototype.removeEventListener=function(a,b){this.api.removeEventListener(a,b)};
function zn(a,b){switch(a){case "loadVideoById":return a=vn(b),[a];case "cueVideoById":return a=vn(b),[a];case "loadVideoByPlayerVars":return[b];case "cueVideoByPlayerVars":return[b];case "loadPlaylist":return a=wn(b),[a];case "cuePlaylist":return a=wn(b),[a];case "seekTo":return[b.seconds,b.allowSeekAhead];case "playVideoAt":return[b.index];case "setVolume":return[b.volume];case "setPlaybackQuality":return[b.suggestedQuality];case "setPlaybackRate":return[b.suggestedRate];case "setLoop":return[b.loopPlaylists];
case "setShuffle":return[b.shufflePlaylist];case "getOptions":return[b.module];case "getOption":return[b.module,b.option];case "setOption":return[b.module,b.option,b.value];case "handleGlobalKeyDown":return[b.keyCode,b.shiftKey,b.ctrlKey,b.altKey,b.metaKey,b.key,b.code]}return[]}
function An(a,b){switch(a){case "isMuted":return{muted:b};case "getVolume":return{volume:b};case "getPlaybackRate":return{playbackRate:b};case "getAvailablePlaybackRates":return{availablePlaybackRates:b};case "getVideoLoadedFraction":return{videoLoadedFraction:b};case "getPlayerState":return{playerState:b};case "getCurrentTime":return{currentTime:b};case "getPlaybackQuality":return{playbackQuality:b};case "getAvailableQualityLevels":return{availableQualityLevels:b};case "getDuration":return{duration:b};
case "getVideoUrl":return{videoUrl:b};case "getVideoEmbedCode":return{videoEmbedCode:b};case "getPlaylist":return{playlist:b};case "getPlaylistIndex":return{playlistIndex:b};case "getOptions":return{options:b};case "getOption":return{option:b}}}
Bn.prototype.ta=function(a,b){switch(a){case "onReady":return;case "onStateChange":return{playerState:b};case "onPlaybackQualityChange":return{playbackQuality:b};case "onPlaybackRateChange":return{playbackRate:b};case "onError":return{errorCode:b}}return yn.prototype.ta.call(this,a,b)};
Bn.prototype.D=function(){yn.prototype.D.call(this);delete this.api};function Cn(a){a=void 0===a?!1:a;L.call(this);this.i=new M(a);Sd(this,Qa(Qd,this.i))}
C(Cn,L);Cn.prototype.subscribe=function(a,b,c){return this.h?0:this.i.subscribe(a,b,c)};
Cn.prototype.l=function(a,b){this.h||this.i.W.apply(this.i,arguments)};function Dn(a,b,c){Cn.call(this);this.j=a;this.destination=b;this.id=c}
v(Dn,Cn);Dn.prototype.X=function(a,b){this.h||this.j.X(this.destination,this.id,a,b)};
Dn.prototype.D=function(){this.destination=this.j=null;Cn.prototype.D.call(this)};function En(a,b,c){L.call(this);this.destination=a;this.origin=c;this.i=Yf(window,"message",this.j.bind(this));this.connection=new Dn(this,a,b);Sd(this,Qa(Qd,this.connection))}
v(En,L);En.prototype.X=function(a,b,c,d){this.h||a!==this.destination||(a={id:b,command:c},d&&(a.data=d),this.destination.postMessage(Me(a),this.origin))};
En.prototype.j=function(a){var b;if(b=!this.h)if(b=a.origin===this.origin)a:{b=this.destination;do{b:{var c=a.source;do{if(c===b){c=!0;break b}if(c===c.parent)break;c=c.parent}while(null!=c);c=!1}if(c){b=!0;break a}b=b.opener}while(null!=b);b=!1}if(b&&(b=a.data,"string"===typeof b)){try{b=JSON.parse(b)}catch(d){return}b.command&&(c=this.connection,c.h||c.l("command",b.command,b.data,a.origin))}};
En.prototype.D=function(){Zf(this.i);this.destination=null;L.prototype.D.call(this)};function Fn(){L.call(this);this.i=[]}
v(Fn,L);Fn.prototype.D=function(){for(;this.i.length;){var a=this.i.pop();a.target.removeEventListener(a.name,a.Ea,void 0)}L.prototype.D.call(this)};function Gn(a){a=a||{};var b={},c={};this.url=a.url||"";this.args=a.args||kb(b);this.assets=a.assets||{};this.attrs=a.attrs||kb(c);this.fallback=a.fallback||null;this.fallbackMessage=a.fallbackMessage||null;this.html5=!!a.html5;this.disable=a.disable||{};this.loaded=!!a.loaded;this.messages=a.messages||{}}
Gn.prototype.clone=function(){var a=new Gn,b;for(b in this)if(this.hasOwnProperty(b)){var c=this[b];"object"==Ga(c)?a[b]=kb(c):a[b]=c}return a};var Hn=/cssbin\/(?:debug-)?([a-zA-Z0-9_-]+?)(?:-2x|-web|-rtl|-vfl|.css)/;function In(a){a=a||"";if(window.spf){var b=a.match(Hn);spf.style.load(a,b?b[1]:"",void 0)}else Jn(a)}
function Jn(a){var b=Kn(a),c=document.getElementById(b),d=c&&Om(c,"loaded");d||c&&!d||(c=Ln(a,b,function(){Om(c,"loaded")||(Mm(c),hh(b),ag(Qa(ih,b),0))}))}
function Ln(a,b,c){var d=document.createElement("link");d.id=b;d.onload=function(){c&&setTimeout(c,0)};
a=Ke(a);Vb(d,a);(document.getElementsByTagName("head")[0]||document.body).appendChild(d);return d}
function Kn(a){var b=Tc(document,"A");sb("This URL is never added to the DOM");Ub(b,new Hb(a,Ib));a=b.href.replace(/^[a-zA-Z]+:\/\//,"//");return"css-"+Zb(a)}
;function Mn(a,b,c,d){L.call(this);var e=this;this.G=b;this.webPlayerContextConfig=d;this.oa=!1;this.api={};this.ba=this.m=null;this.J=new M;this.i={};this.O=this.fa=this.elementId=this.qa=this.config=null;this.N=!1;this.l=this.A=null;this.ga={};this.Oa=["onReady"];this.lastError=null;this.Da=NaN;this.C={};this.Pa=new Fn(this);this.aa=0;this.j=this.o=a;Sd(this,Qa(Qd,this.J));Nn(this);On(this);Sd(this,Qa(Qd,this.Pa));c?this.aa=ag(function(){e.loadNewVideoConfig(c)},0):d&&(Pn(this),Qn(this))}
v(Mn,L);m=Mn.prototype;m.getId=function(){return this.G};
m.loadNewVideoConfig=function(a){if(!this.h){this.aa&&(bg(this.aa),this.aa=0);var b=a||{};b instanceof Gn||(b=new Gn(b));this.config=b;this.setConfig(a);Qn(this);this.isReady()&&Rn(this)}};
function Pn(a){var b,c;a.webPlayerContextConfig?c=a.webPlayerContextConfig.rootElementId:c=a.config.attrs.id;a.elementId=c||a.elementId;"video-player"===a.elementId&&(a.elementId=a.G,a.webPlayerContextConfig?a.webPlayerContextConfig.rootElementId=a.G:a.config.attrs.id=a.G);(null===(b=a.j)||void 0===b?void 0:b.id)===a.elementId&&(a.elementId+="-player",a.webPlayerContextConfig?a.webPlayerContextConfig.rootElementId=a.elementId:a.config.attrs.id=a.elementId)}
m.setConfig=function(a){var b;this.qa=a;this.config=Sn(a);Pn(this);this.fa||(this.fa=Tn(this,(null===(b=this.config.args)||void 0===b?void 0:b.jsapicallback)||"onYouTubePlayerReady"));this.config.args?this.config.args.jsapicallback=null:this.config.args={jsapicallback:null};var c;if(null===(c=this.config)||void 0===c?0:c.attrs)a=this.config.attrs,(c=a.width)&&this.j&&(this.j.style.width=dd(Number(c)||c)),(a=a.height)&&this.j&&(this.j.style.height=dd(Number(a)||a))};
function Rn(a){var b;a.config&&!0!==a.config.loaded&&(a.config.loaded=!0,!a.config.args||"0"!==a.config.args.autoplay&&0!==a.config.args.autoplay&&!1!==a.config.args.autoplay?a.api.loadVideoByPlayerVars(null!==(b=a.config.args)&&void 0!==b?b:null):a.api.cueVideoByPlayerVars(a.config.args))}
function Un(a){var b=!0,c=Vn(a);c&&a.config&&(a=Wn(a),b=Om(c,"version")===a);return b&&!!B("yt.player.Application.create")}
function Qn(a){if(!a.h&&!a.N){var b=Un(a);if(b&&"html5"===(Vn(a)?"html5":null))a.O="html5",a.isReady()||Xn(a);else if(Yn(a),a.O="html5",b&&a.l&&a.o)a.o.appendChild(a.l),Xn(a);else{a.config&&(a.config.loaded=!0);var c=!1;a.A=function(){c=!0;var d=Zn(a,"player_bootstrap_method")?B("yt.player.Application.createAlternate")||B("yt.player.Application.create"):B("yt.player.Application.create");var e=a.config?Sn(a.config):void 0;d&&d(a.o,e,a.webPlayerContextConfig);Xn(a)};
a.N=!0;b?a.A():(Sm(Wn(a),a.A),(b=$n(a))&&In(b),ao(a)&&!c&&z("yt.player.Application.create",null,void 0))}}}
function Vn(a){var b=Pc(a.elementId);!b&&a.j&&a.j.querySelector&&(b=a.j.querySelector("#"+a.elementId));return b}
function Xn(a){var b;if(!a.h){var c=Vn(a),d=!1;c&&c.getApiInterface&&c.getApiInterface()&&(d=!0);d?(a.N=!1,!Zn(a,"html5_remove_not_servable_check_killswitch")&&(null===c||void 0===c?0:c.isNotServable)&&a.config&&(null===c||void 0===c?0:c.isNotServable(null===(b=a.config.args)||void 0===b?void 0:b.video_id))||bo(a)):a.Da=ag(function(){Xn(a)},50)}}
function bo(a){Nn(a);a.oa=!0;var b=Vn(a);if(b){a.m=co(a,b,"addEventListener");a.ba=co(a,b,"removeEventListener");var c=b.getApiInterface();c=c.concat(b.getInternalApiInterface());for(var d=a.api,e=0;e<c.length;e++){var f=c[e];d[f]||(d[f]=co(a,b,f))}}for(var g in a.i)a.i.hasOwnProperty(g)&&a.m&&a.m(g,a.i[g]);Rn(a);a.fa&&a.fa(a.api);a.J.W("onReady",a.api)}
function co(a,b,c){var d=b[c];return function(e){for(var f=[],g=0;g<arguments.length;++g)f[g-0]=arguments[g];try{return a.lastError=null,d.apply(b,f)}catch(h){"sendAbandonmentPing"!==c&&(h.params=c,a.lastError=h,Wk(h))}}}
function Nn(a){a.oa=!1;if(a.ba)for(var b in a.i)a.i.hasOwnProperty(b)&&a.ba(b,a.i[b]);for(var c in a.C)a.C.hasOwnProperty(c)&&bg(Number(c));a.C={};a.m=null;a.ba=null;b=a.api;for(var d in b)b.hasOwnProperty(d)&&(b[d]=null);b.addEventListener=function(e,f){a.addEventListener(e,f)};
b.removeEventListener=function(e,f){a.removeEventListener(e,f)};
b.destroy=function(){a.dispose()};
b.getLastError=function(){return a.getLastError()};
b.getPlayerType=function(){return a.getPlayerType()};
b.getCurrentVideoConfig=function(){return a.qa};
b.loadNewVideoConfig=function(e){a.loadNewVideoConfig(e)};
b.isReady=function(){return a.isReady()}}
m.isReady=function(){return this.oa};
function On(a){a.addEventListener("WATCH_LATER_VIDEO_ADDED",function(b){hh("WATCH_LATER_VIDEO_ADDED",b)});
a.addEventListener("WATCH_LATER_VIDEO_REMOVED",function(b){hh("WATCH_LATER_VIDEO_REMOVED",b)});
a.addEventListener("onAdAnnounce",function(b){hh("a11y-announce",b)})}
m.addEventListener=function(a,b){var c=this,d=Tn(this,b);d&&(0<=Wa(this.Oa,a)||this.i[a]||(b=eo(this,a),this.m&&this.m(a,b)),this.J.subscribe(a,d),"onReady"===a&&this.isReady()&&ag(function(){d(c.api)},0))};
m.removeEventListener=function(a,b){this.h||(b=Tn(this,b))&&lf(this.J,a,b)};
function Tn(a,b){var c=b;if("string"===typeof b){if(a.ga[b])return a.ga[b];c=function(d){for(var e=[],f=0;f<arguments.length;++f)e[f-0]=arguments[f];if(f=B(b))try{f.apply(y,e)}catch(g){Xk(g)}};
a.ga[b]=c}return c?c:null}
function eo(a,b){var c="ytPlayer"+b+a.G;a.i[b]=c;y[c]=function(d){var e=ag(function(){if(!a.h){a.J.W(b,d);var f=a.C,g=String(e);g in f&&delete f[g]}},0);
hb(a.C,String(e))};
return c}
m.getPlayerType=function(){return this.O||(Vn(this)?"html5":null)};
m.getLastError=function(){return this.lastError};
function Yn(a){a.cancel();Nn(a);a.O=null;a.config&&(a.config.loaded=!1);var b=Vn(a);b&&(Un(a)||!ao(a)?a.l=b:(b&&b.destroy&&b.destroy(),a.l=null));if(a.o)for(a=a.o;b=a.firstChild;)a.removeChild(b)}
m.cancel=function(){this.A&&Ym(Wn(this),this.A);bg(this.Da);this.N=!1};
m.D=function(){Yn(this);if(this.l&&this.config&&this.l.destroy)try{this.l.destroy()}catch(b){Xk(b)}this.ga=null;for(var a in this.i)this.i.hasOwnProperty(a)&&(y[this.i[a]]=null);this.qa=this.config=this.api=null;delete this.o;delete this.j;L.prototype.D.call(this)};
function ao(a){var b,c;a=null===(c=null===(b=a.config)||void 0===b?void 0:b.args)||void 0===c?void 0:c.fflags;return!!a&&-1!==a.indexOf("player_destroy_old_version=true")}
function Wn(a){return a.webPlayerContextConfig?a.webPlayerContextConfig.jsUrl:(a=a.config.assets)?a.js:""}
function $n(a){return a.webPlayerContextConfig?a.webPlayerContextConfig.cssUrl:(a=a.config.assets)?a.css:""}
function Zn(a,b){var c;if(a.webPlayerContextConfig)var d=a.webPlayerContextConfig.serializedExperimentFlags;else if(null===(c=a.config)||void 0===c?0:c.args)d=a.config.args.fflags;return"true"===tg(d||"","&")[b]}
function Sn(a){for(var b={},c=u(Object.keys(a)),d=c.next();!d.done;d=c.next()){d=d.value;var e=a[d];b[d]="object"===typeof e?kb(e):e}return b}
;var fo={},go="player_uid_"+(1E9*Math.random()>>>0);function ho(a,b,c){var d="player";c=void 0===c?!0:c;d="string"===typeof d?Pc(d):d;var e=go+"_"+Ka(d),f=fo[e];if(f&&c)return io(a,b)?f.api.loadVideoByPlayerVars(a.args||null):f.loadNewVideoConfig(a),f.api;f=new Mn(d,e,a,b);fo[e]=f;hh("player-added",f.api);Sd(f,function(){delete fo[f.getId()]});
return f.api}
function io(a,b){return b&&b.serializedExperimentFlags?b.serializedExperimentFlags.includes("web_player_remove_playerproxy=true"):a&&a.args&&a.args.fflags?a.args.fflags.includes("web_player_remove_playerproxy=true"):!1}
;var jo=null,ko=null,lo=null;function mo(){var a=jo.getVideoData(1);a=a.title?a.title+" - YouTube":"YouTube";document.title!==a&&(document.title=a)}
;function no(a,b,c){a="ST-"+Zb(a).toString(36);b=b?dc(b):"";c=c||5;O("drop_st_cookie_before_cb")&&!gl()||Kh(a,b,c)}
;function oo(a,b,c){b=void 0===b?{}:b;c=void 0===c?!1:c;var d=F("EVENT_ID");d&&(b.ei||(b.ei=d));if(b){d=a;var e=void 0===e?!0:e;var f=F("VALID_SESSION_TEMPDATA_DOMAINS",[]),g=bc(window.location.href);g&&f.push(g);g=bc(d);if(0<=Wa(f,g)||!g&&0==d.lastIndexOf("/",0))if(O("autoescape_tempdata_url")&&(f=document.createElement("a"),Ub(f,d),d=f.href),d){g=d.match($b);d=g[5];f=g[6];g=g[7];var h="";d&&(h+=d);f&&(h+="?"+f);g&&(h+="#"+g);d=h;f=d.indexOf("#");if(d=0>f?d:d.substr(0,f))if(e&&!b.csn&&(b.itct||b.ved)&&
(b=Object.assign({csn:Bl()},b)),k){var k=parseInt(k,10);isFinite(k)&&0<k&&no(d,b,k)}else no(d,b)}}if(c)return!1;if((window.ytspf||{}).enabled)spf.navigate(a);else{var l=void 0===l?{}:l;var n=void 0===n?"":n;var q=void 0===q?window:q;c=q.location;a=ec(a,l)+n;var r=void 0===r?cd:r;a:{r=void 0===r?cd:r;for(l=0;l<r.length;++l)if(n=r[l],n instanceof ad&&n.isValid(a)){r=new Jc(a,Hc);break a}r=void 0}c.href=Lc(r||Kc)}return!0}
;z("yt.setConfig",N,void 0);z("yt.config.set",N,void 0);z("yt.setMsg",Nf,void 0);z("yt.msgs.set",Nf,void 0);z("yt.logging.errors.log",Xk,void 0);
z("writeEmbed",function(){var a=F("PLAYER_CONFIG",void 0);if(!a){var b=F("PLAYER_VARS",void 0);b&&(a={args:b})}ol(!0);"gvn"===a.args.ps&&(document.body.style.backgroundColor="transparent");a.attrs||(a.attrs={width:"100%",height:"100%",id:"video-player"});var c=document.referrer;b=F("POST_MESSAGE_ORIGIN");window!==window.top&&c&&c!==document.URL&&(a.args.loaderUrl=c);O("embeds_js_api_set_1p_cookie")&&(c=yg(),c.embedsTokenValue&&(a.args.embedsTokenValue=c.embedsTokenValue));N("FORCE_CSI_ON_GEL",!0);
c=["ol"];km("").info.actionType="embed";c&&N("TIMING_AFT_KEYS",c);N("TIMING_ACTION","embed");c=F("TIMING_INFO",{});for(var d in c)c.hasOwnProperty(d)&&Am(d,c[d]);Am("is_nav",1);(d=Bl())&&Am("csn",d);(d=F("PREVIOUS_ACTION",void 0))&&!vm()&&Am("pa",d);d=fm();c=F("CLIENT_PROTOCOL");var e=F("CLIENT_TRANSPORT");c&&Am("p",c);e&&Am("t",e);Am("yt_vis",Dm());Am("yt_lt","cold");c=bm();if(e=dm())Z("srt",c.responseStart),1!==d.prerender&&(Am("yt_sts","n",void 0),Z("_start",e,void 0));d=im();0<d&&Z("fpt",d);d=
bm();d.isPerformanceNavigationTiming&&Am("pnt",1,void 0);Z("nreqs",d.requestStart,void 0);Z("nress",d.responseStart,void 0);Z("nrese",d.responseEnd,void 0);0<d.redirectEnd-d.redirectStart&&(Z("nrs",d.redirectStart,void 0),Z("nre",d.redirectEnd,void 0));0<d.domainLookupEnd-d.domainLookupStart&&(Z("ndnss",d.domainLookupStart,void 0),Z("ndnse",d.domainLookupEnd,void 0));0<d.connectEnd-d.connectStart&&(Z("ntcps",d.connectStart,void 0),Z("ntcpe",d.connectEnd,void 0));d.secureConnectionStart>=dm()&&0<d.connectEnd-
d.secureConnectionStart&&(Z("nstcps",d.secureConnectionStart,void 0),Z("ntcpe",d.connectEnd,void 0));W&&W.getEntriesByType&&Fm();d=[];if(document.querySelector&&W&&W.getEntriesByName)for(var f in Zl)Zl.hasOwnProperty(f)&&(c=Zl[f],Em(f,c)&&d.push(c));for(f=0;f<d.length;f++)Am("rc",d[f]);if(vm(void 0)){f={actionType:pm[F("TIMING_ACTION",void 0)]||"LATENCY_ACTION_UNKNOWN",previousAction:pm[F("PREVIOUS_ACTION",void 0)]||"LATENCY_ACTION_UNKNOWN"};if(d=Bl())f.clientScreenNonce=d;d=gm(void 0);nm().info(f,
d)}f=fm();c=am();if("cold"===f.yt_lt&&(d=xm(),e=d.gelTicks?d.gelTicks:d.gelTicks={},d=d.gelInfos?d.gelInfos:d.gelInfos={},vm())){for(var g in c)"tick_"+g in e||wm(g,c[g]);g=zm();c=gm();e={};var h=!1,k;for(k in f)if(!("info_"+k in d)){var l=ym(k,f[k]);l&&(Nl(g,l),Nl(e,l),h=!0)}h&&nm().info(e,c)}z("ytglobal.timingready_",!0,void 0);Bm();(k=F("WEB_PLAYER_CONTEXT_CONFIGS",void 0))&&"WEB_PLAYER_CONTEXT_CONFIG_ID_EMBEDDED_PLAYER"in k?(k=k.WEB_PLAYER_CONTEXT_CONFIG_ID_EMBEDDED_PLAYER,k.serializedForcedExperimentIds||
(g=yg(),g.forced_experiments&&(k.serializedForcedExperimentIds=g.forced_experiments)),jo=ho(a,k,!1)):jo=ho(a);jo.addEventListener("onVideoDataChange",mo);a=F("POST_MESSAGE_ID","player");F("ENABLE_JS_API")?lo=new xn(jo):F("ENABLE_POST_API")&&"string"===typeof a&&"string"===typeof b&&(ko=new En(window.parent,a,b),lo=new Bn(jo,ko.connection));an();O("networkless_logging_web_embedded")&&ok();O("embeds_enable_ua_ch_polyfill")&&pn()},void 0);
var po=Jf(function(){Cm();var a=Mh.getInstance(),b=!!((Ph("f"+(Math.floor(119/31)+1))||0)&67108864),c=1<window.devicePixelRatio;if(document.body&&Vd(document.body,"exp-invert-logo"))if(c&&!Vd(document.body,"inverted-hdpi")){var d=document.body;if(d.classList)d.classList.add("inverted-hdpi");else if(!Vd(d,"inverted-hdpi")){var e=Td(d);Ud(d,e+(0<e.length?" inverted-hdpi":"inverted-hdpi"))}}else!c&&Vd(document.body,"inverted-hdpi")&&Wd();if(b!=c){b="f"+(Math.floor(119/31)+1);d=Ph(b)||0;d=c?d|67108864:
d&-67108865;0==d?delete Lh[b]:(c=d.toString(16),Lh[b]=c.toString());c=!0;O("web_secure_pref_cookie_killswitch")&&(c=!1);b=a.h;d=[];for(var f in Lh)d.push(f+"="+encodeURIComponent(String(Lh[f])));Kh(b,d.join("&"),63072E3,a.i,c)}Hm.h||(Hm.h=new Hm);a=Hm.h;f=16623;var g=void 0===g?{}:g;Object.values(Zk).includes(f)||(Wk(new vi("createClientScreen() called with a non-page VE",f)),f=83769);g.isHistoryNavigation||a.h.push({rootVe:f,key:g.key||""});a.u=[];a.o=[];g.Ha?Km(a,f,g):Lm(a,f,g)}),qo=Jf(function(){jo&&
jo.sendAbandonmentPing&&jo.sendAbandonmentPing();
F("PL_ATT")&&gn.dispose();for(var a=0,b=Zm.length;a<b;a++)ig(Zm[a]);Zm.length=0;Xm("//static.doubleclick.net/instream/ad_status.js");$m=!1;N("DCLKSTAT",0);Rd(lo,ko);jo&&(jo.removeEventListener("onVideoDataChange",mo),jo.destroy())});
window.addEventListener?(window.addEventListener("load",po),window.addEventListener("unload",qo)):window.attachEvent&&(window.attachEvent("onload",po),window.attachEvent("onunload",qo));Ra("yt.abuse.player.botguardInitialized",B("yt.abuse.player.botguardInitialized")||hn);Ra("yt.abuse.player.invokeBotguard",B("yt.abuse.player.invokeBotguard")||jn);Ra("yt.abuse.dclkstatus.checkDclkStatus",B("yt.abuse.dclkstatus.checkDclkStatus")||bn);
Ra("yt.player.exports.navigate",B("yt.player.exports.navigate")||oo);Ra("yt.util.activity.init",B("yt.util.activity.init")||kg);Ra("yt.util.activity.getTimeSinceActive",B("yt.util.activity.getTimeSinceActive")||ng);Ra("yt.util.activity.setTimestamp",B("yt.util.activity.setTimestamp")||lg);}).call(this);
