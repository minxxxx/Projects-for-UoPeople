(function(){/*

 Copyright The Closure Library Authors.
 SPDX-License-Identifier: Apache-2.0
*/
'use strict';var f,aa="function"==typeof Object.create?Object.create:function(a){function b(){}
b.prototype=a;return new b},g;
if("function"==typeof Object.setPrototypeOf)g=Object.setPrototypeOf;else{var h;a:{var ba={a:!0},k={};try{k.__proto__=ba;h=k.a;break a}catch(a){}h=!1}g=h?function(a,b){a.__proto__=b;if(a.__proto__!==b)throw new TypeError(a+" is not extensible");return a}:null}var l=g,m=this||self;
function n(a){a=a.split(".");for(var b=m,c=0;c<a.length;c++)if(b=b[a[c]],null==b)return null;return b}
function ca(a,b,c){return a.call.apply(a.bind,arguments)}
function da(a,b,c){if(!a)throw Error();if(2<arguments.length){var d=Array.prototype.slice.call(arguments,2);return function(){var e=Array.prototype.slice.call(arguments);Array.prototype.unshift.apply(e,d);return a.apply(b,e)}}return function(){return a.apply(b,arguments)}}
function p(a,b,c){Function.prototype.bind&&-1!=Function.prototype.bind.toString().indexOf("native code")?p=ca:p=da;return p.apply(null,arguments)}
function q(a,b){a=a.split(".");var c=m;a[0]in c||"undefined"==typeof c.execScript||c.execScript("var "+a[0]);for(var d;a.length&&(d=a.shift());)a.length||void 0===b?c[d]&&c[d]!==Object.prototype[d]?c=c[d]:c=c[d]={}:c[d]=b}
;function r(){this.s=this.s;this.B=this.B}
r.prototype.s=!1;r.prototype.dispose=function(){this.s||(this.s=!0,this.G())};
r.prototype.G=function(){if(this.B)for(;this.B.length;)this.B.shift()()};var t,u,v=m.window,w=(null===(t=null===v||void 0===v?void 0:v.yt)||void 0===t?void 0:t.config_)||(null===(u=null===v||void 0===v?void 0:v.ytcfg)||void 0===u?void 0:u.data_)||{};q("yt.config_",w);function x(a,b){return a in w?w[a]:b}
;function y(a,b){a=z(a);return void 0===a&&void 0!==b?b:Number(a||0)}
function z(a){var b=x("EXPERIMENTS_FORCED_FLAGS",{});return void 0!==b[a]?b[a]:x("EXPERIMENT_FLAGS",{})[a]}
;var ea=y("web_emulated_idle_callback_delay",300),A=1E3/60-3;
function B(a){a=void 0===a?{}:a;r.call(this);this.g=[];this.g[8]=[];this.g[4]=[];this.g[3]=[];this.g[2]=[];this.g[1]=[];this.g[0]=[];this.j=0;this.N=a.timeout||1;this.i={};this.o=A;this.C=this.h=this.m=0;this.D=this.l=!1;this.u=[];this.H=p(this.R,this);this.M=p(this.T,this);this.J=p(this.O,this);this.K=p(this.P,this);this.L=p(this.S,this);this.A=this.F=!1;var b;if(b=!!window.requestIdleCallback)b=z("disable_scheduler_requestIdleCallback"),b=!("string"===typeof b&&"false"===b?0:b);this.I=b;(this.v=
!!a.useRaf&&!!window.requestAnimationFrame)&&document.addEventListener("visibilitychange",this.H)}
B.prototype=aa(r.prototype);B.prototype.constructor=B;if(l)l(B,r);else for(var C in r)if("prototype"!=C)if(Object.defineProperties){var E=Object.getOwnPropertyDescriptor(r,C);E&&Object.defineProperty(B,C,E)}else B[C]=r[C];function F(a,b){var c=Date.now();G(b);b=Date.now()-c;a.l||(a.o-=b)}
function H(a,b,c,d){++a.C;if(10==c)return F(a,b),a.C;var e=a.C;a.i[e]=b;a.l&&!d?a.u.push({id:e,priority:c}):(a.g[c].push(e),a.D||a.l||(0!=a.h&&I(a)!=a.m&&J(a),a.start()));return e}
function K(a){a.u.length=0;for(var b=4;0<=b;b--)a.g[b].length=0;a.g[8].length=0;a.i={};J(a)}
function I(a){if(a.g[8].length){if(a.A)return 4;if(!document.hidden&&a.v)return 3}for(var b=4;b>=a.j;b--)if(0<a.g[b].length)return 0<b?!document.hidden&&a.v?3:2:1;return 0}
function G(a){try{a()}catch(b){(a=n("yt.logging.errors.log"))&&a(b)}}
function L(a){if(a.g[8].length)return!0;for(var b=3;0<=b;b--)if(a.g[b].length)return!0;return!1}
f=B.prototype;f.P=function(a){var b=void 0;a&&(b=a.timeRemaining());this.F=!0;M(this,b);this.F=!1};
f.T=function(){M(this)};
f.O=function(){N(this)};
f.S=function(){this.A=!0;var a=I(this);4==a&&a!=this.m&&(J(this),this.start());M(this);this.A=!1};
f.R=function(){document.hidden||N(this);this.h&&(J(this),this.start())};
function N(a){J(a);a.l=!0;for(var b=Date.now(),c=a.g[8];c.length;){var d=c.shift(),e=a.i[d];delete a.i[d];e&&G(e)}O(a);a.l=!1;L(a)&&a.start();a.o-=Date.now()-b}
function O(a){for(var b=0,c=a.u.length;b<c;b++){var d=a.u[b];a.g[d.priority].push(d.id)}a.u.length=0}
function M(a,b){a.A&&4==a.m&&a.h||J(a);a.l=!0;b=Date.now()+(b||a.o);for(var c=a.g[4];c.length;){var d=c.shift(),e=a.i[d];delete a.i[d];e&&G(e)}c=a.F?0:1;c=a.j>c?a.j:c;if(!(Date.now()>=b)){do{a:{d=a;e=c;for(var D=3;D>=e;D--)for(var T=d.g[D];T.length;){var U=T.shift(),V=d.i[U];delete d.i[U];if(V){d=V;break a}}d=null}d&&G(d)}while(d&&Date.now()<b)}a.l=!1;O(a);a.o=A;L(a)&&a.start()}
f.start=function(){this.D=!1;if(0==this.h)switch(this.m=I(this),this.m){case 1:var a=this.K;this.h=this.I?window.requestIdleCallback(a,{timeout:3E3}):window.setTimeout(a,ea);break;case 2:this.h=window.setTimeout(this.M,this.N);break;case 3:this.h=window.requestAnimationFrame(this.L);break;case 4:this.h=window.setTimeout(this.J,0)}};
function J(a){if(a.h){switch(a.m){case 1:var b=a.h;a.I?window.cancelIdleCallback(b):window.clearTimeout(b);break;case 2:case 4:window.clearTimeout(a.h);break;case 3:window.cancelAnimationFrame(a.h)}a.h=0}}
f.G=function(){K(this);J(this);this.v&&document.removeEventListener("visibilitychange",this.H);r.prototype.G.call(this)};var P=n("yt.scheduler.instance.timerIdMap_")||{},Q=y("kevlar_tuner_scheduler_soft_state_timer_ms",800),R=0,S=0;function W(){var a=n("ytglobal.schedulerInstanceInstance_");if(!a||a.s)a=new B(x("scheduler",void 0)||{}),q("ytglobal.schedulerInstanceInstance_",a);return a}
function fa(){var a=n("ytglobal.schedulerInstanceInstance_");a&&(a&&"function"==typeof a.dispose&&a.dispose(),q("ytglobal.schedulerInstanceInstance_",null))}
function ha(){K(W())}
function ia(a,b,c){if(0==c||void 0===c)return c=void 0===c,-H(W(),a,b,c);var d=window.setTimeout(function(){var e=H(W(),a,b);P[d]=e},c);
return d}
function ja(a){var b=W();F(b,a)}
function ka(a){var b=W();if(0>a)delete b.i[-a];else{var c=P[a];c?(delete b.i[c],delete P[a]):window.clearTimeout(a)}}
function X(a){var b=n("ytcsi.tick");b&&b(a)}
function la(){X("jse");Y()}
function Y(){window.clearTimeout(R);W().start()}
function ma(){var a=W();J(a);a.D=!0;window.clearTimeout(R);R=window.setTimeout(la,Q)}
function Z(){window.clearTimeout(S);S=window.setTimeout(function(){X("jset");na(0)},Q)}
function na(a){Z();var b=W();b.j=a;b.start()}
function oa(a){Z();var b=W();b.j>a&&(b.j=a,b.start())}
function pa(){window.clearTimeout(S);var a=W();a.j=0;a.start()}
;n("yt.scheduler.initialized")||(q("yt.scheduler.instance.dispose",fa),q("yt.scheduler.instance.addJob",ia),q("yt.scheduler.instance.addImmediateJob",ja),q("yt.scheduler.instance.cancelJob",ka),q("yt.scheduler.instance.cancelAllJobs",ha),q("yt.scheduler.instance.start",Y),q("yt.scheduler.instance.pause",ma),q("yt.scheduler.instance.setPriorityThreshold",na),q("yt.scheduler.instance.enablePriorityThreshold",oa),q("yt.scheduler.instance.clearPriorityThreshold",pa),q("yt.scheduler.initialized",!0));}).call(this);
