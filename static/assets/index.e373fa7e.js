import{d as R,g as _,s as G,q as H,P as r,a4 as L,a5 as J,a6 as Q,a7 as X,a2 as Y,a8 as Z,O as $,K as F,o as n,c as d,b as y,y as c,a,k as S,t as g,f as q,j as ee,F as ae,z as C,w as z,I as O,u as te,a9 as le,aa as se,e as P,B as V,m as M,ab as oe,M as ie,N as ne,_ as re}from"./index.c964b01d.js";import{a as ce,b as ue,S as _e}from"./index.5b61a33c.js";import{L as U}from"./index.058730f8.js";const W=m=>(ie("data-v-52dc0729"),m=m(),ne(),m),de={class:"playlist"},ve={class:"playlist_wrapper"},pe={key:0,class:"playlist_info"},fe={class:"playlist_info_left"},ye={class:"playlist_info_cover"},ge={class:"playlist_info_right"},me={class:"playlist_info_right_line"},he=["title"],Se={class:"playlist_info_right_line"},Ce={class:"playlist_info_nickname"},ke={class:"playlist_info_createTime"},we={class:"playlist_info_right_line"},Pe={class:"playlise_info_playinfo"},Ie=W(()=>a("span",{class:"playlist_info-tip"},"\u6B4C\u66F2:",-1)),De={class:"playlist_info_right_line"},Ee={class:"playlist_info_description"},Te=W(()=>a("span",{class:"playlist_info-tip"},"\u7B80\u4ECB:",-1)),xe={key:0},Be={class:"playlist_song"},Ne=R({__name:"index",props:{id:null,t:null},setup(m){const l=m,E=te(),v=_(!0),u=_(!0),I=_(!1),k=_(!1),D=_([]),e=_(),p=_(!1);G([()=>l.id,()=>l.t],()=>{w()},{immediate:!0}),H(()=>{l.t===r.localStorage&&window.addEventListener(L,w)}),J(()=>{window.removeEventListener(L,w)});async function w(){if(l.t===r.localStorage){v.value=!0,u.value=!0;let t=Q(Number(l.id));t?(e.value=t,D.value=t.tracks):E.replace("/404"),v.value=!1,u.value=!1;return}A(Number(l.id),l.t),T(Number(l.id),l.t)}async function A(t,s){v.value=!0,I.value=!1;let[i,o]=s===r.local?await ce({id:t}):await X({id:t});if(v.value=!1,!i&&o){let{code:f,data:h}=o.data;return e.value=Y(h,s),!0}else return E.replace("/404"),I.value=!0,!1}async function T(t,s){u.value=!0,k.value=!1;let[i,o]=s===r.local?await ue({id:t}):await Z({id:t});if(u.value=!1,!i&&o){let{code:f,data:h}=o.data;return D.value=$(h,s===r.cloud?F.cloud:F.local),!0}else return k.value=!0,!1}function j(){p.value=!p.value}function K(t){if(!e.value||e.value.type!==r.localStorage)return;let s={...e.value};s.tracks=t;let i=le(),o=i.findIndex(f=>f.id===s.id);o!==-1&&(i.splice(o,1,s),se(i))}return(t,s)=>{var N,b;const i=P("el-avatar"),o=P("CaretTop"),f=P("el-icon"),h=P("CaretBottom"),x=V("lazy"),B=V("loading");return n(),d("div",de,[y(U,{isError:!v.value&&I.value,requestFunc:w},null,8,["isError"]),c((n(),d("div",ve,[e.value?(n(),d("div",pe,[a("div",fe,[a("div",ye,[c((n(),d("img",{alt:"\u6B4C\u5355\u5C01\u9762",key:e.value.cover})),[[x,S(M)(e.value.cover)]])])]),a("div",ge,[a("div",me,[a("h3",{class:"playlist_info_title",title:e.value.title},g(e.value.title),9,he)]),a("div",Se,[c((n(),q(i,{class:"playlist_info_avatar",size:28,icon:S(oe),key:e.value.creator.avatarUrl},null,8,["icon"])),[[x,S(M)(e.value.creator.avatarUrl)]]),a("span",Ce,g(e.value.creator.name),1),a("span",ke,g(e.value.createTime===0?"":new Date(e.value.createTime).toLocaleDateString()),1)]),a("div",we,[a("div",Pe,[Ie,ee(g(e.value.trackCount),1)])]),a("div",De,[a("div",Ee,[Te,e.value.description===""?(n(),d("span",xe,"\u65E0")):(n(),d(ae,{key:1},[c(a("span",{class:"playlist_info_description-title"},g(e.value.description),513),[[C,!p.value]]),c(a("span",{class:"playlist_info_description-full"},g(e.value.description),513),[[C,p.value]]),a("span",{class:"playlist_info_description-arrow",onClick:j},[c(y(f,null,{default:z(()=>[y(o)]),_:1},512),[[C,p.value]]),c(y(f,null,{default:z(()=>[y(h)]),_:1},512),[[C,!p.value]])])],64))])])])])):O("",!0),c((n(),d("div",Be,[!u.value&&!k.value?(n(),q(_e,{key:0,songs:D.value,canDeleteSong:((N=e.value)==null?void 0:N.type)===S(r).localStorage,canDrag:((b=e.value)==null?void 0:b.type)===S(r).localStorage,onSongOrder:K},null,8,["songs","canDeleteSong","canDrag"])):O("",!0),y(U,{style:{alignSelf:"center"},isError:!u.value&&k.value,requestFunc:T.bind(void 0,Number(l.id),l.t)},null,8,["isError","requestFunc"])])),[[B,u.value],[C,e.value]])])),[[B,v.value&&!e.value]])])}}});const qe=re(Ne,[["__scopeId","data-v-52dc0729"]]);export{qe as default};