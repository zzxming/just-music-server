import{i as ie,ag as ne,q as R,ah as ce,j as re,d as x,p as ue,r as h,l as z,ai as _e,aj as de,M as Y,b as i,c as r,n as U,z as d,x as T,g as E,A as pe,E as Z,h as ve,y as fe,B as me,C as he,f as s,a as ye,o as ge,P as o,ak as j,al as Se,am as O,an as ke,af as we,Y as Ce,v as Pe,w as C,e as S,I as H,t as P,Z as be,J as F,F as Ee,Q as $,u as Ie,ao as Be,a2 as De,$ as J,ap as $e,aq as ze,a5 as Fe,K,a6 as Te,a7 as xe,ar as Le,a0 as Q,as as Ne,_ as Me}from"./index.4dea08ff.js";import{_ as Ae}from"./index.b41ff838.js";import{_ as qe}from"./index.c5b50cd2.js";import{g as Ve,b as We,s as Ue,c as je}from"./localApi.46af6a8e.js";import"./more-outlined.d60f6fa6.js";const Oe=ie({size:{type:[Number,String],values:ne,default:"",validator:c=>R(c)},shape:{type:String,values:["circle","square"],default:"circle"},icon:{type:ce},src:{type:String,default:""},alt:String,srcSet:String,fit:{type:re(String),default:"cover"}}),He={error:c=>c instanceof Event},Je=["src","alt","srcset"],Ke=x({name:"ElAvatar"}),Qe=x({...Ke,props:Oe,emits:He,setup(c,{emit:t}){const k=c,u=ue("avatar"),w=h(!1),I=z(()=>{const{size:a,icon:b,shape:g}=k,m=[u.b()];return _e(a)&&m.push(u.m(a)),b&&m.push(u.m("icon")),g&&m.push(u.m(g)),m}),f=z(()=>{const{size:a}=k;return R(a)?u.cssVarBlock({size:de(a)||""}):void 0}),e=z(()=>({objectFit:k.fit}));Y(()=>k.src,()=>w.value=!1);function y(a){w.value=!0,t("error",a)}return(a,b)=>(i(),r("span",{class:fe(d(I)),style:U(d(f))},[(a.src||a.srcSet)&&!w.value?(i(),r("img",{key:0,src:a.src,alt:a.alt,srcset:a.srcSet,style:U(d(e)),onError:y},null,44,Je)):a.icon?(i(),T(d(Z),{key:1},{default:E(()=>[(i(),T(pe(a.icon)))]),_:1})):ve(a.$slots,"default",{key:2})],6))}});var Re=me(Qe,[["__file","/home/runner/work/element-plus/element-plus/packages/components/avatar/src/avatar.vue"]]);const Ye=he(Re),Ze={viewBox:"0 0 1024 1024",width:"1.2em",height:"1.2em"},Ge=s("path",{fill:"currentColor",d:"m192 384l320 384l320-384z"},null,-1),Xe=[Ge];function et(c,t){return i(),r("svg",Ze,Xe)}const tt={name:"ep-caret-bottom",render:et},at={viewBox:"0 0 1024 1024",width:"1.2em",height:"1.2em"},st=s("path",{fill:"currentColor",d:"M512 320L192 704h639.936z"},null,-1),lt=[st];function ot(c,t){return i(),r("svg",at,lt)}const it={name:"ep-caret-top",render:ot};const nt={viewBox:"0 0 1024 1024",width:"1.2em",height:"1.2em"},ct=s("path",{fill:"currentColor",d:"M288 320a224 224 0 1 0 448 0a224 224 0 1 0-448 0zm544 608H160a32 32 0 0 1-32-32v-96a160 160 0 0 1 160-160h448a160 160 0 0 1 160 160v96a32 32 0 0 1-32 32z"},null,-1),rt=[ct];function ut(c,t){return i(),r("svg",nt,rt)}const _t={name:"ep-user-filled",render:ut},G=c=>(Te("data-v-7e1286f0"),c=c(),xe(),c),dt={class:"playlist"},pt={class:"playlist_wrapper"},vt={key:0,class:"playlist_info"},ft={class:"playlist_info_left"},mt={class:"playlist_info_cover"},ht={key:0,class:"playlist_control"},yt={class:"playlist_info_right"},gt={class:"playlist_info_right_line"},St=["title"],kt={class:"playlist_info_right_line"},wt={class:"playlist_info_nickname"},Ct={class:"playlist_info_createTime"},Pt={class:"playlist_info_right_line"},bt={class:"playlise_info_playinfo"},Et=G(()=>s("span",{class:"playlist_info-tip"},"\u6B4C\u66F2:",-1)),It={class:"playlist_info_right_line"},Bt={class:"playlist_info_description"},Dt=G(()=>s("span",{class:"playlist_info-tip"},"\u7B80\u4ECB:",-1)),$t={key:0},zt={key:1,class:"playlist_song"},Ft=x({__name:"index",props:{id:null,t:null},setup(c){const t=c,k=Ie(),u=h(!0),w=h(!1),I=h(!1),f=ye([]),e=h(),y=h(!1),a=h(1),b=h(!1),g=h(!1);Y([()=>t.id,()=>t.t],()=>{f.length=0,m();let l=O(t.id);g.value=!!l},{immediate:!0}),ge(()=>{t.t===o.localStorage&&window.addEventListener(j,m)}),Se(()=>{window.removeEventListener(j,m)});async function m(){if(t.t===o.localStorage){u.value=!0;let l=O(t.id);l?(e.value=l,f.length=0,f.push(...l.tracks)):k.replace("/404"),u.value=!1;return}X(t.id,t.t)}async function X(l,p){u.value=!0,w.value=!1;let _,n;switch(p){case o.local:{[_,n]=await We({id:Number(l)});break}case o.cloud:{[_,n]=await ke({id:Number(l)});break}case o.bili:{[_,n]=await Ve(String(l));break}}if(u.value=!1,!_&&n){let{code:v,data:B}=n.data;return e.value=we(B,p),!0}else return k.replace("/404"),w.value=!0,!1}async function L(l,p,_=!1){I.value=!1;let n,v;switch(p){case o.local:{[n,v]=await je({id:Number(l),limit:a.value});break}case o.cloud:{[n,v]=await Be({id:Number(l),limit:a.value});break}case o.bili:{[n,v]=await Ue(String(l));break}}if(!n&&v){let{code:B,data:D}=v.data;return _||(f.length=0),f.push(...De(D,p===o.cloud?J.cloud:J.local)),a.value+=1,D.length}else return t.t===o.localStorage?0:(I.value=!0,-1)}function ee(){y.value=!y.value}function te(l){if(!e.value||e.value.type!==o.localStorage)return;let p={...e.value};p.tracks=l;let _=$e(),n=_.findIndex(v=>v.id===p.id);n!==-1&&(_.splice(n,1,p),ze(_))}async function ae(){if(!!e.value)if(g.value)Le(t.id),g.value=!1,Q({type:"success",message:"\u6B4C\u5355\u53D6\u6D88\u6536\u85CF\u6210\u529F"});else{if(t.t!==o.bili){b.value=!0;let l=0;do l=await L(t.id,t.t,!0);while(l>0);b.value=!1}Ne(e.value,f),g.value=!0,Q({type:"success",message:"\u6536\u85CF\u6210\u529F"})}}return(l,p)=>{var A,q,V,W;const _=qe,n=Ce,v=_t,B=Ye,D=it,N=Z,se=tt,le=Ae,oe=Fe("lazy"),M=Pe;return C((i(),r("div",dt,[S(_,{isError:!u.value&&w.value,requestFunc:m},null,8,["isError"]),C((i(),r("div",pt,[e.value?(i(),r("div",vt,[s("div",ft,[s("div",mt,[C((i(),r("img",{alt:"\u6B4C\u5355\u5C01\u9762",key:e.value.cover})),[[oe,d(K)(e.value.cover)]])]),t.t!==d(o).localStorage?(i(),r("div",ht,[S(n,{class:"playlist_control_btn",color:"#f56c6c",plain:"",onClick:be(ae,["stop"])},{default:E(()=>[H(P(g.value?"\u5DF2\u6536\u85CF":"\u6536\u85CF\u6B4C\u5355"),1)]),_:1},8,["onClick"])])):F("",!0)]),s("div",yt,[s("div",gt,[s("h3",{class:"playlist_info_title",title:e.value.title},P(e.value.title),9,St)]),s("div",kt,[(i(),T(B,{class:"playlist_info_avatar",size:36,src:d(K)(e.value.creator.avatarUrl),key:e.value.creator.avatarUrl},{default:E(()=>[S(v)]),_:1},8,["src"])),s("span",wt,P(e.value.creator.name),1),s("span",Ct,P(e.value.createTime===0?"":new Date(e.value.createTime).toLocaleDateString()),1)]),s("div",Pt,[s("div",bt,[Et,H(P(e.value.trackCount),1)])]),s("div",It,[s("div",Bt,[Dt,e.value.description===""?(i(),r("span",$t,"\u65E0")):(i(),r(Ee,{key:1},[C(s("span",{class:"playlist_info_description-title"},P(e.value.description),513),[[$,!y.value]]),C(s("span",{class:"playlist_info_description-full"},P(e.value.description),513),[[$,y.value]]),s("span",{class:"playlist_info_description-arrow",onClick:ee},[C(S(N,null,{default:E(()=>[S(D)]),_:1},512),[[$,y.value]]),C(S(N,null,{default:E(()=>[S(se)]),_:1},512),[[$,!y.value]])])],64))])])])])):F("",!0),e.value?(i(),r("div",zt,[S(le,{songs:f,canDeleteSong:((A=e.value)==null?void 0:A.type)===d(o).localStorage,canDrag:((q=e.value)==null?void 0:q.type)===d(o).localStorage,isStatic:((V=e.value)==null?void 0:V.type)===d(o).localStorage||((W=e.value)==null?void 0:W.type)===d(o).bili,loadMoreFunc:L.bind(void 0,t.id,t.t,!0),onSongOrder:te},null,8,["songs","canDeleteSong","canDrag","isStatic","loadMoreFunc"])])):F("",!0)])),[[M,u.value&&!e.value]])])),[[M,b.value]])}}});const At=Me(Ft,[["__scopeId","data-v-7e1286f0"]]);export{At as default};
