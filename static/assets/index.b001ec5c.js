import{d as h,r as f,a as y,o as x,b as r,c as u,w as B,e as n,v as w,_ as m,f as l,E as $,n as E,t as b,g as p,h as D,u as P,F as C}from"./index.9aa5f3d4.js";import{_ as L}from"./index.da68a9b6.js";import{_ as V,a as k}from"./index.6c0f716d.js";import{g as F}from"./localApi.60a4e19a.js";const I={class:"playlist"},R=h({__name:"index",setup(a){const t=f(!1),o=f(!0),s=y([]);x(()=>{c()});function c(){const _=["BV1Wt411H7qN","BV1Dh41167W4","BV1tb411g7wo","BV1jJ41137nD"];Promise.all(_.map(async e=>await d(e))).then(e=>{o.value=!1,s.push(...e)}).catch(e=>{t.value=!0})}async function d(_){t.value=!1;let[e,i]=await F(_);return!e&&i?i.data.data:Promise.reject("some error")}return(_,e)=>{const i=V,v=L,g=w;return r(),u("div",I,[B(n(i,{isTopList:!1,playlist:s},null,8,["playlist"]),[[g,o.value&&!t.value]]),n(v,{isError:o.value&&t.value,requestFunc:d},null,8,["isError"])])}}});const A=m(R,[["__scopeId","data-v-0d05b665"]]),N={viewBox:"0 0 1024 1024",width:"1.2em",height:"1.2em"},S=l("path",{fill:"currentColor",d:"M338.752 104.704a64 64 0 0 0 0 90.496l316.8 316.8l-316.8 316.8a64 64 0 0 0 90.496 90.496l362.048-362.048a64 64 0 0 0 0-90.496L429.248 104.704a64 64 0 0 0-90.496 0z"},null,-1),T=[S];function j(a,t){return r(),u("svg",N,T)}const q={name:"ep-arrow-right-bold",render:j},z={class:"content"},M={class:"content_header"},W={class:"content_title_text"},H={class:"content_body"},J=h({__name:"index",props:{title:null,href:null},setup(a){const t=a,o=P(),s=()=>{!t.href||o.push(t.href)};return(c,d)=>{const _=q,e=$;return r(),u("div",z,[l("div",M,[l("div",{class:"content_title",onClick:s,style:E({cursor:a.href?"pointer":"default"})},[l("span",W,b(a.title),1),n(e,{class:"content_title_icon"},{default:p(()=>[n(_)]),_:1})],4)]),l("div",H,[D(c.$slots,"default",{},void 0,!0)])])}}});const G=m(J,[["__scopeId","data-v-35034cde"]]),K={};function O(a,t){const o=k,s=G,c=A;return r(),u(C,null,[n(s,{title:"\u7F51\u6613\u4E91\u63A8\u8350\u6B4C\u5355",href:"/playlist"},{default:p(()=>[n(o)]),_:1}),n(s,{title:"\u63A8\u8350\u54D4\u54E9\u54D4\u54E9\u6B4C\u5355",style:{marginBottom:"100px"}},{default:p(()=>[n(c)]),_:1})],64)}const Z=m(K,[["render",O]]);export{Z as default};
