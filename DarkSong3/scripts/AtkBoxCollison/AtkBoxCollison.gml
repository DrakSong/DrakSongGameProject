///AtkBoxCollison(x1,y1,obj);
var X = argument0;
var Y = argument1;
var Obj = argument2;


if Obj = oParEnemy or oParPlayer//if Obj = oParDecorate
var C = collision_multiple(X, Y, oParCBox)
if Obj = oParDecorate
var C = collision_multiple(X, Y, oParDecorate);
if Obj = oParBarrage
var C = collision_multiple(X, Y, oParDecorate);
if Obj = oParBarrageE
var C = collision_multiple(X, Y, oParBarrageE);
if C  {
   
 AtkBoxStep(C,Obj);
}
