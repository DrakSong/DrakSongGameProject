///AtkBoxCollison(x1,y1,obj);
var X = argument0;
var Y = argument1;
var Obj = argument2;


//if Obj = oParLife


var C = collision_multiple(X, Y, oParCBox);
 
if C  {
   
 AtkBoxStep(C,Obj);
}

