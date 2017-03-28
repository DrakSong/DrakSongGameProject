///AtkBoxCollisonRectangle(x1,y1,x2,y2,obj);
var X = argument0;
var Y = argument1;
var X2 = argument2;
var Y2 = argument3;
var Obj = argument4;


//if Obj = oParLife

if Obj = oParEnemy or oParPlayer
var C = collision_rectangle_multiple(X, Y, X2, Y2,oParCBox, 1, 0);
if Obj = oParDecorate
var C = collision_rectangle_multiple(X, Y, X2, Y2,oParDecorate, 0, 0);
if Obj = oParBarrage
var C = collision_rectangle_multiple(X, Y, X2, Y2,oParBarrage, 0, 0);
 if Obj = oParBarrageE
var C = collision_multiple(X, Y, oParBarrageE);
if C  {
   
 AtkBoxStep(C,Obj);
}

