///AtkBoxCollison(x1,y1,obj);
var X = argument0;
var Y = argument1;
var Obj = argument2;


if Obj = oParEnemy or oParPlayer//if Obj = oParDecorate
var C = collision_multiple(X, Y, oParCBox)
if Obj = oParDecorate
var C = collision_multiple(X, Y, oParDecorate);
if Obj = oParPlayerBarrage
var C = collision_multiple(X, Y, oParPlayerBarrage);
if Obj = oParEnemyBarrage
var C = collision_multiple(X, Y, oParEnemyBarrage);
if C  {
// if object_get_parent(self.object_index) = oParPlayerBarrage
 AtkBoxStep(C,Obj);
}
