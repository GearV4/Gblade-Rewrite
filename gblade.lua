local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v24,v25) local v26={};for v41=1, #v24 do v6(v26,v0(v4(v1(v2(v24,v41,v41 + 1 )),v1(v2(v25,1 + (v41% #v25) ,1 + (v41% #v25) + 1 )))%256 ));end return v5(v26);end local v8=tonumber;local v9=string.byte;local v10=string.char;local v11=string.sub;local v12=string.gsub;local v13=string.rep;local v14=table.concat;local v15=table.insert;local v16=math.ldexp;local v17=getfenv or function() return _ENV;end ;local v18=setmetatable;local v19=pcall;local v20=select;local v21=unpack or table.unpack ;local v22=tonumber;local function v23(v27,v28,...) local v29=1;local v30;v27=v12(v11(v27,5),v7("\186\82","\127\148\124\41\119\24\231"),function(v42) if (v9(v42,2)==79) then v30=v8(v11(v42,1,1));return "";else local v100=v10(v8(v42,49 -33 ));if v30 then local v106=v13(v100,v30);v30=nil;return v106;else return v100;end end end);local function v31(v43,v44,v45) if v45 then local v101=(v43/(2^(v44-1)))%(2^(((v45-1) -(v44-1)) + 1)) ;return v101-(v101%1) ;else local v102=0;local v103;while true do if (0==v102) then v103=2^(v44-1) ;return (((v43%(v103 + v103))>=v103) and 1) or 0 ;end end end end local function v32() local v46=v9(v27,v29,v29);v29=v29 + 1 ;return v46;end local function v33() local v47,v48=v9(v27,v29,v29 + 2 );v29=v29 + 2 ;return (v48 * 256) + v47 ;end local function v34() local v49,v50,v51,v52=v9(v27,v29,v29 + 3 );v29=v29 + 4 ;return (v52 * 16777216) + (v51 * 65536) + (v50 * 256) + v49 ;end local function v35() local v53=0;local v54;local v55;local v56;local v57;local v58;local v59;while true do if (v53==1) then v56=1;v57=(v31(v55,2 -1 ,20) * (2^32)) + v54 ;v53=2;end if (v53==3) then if (v58==0) then if (v57==0) then return v59 * 0 ;else local v121=0;while true do if (v121==0) then v58=1;v56=0;break;end end end elseif (v58==2047) then return ((v57==0) and (v59 * (1/0))) or (v59 * NaN) ;end return v16(v59,v58-(1974 -951) ) * (v56 + (v57/(2^52))) ;end if (v53==0) then v54=v34();v55=v34();v53=1;end if (v53==2) then v58=v31(v55,21,31);v59=((v31(v55,32)==1) and  -1) or 1 ;v53=3;end end end local function v36(v60) local v61=0;local v62;local v63;while true do if (v61==0) then v62=nil;if  not v60 then local v114=0;while true do if (v114==0) then v60=v34();if (v60==0) then return "";end break;end end end v61=1;end if (v61==1) then v62=v11(v27,v29,(v29 + v60) -1 );v29=v29 + v60 ;v61=2;end if (v61==3) then return v14(v63);end if (v61==2) then v63={};for v107=2 -1 , #v62 do v63[v107]=v10(v9(v11(v62,v107,v107)));end v61=3;end end end local v37=v34;local function v38(...) return {...},v20("#",...);end local function v39() local v64={};local v65={};local v66={};local v67={v64,v65,nil,v66};local v68=v34();local v69={};for v77=1,v68 do local v78=0;local v79;local v80;while true do if (1==v78) then if (v79==1) then v80=v32()~=(619 -(555 + 64)) ;elseif (v79==2) then v80=v35();elseif (v79==3) then v80=v36();end v69[v77]=v80;break;end if (v78==0) then v79=v32();v80=nil;v78=1;end end end v67[3]=v32();for v81=1,v34() do local v82=0;local v83;while true do if (v82==0) then v83=v32();if (v31(v83,1,1)==0) then local v117=v31(v83,2,3);local v118=v31(v83,4,6);local v119={v33(),v33(),nil,nil};if (v117==0) then local v122=0;while true do if (v122==0) then v119[3]=v33();v119[4]=v33();break;end end elseif (v117==(569 -(367 + 201))) then v119[3]=v34();elseif (v117==2) then v119[3]=v34() -((929 -(214 + 713))^(5 + 11)) ;elseif (v117==3) then v119[3]=v34() -(2^16) ;v119[4]=v33();end if (v31(v118,1 + 0 ,1)==1) then v119[2]=v69[v119[2]];end if (v31(v118,2,2)==(878 -(282 + 595))) then v119[3]=v69[v119[3]];end if (v31(v118,3,1640 -(1523 + 114) )==1) then v119[4]=v69[v119[4]];end v64[v81]=v119;end break;end end end for v84=1,v34() do v65[v84-1 ]=v39();end return v67;end local function v40(v71,v72,v73) local v74=v71[1];local v75=v71[2];local v76=v71[3];return function(...) local v86=v74;local v87=v75;local v88=v76;local v89=v38;local v90=1;local v91= -1;local v92={};local v93={...};local v94=v20("#",...) -(1 + 0) ;local v95={};local v96={};for v104=0,v94 do if (v104>=v88) then v92[v104-v88 ]=v93[v104 + (1 -0) ];else v96[v104]=v93[v104 + (1066 -(68 + 997)) ];end end local v97=(v94-v88) + 1 ;local v98;local v99;while true do local v105=0;while true do if (v105==1) then if (v99<=(1301 -(226 + 1044))) then if (v99<=15) then if (v99<=(30 -23)) then if (v99<=3) then if (v99<=1) then if (v99>0) then local v135=v98[2];do return v96[v135](v21(v96,v135 + 1 ,v98[3]));end elseif (v96[v98[2]]==v98[4]) then v90=v90 + 1 ;else v90=v98[120 -(32 + 85) ];end elseif (v99>2) then v96[v98[2]]= #v96[v98[3]];else v96[v98[2]]=v96[v98[3]]%v98[4] ;end elseif (v99<=5) then if (v99>4) then local v138=0;local v139;while true do if (0==v138) then v139=v98[2 + 0 ];v96[v139]=v96[v139](v21(v96,v139 + 1 ,v98[3]));break;end end else for v250=v98[2],v98[1 + 2 ] do v96[v250]=nil;end end elseif (v99>6) then v96[v98[2]]={};else v96[v98[2]]=v72[v98[3]];end elseif (v99<=11) then if (v99<=9) then if (v99>8) then if (v96[v98[2]]==v98[4]) then v90=v90 + (958 -(892 + 65)) ;else v90=v98[7 -4 ];end else local v143=0;local v144;local v145;local v146;while true do if (v143==1) then v146={};v145=v18({},{[v7("\46\189\36\171\211\20\154","\183\113\226\77\197")]=function(v315,v316) local v317=0;local v318;while true do if (v317==0) then v318=v146[v316];return v318[1][v318[2]];end end end,[v7("\127\102\187\217\87\80\187\216\69\65","\188\32\57\213")]=function(v319,v320,v321) local v322=v146[v320];v322[1][v322[2]]=v321;end});v143=2;end if (v143==2) then for v324=1 -0 ,v98[7 -3 ] do v90=v90 + (351 -(87 + 263)) ;local v325=v86[v90];if (v325[181 -(67 + 113) ]==21) then v146[v324-1 ]={v96,v325[3]};else v146[v324-1 ]={v72,v325[3]};end v95[ #v95 + 1 ]=v146;end v96[v98[2]]=v40(v144,v145,v73);break;end if (0==v143) then v144=v87[v98[3]];v145=nil;v143=1;end end end elseif (v99==10) then local v147=v98[2];local v148=v96[v147 + 2 ];local v149=v96[v147] + v148 ;v96[v147]=v149;if (v148>0) then if (v149<=v96[v147 + 1 ]) then local v327=0;while true do if (0==v327) then v90=v98[7 -4 ];v96[v147 + 3 ]=v149;break;end end end elseif (v149>=v96[v147 + 1 ]) then v90=v98[3 + 0 ];v96[v147 + (11 -8) ]=v149;end else local v151=v98[2];v96[v151](v21(v96,v151 + 1 ,v91));end elseif (v99<=13) then if (v99>(964 -(802 + 150))) then v96[v98[2]]=v72[v98[3]];else v96[v98[2]]=v96[v98[3]] + v98[10 -6 ] ;end elseif (v99>14) then v96[v98[2]]=v96[v98[3]]%v96[v98[4]] ;else v96[v98[3 -1 ]]();end elseif (v99<=23) then if (v99<=19) then if (v99<=17) then if (v99>(12 + 4)) then local v156=v98[999 -(915 + 82) ];local v157,v158=v89(v96[v156](v21(v96,v156 + 1 ,v91)));v91=(v158 + v156) -1 ;local v159=0;for v252=v156,v91 do v159=v159 + 1 ;v96[v252]=v157[v159];end else v96[v98[2]]();end elseif (v99>18) then do return;end elseif v96[v98[2]] then v90=v90 + 1 ;else v90=v98[3];end elseif (v99<=21) then if (v99>20) then v96[v98[2]]=v96[v98[8 -5 ]];else local v162=v98[2];v96[v162]=v96[v162](v21(v96,v162 + 1 + 0 ,v98[3]));end elseif (v99>22) then local v164=0;local v165;while true do if (v164==0) then v165=v98[2 -0 ];v96[v165]=v96[v165](v21(v96,v165 + 1 ,v91));break;end end else local v166=v98[2];v96[v166]=v96[v166](v21(v96,v166 + 1 ,v91));end elseif (v99<=27) then if (v99<=25) then if (v99==24) then local v168=0;local v169;local v170;while true do if (v168==0) then v169=v98[2];v170=v96[v169];v168=1;end if (v168==1) then for v330=v169 + 1 ,v91 do v15(v170,v96[v330]);end break;end end else local v171=0;local v172;local v173;while true do if (v171==1) then v96[v172 + 1 ]=v173;v96[v172]=v173[v98[4]];break;end if (v171==0) then v172=v98[1189 -(1069 + 118) ];v173=v96[v98[3]];v171=1;end end end elseif (v99>26) then v96[v98[2]]=v96[v98[3]]%v98[4] ;else v90=v98[3];end elseif (v99<=29) then if (v99==28) then local v176=v87[v98[3]];local v177;local v178={};v177=v18({},{[v7("\203\63\68\85\18\241\24","\118\148\96\45\59")]=function(v255,v256) local v257=0;local v258;while true do if (v257==0) then v258=v178[v256];return v258[1][v258[4 -2 ]];end end end,[v7("\105\141\254\21\163\95\188\244\21\172","\212\54\210\144\112")]=function(v259,v260,v261) local v262=0;local v263;while true do if (0==v262) then v263=v178[v260];v263[1 -0 ][v263[2]]=v261;break;end end end});for v264=1,v98[4] do local v265=0;local v266;while true do if (v265==0) then v90=v90 + 1 ;v266=v86[v90];v265=1;end if (v265==1) then if (v266[1 + 0 ]==21) then v178[v264-1 ]={v96,v266[3]};else v178[v264-1 ]={v72,v266[3]};end v95[ #v95 + 1 ]=v178;break;end end end v96[v98[2]]=v40(v176,v177,v73);else local v180=0;local v181;local v182;local v183;while true do if (v180==1) then v183=v96[v181 + 2 ];if (v183>0) then if (v182>v96[v181 + 1 ]) then v90=v98[3];else v96[v181 + 3 ]=v182;end elseif (v182<v96[v181 + 1 ]) then v90=v98[3];else v96[v181 + 3 ]=v182;end break;end if (v180==0) then v181=v98[2];v182=v96[v181];v180=1;end end end elseif (v99==30) then local v184=0;local v185;local v186;local v187;local v188;while true do if (v184==1) then v91=(v187 + v185) -1 ;v188=0;v184=2;end if (v184==0) then v185=v98[2];v186,v187=v89(v96[v185](v21(v96,v185 + (1 -0) ,v91)));v184=1;end if (v184==2) then for v336=v185,v91 do v188=v188 + 1 ;v96[v336]=v186[v188];end break;end end else local v189=0;local v190;local v191;while true do if (v189==0) then v190=v98[2];v191=v96[v190];v189=1;end if (v189==1) then for v339=v190 + 1 ,v91 do v15(v191,v96[v339]);end break;end end end elseif (v99<=47) then if (v99<=39) then if (v99<=35) then if (v99<=33) then if (v99>32) then local v192=0;local v193;while true do if (0==v192) then v193=v98[2 + 0 ];do return v21(v96,v193,v91);end break;end end else v96[v98[2]]=v73[v98[3]];end elseif (v99>34) then if v96[v98[2]] then v90=v90 + 1 ;else v90=v98[3];end else v96[v98[2]]=v98[3];end elseif (v99<=37) then if (v99>36) then v96[v98[2]]=v96[v98[3]];else local v200=0;local v201;while true do if (v200==0) then v201=v98[2];do return v96[v201](v21(v96,v201 + 1 ,v98[3]));end break;end end end elseif (v99==(829 -(368 + 423))) then do return;end else v96[v98[2]]={};end elseif (v99<=(134 -91)) then if (v99<=41) then if (v99==40) then for v267=v98[2],v98[3] do v96[v267]=nil;end else local v203=0;local v204;local v205;local v206;while true do if (v203==2) then if (v205>0) then if (v206<=v96[v204 + 1 ]) then local v360=0;while true do if (v360==0) then v90=v98[3];v96[v204 + (21 -(10 + 8)) ]=v206;break;end end end elseif (v206>=v96[v204 + 1 ]) then local v361=0;while true do if (v361==0) then v90=v98[3];v96[v204 + 3 ]=v206;break;end end end break;end if (v203==0) then v204=v98[2];v205=v96[v204 + 2 ];v203=1;end if (v203==1) then v206=v96[v204] + v205 ;v96[v204]=v206;v203=2;end end end elseif (v99==42) then v96[v98[2]]=v96[v98[3]][v98[4]];else v96[v98[2]]=v98[3] + v96[v98[4]] ;end elseif (v99<=45) then if (v99==44) then do return v96[v98[2]]();end else v96[v98[2]]=v98[3] + v96[v98[4]] ;end elseif (v99==46) then local v211=0;local v212;local v213;local v214;while true do if (0==v211) then v212=v98[2];v213=v96[v212];v211=1;end if (v211==1) then v214=v96[v212 + 2 ];if (v214>0) then if (v213>v96[v212 + 1 ]) then v90=v98[3];else v96[v212 + 3 ]=v213;end elseif (v213<v96[v212 + 1 ]) then v90=v98[3];else v96[v212 + 3 ]=v213;end break;end end else do return v96[v98[7 -5 ]]();end end elseif (v99<=55) then if (v99<=51) then if (v99<=49) then if (v99==48) then local v215=v98[2];local v216,v217=v89(v96[v215](v96[v215 + 1 ]));v91=(v217 + v215) -(443 -(416 + 26)) ;local v218=0 -0 ;for v269=v215,v91 do local v270=0;while true do if (v270==0) then v218=v218 + 1 ;v96[v269]=v216[v218];break;end end end else v96[v98[2]]=v96[v98[3]] + v98[4] ;end elseif (v99>50) then local v220=v98[2];local v221,v222=v89(v96[v220](v21(v96,v220 + 1 ,v98[3])));v91=(v222 + v220) -1 ;local v223=0;for v271=v220,v91 do local v272=0;while true do if (0==v272) then v223=v223 + 1 ;v96[v271]=v221[v223];break;end end end elseif  not v96[v98[2]] then v90=v90 + 1 ;else v90=v98[3];end elseif (v99<=53) then if (v99>52) then local v224=0;local v225;local v226;local v227;local v228;while true do if (1==v224) then v91=(v227 + v225) -1 ;v228=0;v224=2;end if (v224==0) then v225=v98[2];v226,v227=v89(v96[v225](v96[v225 + 1 ]));v224=1;end if (2==v224) then for v344=v225,v91 do local v345=0;while true do if (v345==0) then v228=v228 + 1 ;v96[v344]=v226[v228];break;end end end break;end end else local v229=0;local v230;local v231;while true do if (v229==0) then v230=v98[2];v231=v96[v98[3]];v229=1;end if (v229==1) then v96[v230 + 1 ]=v231;v96[v230]=v231[v98[4]];break;end end end elseif (v99==54) then local v232=0;local v233;while true do if (v232==0) then v233=v98[2];v96[v233](v21(v96,v233 + 1 ,v91));break;end end else v96[v98[1 + 1 ]]=v96[v98[3]]%v96[v98[4]] ;end elseif (v99<=59) then if (v99<=57) then if (v99==56) then v90=v98[3];else local v236=0;local v237;local v238;local v239;local v240;while true do if (v236==0) then v237=v98[2];v238,v239=v89(v96[v237](v21(v96,v237 + (1 -0) ,v98[3])));v236=1;end if (v236==2) then for v346=v237,v91 do v240=v240 + 1 ;v96[v346]=v238[v240];end break;end if (v236==1) then v91=(v239 + v237) -1 ;v240=0;v236=2;end end end elseif (v99==(496 -(145 + 293))) then v96[v98[2]]= #v96[v98[3]];else v96[v98[2]]=v96[v98[3]][v98[4]];end elseif (v99<=61) then if (v99>60) then if  not v96[v98[2]] then v90=v90 + 1 ;else v90=v98[3];end else v96[v98[2]]=v73[v98[433 -(44 + 386) ]];end elseif (v99==62) then v96[v98[2]]=v98[3];else local v248=0;local v249;while true do if (v248==0) then v249=v98[1488 -(998 + 488) ];do return v21(v96,v249,v91);end break;end end end v90=v90 + 1 + 0 ;break;end if (v105==0) then v98=v86[v90];v99=v98[1];v105=1;end end end end;end return v40(v39(),{},v28)(...);end return v23("LOL!0D3O0003063O00737472696E6703043O006368617203043O00627974652O033O0073756203053O0062697433322O033O0062697403043O0062786F7203053O007461626C6503063O00636F6E63617403063O00696E7365727403053O006D6174636803083O00746F6E756D62657203053O007063612O6C00243O00123C3O00013O00202A5O000200123C000100013O00202A00010001000300123C000200013O00202A00020002000400123C000300053O00063D0003000A0001000100041A3O000A000100123C000300063O00202A00040003000700123C000500083O00202A00050005000900123C000600083O00202A00060006000A00060800073O000100062O00153O00064O00158O00153O00044O00153O00014O00153O00024O00153O00053O00123C000800013O00202A00080008000B00123C0009000C3O00123C000A000D3O000608000B0001000100052O00153O00074O00153O00094O00153O00084O00153O000A4O00153O000B4O0025000C000B4O002C000C00014O003F000C6O00133O00013O00023O00023O00026O00F03F026O00704002264O002700025O00123E000300014O000300045O00123E000500013O00041D0003002100012O000D00076O0025000800024O000D000900014O000D000A00024O000D000B00034O000D000C00044O0025000D6O0025000E00063O002031000F000600012O0039000C000F4O0017000B3O00022O000D000C00034O000D000D00044O0025000E00014O0003000F00014O000F000F0006000F00102D000F0001000F2O0003001000014O000F00100006001000102D0010000100100020310010001000012O0039000D00104O0011000C6O0017000A3O0002002002000A000A00022O00350009000A4O003600073O000100040A0003000500012O000D000300054O0025000400024O0001000300044O003F00036O00133O00017O00043O00027O004003053O003A25642B3A2O033O0025642B026O00F03F001C3O0006085O000100012O00068O000D000100014O000D000200024O000D000300024O002700046O000D000500034O002500066O0028000700074O0039000500074O001F00043O000100202A00040004000100123E000500024O001400030005000200123E000400034O0039000200044O001700013O000200262O000100180001000400041A3O001800012O002500016O002700026O0001000100024O003F00015O00041A3O001B00012O000D000100044O002C000100014O003F00016O00133O00013O00013O00063O00030A3O006C6F6164737472696E6703043O0067616D6503073O00482O747047657403403O00D9D7CF35F5E18851C3C2CC6BE1B2D316C4C1CE36E3A9C411DFD7DE2BF2F5C411DC8CFC20E7A9F14A9EE4D929E7BFC22AD4D0CF2CE8BC8813D0CAD56AA8B7D21F03083O007EB1A3BB4586DBA7026O00F03F010F3O0006123O000D00013O00041A3O000D000100123C000100013O00123C000200023O0020340002000200032O000D00045O00123E000500043O00123E000600054O0039000400064O001100026O001700013O00022O001000010001000100041A3O000E000100202A00013O00062O00133O00017O00",v17(),...);
