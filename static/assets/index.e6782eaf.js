import{d as C,g as c,a0 as B,p as P,q as E,s as I,A as q,a1 as w,a2 as F,P as M,B as N,o as n,c as p,a as d,y as h,b as f,z as A,F as T,_ as b,a3 as D,t as x,k as m,i as O,f as L,n as V,U as $,u as z}from"./index.d3614d96.js";import{L as H,a as R}from"./index.4748948e.js";import{P as S,C as j}from"./index.8a2daf57.js";const Q={class:"playlist"},U=C({__name:"index",props:{isTopList:{type:Boolean,default:!1,required:!1}},setup(e){const{isTopList:y}=e,s=c(),a=c(!1),i=c(!0),l=c(0),r=c(B.All),t=P([]);E(()=>{v()}),I(i,o=>{o||q(()=>k())});function k(){if(!s.value)return;new IntersectionObserver(function(u){u[0].isIntersecting&&s.value&&s.value.loadFunc()},{rootMargin:"0px 0px 200px 0px"}).observe(s.value.loadMore)}async function v(){a.value=!1;let[o,u]=await w({before:l.value,cat:r.value,limit:y?20:10});if(!o&&u){const{code:g,data:_}=u.data;return t.push(...F(_.playlist,M.cloud)),l.value=_.lasttime,i.value=!1,_.more?_.playlist.length:0}return o&&(a.value=!0),-1}return(o,u)=>{const g=N("loading");return n(),p(T,null,[d("div",Q,[h(f(S,{isTopList:e.isTopList,playlist:t},null,8,["isTopList","playlist"]),[[g,i.value&&!a.value]]),f(H,{isError:i.value&&a.value,requestFunc:v},null,8,["isError"])]),h(f(R,{ref_key:"loadMore",ref:s,requestFunc:v},null,512),[[A,e.isTopList&&!i.value]])],64)}}});const G=b(U,[["__scopeId","data-v-691106eb"]]),J={class:"playlist_wrapper"},K={class:"playlist_title"},W={class:"playlist_title_tag-cur"},X={class:"playlist_title_tag"},Y=["onClick"],Z={key:2,class:"playlist_content-error"},ee=C({__name:"index",props:{id:null},setup(e){const{id:y}=e,s=z(),a=[{id:1,title:"\u63A8\u8350\u6B4C\u5355"},{id:2,title:"\u7CBE\u54C1\u6B4C\u5355"}],i=D(()=>{var l,r;return(r=(l=a.find(t=>t.id===Number(y)))==null?void 0:l.title)!=null?r:""});return(l,r)=>(n(),p("div",J,[d("div",K,[d("div",W,x(m(i)),1),d("ul",X,[(n(),p(T,null,O(a,t=>d("li",{class:V(`playlist_title_tag-item ${t.id===Number(e.id)?"active":""}`),onClick:()=>m(s).replace(m($)("/playlist",{id:t.id}))},x(t.title),11,Y)),64))])]),Number(e.id)===1?(n(),L(j,{key:0,isTopList:!0})):Number(e.id)===2?(n(),L(G,{key:1,isTopList:!0})):(n(),p("div",Z," \u6CA1\u6709\u8FD9\u4E2A\u5206\u7C7B "))]))}});const ie=b(ee,[["__scopeId","data-v-2e73d15a"]]);export{ie as default};