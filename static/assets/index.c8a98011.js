import{i as Y,ah as Z,q as W,ai as ee,j as te,d as x,p as ae,r as k,l as D,aj as se,ak as le,M as j,b as r,c as _,n as M,z as v,x as T,g as $,A as oe,E as O,h as ie,y as ne,B as re,C as ce,f as t,a as ue,o as _e,P as n,al as q,am as de,an as pe,ao as ve,ag as fe,v as me,e as S,w,t as C,I as he,F as ye,Q as P,J as ge,u as Se,ap as we,a0 as ke,$ as V,aq as be,ar as Ce,a5 as Ee,K as U,a6 as Pe,a7 as Ie,_ as ze}from"./index.9aa5f3d4.js";import{_ as Be}from"./index.6681fe69.js";import{_ as $e}from"./index.da68a9b6.js";import{g as De,b as Te,s as xe,c as Ne}from"./localApi.60a4e19a.js";const Le=Y({size:{type:[Number,String],values:Z,default:"",validator:l=>W(l)},shape:{type:String,values:["circle","square"],default:"circle"},icon:{type:ee},src:{type:String,default:""},alt:String,srcSet:String,fit:{type:te(String),default:"cover"}}),Ae={error:l=>l instanceof Event},Fe=["src","alt","srcset"],Me=x({name:"ElAvatar"}),qe=x({...Me,props:Le,emits:Ae,setup(l,{emit:o}){const h=l,c=ae("avatar"),y=k(!1),I=D(()=>{const{size:a,icon:g,shape:z}=h,b=[c.b()];return se(a)&&b.push(c.m(a)),g&&b.push(c.m("icon")),z&&b.push(c.m(z)),b}),f=D(()=>{const{size:a}=h;return W(a)?c.cssVarBlock({size:le(a)||""}):void 0}),e=D(()=>({objectFit:h.fit}));j(()=>h.src,()=>y.value=!1);function m(a){y.value=!0,o("error",a)}return(a,g)=>(r(),_("span",{class:ne(v(I)),style:M(v(f))},[(a.src||a.srcSet)&&!y.value?(r(),_("img",{key:0,src:a.src,alt:a.alt,srcset:a.srcSet,style:M(v(e)),onError:m},null,44,Fe)):a.icon?(r(),T(v(O),{key:1},{default:$(()=>[(r(),T(oe(a.icon)))]),_:1})):ie(a.$slots,"default",{key:2})],6))}});var Ve=re(qe,[["__file","/home/runner/work/element-plus/element-plus/packages/components/avatar/src/avatar.vue"]]);const Ue=ce(Ve),We={viewBox:"0 0 1024 1024",width:"1.2em",height:"1.2em"},je=t("path",{fill:"currentColor",d:"m192 384l320 384l320-384z"},null,-1),Oe=[je];function He(l,o){return r(),_("svg",We,Oe)}const Je={name:"ep-caret-bottom",render:He},Ke={viewBox:"0 0 1024 1024",width:"1.2em",height:"1.2em"},Qe=t("path",{fill:"currentColor",d:"M512 320L192 704h639.936z"},null,-1),Re=[Qe];function Ge(l,o){return r(),_("svg",Ke,Re)}const Xe={name:"ep-caret-top",render:Ge};const Ye={viewBox:"0 0 1024 1024",width:"1.2em",height:"1.2em"},Ze=t("path",{fill:"currentColor",d:"M288 320a224 224 0 1 0 448 0a224 224 0 1 0-448 0zm544 608H160a32 32 0 0 1-32-32v-96a160 160 0 0 1 160-160h448a160 160 0 0 1 160 160v96a32 32 0 0 1-32 32z"},null,-1),et=[Ze];function tt(l,o){return r(),_("svg",Ye,et)}const at={name:"ep-user-filled",render:tt},H=l=>(Pe("data-v-8c8a94fa"),l=l(),Ie(),l),st={class:"playlist"},lt={class:"playlist_wrapper"},ot={key:0,class:"playlist_info"},it={class:"playlist_info_left"},nt={class:"playlist_info_cover"},rt={class:"playlist_info_right"},ct={class:"playlist_info_right_line"},ut=["title"],_t={class:"playlist_info_right_line"},dt={class:"playlist_info_nickname"},pt={class:"playlist_info_createTime"},vt={class:"playlist_info_right_line"},ft={class:"playlise_info_playinfo"},mt=H(()=>t("span",{class:"playlist_info-tip"},"\u6B4C\u66F2:",-1)),ht={class:"playlist_info_right_line"},yt={class:"playlist_info_description"},gt=H(()=>t("span",{class:"playlist_info-tip"},"\u7B80\u4ECB:",-1)),St={key:0},wt={class:"playlist_song"},kt=x({__name:"index",props:{id:null,t:null},setup(l){const o=l,h=Se(),c=k(!0),y=k(!1),I=k(!1),f=ue([]),e=k(),m=k(!1),a=k(1);j([()=>o.id,()=>o.t],()=>{f.length=0,g()},{immediate:!0}),_e(()=>{o.t===n.localStorage&&window.addEventListener(q,g)}),de(()=>{window.removeEventListener(q,g)});async function g(){if(o.t===n.localStorage){c.value=!0;let i=pe(Number(o.id));i?(e.value=i,f.length=0,f.push(...i.tracks)):h.replace("/404"),c.value=!1;return}z(o.id,o.t)}async function z(i,d){c.value=!0,y.value=!1;let u,s;switch(d){case n.local:{[u,s]=await Te({id:Number(i)});break}case n.cloud:{[u,s]=await ve({id:Number(i)});break}case n.bili:{[u,s]=await De(String(i));break}}if(c.value=!1,!u&&s){let{code:p,data:B}=s.data;return e.value=fe(B,d),!0}else return h.replace("/404"),y.value=!0,!1}async function b(i,d,u=!1){I.value=!1;let s,p;switch(d){case n.local:{[s,p]=await Ne({id:Number(i),limit:a.value});break}case n.cloud:{[s,p]=await we({id:Number(i),limit:a.value});break}case n.bili:{[s,p]=await xe(String(i));break}}if(!s&&p){let{code:B,data:E}=p.data;return u||(f.length=0),f.push(...ke(E,d===n.cloud?V.cloud:V.local)),a.value+=1,E.length}else return I.value=!0,-1}function J(){m.value=!m.value}function K(i){if(!e.value||e.value.type!==n.localStorage)return;let d={...e.value};d.tracks=i;let u=be(),s=u.findIndex(p=>p.id===d.id);s!==-1&&(u.splice(s,1,d),Ce(u))}return(i,d)=>{var N,L,A,F;const u=$e,s=at,p=Ue,B=Xe,E=O,Q=Je,R=Be,G=Ee("lazy"),X=me;return r(),_("div",st,[S(u,{isError:!c.value&&y.value,requestFunc:g},null,8,["isError"]),w((r(),_("div",lt,[e.value?(r(),_("div",ot,[t("div",it,[t("div",nt,[w((r(),_("img",{alt:"\u6B4C\u5355\u5C01\u9762",key:e.value.cover})),[[G,v(U)(e.value.cover)]])])]),t("div",rt,[t("div",ct,[t("h3",{class:"playlist_info_title",title:e.value.title},C(e.value.title),9,ut)]),t("div",_t,[(r(),T(p,{class:"playlist_info_avatar",size:36,src:v(U)(e.value.creator.avatarUrl),key:e.value.creator.avatarUrl},{default:$(()=>[S(s)]),_:1},8,["src"])),t("span",dt,C(e.value.creator.name),1),t("span",pt,C(e.value.createTime===0?"":new Date(e.value.createTime).toLocaleDateString()),1)]),t("div",vt,[t("div",ft,[mt,he(C(e.value.trackCount),1)])]),t("div",ht,[t("div",yt,[gt,e.value.description===""?(r(),_("span",St,"\u65E0")):(r(),_(ye,{key:1},[w(t("span",{class:"playlist_info_description-title"},C(e.value.description),513),[[P,!m.value]]),w(t("span",{class:"playlist_info_description-full"},C(e.value.description),513),[[P,m.value]]),t("span",{class:"playlist_info_description-arrow",onClick:J},[w(S(E,null,{default:$(()=>[S(B)]),_:1},512),[[P,m.value]]),w(S(E,null,{default:$(()=>[S(Q)]),_:1},512),[[P,!m.value]])])],64))])])])])):ge("",!0),w(t("div",wt,[S(R,{songs:f,canDeleteSong:((N=e.value)==null?void 0:N.type)===v(n).localStorage,canDrag:((L=e.value)==null?void 0:L.type)===v(n).localStorage,isStatic:((A=e.value)==null?void 0:A.type)===v(n).localStorage||((F=e.value)==null?void 0:F.type)===v(n).bili,loadMoreFunc:b.bind(void 0,o.id,o.t,!0),onSongOrder:K},null,8,["songs","canDeleteSong","canDrag","isStatic","loadMoreFunc"])],512),[[P,e.value]])])),[[X,c.value&&!e.value]])])}}});const It=ze(kt,[["__scopeId","data-v-8c8a94fa"]]);export{It as default};
