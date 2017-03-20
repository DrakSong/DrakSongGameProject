///@description KeyGet(key,0按住/1松开/2按下);
var G = global.GameInfo[?"实时变量"];
var V= G[?"键盘信息"];
var K = V[?"按住"];
var KR = V[?"松开"];
var KP = V[?"按下"];

var Key = argument0 ;
var Sel = argument1  ;

if Sel = 0
return K[?Key];

if Sel = 1
return KR[?Key]

if Sel = 2
return KP[?Key]
